package com.truecaller.contactfeedback.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1138q.p1144h.AbstractC19450f;
import p193e.p194a.p1138q.p1144h.C19451g;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018��2\u00020\u0001B%\b\u0001\u0012\b\b\u0001\u0010\n\u001a\u00020\t\u0012\b\b\u0001\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\u0016\u0010\b\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\u000f"}, d2 = {"Lcom/truecaller/contactfeedback/workers/CommentFeedbackUploadWorker;", "Landroidx/work/Worker;", "Landroidx/work/ListenableWorker$a;", "doWork", "()Landroidx/work/ListenableWorker$a;", "Le/a/q/h/f;", "a", "Le/a/q/h/f;", "contactFeedbackRepository", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/q/h/f;)V", "contact-feedback_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/contactfeedback/workers/CommentFeedbackUploadWorker.class */
public final class CommentFeedbackUploadWorker extends Worker {

    /* renamed from: a */
    public final AbstractC19450f f11362a;

    @e(c = "com.truecaller.contactfeedback.workers.CommentFeedbackUploadWorker$doWork$1", f = "CommentFeedbackUploadWorker.kt", l = {42}, m = "invokeSuspend")
    /* renamed from: com.truecaller.contactfeedback.workers.CommentFeedbackUploadWorker$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/contactfeedback/workers/CommentFeedbackUploadWorker$a.class */
    public static final class C3761a extends i implements p<i0, d<? super ListenableWorker.AbstractC0414a>, Object> {

        /* renamed from: e */
        public int f11363e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3761a(d dVar) {
            super(2, dVar);
            CommentFeedbackUploadWorker.this = r5;
        }

        /* renamed from: i */
        public final d<s> m35605i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C3761a(dVar);
        }

        /* renamed from: k */
        public final Object m35604k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C3761a(dVar).m35603s(s.a);
        }

        /* renamed from: s */
        public final Object m35603s(Object obj) {
            a aVar = a.a;
            int i = this.f11363e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC19450f abstractC19450f = CommentFeedbackUploadWorker.this.f11362a;
                this.f11363e = 1;
                Object m13314a = ((C19451g) abstractC19450f).m13314a(this);
                obj = m13314a;
                if (m13314a == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return ((Boolean) obj).booleanValue() ? new ListenableWorker.AbstractC0414a.C0417c() : new ListenableWorker.AbstractC0414a.C0416b();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommentFeedbackUploadWorker(Context context, WorkerParameters workerParameters, AbstractC19450f abstractC19450f) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        l.e(abstractC19450f, "contactFeedbackRepository");
        this.f11362a = abstractC19450f;
    }

    @Override // androidx.work.Worker
    public ListenableWorker.AbstractC0414a doWork() {
        Object c3 = s1.a.a.a.v0.f.d.c3((f) null, new C3761a(null), 1, (Object) null);
        l.d(c3, "runBlocking {\n          … Result.retry()\n        }");
        return (ListenableWorker.AbstractC0414a) c3;
    }
}
