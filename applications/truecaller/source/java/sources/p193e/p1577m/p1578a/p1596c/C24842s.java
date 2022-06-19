package p193e.p1577m.p1578a.p1596c;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.Objects;
import p193e.p1577m.p1578a.p1596c.C24842s;
import p193e.p1577m.p1578a.p1596c.p1598c1.C24209i;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.s */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/s.class */
public final class C24842s {

    /* renamed from: a */
    public final AudioManager f69668a;

    /* renamed from: b */
    public final C24843a f69669b;

    /* renamed from: c */
    public AbstractC24844b f69670c;

    /* renamed from: d */
    public C24209i f69671d;

    /* renamed from: f */
    public int f69673f;

    /* renamed from: h */
    public AudioFocusRequest f69675h;

    /* renamed from: g */
    public float f69674g = 1.0f;

    /* renamed from: e */
    public int f69672e = 0;

    /* renamed from: e.m.a.c.s$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/s$a.class */
    public class C24843a implements AudioManager.OnAudioFocusChangeListener {

        /* renamed from: a */
        public final Handler f69676a;

        public C24843a(Handler handler) {
            C24842s.this = r4;
            this.f69676a = handler;
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(final int i) {
            this.f69676a.post(new Runnable() { // from class: e.m.a.c.a
                @Override // java.lang.Runnable
                public final void run() {
                    C24842s.C24843a c24843a = C24842s.C24843a.this;
                    int i2 = i;
                    C24842s c24842s = C24842s.this;
                    Objects.requireNonNull(c24842s);
                    boolean z = true;
                    if (i2 != -3 && i2 != -2) {
                        if (i2 == -1) {
                            c24842s.m4425b(-1);
                            c24842s.m4426a();
                            return;
                        } else if (i2 != 1) {
                            return;
                        } else {
                            c24842s.m4424c(1);
                            c24842s.m4425b(1);
                            return;
                        }
                    }
                    if (i2 != -2) {
                        C24209i c24209i = c24842s.f69671d;
                        if (c24209i == null || c24209i.f67012a != 1) {
                            z = false;
                        }
                        if (!z) {
                            c24842s.m4424c(3);
                            return;
                        }
                    }
                    c24842s.m4425b(0);
                    c24842s.m4424c(2);
                }
            });
        }
    }

    /* renamed from: e.m.a.c.s$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/s$b.class */
    public interface AbstractC24844b {
    }

    public C24842s(Context context, Handler handler, AbstractC24844b abstractC24844b) {
        this.f69668a = (AudioManager) context.getApplicationContext().getSystemService("audio");
        this.f69670c = abstractC24844b;
        this.f69669b = new C24843a(handler);
    }

    /* renamed from: a */
    public final void m4426a() {
        if (this.f69672e == 0) {
            return;
        }
        if (C24773d0.f69427a >= 26) {
            AudioFocusRequest audioFocusRequest = this.f69675h;
            if (audioFocusRequest != null) {
                this.f69668a.abandonAudioFocusRequest(audioFocusRequest);
            }
        } else {
            this.f69668a.abandonAudioFocus(this.f69669b);
        }
        m4424c(0);
    }

    /* renamed from: b */
    public final void m4425b(int i) {
        AbstractC24844b abstractC24844b = this.f69670c;
        if (abstractC24844b != null) {
            SimpleExoPlayer simpleExoPlayer = SimpleExoPlayer.this;
            simpleExoPlayer.updatePlayWhenReady(simpleExoPlayer.getPlayWhenReady(), i);
        }
    }

    /* renamed from: c */
    public final void m4424c(int i) {
        if (this.f69672e == i) {
            return;
        }
        this.f69672e = i;
        float f = i == 3 ? 0.2f : 1.0f;
        if (this.f69674g == f) {
            return;
        }
        this.f69674g = f;
        AbstractC24844b abstractC24844b = this.f69670c;
        if (abstractC24844b == null) {
            return;
        }
        SimpleExoPlayer.this.sendVolumeToRenderers();
    }

    /* renamed from: d */
    public int m4423d(boolean z, int i) {
        int i2;
        if (i == 1 || this.f69673f != 1) {
            m4426a();
            return z ? 1 : -1;
        }
        int i3 = -1;
        if (z) {
            if (this.f69672e == 1) {
                i3 = 1;
            } else {
                if (C24773d0.f69427a >= 26) {
                    AudioFocusRequest audioFocusRequest = this.f69675h;
                    if (audioFocusRequest == null) {
                        AudioFocusRequest.Builder builder = audioFocusRequest == null ? new AudioFocusRequest.Builder(this.f69673f) : new AudioFocusRequest.Builder(this.f69675h);
                        C24209i c24209i = this.f69671d;
                        boolean z2 = c24209i != null && c24209i.f67012a == 1;
                        Objects.requireNonNull(c24209i);
                        this.f69675h = builder.setAudioAttributes(c24209i.m5452a()).setWillPauseWhenDucked(z2).setOnAudioFocusChangeListener(this.f69669b).build();
                    }
                    i2 = this.f69668a.requestAudioFocus(this.f69675h);
                } else {
                    AudioManager audioManager = this.f69668a;
                    C24843a c24843a = this.f69669b;
                    C24209i c24209i2 = this.f69671d;
                    Objects.requireNonNull(c24209i2);
                    i2 = audioManager.requestAudioFocus(c24843a, C24773d0.m4610n(c24209i2.f67014c), this.f69673f);
                }
                if (i2 == 1) {
                    m4424c(1);
                    i3 = 1;
                } else {
                    m4424c(0);
                    i3 = -1;
                }
            }
        }
        return i3;
    }
}
