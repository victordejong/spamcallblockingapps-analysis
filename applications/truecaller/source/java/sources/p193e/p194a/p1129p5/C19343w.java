package p193e.p194a.p1129p5;

import android.content.Context;
import android.net.NetworkInfo;
import androidx.lifecycle.LiveData;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import q3.a.i0;
import q3.a.t0;
import q3.a.x2.f;
import q3.a.y2.q;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.p5.w */
/* loaded from: classes15-dex2jar.jar:e/a/p5/w.class */
public final class C19343w implements AbstractC19321u {

    /* renamed from: a */
    public final Context f53807a;

    /* renamed from: b */
    public final LiveData<Boolean> f53808b;

    @e(c = "com.truecaller.utils.NetworkUtilImpl", f = "NetworkUtil.kt", l = {89}, m = "waitForOkInternet")
    /* renamed from: e.a.p5.w$a */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/w$a.class */
    public static final class C19344a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f53809d;

        /* renamed from: e */
        public int f53810e;

        /* renamed from: g */
        public Object f53812g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19344a(d dVar) {
            super(dVar);
            C19343w.this = r4;
        }

        /* renamed from: s */
        public final Object m13426s(Object obj) {
            this.f53809d = obj;
            this.f53810e |= Integer.MIN_VALUE;
            return C19343w.this.mo13432a(0L, this);
        }
    }

    @e(c = "com.truecaller.utils.NetworkUtilImpl$waitForOkInternet$2", f = "NetworkUtil.kt", l = {90}, m = "invokeSuspend")
    /* renamed from: e.a.p5.w$b */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/w$b.class */
    public static final class C19345b extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f53813e;

        @e(c = "com.truecaller.utils.NetworkUtilImpl$waitForOkInternet$2$1", f = "NetworkUtil.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.p5.w$b$a */
        /* loaded from: classes15-dex2jar.jar:e/a/p5/w$b$a.class */
        public static final class C19346a extends i implements p<Boolean, d<? super Boolean>, Object> {

            /* renamed from: e */
            public /* synthetic */ boolean f53815e;

            public C19346a(d dVar) {
                super(2, dVar);
            }

            /* renamed from: i */
            public final d<s> m13422i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                C19346a c19346a = new C19346a(dVar);
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                c19346a.f53815e = bool.booleanValue();
                return c19346a;
            }

            /* renamed from: k */
            public final Object m13421k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                dVar.getContext();
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                boolean booleanValue = bool.booleanValue();
                C25225a.m3932a3(s.a);
                return Boolean.valueOf(booleanValue);
            }

            /* renamed from: s */
            public final Object m13420s(Object obj) {
                C25225a.m3932a3(obj);
                return Boolean.valueOf(this.f53815e);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19345b(d dVar) {
            super(2, dVar);
            C19343w.this = r5;
        }

        /* renamed from: i */
        public final d<s> m13425i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C19345b(dVar);
        }

        /* renamed from: k */
        public final Object m13424k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C19345b(dVar).m13423s(s.a);
        }

        /* renamed from: s */
        public final Object m13423s(Object obj) {
            a aVar = a.a;
            int i = this.f53813e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C19343w c19343w = C19343w.this;
                Objects.requireNonNull(c19343w);
                f P = s1.a.a.a.v0.f.d.P(new C19328v(c19343w, null));
                t0 t0Var = t0.a;
                f X0 = s1.a.a.a.v0.f.d.X0(P, q.c);
                C19346a c19346a = new C19346a(null);
                this.f53813e = 1;
                if (s1.a.a.a.v0.f.d.N0(X0, c19346a, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return Boolean.TRUE;
        }
    }

    @Inject
    public C19343w(Context context, LiveData<Boolean> liveData) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(liveData, "connectivityLiveData");
        this.f53807a = context;
        this.f53808b = liveData;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c6  */
    @Override // p193e.p194a.p1129p5.AbstractC19321u
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo13432a(long r6, s1.w.d<? super java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1129p5.C19343w.mo13432a(long, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1129p5.AbstractC19321u
    /* renamed from: b */
    public String mo13431b() {
        String str;
        NetworkInfo activeNetworkInfo = C19291g.m13606N(this.f53807a).getActiveNetworkInfo();
        Integer valueOf = activeNetworkInfo != null ? Integer.valueOf(activeNetworkInfo.getType()) : null;
        if (valueOf == null) {
            str = "no-connection";
        } else if (valueOf.intValue() == 0 || valueOf.intValue() == 4 || valueOf.intValue() == 5 || valueOf.intValue() == 2 || valueOf.intValue() == 3) {
            str = activeNetworkInfo.getSubtypeName();
            l.d(str, "subtypeName");
        } else {
            str = activeNetworkInfo.getTypeName();
            l.d(str, "typeName");
        }
        return str;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19321u
    /* renamed from: c */
    public boolean mo13430c() {
        NetworkInfo activeNetworkInfo = C19291g.m13606N(this.f53807a).getActiveNetworkInfo();
        boolean z = true;
        if (activeNetworkInfo == null || activeNetworkInfo.getType() != 1) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19321u
    /* renamed from: d */
    public boolean mo13429d() {
        NetworkInfo activeNetworkInfo = C19291g.m13606N(this.f53807a).getActiveNetworkInfo();
        return activeNetworkInfo != null ? activeNetworkInfo.isConnected() : false;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19321u
    /* renamed from: e */
    public boolean mo13428e() {
        NetworkInfo activeNetworkInfo = C19291g.m13606N(this.f53807a).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getType() == 0;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19321u
    /* renamed from: f */
    public LiveData<Boolean> mo13427f() {
        return this.f53808b;
    }
}
