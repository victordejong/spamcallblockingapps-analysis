package p193e.p194a.p195a.p276p0;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import p193e.p194a.p437c.p526c.p529e.C9980a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.categorizer.UnclassifiedMessagesSyncHelper$classify$1$1$resolvedLanguage$1", f = "UnclassifiedMessagesSyncHelper.kt", l = {112}, m = "invokeSuspend")
/* renamed from: e.a.a.p0.g */
/* loaded from: classes10-dex2jar.jar:e/a/a/p0/g.class */
public final class C7166g extends i implements p<i0, d<? super String>, Object> {

    /* renamed from: e */
    public int f23002e;

    /* renamed from: f */
    public final /* synthetic */ String f23003f;

    /* renamed from: g */
    public final /* synthetic */ List f23004g;

    /* renamed from: h */
    public final /* synthetic */ Cursor f23005h;

    /* renamed from: i */
    public final /* synthetic */ C7170k f23006i;

    /* renamed from: j */
    public final /* synthetic */ c0 f23007j;

    /* renamed from: k */
    public final /* synthetic */ c0 f23008k;

    /* renamed from: l */
    public final /* synthetic */ Set f23009l;

    /* renamed from: m */
    public final /* synthetic */ C9980a f23010m;

    /* renamed from: n */
    public final /* synthetic */ ArrayList f23011n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7166g(String str, List list, Cursor cursor, d dVar, C7170k c7170k, c0 c0Var, c0 c0Var2, Set set, C9980a c9980a, ArrayList arrayList) {
        super(2, dVar);
        this.f23003f = str;
        this.f23004g = list;
        this.f23005h = cursor;
        this.f23006i = c7170k;
        this.f23007j = c0Var;
        this.f23008k = c0Var2;
        this.f23009l = set;
        this.f23010m = c9980a;
        this.f23011n = arrayList;
    }

    /* renamed from: i */
    public final d<s> m30038i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C7166g(this.f23003f, this.f23004g, this.f23005h, dVar, this.f23006i, this.f23007j, this.f23008k, this.f23009l, this.f23010m, this.f23011n);
    }

    /* renamed from: k */
    public final Object m30037k(Object obj, Object obj2) {
        return m30038i(obj, (d) obj2).m30036s(s.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0097, code lost:
        if (r0.isLast() != false) goto L17;
     */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m30036s(java.lang.Object r9) {
        /*
            r8 = this;
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r8
            int r0 = r0.f23002e
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L23
            r0 = r11
            r1 = 1
            if (r0 != r1) goto L19
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto L50
        L19:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L23:
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            e.a.a.p0.k r0 = r0.f23006i
            e.a.a.g1.b r0 = r0.f23052g
            r9 = r0
            r0 = r8
            java.lang.String r0 = r0.f23003f
            r12 = r0
            r0 = r8
            r1 = 1
            r0.f23002e = r1
            r0 = r9
            r1 = r12
            r2 = r8
            java.lang.Object r0 = r0.mo31542g(r1, r2)
            r12 = r0
            r0 = r12
            r9 = r0
            r0 = r12
            r1 = r10
            if (r0 != r1) goto L50
            r0 = r10
            return r0
        L50:
            r0 = r9
            e.a.a.g1.a r0 = (p193e.p194a.p195a.p235g1.C6253a) r0
            r9 = r0
            r0 = r8
            java.util.List r0 = r0.f23004g
            s1.k r1 = new s1.k
            r2 = r1
            r3 = r9
            java.lang.String r3 = r3.f21009a
            java.lang.Float r4 = new java.lang.Float
            r5 = r4
            r6 = r9
            float r6 = r6.f21010b
            r5.<init>(r6)
            r2.<init>(r3, r4)
            boolean r0 = r0.add(r1)
            r0 = r8
            java.util.List r0 = r0.f23004g
            int r0 = r0.size()
            r1 = 100
            if (r0 > r1) goto L9a
            r0 = r8
            android.database.Cursor r0 = r0.f23005h
            r12 = r0
            r0 = r12
            java.lang.String r1 = "it"
            s1.z.c.l.d(r0, r1)
            r0 = r12
            boolean r0 = r0.isLast()
            if (r0 == 0) goto Lbf
        L9a:
            r0 = r8
            e.a.a.p0.k r0 = r0.f23006i
            r12 = r0
            r0 = r12
            e.a.q2.a r0 = r0.f23054i
            r1 = r8
            java.util.List r1 = r1.f23004g
            r2 = r12
            e.a.a.g1.b r2 = r2.f23052g
            java.lang.String r2 = r2.mo31545d()
            p193e.p194a.p437c.p578p.C10480a.m26053K1(r0, r1, r2)
            r0 = r8
            java.util.List r0 = r0.f23004g
            r0.clear()
        Lbf:
            r0 = r9
            java.lang.String r0 = r0.f21009a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p276p0.C7166g.m30036s(java.lang.Object):java.lang.Object");
    }
}
