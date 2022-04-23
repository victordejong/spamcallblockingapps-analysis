package com.google.android.datatransport.runtime;

import android.content.Context;
import com.google.android.datatransport.runtime.a.a.e;
import com.google.android.datatransport.runtime.backends.j;
import com.google.android.datatransport.runtime.backends.l;
import com.google.android.datatransport.runtime.d.b;
import com.google.android.datatransport.runtime.d.c;
import com.google.android.datatransport.runtime.i;
import com.google.android.datatransport.runtime.r;
import com.google.android.datatransport.runtime.scheduling.a.ab;
import com.google.android.datatransport.runtime.scheduling.a.ah;
import com.google.android.datatransport.runtime.scheduling.a.e;
import com.google.android.datatransport.runtime.scheduling.a.f;
import com.google.android.datatransport.runtime.scheduling.a.g;
import com.google.android.datatransport.runtime.scheduling.a.i;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.g;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.h;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.n;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.o;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.s;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/d.class */
public final class d extends r {

    /* renamed from: a  reason: collision with root package name */
    private javax.a.a<Executor> f20436a;

    /* renamed from: b  reason: collision with root package name */
    private javax.a.a<Context> f20437b;

    /* renamed from: c  reason: collision with root package name */
    private javax.a.a f20438c;

    /* renamed from: d  reason: collision with root package name */
    private javax.a.a f20439d;
    private javax.a.a e;
    private javax.a.a<i> f;
    private javax.a.a<g> g;
    private javax.a.a<s> h;
    private javax.a.a<com.google.android.datatransport.runtime.scheduling.a> i;
    private javax.a.a<h> j;
    private javax.a.a<o> k;
    private javax.a.a<q> l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/d$a.class */
    public static final class a implements r.a {

        /* renamed from: a  reason: collision with root package name */
        private Context f20440a;

        private a() {
        }

        @Override // com.google.android.datatransport.runtime.r.a
        public final /* bridge */ /* synthetic */ r.a a(Context context) {
            this.f20440a = (Context) e.a(context);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.r.a
        public final r a() {
            Context context = this.f20440a;
            if (context != null) {
                return new d(context);
            }
            throw new IllegalStateException(Context.class.getCanonicalName() + " must be set");
        }
    }

    private d(Context context) {
        i iVar;
        b bVar;
        c cVar;
        com.google.android.datatransport.runtime.scheduling.a.e eVar;
        f fVar;
        b bVar2;
        c cVar2;
        com.google.android.datatransport.runtime.scheduling.a.g gVar;
        b bVar3;
        c cVar3;
        b bVar4;
        b bVar5;
        c cVar4;
        iVar = i.a.f20447a;
        this.f20436a = com.google.android.datatransport.runtime.a.a.a.a(iVar);
        com.google.android.datatransport.runtime.a.a.b a2 = com.google.android.datatransport.runtime.a.a.c.a(context);
        this.f20437b = a2;
        bVar = b.a.f20441a;
        cVar = c.a.f20442a;
        j jVar = new j(a2, bVar, cVar);
        this.f20438c = jVar;
        this.f20439d = com.google.android.datatransport.runtime.a.a.a.a(new l(this.f20437b, jVar));
        javax.a.a<Context> aVar = this.f20437b;
        eVar = e.a.f20498a;
        fVar = f.a.f20499a;
        this.e = new ah(aVar, eVar, fVar);
        bVar2 = b.a.f20441a;
        cVar2 = c.a.f20442a;
        gVar = g.a.f20500a;
        this.f = com.google.android.datatransport.runtime.a.a.a.a(new ab(bVar2, cVar2, gVar, this.e));
        bVar3 = b.a.f20441a;
        com.google.android.datatransport.runtime.scheduling.f fVar2 = new com.google.android.datatransport.runtime.scheduling.f(bVar3);
        this.g = fVar2;
        javax.a.a<Context> aVar2 = this.f20437b;
        javax.a.a<com.google.android.datatransport.runtime.scheduling.a.i> aVar3 = this.f;
        cVar3 = c.a.f20442a;
        com.google.android.datatransport.runtime.scheduling.g gVar2 = new com.google.android.datatransport.runtime.scheduling.g(aVar2, aVar3, fVar2, cVar3);
        this.h = gVar2;
        javax.a.a<Executor> aVar4 = this.f20436a;
        javax.a.a aVar5 = this.f20439d;
        javax.a.a<com.google.android.datatransport.runtime.scheduling.a.i> aVar6 = this.f;
        this.i = new com.google.android.datatransport.runtime.scheduling.d(aVar4, aVar5, gVar2, aVar6, aVar6);
        javax.a.a<Context> aVar7 = this.f20437b;
        javax.a.a aVar8 = this.f20439d;
        javax.a.a<com.google.android.datatransport.runtime.scheduling.a.i> aVar9 = this.f;
        javax.a.a<s> aVar10 = this.h;
        javax.a.a<Executor> aVar11 = this.f20436a;
        bVar4 = b.a.f20441a;
        this.j = new n(aVar7, aVar8, aVar9, aVar10, aVar11, aVar9, bVar4);
        javax.a.a<Executor> aVar12 = this.f20436a;
        javax.a.a<com.google.android.datatransport.runtime.scheduling.a.i> aVar13 = this.f;
        this.k = new com.google.android.datatransport.runtime.scheduling.jobscheduling.r(aVar12, aVar13, this.h, aVar13);
        bVar5 = b.a.f20441a;
        cVar4 = c.a.f20442a;
        this.l = com.google.android.datatransport.runtime.a.a.a.a(new s(bVar5, cVar4, this.i, this.j, this.k));
    }

    public static r.a a() {
        return new a();
    }

    @Override // com.google.android.datatransport.runtime.r
    final q b() {
        return this.l.a();
    }

    @Override // com.google.android.datatransport.runtime.r
    final com.google.android.datatransport.runtime.scheduling.a.c c() {
        return this.f.a();
    }
}
