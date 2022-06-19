package p193e.p194a.p1129p5;

import androidx.lifecycle.LiveData;
import p1727n3.p1868v.AbstractC27012l0;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import q3.a.w2.v;
import q3.a.w2.x;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
@e(c = "com.truecaller.utils.NetworkUtilImpl$getConnectivityFlow$1", f = "NetworkUtil.kt", l = {73}, m = "invokeSuspend")
/* renamed from: e.a.p5.v */
/* loaded from: classes15-dex2jar.jar:e/a/p5/v.class */
public final class C19328v extends i implements p<x<? super Boolean>, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f53779e;

    /* renamed from: f */
    public int f53780f;

    /* renamed from: g */
    public final /* synthetic */ C19343w f53781g;

    /* renamed from: e.a.p5.v$a */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/v$a.class */
    public static final class C19329a extends m implements a<s> {

        /* renamed from: b */
        public final /* synthetic */ LiveData f53782b;

        /* renamed from: c */
        public final /* synthetic */ l f53783c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19329a(LiveData liveData, l lVar) {
            super(0);
            this.f53782b = liveData;
            this.f53783c = lVar;
        }

        public Object invoke() {
            LiveData liveData = this.f53782b;
            AbstractC27012l0 abstractC27012l0 = this.f53783c;
            l lVar = abstractC27012l0;
            if (abstractC27012l0 != null) {
                lVar = new C19349x(abstractC27012l0);
            }
            liveData.m42865k(lVar);
            return s.a;
        }
    }

    /* renamed from: e.a.p5.v$b */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/v$b.class */
    public static final class C19330b extends m implements l<Boolean, s> {

        /* renamed from: b */
        public final /* synthetic */ x f53784b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19330b(x xVar) {
            super(1);
            this.f53784b = xVar;
        }

        /* renamed from: d */
        public Object m13448d(Object obj) {
            C19291g.m13534l1(this.f53784b, Boolean.valueOf(((Boolean) obj).booleanValue()));
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19328v(C19343w c19343w, d dVar) {
        super(2, dVar);
        this.f53781g = c19343w;
    }

    /* renamed from: i */
    public final d<s> m13451i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        C19328v c19328v = new C19328v(this.f53781g, dVar);
        c19328v.f53779e = obj;
        return c19328v;
    }

    /* renamed from: k */
    public final Object m13450k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        s1.z.c.l.e(dVar, "completion");
        C19328v c19328v = new C19328v(this.f53781g, dVar);
        c19328v.f53779e = obj;
        return c19328v.m13449s(s.a);
    }

    /* renamed from: s */
    public final Object m13449s(Object obj) {
        s1.w.j.a aVar = s1.w.j.a.a;
        int i = this.f53780f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            x xVar = (x) this.f53779e;
            LiveData<Boolean> liveData = this.f53781g.f53808b;
            C19330b c19330b = new C19330b(xVar);
            liveData.m42866g(new C19349x(c19330b));
            C19329a c19329a = new C19329a(liveData, c19330b);
            this.f53780f = 1;
            if (v.a(xVar, c19329a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
