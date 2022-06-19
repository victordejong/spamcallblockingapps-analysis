package p122i2;

import ba.AbstractC0761j;
import ba.C0748b;
import ba.C0758g;
import ba.C0759h;
import ba.C0760i;
import ba.C0767o;
import com.google.android.play.core.assetpacks.AssetPackState;
import p134j4.C3250t;
import p189o4.C3873j;
import p220r4.C4196e;
import p220r4.C4203l;
import p220r4.C4206o;
/* renamed from: i2.y */
/* loaded from: classes-dex2jar.jar:i2/y.class */
public /* synthetic */ class RunnableC3089y implements Runnable, AbstractC0761j {

    /* renamed from: a */
    public final /* synthetic */ int f10462a;

    /* renamed from: b */
    public final Object f10463b;

    /* renamed from: c */
    public final Object f10464c;

    public RunnableC3089y(C0748b c0748b) {
        this.f10462a = 3;
        this.f10464c = c0748b;
        this.f10463b = new C0760i();
    }

    public /* synthetic */ RunnableC3089y(Object obj, Object obj2, int i) {
        this.f10462a = i;
        this.f10463b = obj;
        this.f10464c = obj2;
    }

    public RunnableC3089y(C4196e c4196e, C4206o c4206o) {
        this.f10462a = 2;
        this.f10464c = c4196e;
        this.f10463b = c4206o;
    }

    @Override // ba.AbstractC0761j
    /* renamed from: a */
    public void mo2657a(C0767o c0767o, Object obj) {
        ((C0760i) this.f10463b).m7394a(C0759h.m7395a(c0767o, obj));
        ((C0748b) this.f10464c).f2834j.execute(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        switch (this.f10462a) {
            case 0:
                ((AbstractC3069e) this.f10463b).mo106a(C3078n.f10429m, ((C3068d) this.f10464c).f10405a);
                return;
            case 1:
                ((C3250t) this.f10463b).m1513c((AssetPackState) this.f10464c);
                return;
            case 2:
                synchronized (((C4196e) this.f10464c).f13181b) {
                    C0758g c0758g = ((C4196e) this.f10464c).f13182c;
                    if (c0758g != null) {
                        C3873j c3873j = (C3873j) c0758g.f2854b;
                        C4203l c4203l = (C4203l) c0758g.f2855c;
                        synchronized (c3873j.f12361f) {
                            c3873j.f12360e.remove(c4203l);
                        }
                    }
                }
                return;
            default:
                C0759h m7393b = ((C0760i) this.f10463b).m7393b();
                if (m7393b == null) {
                    throw new IllegalStateException("No pending post available");
                }
                ((C0748b) this.f10464c).m7408c(m7393b);
                return;
        }
    }
}
