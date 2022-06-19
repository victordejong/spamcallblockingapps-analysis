package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.common.internal.AbstractC6113d;
/* renamed from: com.google.android.gms.internal.ads.yl */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yl.class */
public final class C7186yl {

    /* renamed from: a */
    private final Runnable f32535a = new RunnableC7038ul(this);

    /* renamed from: b */
    private final Object f32536b = new Object();

    /* renamed from: c */
    private C6297am f32537c;

    /* renamed from: d */
    private Context f32538d;

    /* renamed from: e */
    private C6371cm f32539e;

    /* renamed from: j */
    public static /* synthetic */ void m8781j(C7186yl c7186yl) {
        synchronized (c7186yl.f32536b) {
            C6297am c6297am = c7186yl.f32537c;
            if (c6297am == null) {
                return;
            }
            if (c6297am.m17110b() || c7186yl.f32537c.m17103f()) {
                c7186yl.f32537c.m17112a();
            }
            c7186yl.f32537c = null;
            c7186yl.f32539e = null;
            Binder.flushPendingCommands();
        }
    }

    /* renamed from: l */
    public final void m8779l() {
        synchronized (this.f32536b) {
            if (this.f32538d != null && this.f32537c == null) {
                C6297am m8782i = m8782i(new C7112wl(this), new C7149xl(this));
                this.f32537c = m8782i;
                m8782i.m17093q();
            }
        }
    }

    /* renamed from: d */
    public final void m8787d(Context context) {
        if (context == null) {
            return;
        }
        synchronized (this.f32536b) {
            if (this.f32538d != null) {
                return;
            }
            this.f32538d = context.getApplicationContext();
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25470E2)).booleanValue()) {
                m8779l();
            } else {
                if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25462D2)).booleanValue()) {
                    C5667s.m18157g().m13876b(new C7075vl(this));
                }
            }
        }
    }

    /* renamed from: e */
    public final void m8786e() {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25478F2)).booleanValue()) {
            synchronized (this.f32536b) {
                m8779l();
                au2 au2Var = C5679c2.f18451a;
                au2Var.removeCallbacks(this.f32535a);
                au2Var.postDelayed(this.f32535a, ((Long) C7192yr.m8714c().m14263c(C6679kw.f25486G2)).longValue());
            }
        }
    }

    /* renamed from: f */
    public final zzayk m8785f(zzayn zzaynVar) {
        synchronized (this.f32536b) {
            if (this.f32539e == null) {
                return new zzayk();
            }
            try {
                if (this.f32537c.m16557i0()) {
                    return this.f32539e.m16022y4(zzaynVar);
                }
                return this.f32539e.m16023a3(zzaynVar);
            } catch (RemoteException e) {
                ei0.m15466d("Unable to call into cache service.", e);
                return new zzayk();
            }
        }
    }

    /* renamed from: g */
    public final long m8784g(zzayn zzaynVar) {
        synchronized (this.f32536b) {
            if (this.f32539e == null) {
                return -2L;
            }
            if (this.f32537c.m16557i0()) {
                try {
                    return this.f32539e.m16024A4(zzaynVar);
                } catch (RemoteException e) {
                    ei0.m15466d("Unable to call into cache service.", e);
                }
            }
            return -2L;
        }
    }

    /* renamed from: i */
    protected final C6297am m8782i(AbstractC6113d.AbstractC6114a abstractC6114a, AbstractC6113d.AbstractC6115b abstractC6115b) {
        C6297am c6297am;
        synchronized (this) {
            c6297am = new C6297am(this.f32538d, C5667s.m18146r().m17910a(), abstractC6114a, abstractC6115b);
        }
        return c6297am;
    }
}
