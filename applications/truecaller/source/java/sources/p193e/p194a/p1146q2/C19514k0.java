package p193e.p194a.p1146q2;

import android.content.ContentResolver;
import android.net.Uri;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.analytics.MessageAnalyticsDataHelperImpl$getConversationSplitCriteria$2", f = "MessageAnalyticsDataHelper.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.q2.k0 */
/* loaded from: classes4-dex2jar.jar:e/a/q2/k0.class */
public final class C19514k0 extends i implements p<i0, d<? super Integer>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C19516l0 f54138e;

    /* renamed from: f */
    public final /* synthetic */ long f54139f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19514k0(C19516l0 c19516l0, long j, d dVar) {
        super(2, dVar);
        this.f54138e = c19516l0;
        this.f54139f = j;
    }

    /* renamed from: i */
    public final d<s> m13258i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19514k0(this.f54138e, this.f54139f, dVar);
    }

    /* renamed from: k */
    public final Object m13257k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C19516l0 c19516l0 = this.f54138e;
        long j = this.f54139f;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        ContentResolver contentResolver = c19516l0.f54150b;
        Uri m15702a = C17891a1.C17897f.m15702a();
        l.d(m15702a, "ConversationsTable.getContentUri()");
        int i = 0;
        Integer m13700D = C19286f.m13700D(contentResolver, m15702a, "split_criteria", "_id = ?", new String[]{String.valueOf(j)});
        if (m13700D != null) {
            i = m13700D.intValue();
        }
        return new Integer(i);
    }

    /* renamed from: s */
    public final Object m13256s(Object obj) {
        C25225a.m3932a3(obj);
        ContentResolver contentResolver = this.f54138e.f54150b;
        Uri m15702a = C17891a1.C17897f.m15702a();
        l.d(m15702a, "ConversationsTable.getContentUri()");
        int i = 0;
        Integer m13700D = C19286f.m13700D(contentResolver, m15702a, "split_criteria", "_id = ?", new String[]{String.valueOf(this.f54139f)});
        if (m13700D != null) {
            i = m13700D.intValue();
        }
        return new Integer(i);
    }
}
