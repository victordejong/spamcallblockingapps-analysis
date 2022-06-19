package p193e.p194a.p1275v.p1307n;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import com.truecaller.p183ui.SingleActivity;
import e.a.h.s0.c;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p1275v.p1308o.AbstractC20918a;
import p193e.p194a.p619d.p637c0.AbstractC11476s1;
import p193e.p194a.p804h.p835s0.c$a;
import s1.z.c.l;
/* renamed from: e.a.v.n.a */
/* loaded from: classes8-dex2jar.jar:e/a/v/n/a.class */
public final class C20916a implements AbstractC20918a {

    /* renamed from: a */
    public final AbstractC11476s1 f58853a;

    @Inject
    public C20916a(AbstractC11476s1 abstractC11476s1) {
        l.e(abstractC11476s1, "voipUtil");
        this.f58853a = abstractC11476s1;
    }

    @Override // p193e.p194a.p1275v.p1308o.AbstractC20918a
    /* renamed from: a */
    public void mo10525a(Context context, Contact contact) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(contact, AnalyticsConstants.CONTACT);
        Intent putExtra = SingleActivity.m34591ua(context, SingleActivity.FragmentSingle.DETAILS_CALL_LOG).putExtra("ARG_CONTACT", contact);
        l.d(putExtra, "SingleActivity.buildInte…ase.ARG_CONTACT, contact)");
        context.startActivity(putExtra);
    }

    @Override // p193e.p194a.p1275v.p1308o.AbstractC20918a
    /* renamed from: b */
    public void mo10524b(Activity activity, Contact contact) {
        l.e(activity, "activity");
        l.e(contact, AnalyticsConstants.CONTACT);
        List<Number> m35557M = contact.m35557M();
        l.d(m35557M, "contact.numbers");
        c$a.m19719a(c.f, (n3.r.a.l) activity, contact, m35557M, true, true, false, false, false, InitiateCallHelper.CallContextOption.ShowOnBoarded.a, "detailView", false, 1024);
    }

    @Override // p193e.p194a.p1275v.p1308o.AbstractC20918a
    /* renamed from: c */
    public void mo10523c(n3.r.a.l lVar, Contact contact) {
        l.e(lVar, "activity");
        l.e(contact, AnalyticsConstants.CONTACT);
        this.f58853a.mo24616h(lVar, contact, "detailView");
    }
}
