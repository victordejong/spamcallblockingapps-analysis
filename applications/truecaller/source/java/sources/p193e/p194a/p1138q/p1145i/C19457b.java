package p193e.p194a.p1138q.p1145i;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.contactfeedback.p157db.CommentFeedback;
import com.truecaller.contactfeedback.workers.CommentFeedbackUploadWorker;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1138q.p1143g.AbstractC19421e;
import p193e.p194a.p1138q.p1143g.C19422f;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.q.i.b */
/* loaded from: classes5-dex2jar.jar:e/a/q/i/b.class */
public final class C19457b implements AbstractC19456a {

    /* renamed from: a */
    public final Context f54041a;

    /* renamed from: b */
    public final AbstractC19421e f54042b;

    @e(c = "com.truecaller.contactfeedback.utils.CommentFeedbackProcessorBridgeImpl$saveComments$1", f = "CommentFeedbackProcessorBridge.kt", l = {27}, m = "invokeSuspend")
    /* renamed from: e.a.q.i.b$a */
    /* loaded from: classes5-dex2jar.jar:e/a/q/i/b$a.class */
    public static final class C19458a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f54043e;

        /* renamed from: g */
        public final /* synthetic */ List f54045g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19458a(List list, d dVar) {
            super(2, dVar);
            C19457b.this = r5;
            this.f54045g = list;
        }

        /* renamed from: i */
        public final d<s> m13309i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C19458a(this.f54045g, dVar);
        }

        /* renamed from: k */
        public final Object m13308k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C19458a(this.f54045g, dVar).m13307s(s.a);
        }

        /* renamed from: s */
        public final Object m13307s(Object obj) {
            a aVar = a.a;
            int i = this.f54043e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC19421e abstractC19421e = C19457b.this.f54042b;
                Object[] array = this.f54045g.toArray(new CommentFeedback[0]);
                Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                CommentFeedback[] commentFeedbackArr = (CommentFeedback[]) array;
                CommentFeedback[] commentFeedbackArr2 = (CommentFeedback[]) Arrays.copyOf(commentFeedbackArr, commentFeedbackArr.length);
                this.f54043e = 1;
                if (((C19422f) abstractC19421e).m13342h(commentFeedbackArr2, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            Context context = C19457b.this.f54041a;
            l.e(context, AnalyticsConstants.CONTEXT);
            C26702l m1431n = C26702l.m1431n(context);
            EnumC26832h enumC26832h = EnumC26832h.REPLACE;
            C26842r.C26843a c26843a = new C26842r.C26843a(CommentFeedbackUploadWorker.class);
            C26825d.C26826a c26826a = new C26825d.C26826a();
            c26826a.f75068c = EnumC26841q.CONNECTED;
            c26843a.f75127c.f74911j = new C26825d(c26826a);
            C26842r m1272b = c26843a.m1272b();
            l.d(m1272b, "OneTimeWorkRequest.Build…d())\n            .build()");
            m1431n.m1279i("CommentFeedbackUploadWorker", enumC26832h, m1272b);
            return s.a;
        }
    }

    @Inject
    public C19457b(Context context, AbstractC19421e abstractC19421e) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC19421e, "contactFeedbackDbManager");
        this.f54041a = context;
        this.f54042b = abstractC19421e;
    }

    /* renamed from: a */
    public void m13310a(List<CommentFeedback> list) {
        l.e(list, "comments");
        s1.a.a.a.v0.f.d.w2(h1.a, (f) null, (j0) null, new C19458a(list, null), 3, (Object) null);
    }
}
