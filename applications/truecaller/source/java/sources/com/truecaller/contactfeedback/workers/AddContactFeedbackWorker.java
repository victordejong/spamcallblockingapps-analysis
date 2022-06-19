package com.truecaller.contactfeedback.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.contactfeedback.p157db.ContactFeedback;
import com.truecaller.contactfeedback.p157db.ContactFeedbackTimestamp;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import p1727n3.p1834m0.C26829f;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1138q.p1143g.C19422f;
import p193e.p194a.p1138q.p1144h.AbstractC19450f;
import p193e.p194a.p1138q.p1144h.C19451g;
import p193e.p194a.p997k3.p998j.C16461b;
import q3.a.i0;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018��2\u00020\u0001B5\b\u0001\u0012\b\b\u0001\u0010.\u001a\u00020-\u0012\b\b\u0001\u00100\u001a\u00020/\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010&\u001a\u00020#¢\u0006\u0004\b1\u00102J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\u001f\u0010\n\u001a\u0004\u0018\u00010\u00058B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\u001d\u0010\u000f\u001a\u00020\u000b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\u0007\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u001f\u0010\u0016\u001a\u0004\u0018\u00010\u00058B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0007\u001a\u0004\b\u0015\u0010\tR\u001f\u0010\u0019\u001a\u0004\u0018\u00010\u00058B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0007\u001a\u0004\b\u0018\u0010\tR\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001d\u0010\"\u001a\u00020\u001e8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010\u0007\u001a\u0004\b \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u001d\u0010)\u001a\u00020\u000b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010\u0007\u001a\u0004\b(\u0010\u000eR\u001d\u0010,\u001a\u00020\u000b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010\u0007\u001a\u0004\b+\u0010\u000e¨\u00063"}, d2 = {"Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;", "Landroidx/work/Worker;", "Landroidx/work/ListenableWorker$a;", "doWork", "()Landroidx/work/ListenableWorker$a;", "", "d", "Ls1/g;", "getSuggestedName", "()Ljava/lang/String;", "suggestedName", "", "e", "getSuggestedType", "()I", "suggestedType", "Le/a/q/h/f;", "i", "Le/a/q/h/f;", "contactFeedbackRepository", AbstractC2405c.f7629a, "getExternalOriginalName", "externalOriginalName", "g", "getNameElectionAlgo", "nameElectionAlgo", "Le/a/p5/c;", "h", "Le/a/p5/c;", "clock", "", "a", "getAggregatedContactId", "()J", "aggregatedContactId", "Le/a/k3/j/b;", "j", "Le/a/k3/j/b;", "aggregatedContactDao", "f", "getNameSource", "nameSource", C22021b.f61237c, "getFeedbackType", "feedbackType", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/p5/c;Le/a/q/h/f;Le/a/k3/j/b;)V", "contact-feedback_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/contactfeedback/workers/AddContactFeedbackWorker.class */
public final class AddContactFeedbackWorker extends Worker {

    /* renamed from: a */
    public final g f11347a = C25225a.m3978P1(new C3759c());

    /* renamed from: b */
    public final g f11348b = C25225a.m3978P1(new C3758b(0, this));

    /* renamed from: c */
    public final g f11349c = C25225a.m3978P1(new a(0, this));

    /* renamed from: d */
    public final g f11350d = C25225a.m3978P1(new a(2, this));

    /* renamed from: e */
    public final g f11351e = C25225a.m3978P1(new C3758b(2, this));

    /* renamed from: f */
    public final g f11352f = C25225a.m3978P1(new C3758b(1, this));

    /* renamed from: g */
    public final g f11353g = C25225a.m3978P1(new a(1, this));

    /* renamed from: h */
    public final AbstractC19222c f11354h;

    /* renamed from: i */
    public final AbstractC19450f f11355i;

    /* renamed from: j */
    public final C16461b f11356j;

    /* renamed from: com.truecaller.contactfeedback.workers.AddContactFeedbackWorker$b */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/contactfeedback/workers/AddContactFeedbackWorker$b.class */
    public static final class C3758b extends m implements a<Integer> {

        /* renamed from: b */
        public final /* synthetic */ int f11357b;

        /* renamed from: c */
        public final /* synthetic */ Object f11358c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3758b(int i, Object obj) {
            super(0);
            this.f11357b = i;
            this.f11358c = obj;
        }

        public final Object invoke() {
            int i = this.f11357b;
            if (i != 0) {
                if (i == 1) {
                    return Integer.valueOf(((AddContactFeedbackWorker) this.f11358c).getInputData().m1304c("name_source", -1));
                }
                if (i != 2) {
                    throw null;
                }
                return Integer.valueOf(((AddContactFeedbackWorker) this.f11358c).getInputData().m1304c("suggested_type", -1));
            }
            return Integer.valueOf(((AddContactFeedbackWorker) this.f11358c).getInputData().m1304c("feedback_type", -1));
        }
    }

    /* renamed from: com.truecaller.contactfeedback.workers.AddContactFeedbackWorker$c */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/contactfeedback/workers/AddContactFeedbackWorker$c.class */
    public static final class C3759c extends m implements a<Long> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3759c() {
            super(0);
            AddContactFeedbackWorker.this = r4;
        }

        public Object invoke() {
            return Long.valueOf(AddContactFeedbackWorker.this.getInputData().m1302e("contact_aggregated_id", -1L));
        }
    }

    @e(c = "com.truecaller.contactfeedback.workers.AddContactFeedbackWorker$doWork$1", f = "AddContactFeedbackWorker.kt", l = {79, 84}, m = "invokeSuspend")
    /* renamed from: com.truecaller.contactfeedback.workers.AddContactFeedbackWorker$d */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d.class */
    public static final class C3760d extends i implements p<i0, d<? super ListenableWorker.AbstractC0414a>, Object> {

        /* renamed from: e */
        public int f11360e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3760d(d dVar) {
            super(2, dVar);
            AddContactFeedbackWorker.this = r5;
        }

        /* renamed from: i */
        public final d<s> m35608i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C3760d(dVar);
        }

        /* renamed from: k */
        public final Object m35607k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C3760d(dVar).m35606s(s.a);
        }

        /* renamed from: s */
        public final Object m35606s(Object obj) {
            s1.u.s sVar;
            List<Number> m35557M;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f11360e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AddContactFeedbackWorker addContactFeedbackWorker = AddContactFeedbackWorker.this;
                Contact m17367e = addContactFeedbackWorker.f11356j.m17367e(((Number) addContactFeedbackWorker.f11347a.getValue()).longValue());
                if (m17367e == null) {
                    C26829f c26829f = C26829f.f75077c;
                }
                if (m17367e == null || (m35557M = m17367e.m35557M()) == null) {
                    sVar = s1.u.s.a;
                } else {
                    ArrayList arrayList = new ArrayList();
                    for (Object obj2 : m35557M) {
                        Number number = (Number) obj2;
                        l.d(number, "it");
                        String m35479e = number.m35479e();
                        if (Boolean.valueOf(!(m35479e == null || m35479e.length() == 0)).booleanValue()) {
                            arrayList.add(obj2);
                        }
                    }
                    s1.u.s arrayList2 = new ArrayList(C25225a.m4004J(arrayList, 10));
                    Iterator it = arrayList.iterator();
                    while (true) {
                        sVar = arrayList2;
                        if (!it.hasNext()) {
                            break;
                        }
                        Number number2 = (Number) it.next();
                        l.d(number2, "it");
                        String m35479e2 = number2.m35479e();
                        l.d(m35479e2, "it.normalizedNumber");
                        String str = (String) AddContactFeedbackWorker.this.f11349c.getValue();
                        if (str == null) {
                            str = m17367e.m35566G();
                        }
                        if (str == null) {
                            str = "";
                        }
                        arrayList2.add(new ContactFeedback(m35479e2, str, (String) AddContactFeedbackWorker.this.f11350d.getValue(), new Integer(((Number) AddContactFeedbackWorker.this.f11348b.getValue()).intValue()), ((Number) AddContactFeedbackWorker.this.f11351e.getValue()).intValue() == -1 ? null : new Integer(((Number) AddContactFeedbackWorker.this.f11351e.getValue()).intValue()), ((Number) AddContactFeedbackWorker.this.f11352f.getValue()).intValue() == -1 ? null : new Integer(((Number) AddContactFeedbackWorker.this.f11352f.getValue()).intValue()), (String) AddContactFeedbackWorker.this.f11353g.getValue(), AddContactFeedbackWorker.this.f11354h.mo13819c()));
                    }
                }
                AbstractC19450f abstractC19450f = AddContactFeedbackWorker.this.f11355i;
                this.f11360e = 1;
                s1.w.j.a m13338l = ((C19422f) ((C19451g) abstractC19450f).f54023b).m13338l(sVar, this);
                if (m13338l != aVar) {
                    m13338l = s.a;
                }
                if (m13338l == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                return new ListenableWorker.AbstractC0414a.C0417c();
            } else {
                C25225a.m3932a3(obj);
            }
            List<ContactFeedbackTimestamp> m3962T1 = C25225a.m3962T1(new ContactFeedbackTimestamp(0L, ((Number) AddContactFeedbackWorker.this.f11347a.getValue()).longValue(), AddContactFeedbackWorker.this.f11354h.mo13819c(), 1, null));
            AbstractC19450f abstractC19450f2 = AddContactFeedbackWorker.this.f11355i;
            this.f11360e = 2;
            if (((C19422f) ((C19451g) abstractC19450f2).f54023b).m13341i(m3962T1, this) == aVar) {
                return aVar;
            }
            return new ListenableWorker.AbstractC0414a.C0417c();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddContactFeedbackWorker(Context context, WorkerParameters workerParameters, AbstractC19222c abstractC19222c, AbstractC19450f abstractC19450f, C16461b c16461b) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        l.e(abstractC19222c, "clock");
        l.e(abstractC19450f, "contactFeedbackRepository");
        l.e(c16461b, "aggregatedContactDao");
        this.f11354h = abstractC19222c;
        this.f11355i = abstractC19450f;
        this.f11356j = c16461b;
    }

    @Override // androidx.work.Worker
    public ListenableWorker.AbstractC0414a doWork() {
        Object c3 = s1.a.a.a.v0.f.d.c3((f) null, new C3760d(null), 1, (Object) null);
        l.d(c3, "runBlocking {\n          …esult.success()\n        }");
        return (ListenableWorker.AbstractC0414a) c3;
    }
}
