package p193e.p194a.p195a.p200c;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.Message;
import java.util.LinkedHashMap;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1146q2.AbstractC19462a;
import s1.z.c.l;
/* renamed from: e.a.a.c.u3 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/u3.class */
public final class C5774u3 implements AbstractC5743t3 {

    /* renamed from: a */
    public boolean f19355a;

    /* renamed from: b */
    public final AbstractC19462a f19356b;

    /* renamed from: c */
    public final AbstractC5524m5 f19357c;

    @Inject
    public C5774u3(AbstractC19462a abstractC19462a, AbstractC5524m5 abstractC5524m5) {
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC5524m5, "conversationState");
        this.f19356b = abstractC19462a;
        this.f19357c = abstractC5524m5;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x018a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0137 A[LOOP:3: B:56:0x00f8->B:67:0x0137, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0190 A[LOOP:4: B:73:0x0151->B:84:0x0190, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0131 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m32636a(com.truecaller.messaging.data.types.Message[] r4) {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5774u3.m32636a(com.truecaller.messaging.data.types.Message[]):java.lang.String");
    }

    /* renamed from: b */
    public final void m32635b(String str, String str2, int i) {
        AbstractC19462a abstractC19462a = this.f19356b;
        LinkedHashMap m8655X = C22128a.m8655X("ConversationBubbleLongPress", "type");
        LinkedHashMap m8649Z = C22128a.m8649Z("type", AnalyticsConstants.NAME, str, "value", m8655X, "type", str, "action", AnalyticsConstants.NAME, str2, "value", "action", str2);
        m8649Z.put("value", Double.valueOf(i));
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("ConversationBubbleLongPress");
        m15852a.m15849c(m8649Z);
        m15852a.m15848d(m8655X);
        C17697p3 build = m15852a.build();
        l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
        abstractC19462a.mo13275a(build);
    }

    /* renamed from: c */
    public final void m32634c(String str, String str2) {
        AbstractC19462a abstractC19462a = this.f19356b;
        LinkedHashMap m8655X = C22128a.m8655X("ConversationBubbleTap", "type");
        C22128a.m8684N0("ConversationBubbleTap", C22128a.m8649Z("type", AnalyticsConstants.NAME, str, "value", m8655X, "type", str, "action", AnalyticsConstants.NAME, str2, "value", "action", str2), m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5743t3
    /* renamed from: n0 */
    public void mo32633n0(Message message, int i) {
        String str;
        l.e(message, "message");
        switch (i) {
            case C2752R.string.ConversationDetailsActionSelectMessages /* 2131886525 */:
                str = "selectMore";
                break;
            case C2752R.string.ConversationErrorDelete /* 2131886545 */:
                str = "delete";
                break;
            case C2752R.string.ConversationErrorEdit /* 2131886546 */:
                str = "edit";
                break;
            case C2752R.string.ConversationErrorResendChat /* 2131886548 */:
                str = "resendAsIM";
                break;
            case C2752R.string.ConversationErrorResendMms /* 2131886549 */:
                str = "resendAsMms";
                break;
            case C2752R.string.ConversationErrorResendSms /* 2131886550 */:
                str = "resendAsSms";
                break;
            case C2752R.string.ConversationErrorRetry /* 2131886551 */:
                str = "resend";
                break;
            case C2752R.string.ConversationMarkImportant /* 2131886588 */:
                str = "markAsImportant";
                break;
            case C2752R.string.ConversationMoreDetails /* 2131886598 */:
                str = "messageDetails";
                break;
            case C2752R.string.ConversationNotImportant /* 2131886599 */:
                str = "markAsNotImportant";
                break;
            case C2752R.string.menu_copy /* 2131889451 */:
                str = "copy";
                break;
            default:
                AssertionUtil.OnlyInDebug.fail("Consider logging the new action");
                return;
        }
        m32634c(m32636a(new Message[]{message}), str);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5743t3
    /* renamed from: o0 */
    public void mo32632o0() {
        m32634c("im", "addReaction");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5743t3
    /* renamed from: p0 */
    public void mo32631p0(Message[] messageArr) {
        l.e(messageArr, "messages");
        if (!this.f19355a && this.f19357c.mo32873B()) {
            if (!(messageArr.length == 0)) {
                m32635b(m32636a(messageArr), "none", messageArr.length);
            }
        }
        this.f19355a = false;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5743t3
    /* renamed from: q0 */
    public void mo32630q0(int i, boolean z, Message[] messageArr) {
        String str;
        l.e(messageArr, "selectedMessages");
        switch (i) {
            case C2752R.C2754id.actionCopy /* 2131361890 */:
                str = "copy";
                break;
            case C2752R.C2754id.actionDelete /* 2131361891 */:
                str = "delete";
                break;
            case 2131361892:
            case 2131361897:
            case 2131361898:
            case C2752R.C2754id.actionMode /* 2131361901 */:
            case C2752R.C2754id.actionModeShadow /* 2131361902 */:
            case C2752R.C2754id.actionNegative /* 2131361904 */:
            case C2752R.C2754id.actionOne /* 2131361908 */:
            case C2752R.C2754id.actionPositive /* 2131361909 */:
            case 2131361914:
            case 2131361922:
            case 2131361923:
            case 2131361924:
            case 2131361925:
            default:
                AssertionUtil.OnlyInDebug.fail("Consider logging the new action");
                return;
            case C2752R.C2754id.actionDownload /* 2131361893 */:
                str = "download";
                break;
            case C2752R.C2754id.actionEdit /* 2131361894 */:
                str = "edit";
                break;
            case C2752R.C2754id.actionFeedback /* 2131361895 */:
                str = "feedback";
                break;
            case C2752R.C2754id.actionForward /* 2131361896 */:
                str = "forward";
                break;
            case C2752R.C2754id.actionInfo /* 2131361899 */:
                str = "messageDetails";
                break;
            case C2752R.C2754id.actionMarkImportant /* 2131361900 */:
                str = "markAsImportant";
                break;
            case C2752R.C2754id.actionMultiSelect /* 2131361903 */:
                str = "selectMore";
                break;
            case C2752R.C2754id.actionNotImportant /* 2131361905 */:
                str = "markAsNotImportant";
                break;
            case C2752R.C2754id.actionNotPromotional /* 2131361906 */:
                str = "reportNotPromotional";
                break;
            case C2752R.C2754id.actionNotSpam /* 2131361907 */:
                str = "reportNotSpam";
                break;
            case C2752R.C2754id.actionPromotional /* 2131361910 */:
                str = "reportPromotional";
                break;
            case C2752R.C2754id.actionReply /* 2131361911 */:
                str = "reply";
                break;
            case C2752R.C2754id.actionReschedule /* 2131361912 */:
                str = "reschedule";
                break;
            case C2752R.C2754id.actionResendSms /* 2131361913 */:
                str = "resend";
                break;
            case C2752R.C2754id.actionSelectAllCalls /* 2131361915 */:
                str = "selectAllCalls";
                break;
            case C2752R.C2754id.actionSelectAllMessages /* 2131361916 */:
                str = "selectAllMessages";
                break;
            case C2752R.C2754id.actionSendNow /* 2131361917 */:
                str = "sendNow";
                break;
            case C2752R.C2754id.actionShare /* 2131361918 */:
                str = ViewAction.SHARE;
                break;
            case C2752R.C2754id.actionShowInChat /* 2131361919 */:
                str = "showInChat";
                break;
            case C2752R.C2754id.actionShowOriginal /* 2131361920 */:
                str = "showOriginal";
                break;
            case C2752R.C2754id.actionSpam /* 2131361921 */:
                str = "reportSpam";
                break;
            case C2752R.C2754id.actionTranslate /* 2131361926 */:
                str = "translate";
                break;
            case C2752R.C2754id.actionViewPdo /* 2131361927 */:
                str = "view_pdo";
                break;
        }
        if (!z) {
            m32634c(m32636a(messageArr), str);
            return;
        }
        m32635b(m32636a(messageArr), str, messageArr.length);
        this.f19355a = true;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5743t3
    /* renamed from: r0 */
    public void mo32629r0(Message message) {
        l.e(message, "message");
        m32634c(m32636a(new Message[]{message}), "none");
    }
}
