package p193e.p194a.p1146q2;

import android.database.Cursor;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.analytics.MessageAnalyticsDataHelperImpl$isConversationSplit$2", f = "MessageAnalyticsDataHelper.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.q2.n0 */
/* loaded from: classes4-dex2jar.jar:e/a/q2/n0.class */
public final class C19525n0 extends i implements p<i0, d<? super Boolean>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C19516l0 f54196e;

    /* renamed from: f */
    public final /* synthetic */ long f54197f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19525n0(C19516l0 c19516l0, long j, d dVar) {
        super(2, dVar);
        this.f54196e = c19516l0;
        this.f54197f = j;
    }

    /* renamed from: i */
    public final d<s> m13229i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19525n0(this.f54196e, this.f54197f, dVar);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: k */
    public final Object m13228k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C19516l0 c19516l0 = this.f54196e;
        long j = this.f54197f;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        Cursor query = c19516l0.f54150b.query(C17891a1.C17905n.m15550a(), new String[]{"filter"}, "conversation_id = ? AND filter != ?", new String[]{String.valueOf(j), String.valueOf(1)}, null);
        boolean z = false;
        if (query != null) {
            try {
                l.d(query, "it");
                Boolean valueOf = Boolean.valueOf(query.getCount() > 1);
                C25225a.m4016G(query, null);
                z = false;
                if (valueOf != null) {
                    z = valueOf.booleanValue();
                }
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
        return Boolean.valueOf(z);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: s */
    public final Object m13227s(Object obj) {
        C25225a.m3932a3(obj);
        Cursor query = this.f54196e.f54150b.query(C17891a1.C17905n.m15550a(), new String[]{"filter"}, "conversation_id = ? AND filter != ?", new String[]{String.valueOf(this.f54197f), String.valueOf(1)}, null);
        boolean z = false;
        if (query != null) {
            try {
                l.d(query, "it");
                Boolean valueOf = Boolean.valueOf(query.getCount() > 1);
                C25225a.m4016G(query, null);
                z = false;
                if (valueOf != null) {
                    z = valueOf.booleanValue();
                }
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
        return Boolean.valueOf(z);
    }
}
