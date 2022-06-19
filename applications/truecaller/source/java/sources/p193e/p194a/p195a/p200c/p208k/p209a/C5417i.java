package p193e.p194a.p195a.p200c.p208k.p209a;

import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.conversation.ConversationMode;
import javax.inject.Inject;
import p193e.p194a.p1114o5.AbstractC18951b0;
import s1.z.c.l;
import w3.b.a.e0.e;
/* renamed from: e.a.a.c.k.a.i */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/k/a/i.class */
public final class C5417i implements AbstractC5416h {

    /* renamed from: a */
    public final AbstractC18951b0 f18508a;

    @Inject
    public C5417i(AbstractC18951b0 abstractC18951b0) {
        l.e(abstractC18951b0, "dateHelper");
        this.f18508a = abstractC18951b0;
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5416h
    /* renamed from: a */
    public String mo33168a(ConversationMode conversationMode, long j, long j2) {
        String str;
        l.e(conversationMode, AnalyticsConstants.MODE);
        if (j2 == 0) {
            str = this.f18508a.mo14283l(j);
        } else if (conversationMode == ConversationMode.SCHEDULE) {
            str = this.f18508a.mo14283l(j2);
        } else {
            AbstractC18951b0 abstractC18951b0 = this.f18508a;
            if (abstractC18951b0.mo14274u(j2, ((e) abstractC18951b0.mo14285j()).a)) {
                str = this.f18508a.mo14283l(j2);
            } else if (this.f18508a.mo14272w(j2)) {
                str = this.f18508a.mo14275t(j2, "dd MMM") + ' ' + this.f18508a.mo14283l(j2);
            } else {
                str = this.f18508a.mo14275t(j2, "dd MMM YYYY") + ' ' + this.f18508a.mo14283l(j2);
            }
        }
        return str;
    }
}
