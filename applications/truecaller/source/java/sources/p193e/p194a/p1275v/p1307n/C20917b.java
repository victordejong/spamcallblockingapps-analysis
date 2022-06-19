package p193e.p194a.p1275v.p1307n;

import android.app.Activity;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.ConversationActivity;
import e.a.h.s0.c;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p1275v.p1308o.AbstractC20919b;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p804h.p835s0.c$a;
import s1.z.c.l;
/* renamed from: e.a.v.n.b */
/* loaded from: classes8-dex2jar.jar:e/a/v/n/b.class */
public final class C20917b implements AbstractC20919b {

    /* renamed from: a */
    public final AbstractC8621z f58854a;

    @Inject
    public C20917b(AbstractC8621z abstractC8621z) {
        l.e(abstractC8621z, "phoneNumberHelper");
        this.f58854a = abstractC8621z;
    }

    @Override // p193e.p194a.p1275v.p1308o.AbstractC20919b
    /* renamed from: a */
    public void mo10522a(Activity activity, String str) {
        l.e(activity, "activity");
        l.e(str, "normalizedNumber");
        Participant m35455d = Participant.m35455d(str, this.f58854a, "-1");
        l.d(m35455d, "Participant.buildFromNum…M_TOKEN_UNKNOWN\n        )");
        Intent intent = new Intent(activity, ConversationActivity.class);
        intent.putExtra("participants", new Participant[]{m35455d});
        intent.putExtra("launch_source", "detailView");
        activity.startActivity(intent);
    }

    @Override // p193e.p194a.p1275v.p1308o.AbstractC20919b
    /* renamed from: b */
    public void mo10521b(Activity activity, Contact contact) {
        l.e(activity, "activity");
        l.e(contact, AnalyticsConstants.CONTACT);
        List<Number> m35557M = contact.m35557M();
        l.d(m35557M, "contact.numbers");
        c$a.m19719a(c.f, (n3.r.a.l) activity, contact, m35557M, true, false, false, true, false, InitiateCallHelper.CallContextOption.ShowOnBoarded.a, "detailView", false, 1024);
    }
}
