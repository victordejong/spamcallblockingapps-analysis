package p1727n3.p1874y.p1876b.p1877a.p1879n0;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import java.util.Objects;
import p1727n3.p1874y.p1876b.p1877a.k0$c;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.y.b.a.n0.e */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/n0/e.class */
public final class C27116e {

    /* renamed from: a */
    public final AudioManager f75828a;

    /* renamed from: c */
    public final AbstractC27119c f75830c;

    /* renamed from: d */
    public C27113c f75831d;

    /* renamed from: f */
    public int f75833f;

    /* renamed from: h */
    public AudioFocusRequest f75835h;

    /* renamed from: g */
    public float f75834g = 1.0f;

    /* renamed from: b */
    public final C27118b f75829b = new C27118b(null);

    /* renamed from: e */
    public int f75832e = 0;

    /* renamed from: n3.y.b.a.n0.e$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/n0/e$b.class */
    public class C27118b implements AudioManager.OnAudioFocusChangeListener {
        public C27118b(C27117a c27117a) {
            C27116e.this = r4;
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            if (i == -3) {
                C27116e c27116e = C27116e.this;
                C27113c c27113c = c27116e.f75831d;
                if (c27113c != null && c27113c.f75820a == 1) {
                    c27116e.f75832e = 2;
                } else {
                    c27116e.f75832e = 3;
                }
            } else if (i == -2) {
                C27116e.this.f75832e = 2;
            } else if (i == -1) {
                C27116e.this.f75832e = -1;
            } else if (i != 1) {
                return;
            } else {
                C27116e.this.f75832e = 1;
            }
            C27116e c27116e2 = C27116e.this;
            int i2 = c27116e2.f75832e;
            if (i2 == -1) {
                ((k0$c) c27116e2.f75830c).m914c(-1);
                C27116e.this.m842a(true);
            } else if (i2 != 0) {
                if (i2 == 1) {
                    ((k0$c) c27116e2.f75830c).m914c(1);
                } else if (i2 == 2) {
                    ((k0$c) c27116e2.f75830c).m914c(0);
                } else if (i2 != 3) {
                    throw new IllegalStateException(C22128a.m8690L1(38, "Unknown audio focus state: ", C27116e.this.f75832e));
                }
            }
            C27116e c27116e3 = C27116e.this;
            float f = c27116e3.f75832e == 3 ? 0.2f : 1.0f;
            if (c27116e3.f75834g != f) {
                c27116e3.f75834g = f;
                ((k0$c) c27116e3.f75830c).f75735a.j();
            }
        }
    }

    /* renamed from: n3.y.b.a.n0.e$c */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/n0/e$c.class */
    public interface AbstractC27119c {
    }

    public C27116e(Context context, AbstractC27119c abstractC27119c) {
        this.f75828a = (AudioManager) context.getApplicationContext().getSystemService("audio");
        this.f75830c = abstractC27119c;
    }

    /* renamed from: a */
    public final void m842a(boolean z) {
        int i = this.f75833f;
        if (i == 0 && this.f75832e == 0) {
            return;
        }
        if (i == 1 && this.f75832e != -1 && !z) {
            return;
        }
        if (C27445x.f77229a >= 26) {
            AudioFocusRequest audioFocusRequest = this.f75835h;
            if (audioFocusRequest != null) {
                this.f75828a.abandonAudioFocusRequest(audioFocusRequest);
            }
        } else {
            this.f75828a.abandonAudioFocus(this.f75829b);
        }
        this.f75832e = 0;
    }

    /* renamed from: b */
    public final int m841b() {
        int i;
        if (this.f75833f == 0) {
            if (this.f75832e == 0) {
                return 1;
            }
            m842a(true);
            return 1;
        }
        if (this.f75832e == 0) {
            if (C27445x.f77229a >= 26) {
                AudioFocusRequest audioFocusRequest = this.f75835h;
                if (audioFocusRequest == null) {
                    AudioFocusRequest.Builder builder = audioFocusRequest == null ? new AudioFocusRequest.Builder(this.f75833f) : new AudioFocusRequest.Builder(this.f75835h);
                    C27113c c27113c = this.f75831d;
                    boolean z = c27113c != null && c27113c.f75820a == 1;
                    Objects.requireNonNull(c27113c);
                    this.f75835h = builder.setAudioAttributes(c27113c.m843a()).setWillPauseWhenDucked(z).setOnAudioFocusChangeListener(this.f75829b).build();
                }
                i = this.f75828a.requestAudioFocus(this.f75835h);
            } else {
                AudioManager audioManager = this.f75828a;
                C27118b c27118b = this.f75829b;
                C27113c c27113c2 = this.f75831d;
                Objects.requireNonNull(c27113c2);
                i = audioManager.requestAudioFocus(c27118b, C27445x.m272o(c27113c2.f75822c), this.f75833f);
            }
            this.f75832e = i == 1 ? 1 : 0;
        }
        int i2 = this.f75832e;
        if (i2 == 0) {
            return -1;
        }
        int i3 = 1;
        if (i2 == 2) {
            i3 = 0;
        }
        return i3;
    }
}
