package p193e.p194a.p1138q;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.contactfeedback.workers.AddContactFeedbackWorker;
import com.truecaller.contactfeedback.workers.UploadContactFeedbackWorker;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.NameFeedback;
import com.truecaller.log.AssertionUtil;
import java.util.HashMap;
import javax.inject.Inject;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26841q;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p194a.p1138q.p1143g.AbstractC19421e;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1342w4.C21202b;
import p193e.p194a.p372b0.p430q.C8601l0;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.q.d */
/* loaded from: classes4-dex2jar.jar:e/a/q/d.class */
public final class C19389d implements AbstractC19388c {

    /* renamed from: a */
    public final Context f53898a;

    /* renamed from: b */
    public final C20592g f53899b;

    /* renamed from: c */
    public final C21202b f53900c;

    /* renamed from: d */
    public final C8601l0 f53901d;

    /* renamed from: e */
    public final AbstractC19421e f53902e;

    @e(c = "com.truecaller.contactfeedback.NameFeedbackHelperImpl", f = "NameFeedbackHelper.kt", l = {53}, m = "shouldShowNameFeedbackView")
    /* renamed from: e.a.q.d$a */
    /* loaded from: classes4-dex2jar.jar:e/a/q/d$a.class */
    public static final class C19390a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f53903d;

        /* renamed from: e */
        public int f53904e;

        /* renamed from: g */
        public Object f53906g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19390a(d dVar) {
            super(dVar);
            C19389d.this = r4;
        }

        /* renamed from: s */
        public final Object m13379s(Object obj) {
            this.f53903d = obj;
            this.f53904e |= Integer.MIN_VALUE;
            return C19389d.this.m13380b(null, this);
        }
    }

    @Inject
    public C19389d(Context context, C20592g c20592g, C21202b c21202b, C8601l0 c8601l0, AbstractC19421e abstractC19421e) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(c20592g, "featuresRegistry");
        l.e(c21202b, "settings");
        l.e(c8601l0, "util");
        l.e(abstractC19421e, "contactFeedbackDbManager");
        this.f53898a = context;
        this.f53899b = c20592g;
        this.f53900c = c21202b;
        this.f53901d = c8601l0;
        this.f53902e = abstractC19421e;
    }

    /* renamed from: a */
    public void m13381a(Contact contact, long j, boolean z, String str, int i, String str2) {
        l.e(contact, AnalyticsConstants.CONTACT);
        HashMap hashMap = new HashMap();
        hashMap.put("contact_aggregated_id", Long.valueOf(j));
        hashMap.put("feedback_type", Integer.valueOf(z ? 1 : 2));
        hashMap.put("original_name", str2);
        hashMap.put("suggested_name", str);
        hashMap.put("suggested_type", Integer.valueOf(i));
        NameFeedback nameFeedback = contact.f11528w;
        if (nameFeedback != null) {
            Number nameSource = nameFeedback.getNameSource();
            if (nameSource != null) {
                hashMap.put("name_source", Integer.valueOf(nameSource.intValue()));
            } else {
                AssertionUtil.reportWeirdnessButNeverCrash("Expected nameSource to be present, but it was null.");
            }
            hashMap.put("name_election_algo", nameFeedback.getNameElectionAlgo());
        } else {
            AssertionUtil.reportWeirdnessButNeverCrash("Expected nameFeedback to be present, but it was null.");
        }
        C26829f c26829f = new C26829f(hashMap);
        C26829f.m1300g(c26829f);
        l.d(c26829f, "with(Builder()) {\n      …        build()\n        }");
        C26842r.C26843a c26843a = new C26842r.C26843a(AddContactFeedbackWorker.class);
        c26843a.f75127c.f74906e = c26829f;
        C26842r m1272b = c26843a.m1272b();
        l.d(m1272b, "OneTimeWorkRequest.Build…ata)\n            .build()");
        C26842r c26842r = m1272b;
        C26842r.C26843a c26843a2 = new C26842r.C26843a(UploadContactFeedbackWorker.class);
        C26825d.C26826a c26826a = new C26825d.C26826a();
        c26826a.f75068c = EnumC26841q.CONNECTED;
        c26843a2.f75127c.f74911j = new C26825d(c26826a);
        C26842r m1272b2 = c26843a2.m1272b();
        l.d(m1272b2, "OneTimeWorkRequest.Build…d())\n            .build()");
        C26702l.m1431n(this.f53898a).m1285c(c26842r).m1289b(m1272b2).mo1290a();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0183  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m13380b(com.truecaller.data.entity.Contact r7, s1.w.d<? super java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1138q.C19389d.m13380b(com.truecaller.data.entity.Contact, s1.w.d):java.lang.Object");
    }
}
