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

    /* renamed from: a */
    protected SeekBar f27416a;

    /* renamed from: b */
    public boolean f27417b;

    /* renamed from: c */
    private MediaPlayer f27418c;

    /* renamed from: f */
    private final OnSeekBarChanged f27421f;

    /* renamed from: g */
    private final String f27422g;

    /* renamed from: h */
    private CallRecorder f27423h;

    /* renamed from: d */
    private SeekBarUpdateRunnable f27419d = new SeekBarUpdateRunnable();

    /* renamed from: e */
    private Handler f27420e = new Handler();

    /* renamed from: j */
    private AudioManager.OnAudioFocusChangeListener f27425j = new AudioManager.OnAudioFocusChangeListener() { // from class: com.callapp.contacts.recorder.SeekBarManager.1
        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            if (i == -2) {
                CLog.m27611a(SeekBarManager.class, "audio focus loss transient");
                SeekBarManager.this.m27842d();
            } else if (i == -1) {
                CLog.m27611a(SeekBarManager.class, "audio focus loss");
                SeekBarManager.this.m27842d();
            } else if (i == 1) {
                CLog.m27611a(SeekBarManager.class, "audio focus gain");
                if (SeekBarManager.this.f27418c == null || SeekBarManager.this.f27417b) {
                    return;
                }
                SeekBarManager.this.m27838f();
            } else if (i == 2) {
                CLog.m27611a(SeekBarManager.class, "audio focus gain transient");
                if (SeekBarManager.this.f27418c == null || SeekBarManager.this.f27417b) {
                    return;
                }
                SeekBarManager.this.m27838f();
            } else if (i != 3) {
            } else {
                CLog.m27611a(SeekBarManager.class, "audio focus gain transient may duck");
                if (SeekBarManager.this.f27418c == null || SeekBarManager.this.f27417b) {
                    return;
                }
                SeekBarManager.this.m27838f();
            }
        }
    };

    /* renamed from: i */
    private AudioManager f27424i = (AudioManager) CallAppApplication.get().getSystemService("audio");

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged.class */
    public interface OnSeekBarChanged {
        void onPlayerPaused();

        void onPlayerReset();

        void onPlayerStarted();

        void seekBarUpdated(int i, int i2);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable.class */
    public class SeekBarUpdateRunnable implements Runnable {
        private SeekBarUpdateRunnable() {
            SeekBarManager.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SeekBarManager.this.f27418c == null) {
                SeekBarManager.this.f27420e.removeCallbacks(this);
                return;
            }
            SeekBarManager.this.f27416a.setProgress(SeekBarManager.this.f27418c.getCurrentPosition());
            if (SeekBarManager.this.f27421f != null && SeekBarManager.this.f27418c != null) {
                SeekBarManager.this.f27421f.seekBarUpdated(SeekBarManager.this.f27418c.getCurrentPosition() / 1000, SeekBarManager.this.f27418c.getDuration() / 1000);
            }
            SeekBarManager.this.f27420e.postDelayed(this, 350L);
        }
    }

    public SeekBarManager(SeekBar seekBar, OnSeekBarChanged onSeekBarChanged, CallRecorder callRecorder, String str) {
        this.f27421f = onSeekBarChanged;
        this.f27416a = seekBar;
        this.f27422g = str;
        m27848a(callRecorder);
    }

    public SeekBarManager(SeekBar seekBar, OnSeekBarChanged onSeekBarChanged, String str) {
        this.f27421f = onSeekBarChanged;
        this.f27416a = seekBar;
        this.f27422g = str;
    }

    /* renamed from: e */
    private void m27840e() {
        int requestAudioFocus = this.f27424i.requestAudioFocus(this.f27425j, 3, 1);
        if (requestAudioFocus == 1) {
            CLog.m27611a(SeekBarManager.class, "audio focus request granted");
        } else if (requestAudioFocus == 0) {
            CLog.m27611a(SeekBarManager.class, "audio focus request failed");
        }
        m27838f();
    }

    /* renamed from: f */
    public void m27838f() {
        if (this.f27423h == null) {
            return;
        }
        try {
            if (!this.f27418c.isPlaying()) {
                this.f27418c.seekTo(this.f27416a.getProgress());
                this.f27418c.start();
                this.f27420e.post(this.f27419d);
            }
            if (this.f27421f == null) {
                return;
            }
            AnalyticsManager.get().m28449a(Constants.CALL_RECORDER, "Play file", this.f27422g);
            this.f27421f.onPlayerStarted();
        } catch (Exception e) {
            CLog.m27611a(CallRecorderPlayerCard.class, e.getMessage());
        }
    }

    /* renamed from: a */
    public final void m27849a() {
        m27844c();
        AudioManager audioManager = this.f27424i;
        if (audioManager != null) {
            audioManager.abandonAudioFocus(this.f27425j);
        }
        MediaPlayer mediaPlayer = this.f27418c;
        if (mediaPlayer != null) {
            if (mediaPlayer.isPlaying()) {
                try {
                    this.f27418c.stop();
                    this.f27418c.setOnCompletionListener(null);
                } catch (IllegalStateException e) {
                    CLog.m27611a(CallRecorderPlayerCard.class, e.getMessage());
                }
            }
            this.f27418c.release();
            this.f27418c = null;
        }
    }

    /* renamed from: a */
    public final void m27848a(CallRecorder callRecorder) {
        if (this.f27418c != null || callRecorder == null) {
            return;
        }
        this.f27423h = callRecorder;
        MediaPlayer create = MediaPlayer.create(CallAppApplication.get(), IoUtils.m27518a(CallAppApplication.get(), new File(callRecorder.getFileName())));
        this.f27418c = create;
        if (create == null) {
            FeedbackManager.get().m28670a("Can't MediaPlayer.create() in seekBarManager", 80);
            return;
        }
        this.f27416a.setMax(create.getDuration());
        this.f27418c.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.callapp.contacts.recorder.SeekBarManager.2
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                CLog.m27611a(SeekBarManager.class, "MediaPlayer error - what: " + i + " extra: " + i2);
                return true;
            }
        });
        this.f27418c.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.callapp.contacts.recorder.SeekBarManager.3
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                SeekBarManager.this.m27844c();
            }
        });
        this.f27416a.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.callapp.contacts.recorder.SeekBarManager.4
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (!z || SeekBarManager.this.f27418c == null) {
                    return;
                }
                SeekBarManager.this.f27418c.seekTo(i);
                SeekBarManager.this.f27420e.post(SeekBarManager.this.f27419d);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }
        });
    }

    /* renamed from: b */
    public final void m27846b() {
        MediaPlayer mediaPlayer = this.f27418c;
        if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
            m27840e();
        } else {
            m27842d();
        }
    }

    /* renamed from: c */
    public final void m27844c() {
        Handler handler = this.f27420e;
        if (handler != null) {
            handler.removeCallbacks(this.f27419d);
        }
        this.f27416a.setProgress(0);
        OnSeekBarChanged onSeekBarChanged = this.f27421f;
        if (onSeekBarChanged != null) {
            onSeekBarChanged.onPlayerReset();
            MediaPlayer mediaPlayer = this.f27418c;
            if (mediaPlayer == null) {
                return;
            }
            this.f27421f.seekBarUpdated(0, mediaPlayer.getDuration() / 1000);
        }
    }

    /* renamed from: d */
    public final void m27842d() {
        this.f27417b = true;
        MediaPlayer mediaPlayer = this.f27418c;
        if (mediaPlayer != null && mediaPlayer.isPlaying()) {
            try {
                this.f27418c.pause();
            } catch (IllegalStateException e) {
                CLog.m27611a(SeekBarManager.class, e.getMessage());
            }
        }
        Handler handler = this.f27420e;
        if (handler != null) {
            handler.removeCallbacks(this.f27419d);
        }
        OnSeekBarChanged onSeekBarChanged = this.f27421f;
        if (onSeekBarChanged != null) {
            onSeekBarChanged.onPlayerPaused();
        }
    }
}
