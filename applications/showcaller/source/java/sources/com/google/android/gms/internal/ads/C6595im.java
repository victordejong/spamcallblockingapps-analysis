package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.AbstractC6113d;
import java.io.IOException;
import java.util.concurrent.Future;
/* renamed from: com.google.android.gms.internal.ads.im */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/im.class */
public final class C6595im implements AbstractC6113d.AbstractC6114a {

    /* renamed from: a */
    final /* synthetic */ zzayn f24347a;

    /* renamed from: b */
    final /* synthetic */ vi0 f24348b;

    /* renamed from: c */
    final /* synthetic */ C6669km f24349c;

    public C6595im(C6669km c6669km, zzayn zzaynVar, vi0 vi0Var) {
        this.f24349c = c6669km;
        this.f24347a = zzaynVar;
        this.f24348b = vi0Var;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6114a
    /* renamed from: J0 */
    public final void mo6337J0(Bundle bundle) {
        Object obj;
        boolean z;
        C6297am c6297am;
        obj = this.f24349c.f25255d;
        synchronized (obj) {
            z = this.f24349c.f25253b;
            if (z) {
                return;
            }
            this.f24349c.f25253b = true;
            c6297am = this.f24349c.f25252a;
            if (c6297am == null) {
                return;
            }
            r03<?> mo11184d = qi0.f28495a.mo11184d(new Runnable(this, c6297am, this.f24347a, this.f24348b) { // from class: com.google.android.gms.internal.ads.fm

                /* renamed from: d */
                private final C6595im f22967d;

                /* renamed from: e */
                private final C6297am f22968e;

                /* renamed from: f */
                private final zzayn f22969f;

                /* renamed from: g */
                private final vi0 f22970g;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f22967d = this;
                    this.f22968e = c6297am;
                    this.f22969f = zzaynVar;
                    this.f22970g = vi0Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C6595im c6595im = this.f22967d;
                    C6297am c6297am2 = this.f22968e;
                    zzayn zzaynVar2 = this.f22969f;
                    vi0 vi0Var2 = this.f22970g;
                    try {
                        C6371cm m16556j0 = c6297am2.m16556j0();
                        zzayk m16022y4 = c6297am2.m16557i0() ? m16556j0.m16022y4(zzaynVar2) : m16556j0.m16023a3(zzaynVar2);
                        if (!m16022y4.zza()) {
                            vi0Var2.m10014f(new RuntimeException("No entry contents."));
                            C6669km.m13857f(c6595im.f24349c);
                            return;
                        }
                        C6557hm c6557hm = new C6557hm(c6595im, m16022y4.m8092k0(), 1);
                        int read = c6557hm.read();
                        if (read == -1) {
                            throw new IOException("Unable to read from cache.");
                        }
                        c6557hm.unread(read);
                        vi0Var2.m10016c(C6743mm.m13160a(c6557hm, m16022y4.m8090m0(), m16022y4.m8087p0(), m16022y4.m8088o0(), m16022y4.m8089n0()));
                    } catch (RemoteException | IOException e) {
                        ei0.m15466d("Unable to obtain a cache service instance.", e);
                        vi0Var2.m10014f(e);
                        C6669km.m13857f(c6595im.f24349c);
                    }
                }
            });
            vi0 vi0Var = this.f24348b;
            vi0Var.mo10015d(new Runnable(vi0Var, mo11184d) { // from class: com.google.android.gms.internal.ads.gm

                /* renamed from: d */
                private final vi0 f23397d;

                /* renamed from: e */
                private final Future f23398e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23397d = vi0Var;
                    this.f23398e = mo11184d;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    vi0 vi0Var3 = this.f23397d;
                    Future future = this.f23398e;
                    if (vi0Var3.isCancelled()) {
                        future.cancel(true);
                    }
                }
            }, qi0.f28500f);
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6114a
    /* renamed from: c0 */
    public final void mo6333c0(int i) {
    }
}
