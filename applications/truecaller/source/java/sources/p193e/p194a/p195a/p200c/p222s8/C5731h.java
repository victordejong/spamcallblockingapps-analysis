package p193e.p194a.p195a.p200c.p222s8;

import android.content.Context;
import android.media.MediaPlayer;
import android.media.audiofx.Visualizer;
import android.net.Uri;
import com.truecaller.messaging.conversation.voice_notes.PlayerVisualizerView;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p437c.p578p.C10480a;
/* renamed from: e.a.a.c.s8.h */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/s8/h.class */
public final class C5731h implements AbstractC5733j {

    /* renamed from: a */
    public final Context f19194a;

    /* renamed from: b */
    public MediaPlayer f19195b;

    /* renamed from: c */
    public Uri f19196c;

    /* renamed from: d */
    public AbstractC5732i f19197d;

    /* renamed from: e */
    public ScheduledExecutorService f19198e;

    /* renamed from: f */
    public Runnable f19199f;

    /* renamed from: g */
    public AbstractC5726c f19200g;

    public C5731h(Context context) {
        this.f19194a = context.getApplicationContext();
    }

    @Override // p193e.p194a.p195a.p200c.p222s8.AbstractC5733j
    /* renamed from: a */
    public void mo32753a(Uri uri) {
        this.f19196c = uri;
        if (this.f19195b == null) {
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.f19195b = mediaPlayer;
            mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: e.a.a.c.s8.b
                @Override // android.media.MediaPlayer.OnCompletionListener
                public final void onCompletion(MediaPlayer mediaPlayer2) {
                    C5731h c5731h = C5731h.this;
                    c5731h.m32754d(true);
                    c5731h.f19200g.mo32755a(C19291g.m13630F(c5731h.f19194a));
                    AbstractC5732i abstractC5732i = c5731h.f19197d;
                    if (abstractC5732i != null) {
                        abstractC5732i.mo30221a(3);
                        c5731h.f19197d.mo30219c();
                        c5731h.release();
                    }
                }
            });
        }
        try {
            this.f19195b.setDataSource(this.f19194a, uri);
        } catch (Exception e) {
            e.toString();
        }
        try {
            this.f19195b.prepare();
        } catch (Exception e2) {
            e2.toString();
        }
        int duration = this.f19195b.getDuration();
        AbstractC5732i abstractC5732i = this.f19197d;
        if (abstractC5732i != null) {
            abstractC5732i.mo30220b(duration);
            this.f19197d.mo30222C0(0);
            String.format(Locale.getDefault(), "firing setPlaybackDuration(%d sec)", Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(duration)));
        }
    }

    @Override // p193e.p194a.p195a.p200c.p222s8.AbstractC5733j
    /* renamed from: b */
    public void mo32752b(AbstractC5732i abstractC5732i) {
        this.f19197d = abstractC5732i;
    }

    @Override // p193e.p194a.p195a.p200c.p222s8.AbstractC5733j
    /* renamed from: c */
    public void mo32751c(PlayerVisualizerView playerVisualizerView) {
        MediaPlayer mediaPlayer = this.f19195b;
        if (mediaPlayer == null || mediaPlayer.isPlaying()) {
            return;
        }
        if (playerVisualizerView != null) {
            MediaPlayer mediaPlayer2 = this.f19195b;
            Objects.requireNonNull(mediaPlayer2, "Cannot link to null MediaPlayer");
            Visualizer visualizer = new Visualizer(mediaPlayer2.getAudioSessionId());
            playerVisualizerView.f13117c = visualizer;
            visualizer.setEnabled(false);
            playerVisualizerView.f13117c.setCaptureSize(Visualizer.getCaptureSizeRange()[1]);
            playerVisualizerView.f13117c.setDataCaptureListener(new C5734k(playerVisualizerView), Visualizer.getMaxCaptureRate() / 2, true, true);
            playerVisualizerView.f13117c.setEnabled(true);
        }
        this.f19200g = C10480a.m25898s2(C19291g.m13630F(this.f19194a));
        this.f19195b.start();
        AbstractC5732i abstractC5732i = this.f19197d;
        if (abstractC5732i != null) {
            abstractC5732i.mo30221a(0);
        }
        if (this.f19198e == null) {
            this.f19198e = Executors.newSingleThreadScheduledExecutor();
        }
        if (this.f19199f == null) {
            this.f19199f = new Runnable() { // from class: e.a.a.c.s8.a
                @Override // java.lang.Runnable
                public final void run() {
                    C5731h c5731h = C5731h.this;
                    MediaPlayer mediaPlayer3 = c5731h.f19195b;
                    if (mediaPlayer3 == null || !mediaPlayer3.isPlaying()) {
                        return;
                    }
                    int currentPosition = c5731h.f19195b.getCurrentPosition();
                    AbstractC5732i abstractC5732i2 = c5731h.f19197d;
                    if (abstractC5732i2 == null) {
                        return;
                    }
                    abstractC5732i2.mo30222C0(currentPosition);
                }
            };
        }
        this.f19198e.scheduleAtFixedRate(this.f19199f, 0L, 1000L, TimeUnit.MILLISECONDS);
    }

    /* renamed from: d */
    public final void m32754d(boolean z) {
        AbstractC5732i abstractC5732i;
        ScheduledExecutorService scheduledExecutorService = this.f19198e;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
            this.f19198e = null;
            this.f19199f = null;
            if (!z || (abstractC5732i = this.f19197d) == null) {
                return;
            }
            abstractC5732i.mo30222C0(0);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p222s8.AbstractC5733j
    public boolean isPlaying() {
        MediaPlayer mediaPlayer = this.f19195b;
        if (mediaPlayer != null) {
            return mediaPlayer.isPlaying();
        }
        return false;
    }

    @Override // p193e.p194a.p195a.p200c.p222s8.AbstractC5733j
    public void pause() {
        MediaPlayer mediaPlayer = this.f19195b;
        if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
            return;
        }
        this.f19200g.mo32755a(C19291g.m13630F(this.f19194a));
        this.f19195b.pause();
        AbstractC5732i abstractC5732i = this.f19197d;
        if (abstractC5732i == null) {
            return;
        }
        abstractC5732i.mo30221a(1);
    }

    @Override // p193e.p194a.p195a.p200c.p222s8.AbstractC5733j
    public void release() {
        MediaPlayer mediaPlayer = this.f19195b;
        if (mediaPlayer != null) {
            mediaPlayer.release();
            this.f19195b = null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p222s8.AbstractC5733j
    public void reset() {
        MediaPlayer mediaPlayer = this.f19195b;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            mo32753a(this.f19196c);
            AbstractC5732i abstractC5732i = this.f19197d;
            if (abstractC5732i != null) {
                abstractC5732i.mo30221a(2);
            }
            m32754d(true);
        }
    }
}
