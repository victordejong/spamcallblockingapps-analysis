package p193e.p194a.p1041l0.p1047x;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p1187r2.AbstractC19849c0;
import s1.z.c.l;
/* renamed from: e.a.l0.x.b */
/* loaded from: classes6-dex2jar.jar:e/a/l0/x/b.class */
public final class C17396b implements AbstractC17395a {

    /* renamed from: a */
    public final Context f48741a;

    /* renamed from: e.a.l0.x.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/x/b$a.class */
    public static final class C17397a<T> implements AbstractC19849c0<AbstractC17373b> {

        /* renamed from: a */
        public static final C17397a f48742a = new C17397a();

        @Override // p193e.p194a.p1187r2.AbstractC19849c0
        /* renamed from: a */
        public void mo11855a(AbstractC17373b abstractC17373b) {
            AbstractC17373b abstractC17373b2 = abstractC17373b;
            l.e(abstractC17373b2, "it");
            abstractC17373b2.close();
        }
    }

    @Inject
    public C17396b(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f48741a = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0057  */
    @Override // p193e.p194a.p1041l0.p1047x.AbstractC17395a
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p1187r2.AbstractC19891x<p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b> mo16143p() {
        /*
            r7 = this;
            r0 = r7
            android.content.Context r0 = r0.f48741a     // Catch: android.database.sqlite.SQLiteException -> L4c
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: android.database.sqlite.SQLiteException -> L4c
            r8 = r0
            android.net.Uri r0 = p193e.p194a.p1053m0.C17891a1.f50888a     // Catch: android.database.sqlite.SQLiteException -> L48 android.database.sqlite.SQLiteException -> L4c
            java.lang.String r1 = "history_with_aggregated_contact_number_data"
            android.net.Uri r0 = android.net.Uri.withAppendedPath(r0, r1)     // Catch: android.database.sqlite.SQLiteException -> L48
            r9 = r0
            r0 = r8
            r1 = r9
            r2 = 0
            java.lang.String r3 = "action NOT IN (5)  AND tc_flag!=3 AND type!=6"
            r4 = 0
            java.lang.String r5 = "timestamp DESC LIMIT 20"
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: android.database.sqlite.SQLiteException -> L4c
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L5d
            r0 = r9
            r1 = 0
            r2 = 1
            r3 = 1
            e.a.l0.u.d.c r0 = p193e.p194a.p1066n.C18334g0.m15262I0(r0, r1, r2, r3)     // Catch: android.database.sqlite.SQLiteException -> L41
            r10 = r0
            e.a.l0.x.b$a r0 = p193e.p194a.p1041l0.p1047x.C17396b.C17397a.f48742a     // Catch: android.database.sqlite.SQLiteException -> L41
            r11 = r0
            e.a.r2.y r0 = new e.a.r2.y     // Catch: android.database.sqlite.SQLiteException -> L41
            r8 = r0
            r0 = r8
            r1 = r10
            r2 = r11
            r0.<init>(r1, r2)     // Catch: android.database.sqlite.SQLiteException -> L41
            r0 = r8
            java.lang.String r1 = "Promise.wrap(cursor.toHi…y = true)) { it.close() }"
            s1.z.c.l.d(r0, r1)     // Catch: android.database.sqlite.SQLiteException -> L41
            r0 = r8
            return r0
        L41:
            r8 = move-exception
            goto L4f
        L45:
            goto L4d
        L48:
            r8 = move-exception
            goto L45
        L4c:
            r8 = move-exception
        L4d:
            r0 = 0
            r9 = r0
        L4f:
            r0 = r8
            com.truecaller.log.AssertionUtil.reportThrowableButNeverCrash(r0)
            r0 = r9
            if (r0 == 0) goto L5d
            r0 = r9
            r0.close()
        L5d:
            r0 = 0
            e.a.r2.x r0 = p193e.p194a.p1187r2.AbstractC19891x.m11834h(r0)
            r8 = r0
            r0 = r8
            java.lang.String r1 = "Promise.wrap(null)"
            s1.z.c.l.d(r0, r1)
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1041l0.p1047x.C17396b.mo16143p():e.a.r2.x");
    }
}
