package io.agora.rtc.audio;

import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.media.AudioRecord;
import android.media.AudioRecordingConfiguration;
import android.media.AudioTimestamp;
import android.media.AudioTrack;
import android.media.audiofx.AcousticEchoCanceler;
import android.media.audiofx.AudioEffect;
import android.os.Build;
import android.os.Process;
import io.agora.rtc.internal.Logging;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantLock;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/audio/AudioDevice.class */
public class AudioDevice {
    private static final String VOLUME_CHANGED_ACTION = "android.media.VOLUME_CHANGED_ACTION";
    private AudioManager _audioManager;
    private Context _context;
    private ByteBuffer _playBuffer;
    private ByteBuffer _recBuffer;
    private byte[] _tempBufPlay;
    private byte[] _tempBufRec;
    private long mNativeHandle;
    public final String TAG = "AudioDevice Java";
    private final int _MaxRecPlay10msBlocks = 4;
    private AudioTrack _audioTrack = null;
    private AudioRecord _audioRecord = null;
    private final ReentrantLock _playLock = new ReentrantLock();
    private final ReentrantLock _recLock = new ReentrantLock();
    private boolean _doPlayInit = true;
    private boolean _doRecInit = true;
    private boolean _isRecording = false;
    private boolean _isPlaying = false;
    private long previous_time_ms = 0;
    private long current_time_ms = 0;
    private long _currentTotalPostion = 0;
    private long _framePostion = 0;
    private int _bufferedRecSamples = 0;
    private int _bufferedPlaySamples = 0;
    private int _playPosition = 0;
    private int _playbackSampleRate = 0;
    private int _playBufSize = 0;
    private int _playbackRestartCount = 0;
    private int _recordSampleRate = 0;
    private int _recordChannel = 0;
    private int _playChannel = 0;
    private int _recordBufSize = 0;
    private int _recordSource = 0;
    private int _recordRestartCount = 0;
    private boolean _renderStart = false;
    private long _firstRenderTS = 0;
    private int _playPreviousUnderrun = 0;
    private long _recDelay = 10;
    private long _lastRecDelay = 0;
    private long _recStartTS = 0;
    private int _recStartDelay = 0;
    private int _sdkVer = Build.VERSION.SDK_INT;
    private long _recPosition = 0;
    private long[] _audioStatistic = new long[6];
    private final int POSITION_PLAY_APP = 0;
    private final int POSITION_PLAY_SYS = 1;
    private final int LAST_WRITE_TIME = 2;
    private final int POSITION_REC_APP = 3;
    private final int POSITION_REC_SYS = 4;
    private final int LAST_READ_TIME = 5;
    private AcousticEchoCanceler aec = null;
    private boolean useBuiltInAEC = false;
    private int _streamType = 0;
    private int playWriten = 0;
    private int maxDelay = 0;
    private int totalDelay = 0;
    private int currentPlayoutVolume = -1;
    private VolumeBroadcastReceiver mVolumeBroadcastReceiver = null;

    public AudioDevice(long j) {
        this.mNativeHandle = 0L;
        this.mNativeHandle = j;
        try {
            this._playBuffer = ByteBuffer.allocateDirect(7680);
            this._recBuffer = ByteBuffer.allocateDirect(7680);
        } catch (Exception e) {
            Logging.m3708e("AudioDevice Java", "failed to allocate bytebuffer", e);
        }
        this._tempBufPlay = new byte[7680];
        this._tempBufRec = new byte[7680];
    }

    private boolean BuiltInAECIsAvailable() {
        try {
            return AcousticEchoCanceler.isAvailable();
        } catch (Exception e) {
            Logging.m3709e("AudioDevice Java", "Unable to query Audio Effect: Acoustic Echo Cancellation");
            return false;
        } catch (ExceptionInInitializerError e2) {
            Logging.m3708e("AudioDevice Java", "Unable to create AEC object ", e2);
            return false;
        }
    }

    private boolean BuiltInAECIsEnabled() {
        return this.useBuiltInAEC;
    }

    private int CheckAudioStatus(int i) {
        int i2 = 0;
        if (Build.VERSION.SDK_INT >= 24) {
            if (this._audioManager == null) {
                Context context = this._context;
                if (context == null) {
                    Logging.m3709e("AudioDevice Java", "CheckAudioStatus error");
                    return -1;
                }
                this._audioManager = (AudioManager) context.getSystemService("audio");
            }
            i2 = 0;
            if (i == 0) {
                if (this._context.checkPermission("android.permission.RECORD_AUDIO", Process.myPid(), Process.myUid()) != 0 || this._context.checkPermission("android.permission.MODIFY_AUDIO_SETTINGS", Process.myPid(), Process.myUid()) != 0) {
                    Logging.m3709e("AudioDevice Java", "CheckAudioStatus Microphone Permission denied");
                    return 2;
                } else if (this._audioManager == null) {
                    Logging.m3709e("AudioDevice Java", "CheckAudioStatus unkonwn error");
                    return -1;
                } else {
                    AudioRecord audioRecord = this._audioRecord;
                    int i3 = -1;
                    if (audioRecord != null) {
                        i3 = audioRecord.getAudioSessionId();
                    }
                    Iterator<AudioRecordingConfiguration> it = this._audioManager.getActiveRecordingConfigurations().iterator();
                    int i4 = 0;
                    while (true) {
                        i2 = i4;
                        if (!it.hasNext()) {
                            break;
                        } else if (it.next().getClientAudioSessionId() != i3) {
                            i4 = 1033;
                        }
                    }
                }
            }
        }
        return i2;
    }

    private boolean EnableBuiltInAEC(boolean z) {
        this.useBuiltInAEC = z;
        AcousticEchoCanceler acousticEchoCanceler = this.aec;
        if (acousticEchoCanceler != null) {
            if (acousticEchoCanceler.setEnabled(z) != 0) {
                Logging.m3709e("AudioDevice Java", "AcousticEchoCanceler.setEnabled failed");
                return false;
            }
            StringBuilder m8728C = C22128a.m8728C("AcousticEchoCanceler.getEnabled: ");
            m8728C.append(this.aec.getEnabled());
            Logging.m3709e("AudioDevice Java", m8728C.toString());
            return true;
        }
        return true;
    }

    private int GetAudioMode() {
        Context context;
        if (this._audioManager == null && (context = this._context) != null) {
            this._audioManager = (AudioManager) context.getSystemService("audio");
        }
        AudioManager audioManager = this._audioManager;
        if (audioManager == null) {
            Logging.m3709e("AudioDevice Java", "Could not change audio routing - no audio manager");
            return -1;
        }
        return audioManager.getMode();
    }

    private int GetNativePlayDelay() {
        if (this._recDelay < 0) {
            this._recDelay = -1L;
        }
        if (this.totalDelay < 0) {
            this.totalDelay = -1;
        }
        return this.totalDelay + ((int) this._recDelay);
    }

    private int GetNativeSampleRate() {
        Context context;
        if (this._audioManager == null && (context = this._context) != null) {
            this._audioManager = (AudioManager) context.getSystemService("audio");
        }
        AudioManager audioManager = this._audioManager;
        int i = 44100;
        if (audioManager == null) {
            Logging.m3704w("AudioDevice Java", "Could not set audio mode - no audio manager");
            return 44100;
        }
        String property = audioManager.getProperty("android.media.property.OUTPUT_SAMPLE_RATE");
        if (property != null) {
            i = Integer.parseInt(property);
        }
        return i;
    }

    private int GetPlayoutMaxVolume() {
        Context context;
        if (this._audioManager == null && (context = this._context) != null) {
            this._audioManager = (AudioManager) context.getSystemService("audio");
        }
        int i = -1;
        AudioManager audioManager = this._audioManager;
        if (audioManager != null) {
            i = audioManager.getStreamMaxVolume(this._streamType);
        }
        return i;
    }

    private int GetPlayoutVolume() {
        int i;
        Context context;
        if (this._audioManager == null && (context = this._context) != null) {
            this._audioManager = (AudioManager) context.getSystemService("audio");
        }
        try {
            AudioManager audioManager = this._audioManager;
            i = -1;
            if (audioManager != null) {
                i = audioManager.getStreamVolume(this._streamType);
            }
        } catch (Exception e) {
            Logging.m3709e("AudioDevice Java", "getStreamVolume failed! ");
            i = -1;
        }
        return i;
    }

    private int GetPreferedSampleRate() {
        int i;
        Context context;
        try {
            if (this._audioManager == null && (context = this._context) != null) {
                this._audioManager = (AudioManager) context.getSystemService("audio");
            }
            i = Integer.parseInt(this._audioManager.getProperty("android.media.property.OUTPUT_SAMPLE_RATE"));
        } catch (Exception e) {
            Logging.m3708e("AudioDevice Java", "GetPreferedSampleRate error", e);
            i = 0;
        }
        int i2 = i;
        if (i == 0) {
            i2 = 16000;
        }
        return i2;
    }

    private int GetUnderrunCount() {
        return Build.VERSION.SDK_INT >= 24 ? GetUnderrunCountOnNougatOrHigher() : GetUnderrunCountOnLowerThanNougat();
    }

    private int GetUnderrunCountOnLowerThanNougat() {
        return -1;
    }

    private int GetUnderrunCountOnNougatOrHigher() {
        int i;
        int i2 = 0;
        int i3 = 0;
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                i = this._audioTrack.getUnderrunCount();
            } catch (Exception e) {
                Logging.m3708e("AudioDevice Java", "getUnderrun fail ", e);
                i = 0;
            }
            int i4 = i - this._playPreviousUnderrun;
            if (i4 >= 0) {
                i3 = i4;
            }
            this._playPreviousUnderrun = i;
            i2 = i3;
            if (i3 > 0) {
                Logging.m3711d("AudioDevice Java", "Android AudioTrack underrun count: " + i3);
                i2 = i3;
            }
        }
        return i2;
    }

    private int InitPlayback(int i, int i2, int i3, int i4) {
        Context context;
        this._playLock.lock();
        this._streamType = i3;
        int i5 = (((i4 * i) * i2) * 2) / 1000;
        int i6 = 4;
        int minBufferSize = AudioTrack.getMinBufferSize(i, i2 == 2 ? 12 : 4, 2);
        StringBuilder m8716F = C22128a.m8716F("Java minimum playback buffer size is ", minBufferSize, ", profiledMiniOutBufferSize is ", i5, " stream type ");
        m8716F.append(this._streamType);
        Logging.m3711d("AudioDevice Java", m8716F.toString());
        if (minBufferSize < i5) {
            minBufferSize = i5;
        }
        this._bufferedPlaySamples = 0;
        this._currentTotalPostion = 0L;
        StringBuilder m8720E = C22128a.m8720E("Java playback buffer size is ", minBufferSize, ", duration is ");
        m8720E.append((minBufferSize * 1000) / ((i * i2) * 2));
        m8720E.append(" ms");
        Logging.m3711d("AudioDevice Java", m8720E.toString());
        AudioTrack audioTrack = this._audioTrack;
        if (audioTrack != null) {
            audioTrack.release();
            this._audioTrack = null;
        }
        try {
            int i7 = this._streamType;
            if (i2 == 2) {
                i6 = 12;
            }
            AudioTrack audioTrack2 = new AudioTrack(i7, i, i6, 2, minBufferSize, 1);
            this._audioTrack = audioTrack2;
            this._playbackSampleRate = i;
            this._playChannel = i2;
            this._playBufSize = minBufferSize;
            this._playbackRestartCount = 0;
            if (audioTrack2.getState() != 1) {
                Logging.m3709e("AudioDevice Java", "Java playback not initialized " + i);
                this._playLock.unlock();
                return -1;
            }
            Logging.m3711d("AudioDevice Java", "Java play sample rate is set to " + i);
            if (this._audioManager == null && (context = this._context) != null) {
                this._audioManager = (AudioManager) context.getSystemService("audio");
            }
            if (this._audioManager == null) {
                this._playLock.unlock();
                return 0;
            }
            this._playLock.unlock();
            return this._audioManager.getStreamMaxVolume(this._streamType);
        } catch (Exception e) {
            Logging.m3708e("AudioDevice Java", "Unable to new AudioTrack: ", e);
            this._playLock.unlock();
            return -1;
        }
    }

    private int InitRecording(int i, int i2, int i3) {
        this._recLock.lock();
        int minBufferSize = AudioRecord.getMinBufferSize(i2, i3 == 2 ? 12 : 16, 2);
        Logging.m3711d("AudioDevice Java", "Java minimum recording buffer size is " + minBufferSize);
        this._bufferedRecSamples = (i2 * 5) / 200;
        AcousticEchoCanceler acousticEchoCanceler = this.aec;
        if (acousticEchoCanceler != null) {
            acousticEchoCanceler.release();
            this.aec = null;
        }
        AudioRecord audioRecord = this._audioRecord;
        if (audioRecord != null) {
            audioRecord.release();
            this._audioRecord = null;
        }
        try {
            AudioRecord audioRecord2 = new AudioRecord(i, i2, i3 == 2 ? 12 : 16, 2, minBufferSize);
            this._audioRecord = audioRecord2;
            if (audioRecord2.getState() != 1) {
                Logging.m3709e("AudioDevice Java", "Java recording not initialized " + i2);
                this._recLock.unlock();
                return -2;
            }
            this._recordSampleRate = i2;
            this._recordChannel = i3;
            this._recordSource = i;
            this._recordBufSize = minBufferSize;
            this._recordRestartCount = 0;
            Logging.m3711d("AudioDevice Java", "Java recording sample rate set to " + i2);
            Logging.m3711d("AudioDevice Java", "AcousticEchoCanceler.isAvailable: " + BuiltInAECIsAvailable());
            if (!BuiltInAECIsAvailable()) {
                this._recLock.unlock();
                return this._bufferedRecSamples;
            }
            AcousticEchoCanceler create = AcousticEchoCanceler.create(this._audioRecord.getAudioSessionId());
            this.aec = create;
            if (create == null) {
                Logging.m3709e("AudioDevice Java", "AcousticEchoCanceler.create failed");
            } else {
                AudioEffect.Descriptor descriptor = create.getDescriptor();
                if (descriptor == null) {
                    Logging.m3709e("AudioDevice Java", "getDescriptor() failed");
                } else {
                    StringBuilder m8728C = C22128a.m8728C("AcousticEchoCanceler name: ");
                    m8728C.append(descriptor.name);
                    m8728C.append(", implementor: ");
                    m8728C.append(descriptor.implementor);
                    m8728C.append(", uuid: ");
                    m8728C.append(descriptor.uuid);
                    Logging.m3711d("AudioDevice Java", m8728C.toString());
                }
                EnableBuiltInAEC(this.useBuiltInAEC);
            }
            this._recLock.unlock();
            return this._bufferedRecSamples;
        } catch (Exception e) {
            Logging.m3708e("AudioDevice Java", "Unable to new AudioRecord: ", e);
            this._recLock.unlock();
            return -1;
        }
    }

    /* JADX WARN: Finally extract failed */
    private int PlayAudio(int i) {
        int i2;
        this._playLock.lock();
        try {
            try {
            } catch (Exception e) {
                Logging.m3708e("AudioDevice Java", "PlayAudio got fatal error ", e);
            }
            if (this._audioTrack == null) {
                this._playLock.unlock();
                return -2;
            } else if (!this._isPlaying) {
                Logging.m3704w("AudioDevice Java", "PlayAudio not ready!");
                this._playLock.unlock();
                return 0;
            } else {
                if (this._doPlayInit) {
                    try {
                        Process.setThreadPriority(-19);
                    } catch (Exception e2) {
                        Logging.m3708e("AudioDevice Java", "Set play thread priority failed: ", e2);
                    }
                    this._doPlayInit = false;
                    this.previous_time_ms = (System.nanoTime() / 1000) / 1000;
                }
                this._playBuffer.get(this._tempBufPlay);
                int write = this._audioTrack.write(this._tempBufPlay, 0, i);
                this._playBuffer.rewind();
                this._bufferedPlaySamples += write >> 1;
                this.playWriten += write;
                this._currentTotalPostion += i2 / this._playChannel;
                if (Build.VERSION.SDK_INT >= 24) {
                    long nanoTime = (System.nanoTime() / 1000) / 1000;
                    this.current_time_ms = nanoTime;
                    if (nanoTime - this.previous_time_ms >= 50) {
                        AudioTimestamp audioTimestamp = new AudioTimestamp();
                        this._audioTrack.getTimestamp(audioTimestamp);
                        long j = audioTimestamp.framePosition;
                        this._framePostion = j;
                        if (this.current_time_ms - this.previous_time_ms > 65) {
                            this._bufferedPlaySamples = (int) (this._currentTotalPostion - (this._playPosition / this._playChannel));
                        } else {
                            this._bufferedPlaySamples = (int) (this._currentTotalPostion - j);
                        }
                        this.previous_time_ms = (audioTimestamp.nanoTime / 1000) / 1000;
                    }
                }
                int playbackHeadPosition = this._audioTrack.getPlaybackHeadPosition() * this._playChannel;
                if (playbackHeadPosition < this._playPosition) {
                    this._playPosition = 0;
                }
                this._playPosition = playbackHeadPosition;
                long[] jArr = this._audioStatistic;
                long j2 = this._currentTotalPostion;
                int i3 = this._playbackSampleRate;
                jArr[0] = (j2 * 1000) / i3;
                jArr[1] = (playbackHeadPosition * 1000) / i3;
                jArr[2] = (System.nanoTime() / 1000) / 1000;
                boolean z = this._isRecording;
                if (write != i) {
                    if (this._playbackRestartCount <= 20) {
                        Logging.m3709e("AudioDevice Java", "Error writing AudioTrack! Restart AudioTrack " + this._playbackRestartCount);
                        this._playbackRestartCount = this._playbackRestartCount + 1;
                        this._audioTrack.stop();
                        this._audioTrack.release();
                        this._audioTrack = null;
                        try {
                            AudioTrack audioTrack = new AudioTrack(this._streamType, this._playbackSampleRate, this._playChannel == 2 ? 12 : 4, 2, this._playBufSize, 1);
                            this._audioTrack = audioTrack;
                            audioTrack.play();
                        } catch (Exception e3) {
                            Logging.m3708e("AudioDevice Java", "restart audio fail", e3);
                        }
                    }
                    this._playLock.unlock();
                    return write;
                }
                this._playLock.unlock();
                return this._bufferedPlaySamples * this._playChannel;
            }
        } catch (Throwable th) {
            this._playLock.unlock();
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0167, code lost:
        r8._bufferedPlaySamples += r14 >> 1;
        r8.playWriten += r14;
        r8._currentTotalPostion += r0 / r8._playChannel;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x018f, code lost:
        if (android.os.Build.VERSION.SDK_INT < 24) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0192, code lost:
        r0 = (java.lang.System.nanoTime() / 1000) / 1000;
        r8.current_time_ms = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01b0, code lost:
        if ((r0 - r8.previous_time_ms) < 50) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01b3, code lost:
        r0 = new android.media.AudioTimestamp();
        r8._audioTrack.getTimestamp(r0);
        r0 = r0.framePosition;
        r8._framePostion = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01dd, code lost:
        if ((r8.current_time_ms - r8.previous_time_ms) <= 65) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01e0, code lost:
        r8._bufferedPlaySamples = (int) (r8._currentTotalPostion - (r8._playPosition / r8._playChannel));
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01f7, code lost:
        r8._bufferedPlaySamples = (int) (r8._currentTotalPostion - r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0204, code lost:
        r8.previous_time_ms = (r0.nanoTime / 1000) / 1000;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0214, code lost:
        r0 = r8._audioTrack.getPlaybackHeadPosition() * r8._playChannel;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0227, code lost:
        if (r0 >= r8._playPosition) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x022a, code lost:
        r8._playPosition = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0230, code lost:
        r8._playPosition = r0;
        r0 = r8._audioStatistic;
        r0 = r8._currentTotalPostion;
        r0 = r8._playbackSampleRate;
        r0[0] = (r0 * 1000) / r0;
        r0[1] = (r0 * 1000) / r0;
        r0[2] = (java.lang.System.nanoTime() / 1000) / 1000;
        r0 = r8._isRecording;
     */
    /* JADX WARN: Finally extract failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int PlayNoBlockAudio(int r9) {
        /*
            Method dump skipped, instructions count: 684
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.agora.rtc.audio.AudioDevice.PlayNoBlockAudio(int):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00fb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int QuerySpeakerStatus() {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.agora.rtc.audio.AudioDevice.QuerySpeakerStatus():int");
    }

    /* JADX WARN: Finally extract failed */
    private int RecordAudio(int i) {
        int i2;
        int i3;
        int bufferSizeInFrames;
        this._recLock.lock();
        try {
            try {
            } catch (Exception e) {
                i2 = -10;
                Logging.m3708e("AudioDevice Java", "RecordAudio try failed: ", e);
            }
            if (!this._isRecording) {
                Logging.m3704w("AudioDevice Java", "RecordAudio not ready!");
                this._recLock.unlock();
                return 0;
            }
            if (this._audioRecord == null) {
                i3 = -4;
            } else {
                if (this._doRecInit) {
                    try {
                        Process.setThreadPriority(-19);
                    } catch (Exception e2) {
                        Logging.m3708e("AudioDevice Java", "Set rec thread priority failed: ", e2);
                    }
                    this._doRecInit = false;
                }
                this._recBuffer.rewind();
                int read = this._audioRecord.read(this._tempBufRec, 0, i);
                this._recBuffer.put(this._tempBufRec);
                if (this._recDelay == 10) {
                    if (Build.VERSION.SDK_INT >= 24) {
                        AudioTimestamp audioTimestamp = new AudioTimestamp();
                        this._audioRecord.getTimestamp(audioTimestamp, 0);
                        long nanoTime = ((System.nanoTime() - audioTimestamp.nanoTime) / 1000) / 1000;
                        this._recDelay = nanoTime;
                        if (nanoTime > 50) {
                            this._recDelay = 10L;
                        }
                    } else {
                        this._recDelay = 10L;
                    }
                    if (this._recStartDelay == 0) {
                        this._recStartDelay = (((int) (System.nanoTime() - this._recStartTS)) / 1000) / 1000;
                    }
                    this._recDelay += this._recStartDelay;
                }
                if (this._lastRecDelay != this._recDelay) {
                    Logging.m3706i("AudioDevice Java", "frames  " + this._audioRecord.getBufferSizeInFrames() + " recDelay " + this._recDelay + " caculated frames delay " + (bufferSizeInFrames / (this._audioRecord.getSampleRate() / 1000)));
                    this._lastRecDelay = this._recDelay;
                }
                if (read >= 0) {
                    this._recPosition += (read / this._recordChannel) / 2;
                }
                long[] jArr = this._audioStatistic;
                jArr[3] = (this._recPosition * 1000) / this._recordSampleRate;
                jArr[5] = (System.nanoTime() / 1000) / 1000;
                if (read == i) {
                    this._recordRestartCount = 0;
                    i2 = 0;
                    this._recLock.unlock();
                    return i2;
                }
                if (this._recordRestartCount % 10 == 0) {
                    Logging.m3709e("AudioDevice Java", "Error reading AudioRecord! AudioRecord.read returns " + read);
                }
                int i4 = this._recordRestartCount;
                if (i4 <= 100) {
                    this._recordRestartCount = i4 + 1;
                    this._audioRecord.stop();
                    this._audioRecord.release();
                    this._audioRecord = null;
                    AudioRecord audioRecord = new AudioRecord(this._recordSource, this._recordSampleRate, this._recordChannel == 2 ? 12 : 16, 2, this._recordBufSize);
                    this._audioRecord = audioRecord;
                    audioRecord.startRecording();
                    this._recStartTS = System.nanoTime();
                    this._recStartDelay = 0;
                    this._recLock.unlock();
                    return read;
                }
                Logging.m3709e("AudioDevice Java", "Failed to restart AudioRecord,  readBytes : " + read);
                this._recordRestartCount = 0;
                i3 = -20;
            }
            this._recLock.unlock();
            return i3;
        } catch (Throwable th) {
            this._recLock.unlock();
            throw th;
        }
    }

    private int SetAudioMode(int i) {
        Context context;
        try {
            if (this._audioManager == null && (context = this._context) != null) {
                this._audioManager = (AudioManager) context.getSystemService("audio");
            }
            AudioManager audioManager = this._audioManager;
            if (audioManager == null) {
                Logging.m3709e("AudioDevice Java", "Could not change audio routing - no audio manager");
                return -1;
            }
            audioManager.getStreamMaxVolume(3);
            this._audioManager.getStreamVolume(3);
            this._audioManager.getStreamMaxVolume(0);
            this._audioManager.getStreamVolume(0);
            if (this._audioManager.getMode() == i) {
                return 0;
            }
            if (i == 0) {
                this._audioManager.setMode(0);
                return 0;
            } else if (i == 1) {
                this._audioManager.setMode(1);
                return 0;
            } else if (i == 2) {
                this._audioManager.setMode(2);
                return 0;
            } else if (i != 3) {
                this._audioManager.setMode(0);
                return 0;
            } else {
                this._audioManager.setMode(3);
                return 0;
            }
        } catch (Exception e) {
            Logging.m3709e("AudioDevice Java", "set audio mode failed! ");
            return 0;
        }
    }

    private int SetPlayoutSpeaker(boolean z) {
        Context context;
        if (this._audioManager == null && (context = this._context) != null) {
            this._audioManager = (AudioManager) context.getSystemService("audio");
        }
        AudioManager audioManager = this._audioManager;
        if (audioManager == null) {
            Logging.m3709e("AudioDevice Java", "Could not change audio routing - no audio manager");
            return -1;
        }
        audioManager.setSpeakerphoneOn(z);
        return 0;
    }

    private int SetPlayoutVolume(int i) {
        Context context;
        if (this._audioManager == null && (context = this._context) != null) {
            this._audioManager = (AudioManager) context.getSystemService("audio");
        }
        int i2 = -1;
        AudioManager audioManager = this._audioManager;
        if (audioManager != null) {
            int streamMaxVolume = audioManager.getStreamMaxVolume(this._streamType);
            this._audioManager.setStreamVolume(this._streamType, i >= 255 ? streamMaxVolume : (i * streamMaxVolume) / 255, 0);
            i2 = 0;
        }
        return i2;
    }

    /* JADX WARN: Finally extract failed */
    private int StartPlayback() {
        this._playLock.lock();
        this._firstRenderTS = 0L;
        this._renderStart = false;
        try {
            try {
                this.playWriten = 0;
                this._playBuffer.rewind();
                this._audioTrack.play();
                this.maxDelay = 0;
                this.totalDelay = 0;
                this._isPlaying = true;
                this._playLock.unlock();
                monitorPlayoutVolumeChange(true);
                notifyPlayoutVolumeChange();
                return 0;
            } catch (IllegalStateException e) {
                e.printStackTrace();
                this._playLock.unlock();
                return -1;
            } catch (Exception e2) {
                Logging.m3708e("AudioDevice Java", "startplayback fail", e2);
                this._playLock.unlock();
                return -1;
            }
        } catch (Throwable th) {
            this._playLock.unlock();
            throw th;
        }
    }

    private int StartRecording() {
        this._recLock.lock();
        try {
            try {
                try {
                    AudioRecord audioRecord = this._audioRecord;
                    if (audioRecord != null) {
                        audioRecord.startRecording();
                        Logging.m3709e("AudioDevice Java", "Recording start time " + System.nanoTime());
                        this._recStartTS = System.nanoTime();
                        this._recStartDelay = 0;
                        this._recDelay = 10L;
                        this._isRecording = true;
                        this._recPosition = 0L;
                        this._recLock.unlock();
                        return 0;
                    }
                } catch (Exception e) {
                    Logging.m3708e("AudioDevice Java", "failed to startRecording Exception", e);
                }
                this._recLock.unlock();
                return -2;
            } catch (IllegalStateException e2) {
                Logging.m3708e("AudioDevice Java", "failed to startRecording", e2);
                this._recLock.unlock();
                return -1;
            }
        } catch (Throwable th) {
            this._recLock.unlock();
            throw th;
        }
    }

    private int StopPlayback() {
        this._firstRenderTS = 0L;
        this._isPlaying = false;
        this._playLock.lock();
        try {
            try {
                try {
                    this._audioTrack.setVolume(0.0f);
                    if (this._audioTrack.getPlayState() == 3) {
                        this._audioTrack.stop();
                        this._audioTrack.flush();
                    }
                    this._audioTrack.release();
                    this._audioTrack = null;
                } catch (Exception e) {
                    Logging.m3708e("AudioDevice Java", "Stop playback fail", e);
                    AudioTrack audioTrack = this._audioTrack;
                    if (audioTrack != null) {
                        audioTrack.flush();
                        this._audioTrack.release();
                        this._audioTrack = null;
                    }
                }
                this._doPlayInit = true;
                this._playLock.unlock();
                monitorPlayoutVolumeChange(false);
                return 0;
            } catch (IllegalStateException e2) {
                Logging.m3708e("AudioDevice Java", "Unable to stop playback: ", e2);
                AudioTrack audioTrack2 = this._audioTrack;
                if (audioTrack2 != null) {
                    audioTrack2.flush();
                    this._audioTrack.release();
                    this._audioTrack = null;
                }
                this._doPlayInit = true;
                this._playLock.unlock();
                return -1;
            }
        } catch (Throwable th) {
            AudioTrack audioTrack3 = this._audioTrack;
            if (audioTrack3 != null) {
                audioTrack3.flush();
                this._audioTrack.release();
                this._audioTrack = null;
            }
            this._doPlayInit = true;
            this._playLock.unlock();
            throw th;
        }
    }

    private int StopRecording() {
        this._recLock.lock();
        try {
            try {
                if (this._audioRecord.getRecordingState() == 3) {
                    this._audioRecord.stop();
                }
                AcousticEchoCanceler acousticEchoCanceler = this.aec;
                if (acousticEchoCanceler != null) {
                    acousticEchoCanceler.release();
                    this.aec = null;
                }
                this._audioRecord.release();
                this._audioRecord = null;
                this._isRecording = false;
            } catch (Exception e) {
                Logging.m3708e("AudioDevice Java", "error in StopRecording ", e);
                AudioRecord audioRecord = this._audioRecord;
                if (audioRecord != null) {
                    audioRecord.release();
                    this._audioRecord = null;
                }
            }
            this._doRecInit = true;
            this._recLock.unlock();
            return 0;
        } catch (Throwable th) {
            AudioRecord audioRecord2 = this._audioRecord;
            if (audioRecord2 != null) {
                audioRecord2.release();
                this._audioRecord = null;
            }
            this._doRecInit = true;
            this._recLock.unlock();
            throw th;
        }
    }

    private int enableHardwareEarback(boolean z) {
        Logging.m3706i("AudioDevice Java", "enableHardwareEarback " + z);
        int enableHardwareEarback = HardwareEarbackController.getInstance(this._context).enableHardwareEarback(z);
        Logging.m3706i("AudioDevice Java", "enableHardwareEarback " + z + " ret " + enableHardwareEarback);
        return enableHardwareEarback;
    }

    private int getPlayBufferMs() {
        int i;
        int i2 = this._playbackSampleRate;
        if (i2 == 0 || (i = this._playChannel) == 0) {
            return 10;
        }
        return ((this._playBufSize / (i * 2)) * 1000) / i2;
    }

    private boolean isHardwareEarbackSupported() {
        Context context = this._context;
        return context != null ? HardwareEarbackController.getInstance(context).isHardwareEarbackSupported() : false;
    }

    private int setHardwareEarbackVolume(int i) {
        Context context = this._context;
        return context != null ? HardwareEarbackController.getInstance(context).setHardwareEarbackVolume(i) : -1;
    }

    public void monitorPlayoutVolumeChange(boolean z) {
        VolumeBroadcastReceiver volumeBroadcastReceiver;
        if (!z) {
            try {
                Context context = this._context;
                if (context != null && (volumeBroadcastReceiver = this.mVolumeBroadcastReceiver) != null) {
                    context.unregisterReceiver(volumeBroadcastReceiver);
                }
            } catch (IllegalArgumentException e) {
            }
            this.mVolumeBroadcastReceiver = null;
        } else if (this.mVolumeBroadcastReceiver != null) {
        } else {
            try {
                VolumeBroadcastReceiver volumeBroadcastReceiver2 = new VolumeBroadcastReceiver(this);
                this.mVolumeBroadcastReceiver = volumeBroadcastReceiver2;
                Context context2 = this._context;
                if (context2 == null || volumeBroadcastReceiver2 == null) {
                    return;
                }
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction(VOLUME_CHANGED_ACTION);
                context2.registerReceiver(this.mVolumeBroadcastReceiver, intentFilter);
            } catch (Exception e2) {
                Logging.m3708e("AudioDevice Java", "Unable to create VolumeBroadcastReceiver, ", e2);
            }
        }
    }

    public native void nativeNotifyPlayoutVolumeChange(long j, int i);

    public void notifyPlayoutVolumeChange() {
        synchronized (this) {
            int GetPlayoutVolume = GetPlayoutVolume();
            if (this.currentPlayoutVolume != GetPlayoutVolume) {
                nativeNotifyPlayoutVolumeChange(this.mNativeHandle, GetPlayoutVolume);
                this.currentPlayoutVolume = GetPlayoutVolume;
                Logging.m3706i("AudioDevice Java", " notifyPlayoutVolumeChange: " + GetPlayoutVolume);
            }
        }
    }
}
