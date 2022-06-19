package com.truecaller.contactfeedback.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p1727n3.p1834m0.p1835c0.C26702l;
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
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018��2\u00020\u0001B%\b\u0001\u0012\b\b\u0001\u0010\n\u001a\u00020\t\u0012\b\b\u0001\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\u0016\u0010\b\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\u000f"}, d2 = {"Lcom/truecaller/contactfeedback/workers/UploadContactFeedbackWorker;", "Landroidx/work/Worker;", "Landroidx/work/ListenableWorker$a;", "doWork", "()Landroidx/work/ListenableWorker$a;", "Le/a/q/h/f;", "a", "Le/a/q/h/f;", "contactFeedbackRepository", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/q/h/f;)V", "contact-feedback_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/contactfeedback/workers/UploadContactFeedbackWorker.class */
public final class UploadContactFeedbackWorker extends Worker {

    /* renamed from: a */
    public final AbstractC19450f f11365a;

    @e(c = "com.truecaller.contactfeedback.workers.UploadContactFeedbackWorker$doWork$1", f = "UploadContactFeedbackWorker.kt", l = {42}, m = "invokeSuspend")
    /* renamed from: com.truecaller.contactfeedback.workers.UploadContactFeedbackWorker$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/contactfeedback/workers/UploadContactFeedbackWorker$a.class */
    public static final class C3762a extends i implements p<i0, d<? super ListenableWorker.AbstractC0414a>, Object> {

        /* renamed from: e */
        public int f11366e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3762a(d dVar) {
            super(2, dVar);
            UploadContactFeedbackWorker.this = r5;
        }

        /* renamed from: i */
        public final d<s> m35601i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C3762a(dVar);
        }

        /* renamed from: k */
        public final Object m35600k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C3762a(dVar).m35599s(s.a);
        }

        /* renamed from: s */
        public final Object m35599s(Object obj) {
            ListenableWorker.AbstractC0414a.C0417c c0417c;
            a aVar = a.a;
            int i = this.f11366e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC19450f abstractC19450f = UploadContactFeedbackWorker.this.f11365a;
                this.f11366e = 1;
                Object m13313b = ((C19451g) abstractC19450f).m13313b(this);
                obj = m13313b;
                if (m13313b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            boolean booleanValue = ((Boolean) obj).booleanValue();
            if (booleanValue) {
                c0417c = new ListenableWorker.AbstractC0414a.C0417c();
            } else if (booleanValue) {
                throw new s1.i();
            } else {
                c0417c = new ListenableWorker.AbstractC0414a.C0416b();
            }
            return c0417c;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UploadContactFeedbackWorker(Context context, WorkerParameters workerParameters, AbstractC19450f abstractC19450f) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        l.e(abstractC19450f, "contactFeedbackRepository");
        this.f11365a = abstractC19450f;
    }

    /* renamed from: n */
    public static final void m35602n(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C26702l m1431n = C26702l.m1431n(context);
        EnumC26832h enumC26832h = EnumC26832h.REPLACE;
        C26842r.C26843a c26843a = new C26842r.C26843a(UploadContactFeedbackWorker.class);
        C26825d.C26826a c26826a = new C26825d.C26826a();
        c26826a.f75068c = EnumC26841q.CONNECTED;
        c26843a.f75127c.f74911j = new C26825d(c26826a);
        C26842r m1272b = c26843a.m1272b();
        l.d(m1272b, "OneTimeWorkRequest.Build…d())\n            .build()");
        m1431n.m1279i("UploadContactFeedbackWorker", enumC26832h, m1272b);
    }

    @Override // androidx.work.Worker
    public ListenableWorker.AbstractC0414a doWork() {
        Object c3 = s1.a.a.a.v0.f.d.c3((f) null, new C3762a(null), 1, (Object) null);
        l.d(c3, "runBlocking {\n          …)\n            }\n        }");
        return (ListenableWorker.AbstractC0414a) c3;
    }
}
