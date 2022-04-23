package com.callapp.contacts.recorder;

import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Handler;
import android.widget.SeekBar;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.CallRecorderPlayerCard;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.IoUtils;
import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/SeekBarManager.class */
public class SeekBarManager {

    /* renamed from: a  reason: collision with root package name */
    protected SeekBar f15673a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f15674b;

    /* renamed from: c  reason: collision with root package name */
    private MediaPlayer f15675c;
    private final OnSeekBarChanged f;
    private final String g;
    private CallRecorder h;

    /* renamed from: d  reason: collision with root package name */
    private SeekBarUpdateRunnable f15676d = new SeekBarUpdateRunnable();
    private Handler e = new Handler();
    private AudioManager.OnAudioFocusChangeListener j = new AudioManager.OnAudioFocusChangeListener() { // from class: com.callapp.contacts.recorder.SeekBarManager.1
        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            if (i == -2) {
                CLog.a(SeekBarManager.class, "audio focus loss transient");
                SeekBarManager.this.d();
            } else if (i == -1) {
                CLog.a(SeekBarManager.class, "audio focus loss");
                SeekBarManager.this.d();
            } else if (i == 1) {
                CLog.a(SeekBarManager.class, "audio focus gain");
                if (SeekBarManager.this.f15675c != null && !SeekBarManager.this.f15674b) {
                    SeekBarManager.this.f();
                }
            } else if (i == 2) {
                CLog.a(SeekBarManager.class, "audio focus gain transient");
                if (SeekBarManager.this.f15675c != null && !SeekBarManager.this.f15674b) {
                    SeekBarManager.this.f();
                }
            } else if (i == 3) {
                CLog.a(SeekBarManager.class, "audio focus gain transient may duck");
                if (SeekBarManager.this.f15675c != null && !SeekBarManager.this.f15674b) {
                    SeekBarManager.this.f();
                }
            }
        }
    };
    private AudioManager i = (AudioManager) CallAppApplication.get().getSystemService("audio");

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged.class */
    public interface OnSeekBarChanged {
        void onPlayerPaused();

        void onPlayerReset();

        void onPlayerStarted();

        void seekBarUpdated(int i, int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable.class */
    public class SeekBarUpdateRunnable implements Runnable {
        private SeekBarUpdateRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SeekBarManager.this.f15675c != null) {
                SeekBarManager.this.f15673a.setProgress(SeekBarManager.this.f15675c.getCurrentPosition());
                if (!(SeekBarManager.this.f == null || SeekBarManager.this.f15675c == null)) {
                    SeekBarManager.this.f.seekBarUpdated(SeekBarManager.this.f15675c.getCurrentPosition() / 1000, SeekBarManager.this.f15675c.getDuration() / 1000);
                }
                SeekBarManager.this.e.postDelayed(this, 350L);
                return;
            }
            SeekBarManager.this.e.removeCallbacks(this);
        }
    }

    public SeekBarManager(SeekBar seekBar, OnSeekBarChanged onSeekBarChanged, CallRecorder callRecorder, String str) {
        this.f = onSeekBarChanged;
        this.f15673a = seekBar;
        this.g = str;
        a(callRecorder);
    }

    public SeekBarManager(SeekBar seekBar, OnSeekBarChanged onSeekBarChanged, String str) {
        this.f = onSeekBarChanged;
        this.f15673a = seekBar;
        this.g = str;
    }

    private void e() {
        int requestAudioFocus = this.i.requestAudioFocus(this.j, 3, 1);
        if (requestAudioFocus == 1) {
            CLog.a(SeekBarManager.class, "audio focus request granted");
        } else if (requestAudioFocus == 0) {
            CLog.a(SeekBarManager.class, "audio focus request failed");
        }
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (this.h != null) {
            try {
                if (!this.f15675c.isPlaying()) {
                    this.f15675c.seekTo(this.f15673a.getProgress());
                    this.f15675c.start();
                    this.e.post(this.f15676d);
                }
                if (this.f != null) {
                    AnalyticsManager.get().a(Constants.CALL_RECORDER, "Play file", this.g);
                    this.f.onPlayerStarted();
                }
            } catch (Exception e) {
                CLog.a(CallRecorderPlayerCard.class, e.getMessage());
            }
        }
    }

    public final void a() {
        c();
        AudioManager audioManager = this.i;
        if (audioManager != null) {
            audioManager.abandonAudioFocus(this.j);
        }
        MediaPlayer mediaPlayer = this.f15675c;
        if (mediaPlayer != null) {
            if (mediaPlayer.isPlaying()) {
                try {
                    this.f15675c.stop();
                    this.f15675c.setOnCompletionListener(null);
                } catch (IllegalStateException e) {
                    CLog.a(CallRecorderPlayerCard.class, e.getMessage());
                }
            }
            this.f15675c.release();
            this.f15675c = null;
        }
    }

    public final void a(CallRecorder callRecorder) {
        if (this.f15675c == null && callRecorder != null) {
            this.h = callRecorder;
            MediaPlayer create = MediaPlayer.create(CallAppApplication.get(), IoUtils.a(CallAppApplication.get(), new File(callRecorder.getFileName())));
            this.f15675c = create;
            if (create != null) {
                this.f15673a.setMax(create.getDuration());
                this.f15675c.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.callapp.contacts.recorder.SeekBarManager.2
                    @Override // android.media.MediaPlayer.OnErrorListener
                    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                        CLog.a(SeekBarManager.class, "MediaPlayer error - what: " + i + " extra: " + i2);
                        return true;
                    }
                });
                this.f15675c.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.callapp.contacts.recorder.SeekBarManager.3
                    @Override // android.media.MediaPlayer.OnCompletionListener
                    public void onCompletion(MediaPlayer mediaPlayer) {
                        SeekBarManager.this.c();
                    }
                });
                this.f15673a.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.callapp.contacts.recorder.SeekBarManager.4
                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                        if (z && SeekBarManager.this.f15675c != null) {
                            SeekBarManager.this.f15675c.seekTo(i);
                            SeekBarManager.this.e.post(SeekBarManager.this.f15676d);
                        }
                    }

                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                    public void onStartTrackingTouch(SeekBar seekBar) {
                    }

                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                    public void onStopTrackingTouch(SeekBar seekBar) {
                    }
                });
                return;
            }
            FeedbackManager.get().a("Can't MediaPlayer.create() in seekBarManager", 80);
        }
    }

    public final void b() {
        MediaPlayer mediaPlayer = this.f15675c;
        if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
            e();
        } else {
            d();
        }
    }

    public final void c() {
        Handler handler = this.e;
        if (handler != null) {
            handler.removeCallbacks(this.f15676d);
        }
        this.f15673a.setProgress(0);
        OnSeekBarChanged onSeekBarChanged = this.f;
        if (onSeekBarChanged != null) {
            onSeekBarChanged.onPlayerReset();
            MediaPlayer mediaPlayer = this.f15675c;
            if (mediaPlayer != null) {
                this.f.seekBarUpdated(0, mediaPlayer.getDuration() / 1000);
            }
        }
    }

    public final void d() {
        this.f15674b = true;
        MediaPlayer mediaPlayer = this.f15675c;
        if (mediaPlayer != null && mediaPlayer.isPlaying()) {
            try {
                this.f15675c.pause();
            } catch (IllegalStateException e) {
                CLog.a(SeekBarManager.class, e.getMessage());
            }
        }
        Handler handler = this.e;
        if (handler != null) {
            handler.removeCallbacks(this.f15676d);
        }
        OnSeekBarChanged onSeekBarChanged = this.f;
        if (onSeekBarChanged != null) {
            onSeekBarChanged.onPlayerPaused();
        }
    }
}
