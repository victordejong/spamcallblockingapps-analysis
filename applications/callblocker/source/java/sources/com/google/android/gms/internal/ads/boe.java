package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.dynamic.AbstractC2731a;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/boe.class */
public final class boe extends AbstractBinderC3466rl implements aqz {
    @GuardedBy("this")

    /* renamed from: a */
    private AbstractC3467rm f11661a;
    @GuardedBy("this")

    /* renamed from: b */
    private arc f11662b;
    @GuardedBy("this")

    /* renamed from: c */
    private ave f11663c;

    @Override // com.google.android.gms.internal.ads.AbstractC3467rm
    /* renamed from: a */
    public final void mo7231a(Bundle bundle) {
        synchronized (this) {
            if (this.f11661a != null) {
                this.f11661a.mo7231a(bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3467rm
    /* renamed from: a */
    public final void mo7230a(AbstractC2731a abstractC2731a) {
        synchronized (this) {
            if (this.f11661a != null) {
                this.f11661a.mo7230a(abstractC2731a);
            }
            if (this.f11663c != null) {
                this.f11663c.mo11706a();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3467rm
    /* renamed from: a */
    public final void mo7229a(AbstractC2731a abstractC2731a, int i) {
        synchronized (this) {
            if (this.f11661a != null) {
                this.f11661a.mo7229a(abstractC2731a, i);
            }
            if (this.f11663c != null) {
                this.f11663c.mo11705a(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3467rm
    /* renamed from: a */
    public final void mo7228a(AbstractC2731a abstractC2731a, C3472rr c3472rr) {
        synchronized (this) {
            if (this.f11661a != null) {
                this.f11661a.mo7228a(abstractC2731a, c3472rr);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aqz
    /* renamed from: a */
    public final void mo11743a(arc arcVar) {
        synchronized (this) {
            this.f11662b = arcVar;
        }
    }

    /* renamed from: a */
    public final void m11745a(ave aveVar) {
        synchronized (this) {
            this.f11663c = aveVar;
        }
    }

    /* renamed from: a */
    public final void m11744a(AbstractC3467rm abstractC3467rm) {
        synchronized (this) {
            this.f11661a = abstractC3467rm;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3467rm
    /* renamed from: b */
    public final void mo7227b(AbstractC2731a abstractC2731a) {
        synchronized (this) {
            if (this.f11661a != null) {
                this.f11661a.mo7227b(abstractC2731a);
            }
            if (this.f11662b != null) {
                this.f11662b.mo11699a();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3467rm
    /* renamed from: b */
    public final void mo7226b(AbstractC2731a abstractC2731a, int i) {
        synchronized (this) {
            if (this.f11661a != null) {
                this.f11661a.mo7226b(abstractC2731a, i);
            }
            if (this.f11662b != null) {
                this.f11662b.mo11698a(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3467rm
    /* renamed from: c */
    public final void mo7225c(AbstractC2731a abstractC2731a) {
        synchronized (this) {
            if (this.f11661a != null) {
                this.f11661a.mo7225c(abstractC2731a);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3467rm
    /* renamed from: d */
    public final void mo7224d(AbstractC2731a abstractC2731a) {
        synchronized (this) {
            if (this.f11661a != null) {
                this.f11661a.mo7224d(abstractC2731a);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3467rm
    /* renamed from: e */
    public final void mo7223e(AbstractC2731a abstractC2731a) {
        synchronized (this) {
            if (this.f11661a != null) {
                this.f11661a.mo7223e(abstractC2731a);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3467rm
    /* renamed from: f */
    public final void mo7222f(AbstractC2731a abstractC2731a) {
        synchronized (this) {
            if (this.f11661a != null) {
                this.f11661a.mo7222f(abstractC2731a);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3467rm
    /* renamed from: g */
    public final void mo7221g(AbstractC2731a abstractC2731a) {
        synchronized (this) {
            if (this.f11661a != null) {
                this.f11661a.mo7221g(abstractC2731a);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3467rm
    /* renamed from: h */
    public final void mo7220h(AbstractC2731a abstractC2731a) {
        synchronized (this) {
            if (this.f11661a != null) {
                this.f11661a.mo7220h(abstractC2731a);
            }
        }
    }
}
