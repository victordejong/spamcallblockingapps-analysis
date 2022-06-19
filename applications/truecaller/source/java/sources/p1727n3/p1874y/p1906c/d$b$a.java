package p1727n3.p1874y.p1906c;

import android.media.AudioManager;
import androidx.media.AudioAttributesCompat;
import p1727n3.p1874y.p1906c.C27468d;
/* renamed from: n3.y.c.d$b$a */
/* loaded from: classes-dex2jar.jar:n3/y/c/d$b$a.class */
public class d$b$a implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: a */
    public float f77317a;

    /* renamed from: b */
    public float f77318b;

    /* renamed from: c */
    public final /* synthetic */ C27468d.b f77319c;

    public d$b$a(C27468d.b bVar) {
        this.f77319c = bVar;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(int i) {
        if (i == -3) {
            synchronized (this.f77319c.d) {
                AudioAttributesCompat audioAttributesCompat = this.f77319c.h;
                if (audioAttributesCompat != null) {
                    boolean z = false;
                    if (audioAttributesCompat.getContentType() == 1) {
                        z = true;
                    }
                    if (z) {
                        this.f77319c.f.mo42795S();
                    } else {
                        float m42796Q0 = this.f77319c.f.m42796Q0();
                        float f = 0.2f * m42796Q0;
                        synchronized (this.f77319c.d) {
                            this.f77317a = m42796Q0;
                            this.f77318b = f;
                        }
                        this.f77319c.f.m42779s1(f);
                    }
                }
            }
        } else if (i == -2) {
            this.f77319c.f.mo42795S();
            synchronized (this.f77319c.d) {
                this.f77319c.j = true;
            }
        } else if (i == -1) {
            this.f77319c.f.mo42795S();
            synchronized (this.f77319c.d) {
                this.f77319c.j = false;
            }
        } else if (i != 1) {
        } else {
            if (this.f77319c.f.mo42804I() == 1) {
                synchronized (this.f77319c.d) {
                    C27468d.b bVar = this.f77319c;
                    if (bVar.j) {
                        bVar.f.mo42793W();
                    }
                }
                return;
            }
            float m42796Q02 = this.f77319c.f.m42796Q0();
            synchronized (this.f77319c.d) {
                if (m42796Q02 == this.f77318b) {
                    this.f77319c.f.m42779s1(this.f77317a);
                }
            }
        }
    }
}
