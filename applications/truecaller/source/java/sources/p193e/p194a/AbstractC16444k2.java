package p193e.p194a;

import com.truecaller.TrueApp;
import com.truecaller.calling.dialer.suggested_contacts.SuggestionsChooserTargetService;
import com.truecaller.calling.missedcallreminder.MissedCallReminderNotificationReceiver;
import com.truecaller.deeplink.DeepLinkHandlerActivity;
import com.truecaller.fcm.FcmMessageListenerService;
import com.truecaller.filters.sync.FilterRestoreWorker;
import com.truecaller.filters.sync.FilterSettingsUploadWorker;
import com.truecaller.filters.sync.FilterUploadWorker;
import com.truecaller.messaging.conversationlist.ConversationSpamSearchWorker;
import com.truecaller.messaging.inboxcleanup.InboxManualCleanupWorker;
import com.truecaller.messaging.notifications.ReactionBroadcastReceiver;
import com.truecaller.messaging.nudgetosend.MessageToNudgeWorker;
import com.truecaller.messaging.sending.ScheduleMessageWorker;
import com.truecaller.messaging.transport.p170im.FetchLinkPreviewWorker;
import com.truecaller.messaging.transport.p170im.ImSubscriptionService;
import com.truecaller.messaging.transport.p170im.RetryImMessageWorker;
import com.truecaller.messaging.transport.p170im.SendImReportWorker;
import com.truecaller.messaging.transport.p170im.SendReactionWorker;
import com.truecaller.messaging.transport.p170im.groups.AcceptGroupInviteWorker;
import com.truecaller.messaging.transport.p170im.legacy.ImAttachmentMigratorWorker;
import com.truecaller.notifications.OTPCopierService;
import com.truecaller.presence.RingerModeListenerWorker;
import com.truecaller.push.HuaweiMessageService;
import com.truecaller.service.MissedCallsNotificationService;
import com.truecaller.startup_dialogs.fragments.BottomPopupDialogFragment;
import com.truecaller.util.background.p184qa.WorkActionStatusActivity;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1033v2.C17253b;
import p193e.p194a.p195a.p200c.C5233e;
import p193e.p194a.p195a.p200c.p201a.C5011a;
import p193e.p194a.p195a.p200c.p201a.C5036k;
import p193e.p194a.p195a.p200c.p201a.C5053t;
import p193e.p194a.p679d5.p680g.C12637p;
import p193e.p194a.p682e.p683a.C12687c;
import p193e.p194a.p682e.p683a.C12792o3;
import p193e.p194a.p682e.p683a.C12851y3;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.k2 */
/* loaded from: classes4-dex2jar.jar:e/a/k2.class */
public interface AbstractC16444k2 {

    /* renamed from: a */
    public static final C16445a f46188a = C16445a.f46190b;

    /* renamed from: e.a.k2$a */
    /* loaded from: classes4-dex2jar.jar:e/a/k2$a.class */
    public static final class C16445a {

        /* renamed from: b */
        public static final /* synthetic */ C16445a f46190b = new C16445a();

        /* renamed from: a */
        public static final g f46189a = C25225a.m3978P1(C16446a.f46191b);

        /* renamed from: e.a.k2$a$a */
        /* loaded from: classes4-dex2jar.jar:e/a/k2$a$a.class */
        public static final class C16446a extends m implements a<AbstractC16444k2> {

            /* renamed from: b */
            public static final C16446a f46191b = new C16446a();

            public C16446a() {
                super(0);
            }

            public Object invoke() {
                int i = C20191s1.f56888l;
                TrueApp m36032b0 = TrueApp.m36032b0();
                l.d(m36032b0, "TrueApp.getApp()");
                AbstractC15539j2 mo10154s = m36032b0.mo10154s();
                Objects.requireNonNull(mo10154s);
                C25225a.m3846s(mo10154s, AbstractC15539j2.class);
                return new C20191s1(mo10154s, null);
            }
        }

        /* renamed from: a */
        public final AbstractC16444k2 m17389a() {
            return (AbstractC16444k2) f46189a.getValue();
        }
    }

    /* renamed from: A */
    void mo11401A(RingerModeListenerWorker ringerModeListenerWorker);

    /* renamed from: B */
    void mo11400B(RetryImMessageWorker retryImMessageWorker);

    /* renamed from: C */
    void mo11399C(C12792o3 c12792o3);

    /* renamed from: D */
    void mo11398D(ImAttachmentMigratorWorker imAttachmentMigratorWorker);

    /* renamed from: E */
    void mo11397E(InboxManualCleanupWorker inboxManualCleanupWorker);

    /* renamed from: F */
    void mo11396F(ReactionBroadcastReceiver reactionBroadcastReceiver);

    /* renamed from: G */
    void mo11395G(C17253b c17253b);

    /* renamed from: H */
    void mo11394H(ConversationSpamSearchWorker conversationSpamSearchWorker);

    /* renamed from: I */
    void mo11393I(MissedCallReminderNotificationReceiver missedCallReminderNotificationReceiver);

    /* renamed from: a */
    void mo11392a(ImSubscriptionService imSubscriptionService);

    /* renamed from: b */
    void mo11391b(BottomPopupDialogFragment bottomPopupDialogFragment);

    /* renamed from: c */
    void mo11390c(SuggestionsChooserTargetService suggestionsChooserTargetService);

    /* renamed from: d */
    void mo11389d(MessageToNudgeWorker messageToNudgeWorker);

    /* renamed from: e */
    void mo11388e(e.a.h.a.a aVar);

    /* renamed from: f */
    void mo11387f(C5233e c5233e);

    /* renamed from: g */
    void mo11386g(C5011a c5011a);

    /* renamed from: h */
    void mo11385h(WorkActionStatusActivity workActionStatusActivity);

    /* renamed from: i */
    void mo11384i(FetchLinkPreviewWorker fetchLinkPreviewWorker);

    /* renamed from: j */
    void mo11383j(FilterSettingsUploadWorker filterSettingsUploadWorker);

    /* renamed from: k */
    void mo11382k(C12687c c12687c);

    /* renamed from: l */
    void mo11381l(C12851y3 c12851y3);

    /* renamed from: m */
    void mo11380m(FilterUploadWorker filterUploadWorker);

    /* renamed from: n */
    void mo11379n(FcmMessageListenerService fcmMessageListenerService);

    /* renamed from: o */
    void mo11378o(C5053t c5053t);

    /* renamed from: p */
    void mo11377p(FilterRestoreWorker filterRestoreWorker);

    /* renamed from: q */
    void mo11376q(SendImReportWorker sendImReportWorker);

    /* renamed from: r */
    void mo11375r(C12637p c12637p);

    /* renamed from: s */
    void mo11374s(OTPCopierService oTPCopierService);

    /* renamed from: t */
    void mo11373t(ScheduleMessageWorker scheduleMessageWorker);

    /* renamed from: u */
    void mo11372u(HuaweiMessageService huaweiMessageService);

    /* renamed from: v */
    void mo11371v(SendReactionWorker sendReactionWorker);

    /* renamed from: w */
    void mo11370w(C5036k c5036k);

    /* renamed from: x */
    void mo11369x(MissedCallsNotificationService missedCallsNotificationService);

    /* renamed from: y */
    void mo11368y(AcceptGroupInviteWorker acceptGroupInviteWorker);

    /* renamed from: z */
    void mo11367z(DeepLinkHandlerActivity deepLinkHandlerActivity);
}
