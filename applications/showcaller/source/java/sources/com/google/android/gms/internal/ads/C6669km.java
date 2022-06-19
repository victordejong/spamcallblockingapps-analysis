package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.ads.internal.C5667s;
import java.util.concurrent.Future;
/* renamed from: com.google.android.gms.internal.ads.km */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/km.class */
public final class C6669km {

    /* renamed from: a */
    private C6297am f25252a;

    /* renamed from: b */
    private boolean f25253b;

    /* renamed from: c */
    private final Context f25254c;

    /* renamed from: d */
    private final Object f25255d = new Object();

    public C6669km(Context context) {
        this.f25254c = context;
    }

    /* renamed from: f */
    public static /* synthetic */ void m13857f(C6669km c6669km) {
        synchronized (c6669km.f25255d) {
            C6297am c6297am = c6669km.f25252a;
            if (c6297am == null) {
                return;
            }
            c6297am.m17112a();
            c6669km.f25252a = null;
            Binder.flushPendingCommands();
        }
    }

    /* renamed from: e */
    public final Future<C6743mm> m13858e(zzayn zzaynVar) {
        C6446em c6446em = new C6446em(this);
        C6595im c6595im = new C6595im(this, zzaynVar, c6446em);
        C6632jm c6632jm = new C6632jm(this, c6446em);
        synchronized (this.f25255d) {
            C6297am c6297am = new C6297am(this.f25254c, C5667s.m18146r().m17910a(), c6595im, c6632jm);
            this.f25252a = c6297am;
            c6297am.m17093q();
        }
        return c6446em;
    }
}
