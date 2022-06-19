package p193e.p194a.p1146q2;

import android.content.ContentResolver;
import android.database.Cursor;
import e.m.d.y.n;
import java.util.ArrayList;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.p231g.AbstractC6115g;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6150r;
import p193e.p194a.p195a.p231g.p234l0.C6228d;
import q3.a.i0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.q2.l0 */
/* loaded from: classes4-dex2jar.jar:e/a/q2/l0.class */
public final class C19516l0 implements AbstractC19512j0 {

    /* renamed from: a */
    public final f f54149a;

    /* renamed from: b */
    public final ContentResolver f54150b;

    /* renamed from: c */
    public final AbstractC6115g f54151c;

    /* renamed from: d */
    public final C20592g f54152d;

    /* renamed from: e */
    public final boolean f54153e;

    @e(c = "com.truecaller.analytics.MessageAnalyticsDataHelperImpl", f = "MessageAnalyticsDataHelper.kt", l = {142}, m = "getIncomingMessagesNotificationsAnalyticsParams")
    /* renamed from: e.a.q2.l0$a */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/l0$a.class */
    public static final class C19517a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f54154d;

        /* renamed from: e */
        public int f54155e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19517a(d dVar) {
            super(dVar);
            C19516l0.this = r4;
        }

        /* renamed from: s */
        public final Object m13248s(Object obj) {
            this.f54154d = obj;
            this.f54155e |= Integer.MIN_VALUE;
            return C19516l0.this.m13249b(0L, this);
        }
    }

    @e(c = "com.truecaller.analytics.MessageAnalyticsDataHelperImpl$getIncomingMessagesNotificationsAnalyticsParams$2", f = "MessageAnalyticsDataHelper.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.q2.l0$b */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/l0$b.class */
    public static final class C19518b extends i implements p<i0, d<? super k<? extends String, ? extends String>>, Object> {

        /* renamed from: f */
        public final /* synthetic */ long f54158f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19518b(long j, d dVar) {
            super(2, dVar);
            C19516l0.this = r5;
            this.f54158f = j;
        }

        /* renamed from: i */
        public final d<s> m13247i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C19518b(this.f54158f, dVar);
        }

        /* renamed from: k */
        public final Object m13246k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C19518b(this.f54158f, dVar).m13245s(s.a);
        }

        /* renamed from: s */
        public final Object m13245s(Object obj) {
            C25225a.m3932a3(obj);
            Cursor query = C19516l0.this.f54150b.query(C17891a1.f50888a.buildUpon().appendEncodedPath("message_notifications_analytics").appendQueryParameter("message_id", String.valueOf(this.f54158f)).build(), null, null, null, null);
            k kVar = null;
            if (query != null) {
                AbstractC6150r mo31787e = C19516l0.this.f54151c.mo31787e(query);
                kVar = null;
                if (mo31787e != null) {
                    try {
                        if (mo31787e.moveToFirst()) {
                            C6228d mo31741y = mo31787e.mo31741y();
                            l.e(mo31741y, "$this$toAnalyticsTransport");
                            kVar = new k(n.c0(mo31741y.f20898b), n.x1(mo31787e.mo31741y()));
                        } else {
                            kVar = new k("", "");
                        }
                        th = null;
                    } finally {
                        try {
                            throw th;
                        } finally {
                        }
                    }
                }
            }
            return kVar;
        }
    }

    @Inject
    public C19516l0(@Named("IO") f fVar, ContentResolver contentResolver, AbstractC6115g abstractC6115g, C20592g c20592g, boolean z) {
        l.e(fVar, "async");
        l.e(contentResolver, "contentResolver");
        l.e(abstractC6115g, "cursorFactory");
        l.e(c20592g, "featuresRegistry");
        this.f54149a = fVar;
        this.f54150b = contentResolver;
        this.f54151c = abstractC6115g;
        this.f54152d = c20592g;
        this.f54153e = z;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static final String m13250a(C19516l0 c19516l0, long j) {
        Cursor query = c19516l0.f54150b.query(C17891a1.C17897f.m15702a(), new String[]{"tc_group_id"}, "_id = ?", new String[]{String.valueOf(j)}, null);
        String str = null;
        if (query != null) {
            try {
                ArrayList arrayList = new ArrayList();
                while (query.moveToNext()) {
                    arrayList.add(query.getString(0));
                }
                C25225a.m4016G(query, null);
                str = (String) s1.u.i.D(arrayList);
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a6  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m13249b(long r8, s1.w.d<? super s1.k<java.lang.String, java.lang.String>> r10) {
        /*
            r7 = this;
            r0 = r10
            boolean r0 = r0 instanceof p193e.p194a.p1146q2.C19516l0.C19517a
            if (r0 == 0) goto L2c
            r0 = r10
            e.a.q2.l0$a r0 = (p193e.p194a.p1146q2.C19516l0.C19517a) r0
            r11 = r0
            r0 = r11
            int r0 = r0.f54155e
            r12 = r0
            r0 = r12
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2c
            r0 = r11
            r1 = r12
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f54155e = r1
            r0 = r11
            r10 = r0
            goto L36
        L2c:
            e.a.q2.l0$a r0 = new e.a.q2.l0$a
            r1 = r0
            r2 = r7
            r3 = r10
            r1.<init>(r3)
            r10 = r0
        L36:
            r0 = r10
            java.lang.Object r0 = r0.f54154d
            r11 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r13 = r0
            r0 = r10
            int r0 = r0.f54155e
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L67
            r0 = r12
            r1 = 1
            if (r0 != r1) goto L5d
            r0 = r11
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r11
            r10 = r0
            goto L9a
        L5d:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L67:
            r0 = r11
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            s1.w.f r0 = r0.f54149a
            r11 = r0
            e.a.q2.l0$b r0 = new e.a.q2.l0$b
            r1 = r0
            r2 = r7
            r3 = r8
            r4 = 0
            r1.<init>(r3, r4)
            r14 = r0
            r0 = r10
            r1 = 1
            r0.f54155e = r1
            r0 = r11
            r1 = r14
            r2 = r10
            java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)
            r11 = r0
            r0 = r11
            r10 = r0
            r0 = r11
            r1 = r13
            if (r0 != r1) goto L9a
            r0 = r13
            return r0
        L9a:
            r0 = r10
            s1.k r0 = (s1.k) r0
            r10 = r0
            r0 = r10
            if (r0 == 0) goto La6
            goto Lb2
        La6:
            s1.k r0 = new s1.k
            r1 = r0
            java.lang.String r2 = ""
            java.lang.String r3 = ""
            r1.<init>(r2, r3)
            r10 = r0
        Lb2:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1146q2.C19516l0.m13249b(long, s1.w.d):java.lang.Object");
    }
}
