package p193e.p194a;

import android.content.ClipboardManager;
import android.content.ContentResolver;
import android.content.Context;
import com.truecaller.calling.dialer.suggested_contacts.SuggestionsChooserTargetService;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
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
import com.truecaller.settings.CallingSettings;
import com.truecaller.startup_dialogs.fragments.BottomPopupDialogFragment;
import com.truecaller.util.background.p184qa.WorkActionStatusActivity;
import e.a.h.a.a;
import java.util.Map;
import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p1727n3.p1834m0.AbstractC26857y;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p1011l.p1012a.AbstractC16599t;
import p193e.p194a.p1011l.p1033v2.C17253b;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1049l4.AbstractC17419h;
import p193e.p194a.p1113o4.AbstractC18920b;
import p193e.p194a.p1113o4.AbstractC18923e;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1114o5.AbstractC19044j;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1340w2.C21188a;
import p193e.p194a.p1357x3.AbstractC21394a;
import p193e.p194a.p1359x4.AbstractC21423g;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p1392y2.C21755a;
import p193e.p194a.p1395y3.AbstractC21785c;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p200c.C5233e;
import p193e.p194a.p195a.p200c.p201a.AbstractC5041o;
import p193e.p194a.p195a.p200c.p201a.C5011a;
import p193e.p194a.p195a.p200c.p201a.C5036k;
import p193e.p194a.p195a.p200c.p201a.C5053t;
import p193e.p194a.p195a.p223c1.AbstractC5854d;
import p193e.p194a.p195a.p227e.AbstractC6005m;
import p193e.p194a.p195a.p227e.AbstractC6012o;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p231g.AbstractC6249x;
import p193e.p194a.p195a.p244k.AbstractC6690i;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p195a.p244k.p245a.AbstractC6523c0;
import p193e.p194a.p195a.p244k.p245a.AbstractC6557g0;
import p193e.p194a.p195a.p244k.p245a.AbstractC6626t;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m;
import p193e.p194a.p195a.p244k.p245a.p247f2.AbstractC6551a;
import p193e.p194a.p195a.p279r0.AbstractC7201a;
import p193e.p194a.p195a.p279r0.AbstractC7203c;
import p193e.p194a.p195a.p283v0.AbstractC7283a;
import p193e.p194a.p195a.p287z0.AbstractC7355b;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.AbstractC10024k;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p679d5.p680g.C12637p;
import p193e.p194a.p682e.p683a.C12687c;
import p193e.p194a.p682e.p683a.C12792o3;
import p193e.p194a.p682e.p683a.C12851y3;
import p193e.p194a.p712e4.AbstractC13497p;
import p193e.p194a.p804h.p806b.p818w0.AbstractC14630d;
import p193e.p194a.p804h.p833q0.AbstractC14722a;
import p193e.p194a.p837h0.AbstractC14835j;
import p193e.p194a.p849h4.AbstractC14920n;
import p193e.p194a.p851h5.AbstractC14965w;
import p193e.p194a.p912i4.AbstractC15275e;
import p193e.p194a.p912i4.AbstractC15285o;
import p193e.p194a.p912i4.C15282l;
import p193e.p194a.p947k.AbstractC16111h;
import p193e.p194a.p997k3.p998j.C16461b;
import p193e.p194a.p997k3.p998j.C16487j;
import s1.w.f;
/* renamed from: e.a.s1 */
/* loaded from: classes4-dex2jar.jar:e/a/s1.class */
public final class C20191s1 implements AbstractC16444k2 {

    /* renamed from: l */
    public static final /* synthetic */ int f56888l = 0;

    /* renamed from: b */
    public final AbstractC15539j2 f56889b;

    /* renamed from: c */
    public final C20191s1 f56890c = this;

    /* renamed from: d */
    public Provider<AbstractC19854f<AbstractC6233m>> f56891d = new C20193b(this, 0);

    /* renamed from: e */
    public Provider<AbstractC6248w> f56892e = new C20193b(this, 1);

    /* renamed from: f */
    public Provider<AbstractC7203c> f56893f = new C20193b(this, 2);

    /* renamed from: g */
    public Provider<AbstractC19854f<AbstractC6690i>> f56894g = new C20193b(this, 3);

    /* renamed from: h */
    public Provider<AbstractC14722a> f56895h = new C20193b(this, 4);

    /* renamed from: i */
    public Provider<InitiateCallHelper> f56896i = new C20193b(this, 5);

    /* renamed from: j */
    public Provider<AbstractC15275e> f56897j = new C20193b(this, 6);

    /* renamed from: k */
    public Provider<C16461b> f56898k = new C20193b(this, 7);

    /* renamed from: e.a.s1$b */
    /* loaded from: classes4-dex2jar.jar:e/a/s1$b.class */
    public static final class C20193b<T> implements Provider<T> {

        /* renamed from: a */
        public final C20191s1 f56899a;

        /* renamed from: b */
        public final int f56900b;

        public C20193b(C20191s1 c20191s1, int i) {
            this.f56899a = c20191s1;
            this.f56900b = i;
        }

        public T get() {
            switch (this.f56900b) {
                case 0:
                    T t = (T) this.f56899a.f56889b.mo12453a7();
                    Objects.requireNonNull(t, "Cannot return null from a non-@Nullable component method");
                    return t;
                case 1:
                    T t2 = (T) this.f56899a.f56889b.mo12144x3();
                    Objects.requireNonNull(t2, "Cannot return null from a non-@Nullable component method");
                    return t2;
                case 2:
                    T t3 = (T) this.f56899a.f56889b.mo12171v3();
                    Objects.requireNonNull(t3, "Cannot return null from a non-@Nullable component method");
                    return t3;
                case 3:
                    T t4 = (T) this.f56899a.f56889b.mo12698I0();
                    Objects.requireNonNull(t4, "Cannot return null from a non-@Nullable component method");
                    return t4;
                case 4:
                    T t5 = (T) this.f56899a.f56889b.mo12360h3();
                    Objects.requireNonNull(t5, "Cannot return null from a non-@Nullable component method");
                    return t5;
                case 5:
                    T t6 = (T) this.f56899a.f56889b.mo12389f3();
                    Objects.requireNonNull(t6, "Cannot return null from a non-@Nullable component method");
                    return t6;
                case 6:
                    T t7 = (T) this.f56899a.f56889b.mo12617O1();
                    Objects.requireNonNull(t7, "Cannot return null from a non-@Nullable component method");
                    return t7;
                case 7:
                    T t8 = (T) this.f56899a.f56889b.mo12572R6();
                    Objects.requireNonNull(t8, "Cannot return null from a non-@Nullable component method");
                    return t8;
                default:
                    throw new AssertionError(this.f56900b);
            }
        }
    }

    public C20191s1(AbstractC15539j2 abstractC15539j2, C20192a c20192a) {
        this.f56889b = abstractC15539j2;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: A */
    public void mo11401A(RingerModeListenerWorker ringerModeListenerWorker) {
        AbstractC19854f<AbstractC17419h> mo12445b1 = this.f56889b.mo12445b1();
        Objects.requireNonNull(mo12445b1, "Cannot return null from a non-@Nullable component method");
        ringerModeListenerWorker.f14393a = mo12445b1;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: B */
    public void mo11400B(RetryImMessageWorker retryImMessageWorker) {
        AbstractC8432l mo12809A = this.f56889b.mo12809A();
        Objects.requireNonNull(mo12809A, "Cannot return null from a non-@Nullable component method");
        retryImMessageWorker.f13766a = mo12809A;
        retryImMessageWorker.f13767b = b.a(this.f56891d);
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: C */
    public void mo11399C(C12792o3 c12792o3) {
        AbstractC6392i0 mo12565S = this.f56889b.mo12565S();
        Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
        c12792o3.f37251a = mo12565S;
        AbstractC18951b0 mo12399e7 = this.f56889b.mo12399e7();
        Objects.requireNonNull(mo12399e7, "Cannot return null from a non-@Nullable component method");
        c12792o3.f37252b = mo12399e7;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: D */
    public void mo11398D(ImAttachmentMigratorWorker imAttachmentMigratorWorker) {
        AbstractC6551a mo12640M5 = this.f56889b.mo12640M5();
        Objects.requireNonNull(mo12640M5, "Cannot return null from a non-@Nullable component method");
        imAttachmentMigratorWorker.f13776a = mo12640M5;
        AbstractC19462a mo12776C4 = this.f56889b.mo12776C4();
        Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
        imAttachmentMigratorWorker.f13777b = mo12776C4;
        C20592g mo11648b = this.f56889b.mo11648b();
        Objects.requireNonNull(mo11648b, "Cannot return null from a non-@Nullable component method");
        imAttachmentMigratorWorker.f13778c = mo11648b;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: E */
    public void mo11397E(InboxManualCleanupWorker inboxManualCleanupWorker) {
        AbstractC6392i0 mo12565S = this.f56889b.mo12565S();
        Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
        inboxManualCleanupWorker.f13502a = mo12565S;
        AbstractC6005m mo12507W4 = this.f56889b.mo12507W4();
        Objects.requireNonNull(mo12507W4, "Cannot return null from a non-@Nullable component method");
        inboxManualCleanupWorker.f13503b = mo12507W4;
        AbstractC6012o mo12694I4 = this.f56889b.mo12694I4();
        Objects.requireNonNull(mo12694I4, "Cannot return null from a non-@Nullable component method");
        inboxManualCleanupWorker.f13504c = mo12694I4;
        AbstractC19230g mo12512W = this.f56889b.mo12512W();
        Objects.requireNonNull(mo12512W, "Cannot return null from a non-@Nullable component method");
        inboxManualCleanupWorker.f13505d = mo12512W;
        AbstractC14965w mo12182u6 = this.f56889b.mo12182u6();
        Objects.requireNonNull(mo12182u6, "Cannot return null from a non-@Nullable component method");
        inboxManualCleanupWorker.f13506e = mo12182u6;
        AbstractC19462a mo12776C4 = this.f56889b.mo12776C4();
        Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
        inboxManualCleanupWorker.f13507f = mo12776C4;
        C20592g mo11648b = this.f56889b.mo11648b();
        Objects.requireNonNull(mo11648b, "Cannot return null from a non-@Nullable component method");
        inboxManualCleanupWorker.f13508g = mo11648b;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: F */
    public void mo11396F(ReactionBroadcastReceiver reactionBroadcastReceiver) {
        AbstractC19854f<AbstractC6523c0> mo12532U6 = this.f56889b.mo12532U6();
        Objects.requireNonNull(mo12532U6, "Cannot return null from a non-@Nullable component method");
        reactionBroadcastReceiver.f13656a = mo12532U6;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: G */
    public void mo11395G(C17253b c17253b) {
        AbstractC16613a2 mo12777C3 = this.f56889b.mo12777C3();
        Objects.requireNonNull(mo12777C3, "Cannot return null from a non-@Nullable component method");
        c17253b.f48401k = mo12777C3;
        AbstractC8541a mo12420d = this.f56889b.mo12420d();
        Objects.requireNonNull(mo12420d, "Cannot return null from a non-@Nullable component method");
        c17253b.f48402l = mo12420d;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: H */
    public void mo11394H(ConversationSpamSearchWorker conversationSpamSearchWorker) {
        AbstractC19462a mo12776C4 = this.f56889b.mo12776C4();
        Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
        conversationSpamSearchWorker.f13163a = mo12776C4;
        C20592g mo11648b = this.f56889b.mo11648b();
        Objects.requireNonNull(mo11648b, "Cannot return null from a non-@Nullable component method");
        conversationSpamSearchWorker.f13164b = mo11648b;
        conversationSpamSearchWorker.f13165c = this.f56893f;
        AbstractC7201a mo12277n4 = this.f56889b.mo12277n4();
        Objects.requireNonNull(mo12277n4, "Cannot return null from a non-@Nullable component method");
        conversationSpamSearchWorker.f13166d = mo12277n4;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: I */
    public void mo11393I(MissedCallReminderNotificationReceiver missedCallReminderNotificationReceiver) {
        f mo12378g = this.f56889b.mo12378g();
        Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
        missedCallReminderNotificationReceiver.f10740a = mo12378g;
        f mo12315k6 = this.f56889b.mo12315k6();
        Objects.requireNonNull(mo12315k6, "Cannot return null from a non-@Nullable component method");
        missedCallReminderNotificationReceiver.f10741b = mo12315k6;
        Context mo12335j = this.f56889b.mo12335j();
        Objects.requireNonNull(mo12335j, "Cannot return null from a non-@Nullable component method");
        missedCallReminderNotificationReceiver.f10742c = mo12335j;
        missedCallReminderNotificationReceiver.f10743d = b.a(this.f56895h);
        missedCallReminderNotificationReceiver.f10744e = b.a(this.f56896i);
        missedCallReminderNotificationReceiver.f10745f = b.a(this.f56897j);
        missedCallReminderNotificationReceiver.f10746g = b.a(this.f56898k);
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: a */
    public void mo11392a(ImSubscriptionService imSubscriptionService) {
        AbstractC6557g0 mo12574R4 = this.f56889b.mo12574R4();
        Objects.requireNonNull(mo12574R4, "Cannot return null from a non-@Nullable component method");
        imSubscriptionService.f13726d = mo12574R4;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: b */
    public void mo11391b(BottomPopupDialogFragment bottomPopupDialogFragment) {
        AbstractC21394a mo9764o = this.f56889b.mo9764o();
        Objects.requireNonNull(mo9764o, "Cannot return null from a non-@Nullable component method");
        bottomPopupDialogFragment.f14941b = mo9764o;
        AbstractC19230g mo12512W = this.f56889b.mo12512W();
        Objects.requireNonNull(mo12512W, "Cannot return null from a non-@Nullable component method");
        bottomPopupDialogFragment.f14942c = mo12512W;
        AbstractC19219a0 mo11647c = this.f56889b.mo11647c();
        Objects.requireNonNull(mo11647c, "Cannot return null from a non-@Nullable component method");
        bottomPopupDialogFragment.f14943d = mo11647c;
        C15282l mo12747E6 = this.f56889b.mo12747E6();
        Objects.requireNonNull(mo12747E6, "Cannot return null from a non-@Nullable component method");
        bottomPopupDialogFragment.f14944e = mo12747E6;
        AbstractC15285o mo12576R2 = this.f56889b.mo12576R2();
        Objects.requireNonNull(mo12576R2, "Cannot return null from a non-@Nullable component method");
        bottomPopupDialogFragment.f14945f = mo12576R2;
        AbstractC16599t mo12678J7 = this.f56889b.mo12678J7();
        Objects.requireNonNull(mo12678J7, "Cannot return null from a non-@Nullable component method");
        bottomPopupDialogFragment.f14946g = mo12678J7;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: c */
    public void mo11390c(SuggestionsChooserTargetService suggestionsChooserTargetService) {
        f mo12378g = this.f56889b.mo12378g();
        Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
        suggestionsChooserTargetService.b = mo12378g;
        f mo12315k6 = this.f56889b.mo12315k6();
        Objects.requireNonNull(mo12315k6, "Cannot return null from a non-@Nullable component method");
        suggestionsChooserTargetService.c = mo12315k6;
        AbstractC14630d mo12276n5 = this.f56889b.mo12276n5();
        Objects.requireNonNull(mo12276n5, "Cannot return null from a non-@Nullable component method");
        suggestionsChooserTargetService.d = mo12276n5;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: d */
    public void mo11389d(MessageToNudgeWorker messageToNudgeWorker) {
        AbstractC7355b mo12669K3 = this.f56889b.mo12669K3();
        Objects.requireNonNull(mo12669K3, "Cannot return null from a non-@Nullable component method");
        messageToNudgeWorker.f13657a = mo12669K3;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: e */
    public void mo11388e(a aVar) {
        e.a.h.a.b mo12181u7 = this.f56889b.mo12181u7();
        Objects.requireNonNull(mo12181u7, "Cannot return null from a non-@Nullable component method");
        aVar.a = mo12181u7;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: f */
    public void mo11387f(C5233e c5233e) {
        AbstractC6392i0 mo12565S = this.f56889b.mo12565S();
        Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
        c5233e.f17954a = mo12565S;
        AbstractC19510i0 mo12264o4 = this.f56889b.mo12264o4();
        Objects.requireNonNull(mo12264o4, "Cannot return null from a non-@Nullable component method");
        c5233e.f17955b = mo12264o4;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: g */
    public void mo11386g(C5011a c5011a) {
        AbstractC10024k mo12738F1 = this.f56889b.mo12738F1();
        Objects.requireNonNull(mo12738F1, "Cannot return null from a non-@Nullable component method");
        c5011a.f17123c = mo12738F1;
        AbstractC5041o mo12333j1 = this.f56889b.mo12333j1();
        Objects.requireNonNull(mo12333j1, "Cannot return null from a non-@Nullable component method");
        c5011a.f17124d = mo12333j1;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: h */
    public void mo11385h(WorkActionStatusActivity workActionStatusActivity) {
        Map<C21755a, Provider<AbstractC21765k>> mo12388f4 = this.f56889b.mo12388f4();
        Objects.requireNonNull(mo12388f4, "Cannot return null from a non-@Nullable component method");
        workActionStatusActivity.f15947a = mo12388f4;
        AbstractC26857y mo11659D = this.f56889b.mo11659D();
        Objects.requireNonNull(mo11659D, "Cannot return null from a non-@Nullable component method");
        workActionStatusActivity.f15948b = mo11659D;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: i */
    public void mo11384i(FetchLinkPreviewWorker fetchLinkPreviewWorker) {
        AbstractC19854f<AbstractC6233m> mo12453a7 = this.f56889b.mo12453a7();
        Objects.requireNonNull(mo12453a7, "Cannot return null from a non-@Nullable component method");
        fetchLinkPreviewWorker.f13709a = mo12453a7;
        AbstractC7283a mo12133y0 = this.f56889b.mo12133y0();
        Objects.requireNonNull(mo12133y0, "Cannot return null from a non-@Nullable component method");
        fetchLinkPreviewWorker.f13710b = mo12133y0;
        fetchLinkPreviewWorker.f13711c = b.a(this.f56892e);
        AbstractC6708t mo12524V0 = this.f56889b.mo12524V0();
        Objects.requireNonNull(mo12524V0, "Cannot return null from a non-@Nullable component method");
        fetchLinkPreviewWorker.f13712d = mo12524V0;
        fetchLinkPreviewWorker.f13713e = b.a(this.f56894g);
        AbstractC19462a mo12776C4 = this.f56889b.mo12776C4();
        Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
        fetchLinkPreviewWorker.f13714f = mo12776C4;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: j */
    public void mo11383j(FilterSettingsUploadWorker filterSettingsUploadWorker) {
        AbstractC8432l mo12809A = this.f56889b.mo12809A();
        Objects.requireNonNull(mo12809A, "Cannot return null from a non-@Nullable component method");
        filterSettingsUploadWorker.f11929a = mo12809A;
        AbstractC14835j mo12670K2 = this.f56889b.mo12670K2();
        Objects.requireNonNull(mo12670K2, "Cannot return null from a non-@Nullable component method");
        filterSettingsUploadWorker.f11930b = mo12670K2;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: k */
    public void mo11382k(C12687c c12687c) {
        AbstractC6392i0 mo12565S = this.f56889b.mo12565S();
        Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
        c12687c.f36969a = mo12565S;
        ContentResolver mo11652Z = this.f56889b.mo11652Z();
        Objects.requireNonNull(mo11652Z, "Cannot return null from a non-@Nullable component method");
        c12687c.f36970b = mo11652Z;
        AbstractC6249x mo12510W1 = this.f56889b.mo12510W1();
        Objects.requireNonNull(mo12510W1, "Cannot return null from a non-@Nullable component method");
        c12687c.f36971c = mo12510W1;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: l */
    public void mo11381l(C12851y3 c12851y3) {
        AbstractC6248w mo12144x3 = this.f56889b.mo12144x3();
        Objects.requireNonNull(mo12144x3, "Cannot return null from a non-@Nullable component method");
        c12851y3.f37376d = mo12144x3;
        AbstractC19854f<AbstractC6485m> mo12224r4 = this.f56889b.mo12224r4();
        Objects.requireNonNull(mo12224r4, "Cannot return null from a non-@Nullable component method");
        c12851y3.f37377e = mo12224r4;
        AbstractC6392i0 mo12565S = this.f56889b.mo12565S();
        Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
        c12851y3.f37378f = mo12565S;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: m */
    public void mo11380m(FilterUploadWorker filterUploadWorker) {
        AbstractC8432l mo12809A = this.f56889b.mo12809A();
        Objects.requireNonNull(mo12809A, "Cannot return null from a non-@Nullable component method");
        filterUploadWorker.f11931a = mo12809A;
        AbstractC14835j mo12670K2 = this.f56889b.mo12670K2();
        Objects.requireNonNull(mo12670K2, "Cannot return null from a non-@Nullable component method");
        filterUploadWorker.f11932b = mo12670K2;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: n */
    public void mo11379n(FcmMessageListenerService fcmMessageListenerService) {
        AbstractC18923e mo12778C2 = this.f56889b.mo12778C2();
        Objects.requireNonNull(mo12778C2, "Cannot return null from a non-@Nullable component method");
        fcmMessageListenerService.f11914a = mo12778C2;
        AbstractC18920b mo12159w1 = this.f56889b.mo12159w1();
        Objects.requireNonNull(mo12159w1, "Cannot return null from a non-@Nullable component method");
        fcmMessageListenerService.f11915b = mo12159w1;
        Context mo12335j = this.f56889b.mo12335j();
        Objects.requireNonNull(mo12335j, "Cannot return null from a non-@Nullable component method");
        fcmMessageListenerService.f11916c = new C21188a(mo12335j);
        AbstractC21785c mo12156w4 = this.f56889b.mo12156w4();
        Objects.requireNonNull(mo12156w4, "Cannot return null from a non-@Nullable component method");
        fcmMessageListenerService.f11917d = mo12156w4;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: o */
    public void mo11378o(C5053t c5053t) {
        AbstractC10024k mo12738F1 = this.f56889b.mo12738F1();
        Objects.requireNonNull(mo12738F1, "Cannot return null from a non-@Nullable component method");
        c5053t.f17123c = mo12738F1;
        AbstractC5041o mo12333j1 = this.f56889b.mo12333j1();
        Objects.requireNonNull(mo12333j1, "Cannot return null from a non-@Nullable component method");
        c5053t.f17124d = mo12333j1;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: p */
    public void mo11377p(FilterRestoreWorker filterRestoreWorker) {
        AbstractC8432l mo12809A = this.f56889b.mo12809A();
        Objects.requireNonNull(mo12809A, "Cannot return null from a non-@Nullable component method");
        filterRestoreWorker.f11927a = mo12809A;
        AbstractC14835j mo12670K2 = this.f56889b.mo12670K2();
        Objects.requireNonNull(mo12670K2, "Cannot return null from a non-@Nullable component method");
        filterRestoreWorker.f11928b = mo12670K2;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: q */
    public void mo11376q(SendImReportWorker sendImReportWorker) {
        AbstractC6626t mo12169v5 = this.f56889b.mo12169v5();
        Objects.requireNonNull(mo12169v5, "Cannot return null from a non-@Nullable component method");
        sendImReportWorker.f13768a = mo12169v5;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: r */
    public void mo11375r(C12637p c12637p) {
        AbstractC16111h mo12134y = this.f56889b.mo12134y();
        Objects.requireNonNull(mo12134y, "Cannot return null from a non-@Nullable component method");
        c12637p.f36806l = mo12134y;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: s */
    public void mo11374s(OTPCopierService oTPCopierService) {
        AbstractC19223c0 mo12349i = this.f56889b.mo12349i();
        Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
        oTPCopierService.f14090a = mo12349i;
        AbstractC15275e mo12617O1 = this.f56889b.mo12617O1();
        Objects.requireNonNull(mo12617O1, "Cannot return null from a non-@Nullable component method");
        oTPCopierService.f14091b = mo12617O1;
        AbstractC19462a mo12776C4 = this.f56889b.mo12776C4();
        Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
        oTPCopierService.f14092c = mo12776C4;
        oTPCopierService.f14093d = b.a(this.f56891d);
        AbstractC10060c mo12282n = this.f56889b.mo12282n();
        Objects.requireNonNull(mo12282n, "Cannot return null from a non-@Nullable component method");
        oTPCopierService.f14094e = mo12282n;
        AbstractC10028o mo12615O4 = this.f56889b.mo12615O4();
        Objects.requireNonNull(mo12615O4, "Cannot return null from a non-@Nullable component method");
        oTPCopierService.f14095f = mo12615O4;
        AbstractC19044j mo12261o7 = this.f56889b.mo12261o7();
        Objects.requireNonNull(mo12261o7, "Cannot return null from a non-@Nullable component method");
        oTPCopierService.f14096g = mo12261o7;
        ClipboardManager mo12249p6 = this.f56889b.mo12249p6();
        Objects.requireNonNull(mo12249p6, "Cannot return null from a non-@Nullable component method");
        oTPCopierService.f14097h = mo12249p6;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: t */
    public void mo11373t(ScheduleMessageWorker scheduleMessageWorker) {
        scheduleMessageWorker.f13658a = b.a(this.f56891d);
        scheduleMessageWorker.f13659b = b.a(this.f56892e);
        AbstractC5854d mo12115z5 = this.f56889b.mo12115z5();
        Objects.requireNonNull(mo12115z5, "Cannot return null from a non-@Nullable component method");
        scheduleMessageWorker.f13660c = mo12115z5;
        AbstractC13497p mo11636l = this.f56889b.mo11636l();
        Objects.requireNonNull(mo11636l, "Cannot return null from a non-@Nullable component method");
        scheduleMessageWorker.f13661d = mo11636l;
        AbstractC19462a mo12776C4 = this.f56889b.mo12776C4();
        Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
        scheduleMessageWorker.f13662e = mo12776C4;
        AbstractC19230g mo12512W = this.f56889b.mo12512W();
        Objects.requireNonNull(mo12512W, "Cannot return null from a non-@Nullable component method");
        scheduleMessageWorker.f13663f = mo12512W;
        AbstractC26857y mo11659D = this.f56889b.mo11659D();
        Objects.requireNonNull(mo11659D, "Cannot return null from a non-@Nullable component method");
        scheduleMessageWorker.f13664g = mo11659D;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: u */
    public void mo11372u(HuaweiMessageService huaweiMessageService) {
        AbstractC18923e mo12778C2 = this.f56889b.mo12778C2();
        Objects.requireNonNull(mo12778C2, "Cannot return null from a non-@Nullable component method");
        huaweiMessageService.f14414b = mo12778C2;
        AbstractC18920b mo12159w1 = this.f56889b.mo12159w1();
        Objects.requireNonNull(mo12159w1, "Cannot return null from a non-@Nullable component method");
        huaweiMessageService.f14415c = mo12159w1;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: v */
    public void mo11371v(SendReactionWorker sendReactionWorker) {
        AbstractC6626t mo12169v5 = this.f56889b.mo12169v5();
        Objects.requireNonNull(mo12169v5, "Cannot return null from a non-@Nullable component method");
        sendReactionWorker.f13769a = mo12169v5;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: w */
    public void mo11370w(C5036k c5036k) {
        AbstractC9691j mo12578R0 = this.f56889b.mo12578R0();
        Objects.requireNonNull(mo12578R0, "Cannot return null from a non-@Nullable component method");
        c5036k.f17243b = mo12578R0;
        AbstractC10024k mo12738F1 = this.f56889b.mo12738F1();
        Objects.requireNonNull(mo12738F1, "Cannot return null from a non-@Nullable component method");
        c5036k.f17244c = mo12738F1;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: x */
    public void mo11369x(MissedCallsNotificationService missedCallsNotificationService) {
        f mo12378g = this.f56889b.mo12378g();
        Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
        missedCallsNotificationService.f14713a = mo12378g;
        f mo12765D2 = this.f56889b.mo12765D2();
        Objects.requireNonNull(mo12765D2, "Cannot return null from a non-@Nullable component method");
        missedCallsNotificationService.f14714b = mo12765D2;
        AbstractC19854f<AbstractC17348c> mo12471Z0 = this.f56889b.mo12471Z0();
        Objects.requireNonNull(mo12471Z0, "Cannot return null from a non-@Nullable component method");
        missedCallsNotificationService.f14715c = mo12471Z0;
        Objects.requireNonNull(this.f56889b.mo11648b(), "Cannot return null from a non-@Nullable component method");
        AbstractC15275e mo12617O1 = this.f56889b.mo12617O1();
        Objects.requireNonNull(mo12617O1, "Cannot return null from a non-@Nullable component method");
        missedCallsNotificationService.f14716d = mo12617O1;
        AbstractC14920n mo12458a1 = this.f56889b.mo12458a1();
        Objects.requireNonNull(mo12458a1, "Cannot return null from a non-@Nullable component method");
        missedCallsNotificationService.f14717e = mo12458a1;
        CallingSettings mo12414d6 = this.f56889b.mo12414d6();
        Objects.requireNonNull(mo12414d6, "Cannot return null from a non-@Nullable component method");
        missedCallsNotificationService.f14718f = mo12414d6;
        AbstractC19219a0 mo11647c = this.f56889b.mo11647c();
        Objects.requireNonNull(mo11647c, "Cannot return null from a non-@Nullable component method");
        missedCallsNotificationService.f14719g = mo11647c;
        AbstractC21423g mo12252p3 = this.f56889b.mo12252p3();
        Objects.requireNonNull(mo12252p3, "Cannot return null from a non-@Nullable component method");
        missedCallsNotificationService.f14720h = mo12252p3;
        C16487j mo12341i7 = this.f56889b.mo12341i7();
        Objects.requireNonNull(mo12341i7, "Cannot return null from a non-@Nullable component method");
        missedCallsNotificationService.f14721i = mo12341i7;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: y */
    public void mo11368y(AcceptGroupInviteWorker acceptGroupInviteWorker) {
        AbstractC6448d mo12509W2 = this.f56889b.mo12509W2();
        Objects.requireNonNull(mo12509W2, "Cannot return null from a non-@Nullable component method");
        acceptGroupInviteWorker.f13770a = mo12509W2;
        AbstractC19462a mo12776C4 = this.f56889b.mo12776C4();
        Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
        acceptGroupInviteWorker.f13771b = mo12776C4;
        AbstractC19854f<AbstractC19463a0> mo12217s = this.f56889b.mo12217s();
        Objects.requireNonNull(mo12217s, "Cannot return null from a non-@Nullable component method");
        acceptGroupInviteWorker.f13772c = mo12217s;
        Objects.requireNonNull(this.f56889b.mo11648b(), "Cannot return null from a non-@Nullable component method");
        AbstractC6392i0 mo12565S = this.f56889b.mo12565S();
        Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
        acceptGroupInviteWorker.f13773d = mo12565S;
        AbstractC19854f<AbstractC6485m> mo12224r4 = this.f56889b.mo12224r4();
        Objects.requireNonNull(mo12224r4, "Cannot return null from a non-@Nullable component method");
        acceptGroupInviteWorker.f13774e = mo12224r4;
    }

    @Override // p193e.p194a.AbstractC16444k2
    /* renamed from: z */
    public void mo11367z(DeepLinkHandlerActivity deepLinkHandlerActivity) {
    }
}
