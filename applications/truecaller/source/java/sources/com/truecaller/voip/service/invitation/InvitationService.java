package com.truecaller.voip.service.invitation;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.IBinder;
import android.widget.RemoteViews;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.groupavatar.GroupAvatarXView;
import com.truecaller.notification.call.C4304R;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.VoipGroupPushNotification;
import com.truecaller.voip.debug.VoipAssistantPushNotification;
import com.truecaller.voip.notification.blocked.VoipBlockedCallsWorker;
import com.truecaller.voip.p192ui.VoipActivity;
import com.truecaller.voip.service.call.CallService;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p619d.p661w.AbstractC12093b;
import p193e.p194a.p619d.p670z.BinderC12331a;
import p193e.p194a.p619d.p670z.p672c.AbstractC12376b;
import p193e.p194a.p619d.p670z.p672c.AbstractC12377c;
import p193e.p194a.p619d.p670z.p672c.AbstractServiceC12375a;
import p193e.p194a.p619d.p670z.p672c.C12382e;
import p193e.p194a.p619d.p670z.p672c.C12392f;
import p193e.p194a.p619d.p670z.p672c.C12393g;
import p193e.p194a.p619d.p670z.p672c.C12394h;
import p193e.p194a.p794g4.p795a.AbstractC14447a;
import p193e.p194a.p794g4.p795a.C14453b;
import p193e.p194a.p794g4.p795a.p796c.C14454a;
import p193e.p194a.p849h4.AbstractC14920n;
import p193e.p194a.p849h4.p850q.AbstractC14932g;
import q3.a.j0;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0001\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\bH\u0010\u0005J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J)\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000e\u001a\u00020\r2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0005J\u000f\u0010\u0011\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0011\u0010\u0005J\u000f\u0010\u0012\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0012\u0010\u0005J\u001f\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ!\u0010\"\u001a\u00020\u00032\f\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\u001fH\u0096@ø\u0001��¢\u0006\u0004\b\"\u0010#J\u0017\u0010%\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\u0013H\u0016¢\u0006\u0004\b%\u0010\u001aJ\u000f\u0010&\u001a\u00020\u0003H\u0016¢\u0006\u0004\b&\u0010\u0005J\u000f\u0010'\u001a\u00020\u0003H\u0016¢\u0006\u0004\b'\u0010\u0005J\u000f\u0010(\u001a\u00020\u0003H\u0016¢\u0006\u0004\b(\u0010\u0005J'\u0010,\u001a\u00020\u0003*\u00020)2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u00030*H\u0002¢\u0006\u0004\b,\u0010-R\"\u00104\u001a\u00020.8��@��X\u0081.¢\u0006\u0012\n\u0004\b\u0012\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u001d\u00109\u001a\u0002058B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u00106\u001a\u0004\b7\u00108R\u001d\u0010<\u001a\u00020)8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b:\u00106\u001a\u0004\b:\u0010;R\u001d\u0010@\u001a\u00020=8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u00106\u001a\u0004\b>\u0010?R\"\u0010G\u001a\u00020A8��@��X\u0081.¢\u0006\u0012\n\u0004\b,\u0010B\u001a\u0004\bC\u0010D\"\u0004\bE\u0010F\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006I"}, d2 = {"Lcom/truecaller/voip/service/invitation/InvitationService;", "Landroid/app/Service;", "Le/a/d/z/c/c;", "Ls1/s;", "onCreate", "()V", "Landroid/content/Intent;", "intent", "", "flags", "startId", "onStartCommand", "(Landroid/content/Intent;II)I", "Landroid/os/IBinder;", "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;", "f", C22021b.f61237c, "d", "", "title", "extra", "j", "(Ljava/lang/String;Ljava/lang/String;)V", "desc", "h", "(Ljava/lang/String;)V", "Lcom/truecaller/common/ui/avatar/AvatarXConfig;", DTBMetricsConfiguration.CONFIG_DIR, "setAvatarXConfig", "(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V", "", "Le/a/b0/a/c/m/b;", "configs", "i", "(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;", RemoteMessageConst.Notification.CHANNEL_ID, AbstractC2405c.f7629a, "a", "t", "onDestroy", "Le/a/g4/a/c/a;", "Lkotlin/Function1;", "block", "e", "(Le/a/g4/a/c/a;Ls1/z/b/l;)V", "Le/a/d/z/c/b;", "Le/a/d/z/c/b;", "getPresenter$voip_release", "()Le/a/d/z/c/b;", "setPresenter$voip_release", "(Le/a/d/z/c/b;)V", "presenter", "Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;", "Ls1/g;", "getGroupAvatarView", "()Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;", "groupAvatarView", "g", "()Le/a/g4/a/c/a;", RemoteMessageConst.NOTIFICATION, "Le/a/h4/n;", "getNotificationManager", "()Le/a/h4/n;", "notificationManager", "Le/a/g4/a/b;", "Le/a/g4/a/b;", "getNotificationFactory$voip_release", "()Le/a/g4/a/b;", "setNotificationFactory$voip_release", "(Le/a/g4/a/b;)V", "notificationFactory", "<init>", "voip_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/service/invitation/InvitationService.class */
public final class InvitationService extends AbstractServiceC12375a implements AbstractC12377c {
    @Inject

    /* renamed from: d */
    public AbstractC12376b f16417d;
    @Inject

    /* renamed from: e */
    public C14453b f16418e;

    /* renamed from: f */
    public final g f16419f = C25225a.m3978P1(new C4832c());

    /* renamed from: g */
    public final g f16420g = C25225a.m3978P1(new C4831b());

    /* renamed from: h */
    public final g f16421h = C25225a.m3978P1(new C4830a());

    /* renamed from: com.truecaller.voip.service.invitation.InvitationService$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/service/invitation/InvitationService$a.class */
    public static final class C4830a extends m implements a<GroupAvatarXView> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4830a() {
            super(0);
            InvitationService.this = r4;
        }

        public Object invoke() {
            return new GroupAvatarXView(InvitationService.this, null, 0, 6);
        }
    }

    /* renamed from: com.truecaller.voip.service.invitation.InvitationService$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/service/invitation/InvitationService$b.class */
    public static final class C4831b extends m implements a<C14454a> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4831b() {
            super(0);
            InvitationService.this = r4;
        }

        public Object invoke() {
            InvitationService invitationService = InvitationService.this;
            C14453b c14453b = invitationService.f16418e;
            if (c14453b == null) {
                l.l("notificationFactory");
                throw null;
            }
            int i = C4781R.C4783id.voip_invitation_service_foreground_notification;
            String mo19425a = ((AbstractC14920n) invitationService.f16419f.getValue()).mo19425a("voip_v1");
            InvitationService invitationService2 = InvitationService.this;
            Objects.requireNonNull(invitationService2);
            int i2 = C4781R.C4783id.voip_incoming_notification_action_answer;
            VoipActivity.C4839b c4839b = VoipActivity.f16434m;
            PendingIntent activity = PendingIntent.getActivity(invitationService2, i2, c4839b.m34293a(invitationService2, true), 201326592);
            l.d(activity, "PendingIntent.getActivit….FLAG_IMMUTABLE\n        )");
            InvitationService invitationService3 = InvitationService.this;
            Objects.requireNonNull(invitationService3);
            int i3 = C4781R.C4783id.voip_incoming_notification_action_decline;
            l.e(invitationService3, AnalyticsConstants.CONTEXT);
            Intent intent = new Intent(invitationService3, InvitationService.class);
            intent.setAction("Reject");
            PendingIntent service = PendingIntent.getService(invitationService3, i3, intent, 201326592);
            l.d(service, "PendingIntent.getService….FLAG_IMMUTABLE\n        )");
            C14454a m20084a = c14453b.m20084a(i, mo19425a, activity, service);
            m20084a.m20095m(C4781R.C4782drawable.ic_voip_notification);
            m20084a.m20097i(c4839b.m34293a(InvitationService.this, false));
            l.e("VoipInvitation", "groupKey");
            m20084a.m20101c().f74162v = "VoipInvitation";
            InvitationService invitationService4 = InvitationService.this;
            String string = invitationService4.getString(C4781R.string.voip_status_incoming_audio_call, new Object[]{invitationService4.getString(C4781R.string.voip_text)});
            l.d(string, "getString(R.string.voip_…ring(R.string.voip_text))");
            m20084a.mo20077j(string);
            m20084a.m20098g(new AvatarXConfig(null, null, null, null, false, false, false, false, false, false, false, false, false, false, null, false, 65535));
            return m20084a;
        }
    }

    /* renamed from: com.truecaller.voip.service.invitation.InvitationService$c */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/service/invitation/InvitationService$c.class */
    public static final class C4832c extends m implements a<AbstractC14920n> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4832c() {
            super(0);
            InvitationService.this = r4;
        }

        public Object invoke() {
            Context applicationContext = InvitationService.this.getApplicationContext();
            l.d(applicationContext, "applicationContext");
            Context applicationContext2 = applicationContext.getApplicationContext();
            Context context = applicationContext2;
            if (!(applicationContext2 instanceof AbstractC14932g)) {
                context = null;
            }
            AbstractC14932g abstractC14932g = (AbstractC14932g) context;
            if (abstractC14932g != null) {
                return abstractC14932g.mo19403n();
            }
            throw new RuntimeException(C22128a.m8643a2(AbstractC14932g.class, C22128a.m8728C("Application class does not implement ")));
        }
    }

    /* renamed from: com.truecaller.voip.service.invitation.InvitationService$d */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/service/invitation/InvitationService$d.class */
    public static final class C4833d extends m implements s1.z.b.l<C14454a, s> {

        /* renamed from: b */
        public final /* synthetic */ AvatarXConfig f16425b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4833d(AvatarXConfig avatarXConfig) {
            super(1);
            this.f16425b = avatarXConfig;
        }

        /* renamed from: d */
        public Object m34301d(Object obj) {
            C14454a c14454a = (C14454a) obj;
            l.e(c14454a, "$receiver");
            c14454a.m20098g(this.f16425b);
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.service.invitation.InvitationService", f = "InvitationService.kt", l = {159}, m = "setGroupAvatarViewConfigs")
    /* renamed from: com.truecaller.voip.service.invitation.InvitationService$e */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/service/invitation/InvitationService$e.class */
    public static final class C4834e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f16426d;

        /* renamed from: e */
        public int f16427e;

        /* renamed from: g */
        public Object f16429g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4834e(d dVar) {
            super(dVar);
            InvitationService.this = r4;
        }

        /* renamed from: s */
        public final Object m34300s(Object obj) {
            this.f16426d = obj;
            this.f16427e |= Integer.MIN_VALUE;
            return InvitationService.this.mo23159i(null, this);
        }
    }

    /* renamed from: com.truecaller.voip.service.invitation.InvitationService$f */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/service/invitation/InvitationService$f.class */
    public static final class C4835f extends m implements s1.z.b.l<C14454a, s> {

        /* renamed from: b */
        public final /* synthetic */ Bitmap f16430b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4835f(Bitmap bitmap) {
            super(1);
            this.f16430b = bitmap;
        }

        /* renamed from: d */
        public Object m34299d(Object obj) {
            C14454a c14454a = (C14454a) obj;
            l.e(c14454a, "$receiver");
            c14454a.mo20076l(this.f16430b);
            return s.a;
        }
    }

    /* renamed from: com.truecaller.voip.service.invitation.InvitationService$g */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/service/invitation/InvitationService$g.class */
    public static final class C4836g extends m implements s1.z.b.l<C14454a, s> {

        /* renamed from: b */
        public final /* synthetic */ String f16431b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4836g(String str) {
            super(1);
            this.f16431b = str;
        }

        /* renamed from: d */
        public Object m34298d(Object obj) {
            C14454a c14454a = (C14454a) obj;
            l.e(c14454a, "$receiver");
            c14454a.m20081r(this.f16431b);
            return s.a;
        }
    }

    /* renamed from: com.truecaller.voip.service.invitation.InvitationService$h */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/service/invitation/InvitationService$h.class */
    public static final class C4837h extends m implements s1.z.b.l<C14454a, s> {

        /* renamed from: b */
        public final /* synthetic */ String f16432b;

        /* renamed from: c */
        public final /* synthetic */ String f16433c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4837h(String str, String str2) {
            super(1);
            this.f16432b = str;
            this.f16433c = str2;
        }

        /* renamed from: d */
        public Object m34297d(Object obj) {
            C14454a c14454a = (C14454a) obj;
            l.e(c14454a, "$receiver");
            c14454a.mo20077j(this.f16432b);
            String str = this.f16433c;
            l.e(str, "extra");
            RemoteViews remoteViews = c14454a.f41637j;
            int i = C4304R.C4306id.title_extra;
            remoteViews.setTextViewText(i, str);
            c14454a.f41638k.setTextViewText(i, str);
            return s.a;
        }
    }

    /* renamed from: k */
    public static final Intent m34302k(Context context, VoipGroupPushNotification voipGroupPushNotification) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(voipGroupPushNotification, "pushNotification");
        Intent intent = new Intent(context, InvitationService.class);
        intent.setAction("Invitation");
        intent.putExtra("PushNotification", voipGroupPushNotification);
        return intent;
    }

    @Override // p193e.p194a.p619d.p670z.p672c.AbstractC12377c
    /* renamed from: a */
    public void mo23165a() {
        C19291g.m13515s(this);
    }

    @Override // p193e.p194a.p619d.p670z.p672c.AbstractC12377c
    /* renamed from: b */
    public void mo23164b() {
        l.e(this, AnalyticsConstants.CONTEXT);
        C26842r m1272b = new C26842r.C26843a(VoipBlockedCallsWorker.class).m1272b();
        l.d(m1272b, "OneTimeWorkRequest.Build…\n                .build()");
        C26702l.m1431n(this).m1279i("com.truecaller.voip.incoming.blocked.BlockedVoipCallsWorker", EnumC26832h.REPLACE, m1272b);
    }

    @Override // p193e.p194a.p619d.p670z.p672c.AbstractC12377c
    /* renamed from: c */
    public void mo23163c(String str) {
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        C10480a.m26045M1("[InvitationService] starting service CallService");
        l.e(this, AnalyticsConstants.CONTEXT);
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        Intent intent = new Intent(this, CallService.class);
        intent.setAction("IncomingCall");
        intent.putExtra("ChannelId", str);
        C26467a.m1796f(this, intent);
    }

    @Override // p193e.p194a.p619d.p670z.p672c.AbstractC12377c
    /* renamed from: d */
    public void mo23162d() {
        startActivity(VoipActivity.f16434m.m34293a(this, false));
    }

    /* renamed from: e */
    public final void m34304e(C14454a c14454a, s1.z.b.l<? super C14454a, s> lVar) {
        lVar.d(c14454a);
        AbstractC14447a.m20091q(c14454a, this, false, 2, null);
    }

    @Override // p193e.p194a.p619d.p670z.p672c.AbstractC12377c
    /* renamed from: f */
    public void mo23161f() {
        String string = getString(C4781R.string.voip_status_incoming_audio_call, new Object[]{getString(C4781R.string.voip_text)});
        l.d(string, "getString(R.string.voip_…ring(R.string.voip_text))");
        C26450q c26450q = new C26450q(this, ((AbstractC14920n) this.f16419f.getValue()).mo19425a("miscellaneous_channel"));
        c26450q.f74137R.icon = C4781R.C4782drawable.ic_voip_notification;
        c26450q.m1855n(string);
        c26450q.m1853p(2, true);
        c26450q.m1853p(8, true);
        c26450q.f74121B = "call";
        c26450q.f74153m = false;
        l.d(c26450q, "NotificationCompat.Build…      .setShowWhen(false)");
        startForeground(C4781R.C4783id.voip_invitation_service_foreground_notification_initial, c26450q.m1865d());
        C10480a.m26045M1("[InvitationService] startForeground called");
    }

    /* renamed from: g */
    public final C14454a m34303g() {
        return (C14454a) this.f16420g.getValue();
    }

    @Override // p193e.p194a.p619d.p670z.p672c.AbstractC12377c
    /* renamed from: h */
    public void mo23160h(String str) {
        l.e(str, "desc");
        m34304e(m34303g(), new C4836g(str));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006b  */
    @Override // p193e.p194a.p619d.p670z.p672c.AbstractC12377c
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo23159i(java.util.List<p193e.p194a.p372b0.p373a.p378c.p380m.C8279b> r7, s1.w.d<? super s1.s> r8) {
        /*
            r6 = this;
            r0 = r8
            boolean r0 = r0 instanceof com.truecaller.voip.service.invitation.InvitationService.C4834e
            if (r0 == 0) goto L2a
            r0 = r8
            com.truecaller.voip.service.invitation.InvitationService$e r0 = (com.truecaller.voip.service.invitation.InvitationService.C4834e) r0
            r9 = r0
            r0 = r9
            int r0 = r0.f16427e
            r10 = r0
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2a
            r0 = r9
            r1 = r10
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f16427e = r1
            r0 = r9
            r8 = r0
            goto L34
        L2a:
            com.truecaller.voip.service.invitation.InvitationService$e r0 = new com.truecaller.voip.service.invitation.InvitationService$e
            r1 = r0
            r2 = r6
            r3 = r8
            r1.<init>(r3)
            r8 = r0
        L34:
            r0 = r8
            java.lang.Object r0 = r0.f16426d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r11 = r0
            r0 = r8
            int r0 = r0.f16427e
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L6b
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L60
            r0 = r8
            java.lang.Object r0 = r0.f16429g
            com.truecaller.voip.service.invitation.InvitationService r0 = (com.truecaller.voip.service.invitation.InvitationService) r0
            r7 = r0
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r9
            r8 = r0
            goto L9f
        L60:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L6b:
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            s1.g r0 = r0.f16421h
            java.lang.Object r0 = r0.getValue()
            com.truecaller.common.ui.groupavatar.GroupAvatarXView r0 = (com.truecaller.common.p156ui.groupavatar.GroupAvatarXView) r0
            r9 = r0
            int r0 = com.truecaller.voip.C4781R.dimen.notification_call_avatar_size
            r10 = r0
            r0 = r8
            r1 = r6
            r0.f16429g = r1
            r0 = r8
            r1 = 1
            r0.f16427e = r1
            r0 = r9
            r1 = r7
            r2 = r10
            r3 = r8
            java.lang.Object r0 = r0.m35682d(r1, r2, r3)
            r8 = r0
            r0 = r8
            r1 = r11
            if (r0 != r1) goto L9d
            r0 = r11
            return r0
        L9d:
            r0 = r6
            r7 = r0
        L9f:
            r0 = r8
            android.graphics.Bitmap r0 = (android.graphics.Bitmap) r0
            r8 = r0
            r0 = r7
            r1 = r7
            e.a.g4.a.c.a r1 = r1.m34303g()
            com.truecaller.voip.service.invitation.InvitationService$f r2 = new com.truecaller.voip.service.invitation.InvitationService$f
            r3 = r2
            r4 = r8
            r3.<init>(r4)
            r0.m34304e(r1, r2)
            s1.s r0 = s1.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.voip.service.invitation.InvitationService.mo23159i(java.util.List, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p619d.p670z.p672c.AbstractC12377c
    /* renamed from: j */
    public void mo23158j(String str, String str2) {
        l.e(str, "title");
        l.e(str2, "extra");
        m34304e(m34303g(), new C4837h(str, str2));
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return new BinderC12331a();
    }

    @Override // p193e.p194a.p619d.p670z.p672c.AbstractServiceC12375a, android.app.Service
    public void onCreate() {
        super.onCreate();
        AbstractC12376b abstractC12376b = this.f16417d;
        if (abstractC12376b != null) {
            ((C12382e) abstractC12376b).mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        AbstractC12376b abstractC12376b = this.f16417d;
        if (abstractC12376b == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20574a) abstractC12376b).mo9806c();
        m34303g().m20103a();
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        String action;
        if (intent == null || (action = intent.getAction()) == null) {
            return 2;
        }
        switch (action.hashCode()) {
            case -1850843201:
                if (!action.equals("Reject")) {
                    return 2;
                }
                AbstractC12376b abstractC12376b = this.f16417d;
                if (abstractC12376b == null) {
                    l.l("presenter");
                    throw null;
                }
                C12382e c12382e = (C12382e) abstractC12376b;
                AbstractC12377c abstractC12377c = (AbstractC12377c) c12382e.f57683a;
                if (abstractC12377c != null) {
                    abstractC12377c.mo23165a();
                }
                AbstractC12093b mo23619e = c12382e.f36121g.mo23619e();
                if (mo23619e != null) {
                    mo23619e.mo23587a();
                }
                if (c12382e.f36121g.mo23617g()) {
                    return 2;
                }
                c12382e.m23148Kj();
                return 2;
            case -1106160711:
                if (!action.equals("Invitation")) {
                    return 2;
                }
                AbstractC12376b abstractC12376b2 = this.f16417d;
                if (abstractC12376b2 == null) {
                    l.l("presenter");
                    throw null;
                }
                VoipGroupPushNotification voipGroupPushNotification = (VoipGroupPushNotification) intent.getParcelableExtra("PushNotification");
                if (voipGroupPushNotification == null) {
                    throw new IllegalArgumentException("Notification needs to be provided");
                }
                C12382e c12382e2 = (C12382e) abstractC12376b2;
                Objects.requireNonNull(c12382e2);
                l.e(voipGroupPushNotification, RemoteMessageConst.NOTIFICATION);
                s1.a.a.a.v0.f.d.w2(c12382e2, (f) null, (j0) null, new C12394h(c12382e2, voipGroupPushNotification, null), 3, (Object) null);
                return 2;
            case 760886763:
                if (!action.equals("DebugAssistant")) {
                    return 2;
                }
                AbstractC12376b abstractC12376b3 = this.f16417d;
                if (abstractC12376b3 == null) {
                    l.l("presenter");
                    throw null;
                }
                VoipAssistantPushNotification voipAssistantPushNotification = (VoipAssistantPushNotification) intent.getParcelableExtra("AssistantInvitation");
                if (voipAssistantPushNotification == null) {
                    throw new IllegalArgumentException("Assistant invitation needs to be provided");
                }
                C12382e c12382e3 = (C12382e) abstractC12376b3;
                Objects.requireNonNull(c12382e3);
                l.e(voipAssistantPushNotification, "voipAssistantPushNotification");
                s1.a.a.a.v0.f.d.w2(c12382e3, (f) null, (j0) null, new C12392f(c12382e3, voipAssistantPushNotification, null), 3, (Object) null);
                return 2;
            case 1932989996:
                if (!action.equals("DebugInvitation")) {
                    return 2;
                }
                AbstractC12376b abstractC12376b4 = this.f16417d;
                if (abstractC12376b4 == null) {
                    l.l("presenter");
                    throw null;
                }
                C12382e c12382e4 = (C12382e) abstractC12376b4;
                Objects.requireNonNull(c12382e4);
                s1.a.a.a.v0.f.d.w2(c12382e4, (f) null, (j0) null, new C12393g(c12382e4, null), 3, (Object) null);
                return 2;
            default:
                return 2;
        }
    }

    @Override // p193e.p194a.p619d.p670z.p672c.AbstractC12377c
    public void setAvatarXConfig(AvatarXConfig avatarXConfig) {
        l.e(avatarXConfig, DTBMetricsConfiguration.CONFIG_DIR);
        m34304e(m34303g(), new C4833d(avatarXConfig));
    }

    @Override // p193e.p194a.p619d.p670z.p672c.AbstractC12377c
    /* renamed from: t */
    public void mo23157t() {
        stopForeground(true);
        stopSelf();
    }
}
