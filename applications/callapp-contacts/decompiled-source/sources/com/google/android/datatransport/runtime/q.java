package com.google.android.datatransport.runtime;

import android.content.Context;
import com.google.android.datatransport.b;
import com.google.android.datatransport.g;
import com.google.android.datatransport.runtime.d.a;
import com.google.android.datatransport.runtime.scheduling.e;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.h;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.o;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.p;
import java.util.Collections;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/q.class */
public class q implements p {

    /* renamed from: b  reason: collision with root package name */
    private static volatile r f20458b;

    /* renamed from: a  reason: collision with root package name */
    public final h f20459a;

    /* renamed from: c  reason: collision with root package name */
    private final a f20460c;

    /* renamed from: d  reason: collision with root package name */
    private final a f20461d;
    private final e e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(a aVar, a aVar2, e eVar, h hVar, o oVar) {
        this.f20460c = aVar;
        this.f20461d = aVar2;
        this.e = eVar;
        this.f20459a = hVar;
        oVar.f20588a.execute(p.a(oVar));
    }

    public static q a() {
        r rVar = f20458b;
        if (rVar != null) {
            return rVar.b();
        }
        throw new IllegalStateException("Not initialized!");
    }

    public static void a(Context context) {
        if (f20458b == null) {
            synchronized (q.class) {
                try {
                    if (f20458b == null) {
                        f20458b = d.a().a(context).a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final g a(e eVar) {
        return new m(eVar instanceof f ? Collections.unmodifiableSet(((f) eVar).c()) : Collections.singleton(b.a("proto")), l.d().a(eVar.a()).a(eVar.b()).a(), this);
    }

    @Override // com.google.android.datatransport.runtime.p
    public final void a(k kVar, com.google.android.datatransport.h hVar) {
        e eVar = this.e;
        l a2 = kVar.a();
        eVar.a(l.d().a(a2.a()).a(kVar.c().c()).a(a2.b()).a(), h.i().a(this.f20460c.a()).b(this.f20461d.a()).a(kVar.b()).a(new g(kVar.e(), kVar.d().apply(kVar.c().b()))).a(kVar.c().a()).b(), hVar);
    }
}
