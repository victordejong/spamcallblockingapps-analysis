package com.truecaller.voip.legacy.incoming;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.VoipUser;
import com.truecaller.voip.legacy.incall.LegacyVoipService;
import com.truecaller.voip.legacy.incoming.p191ui.LegacyIncomingVoipActivity;
import com.truecaller.voip.notification.blocked.VoipBlockedCallsWorker;
import com.truecaller.voip.notification.missed.MissedVoipCallsWorker;
import com.truecaller.voip.util.VoipAnalyticsContext;
import com.truecaller.voip.util.VoipAnalyticsNotificationAction;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p619d.p622b.p625b.AbstractC11149h;
import p193e.p194a.p619d.p622b.p625b.AbstractC11150i;
import p193e.p194a.p619d.p622b.p625b.AbstractServiceC11144c;
import p193e.p194a.p619d.p622b.p625b.BinderC11145d;
import p193e.p194a.p619d.p622b.p625b.C11139b;
import p193e.p194a.p619d.p622b.p625b.C11146e;
import p193e.p194a.p619d.p622b.p625b.C11155n;
import p193e.p194a.p619d.p637c0.AbstractC11384c;
import p193e.p194a.p619d.p637c0.AbstractC11434m1;
import p193e.p194a.p619d.p637c0.AbstractC11436n0;
import p193e.p194a.p619d.p637c0.C11439o0;
import p193e.p194a.p794g4.p795a.AbstractC14447a;
import p193e.p194a.p794g4.p795a.C14453b;
import p193e.p194a.p794g4.p795a.p796c.C14454a;
import p193e.p194a.p849h4.AbstractC14920n;
import p193e.p194a.p849h4.p850q.AbstractC14932g;
import q3.a.i0;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\\\u0010\u0006J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J)\u0010\f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000e\u0010\u0006J\u000f\u0010\u000f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000f\u0010\u0006J\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ'\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0004H\u0016¢\u0006\u0004\b!\u0010\u0006J\u000f\u0010\"\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\"\u0010\u0006J\u000f\u0010#\u001a\u00020\u0004H\u0016¢\u0006\u0004\b#\u0010\u0006J\u000f\u0010$\u001a\u00020\u0004H\u0016¢\u0006\u0004\b$\u0010\u0006J\u000f\u0010%\u001a\u00020\u0004H\u0016¢\u0006\u0004\b%\u0010\u0006R\"\u0010,\u001a\u00020&8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000e\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u00103\u001a\u00020-8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0015\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\"\u0010:\u001a\u0002048\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0011\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\"\u0010A\u001a\u00020;8��@��X\u0081.¢\u0006\u0012\n\u0004\b!\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u0016\u0010E\u001a\u00020B8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bC\u0010DR(\u0010L\u001a\u00020B8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\bF\u0010G\u0012\u0004\bK\u0010\u0006\u001a\u0004\bH\u0010D\"\u0004\bI\u0010JR(\u0010Q\u001a\u00020B8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\bM\u0010G\u0012\u0004\bP\u0010\u0006\u001a\u0004\bN\u0010D\"\u0004\bO\u0010JR\u0018\u0010T\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010SR\u0016\u0010W\u001a\u00020U8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\"\u0010VR\u0016\u0010[\u001a\u00020X8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bY\u0010Z¨\u0006]"}, d2 = {"Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;", "Landroid/app/Service;", "Le/a/d/b/b/i;", "Lq3/a/i0;", "Ls1/s;", "onCreate", "()V", "Landroid/content/Intent;", "intent", "", "flags", "startId", "onStartCommand", "(Landroid/content/Intent;II)I", "f", "k", "", "g", "()Z", "", "title", "h", "(Ljava/lang/String;)V", "Lcom/truecaller/common/ui/avatar/AvatarXConfig;", DTBMetricsConfiguration.CONFIG_DIR, "m3", "(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V", "Lcom/truecaller/voip/VoipUser;", "voipUser", RemoteMessageConst.Notification.CHANNEL_ID, "encrypted", "l", "(Lcom/truecaller/voip/VoipUser;Ljava/lang/String;Z)V", "i", "j", "a", "t", "onDestroy", "Le/a/d/b/b/h;", "Le/a/d/b/b/h;", "getPresenter", "()Le/a/d/b/b/h;", "setPresenter", "(Le/a/d/b/b/h;)V", "presenter", "Le/a/g4/a/b;", "Le/a/g4/a/b;", "getNotificationFactory", "()Le/a/g4/a/b;", "setNotificationFactory", "(Le/a/g4/a/b;)V", "notificationFactory", "Le/a/d/c0/m1;", "Le/a/d/c0/m1;", "getVoipTelecomUtil", "()Le/a/d/c0/m1;", "setVoipTelecomUtil", "(Le/a/d/c0/m1;)V", "voipTelecomUtil", "Le/a/d/c0/n0;", "Le/a/d/c0/n0;", "getVoipCallStateUtil$voip_release", "()Le/a/d/c0/n0;", "setVoipCallStateUtil$voip_release", "(Le/a/d/c0/n0;)V", "voipCallStateUtil", "Ls1/w/f;", "getCoroutineContext", "()Ls1/w/f;", "coroutineContext", "d", "Ls1/w/f;", "getUiContext", "setUiContext", "(Ls1/w/f;)V", "getUiContext$annotations", "uiContext", "e", "getAsyncContext", "setAsyncContext", "getAsyncContext$annotations", "asyncContext", "Landroid/content/BroadcastReceiver;", "Landroid/content/BroadcastReceiver;", "powerOrVolumeButtonReceiver", "Le/a/g4/a/c/a;", "Le/a/g4/a/c/a;", "callNotification", "Le/a/h4/n;", AbstractC2405c.f7629a, "()Le/a/h4/n;", "notificationManager", "<init>", "voip_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/legacy/incoming/LegacyIncomingVoipService.class */
public final class LegacyIncomingVoipService extends AbstractServiceC11144c implements AbstractC11150i, i0 {

    /* renamed from: l */
    public static boolean f16365l;
    @Inject

    /* renamed from: d */
    public f f16366d;
    @Inject

    /* renamed from: e */
    public f f16367e;
    @Inject

    /* renamed from: f */
    public AbstractC11149h f16368f;
    @Inject

    /* renamed from: g */
    public AbstractC11434m1 f16369g;
    @Inject

    /* renamed from: h */
    public C14453b f16370h;
    @Inject

    /* renamed from: i */
    public AbstractC11436n0 f16371i;

    /* renamed from: j */
    public C14454a f16372j;

    /* renamed from: k */
    public BroadcastReceiver f16373k;

    /* renamed from: b */
    public static final Intent m34330b(Context context, String str, String str2, boolean z) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "voipId");
        l.e(str2, RemoteMessageConst.Notification.CHANNEL_ID);
        Intent intent = new Intent(context, LegacyIncomingVoipService.class);
        intent.putExtra("com.truecaller.voip.extra.EXTRA_VOIP_ID", str);
        intent.putExtra("com.truecaller.voip.extra.EXTRA_CHANNEL_ID", str2);
        intent.putExtra("com.truecaller.voip.extra.EXTRA_INVITED_SECURE", z);
        return intent;
    }

    @Override // p193e.p194a.p619d.p622b.p625b.AbstractC11150i
    /* renamed from: a */
    public void mo25118a() {
        C19291g.m13515s(this);
    }

    /* renamed from: c */
    public final AbstractC14920n m34329c() {
        Context applicationContext = getApplicationContext();
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

    @Override // p193e.p194a.p619d.p622b.p625b.AbstractC11150i
    /* renamed from: f */
    public void mo25117f() {
        String string = getString(C4781R.string.voip_status_incoming_audio_call, new Object[]{getString(C4781R.string.voip_text)});
        l.d(string, "getString(R.string.voip_…ring(R.string.voip_text))");
        C26450q c26450q = new C26450q(this, m34329c().mo19425a("voip_v1"));
        c26450q.f74137R.icon = C4781R.C4782drawable.ic_voip_notification;
        c26450q.m1855n(string);
        c26450q.m1853p(2, true);
        c26450q.m1853p(8, true);
        c26450q.f74121B = "call";
        c26450q.f74153m = false;
        l.d(c26450q, "NotificationCompat.Build…      .setShowWhen(false)");
        startForeground(C4781R.C4783id.voip_incoming_service_foreground_notification_initial, c26450q.m1865d());
        C10480a.m26045M1("[LegacyIncomingVoipService] startForeground called");
    }

    @Override // p193e.p194a.p619d.p622b.p625b.AbstractC11150i
    /* renamed from: g */
    public boolean mo25116g() {
        AbstractC11436n0 abstractC11436n0 = this.f16371i;
        if (abstractC11436n0 != null) {
            return ((C11439o0) abstractC11436n0).m24688a(true) instanceof AbstractC11384c.C11385a;
        }
        l.l("voipCallStateUtil");
        throw null;
    }

    public f getCoroutineContext() {
        f fVar = this.f16366d;
        if (fVar != null) {
            return fVar;
        }
        l.l("uiContext");
        throw null;
    }

    @Override // p193e.p194a.p619d.p622b.p625b.AbstractC11150i
    /* renamed from: h */
    public void mo25115h(String str) {
        l.e(str, "title");
        C14454a c14454a = this.f16372j;
        if (c14454a == null) {
            l.l("callNotification");
            throw null;
        }
        c14454a.mo20077j(str);
        C14454a c14454a2 = this.f16372j;
        if (c14454a2 != null) {
            AbstractC14447a.m20091q(c14454a2, this, false, 2, null);
        } else {
            l.l("callNotification");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p625b.AbstractC11150i
    /* renamed from: i */
    public void mo25114i() {
        l.e(this, AnalyticsConstants.CONTEXT);
        C26842r m1272b = new C26842r.C26843a(MissedVoipCallsWorker.class).m1268f(300L, TimeUnit.MILLISECONDS).m1272b();
        l.d(m1272b, "OneTimeWorkRequest.Build…\n                .build()");
        C26842r c26842r = m1272b;
        C26702l m1431n = C26702l.m1431n(this);
        l.d(m1431n, "WorkManager.getInstance(context)");
        m1431n.m1279i("com.truecaller.voip.incoming.missed.MissedVoipCallsWorker", EnumC26832h.REPLACE, c26842r);
    }

    @Override // p193e.p194a.p619d.p622b.p625b.AbstractC11150i
    /* renamed from: j */
    public void mo25113j() {
        l.e(this, AnalyticsConstants.CONTEXT);
        C26842r m1272b = new C26842r.C26843a(VoipBlockedCallsWorker.class).m1272b();
        l.d(m1272b, "OneTimeWorkRequest.Build…\n                .build()");
        C26702l.m1431n(this).m1279i("com.truecaller.voip.incoming.blocked.BlockedVoipCallsWorker", EnumC26832h.REPLACE, m1272b);
    }

    @Override // p193e.p194a.p619d.p622b.p625b.AbstractC11150i
    /* renamed from: k */
    public void mo25112k() {
        startActivity(LegacyIncomingVoipActivity.C4814a.m34326b(LegacyIncomingVoipActivity.f16374d, this, false, false, 6));
    }

    @Override // p193e.p194a.p619d.p622b.p625b.AbstractC11150i
    /* renamed from: l */
    public void mo25111l(VoipUser voipUser, String str, boolean z) {
        l.e(voipUser, "voipUser");
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        C10480a.m26045M1("Starting service VoipService with new Incoming call intent::IncomingVoipService");
        l.e(this, AnalyticsConstants.CONTEXT);
        l.e(voipUser, "voipUser");
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        Intent intent = new Intent(this, LegacyVoipService.class);
        intent.putExtra("com.truecaller.voip.extra.EXTRA_USER_ID", voipUser);
        intent.putExtra("com.truecaller.voip.extra.EXTRA_CHANNEL_ID", str);
        intent.putExtra("com.truecaller.voip.extra.EXTRA_ENCRYPTED", z);
        C26467a.m1796f(this, intent);
    }

    @Override // p193e.p194a.p619d.p622b.p625b.AbstractC11150i
    /* renamed from: m3 */
    public void mo25110m3(AvatarXConfig avatarXConfig) {
        l.e(avatarXConfig, DTBMetricsConfiguration.CONFIG_DIR);
        C14454a c14454a = this.f16372j;
        if (c14454a == null) {
            l.l("callNotification");
            throw null;
        }
        c14454a.m20098g(avatarXConfig);
        C14454a c14454a2 = this.f16372j;
        if (c14454a2 != null) {
            AbstractC14447a.m20091q(c14454a2, this, false, 2, null);
        } else {
            l.l("callNotification");
            throw null;
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        AbstractC11149h abstractC11149h = this.f16368f;
        if (abstractC11149h != null) {
            return new BinderC11145d(abstractC11149h);
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p619d.p622b.p625b.AbstractServiceC11144c, android.app.Service
    public void onCreate() {
        super.onCreate();
        f16365l = true;
        C14453b c14453b = this.f16370h;
        if (c14453b == null) {
            l.l("notificationFactory");
            throw null;
        }
        int i = C4781R.C4783id.voip_incoming_service_foreground_notification;
        String mo19425a = m34329c().mo19425a("voip_v1");
        LegacyIncomingVoipActivity.C4814a c4814a = LegacyIncomingVoipActivity.f16374d;
        PendingIntent activity = PendingIntent.getActivity(this, C4781R.C4783id.voip_incoming_notification_action_answer, c4814a.m34327a(this, true, true), 201326592);
        l.d(activity, "PendingIntent.getActivit….FLAG_IMMUTABLE\n        )");
        l.e(this, AnalyticsConstants.CONTEXT);
        Intent intent = new Intent(this, LegacyIncomingVoipService.class);
        intent.setAction("com.truecaller.voip.incoming.ACTION_NOTIFICATION");
        intent.putExtra("com.truecaller.voip.incoming.EXTRA_ACTION_REJECT_CALL", true);
        PendingIntent service = PendingIntent.getService(this, C4781R.C4783id.voip_incoming_notification_action_decline, intent, 201326592);
        l.d(service, "PendingIntent.getService….FLAG_IMMUTABLE\n        )");
        C14454a m20084a = c14453b.m20084a(i, mo19425a, activity, service);
        m20084a.m20095m(C4781R.C4782drawable.ic_voip_notification);
        m20084a.m20097i(LegacyIncomingVoipActivity.C4814a.m34326b(c4814a, this, false, false, 6));
        String string = getString(C4781R.string.voip_status_incoming_audio_call, new Object[]{getString(C4781R.string.voip_text)});
        l.d(string, "getString(R.string.voip_…ring(R.string.voip_text))");
        m20084a.m20081r(string);
        this.f16372j = m20084a;
        this.f16373k = new C11146e(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
        registerReceiver(this.f16373k, intentFilter);
    }

    @Override // android.app.Service
    public void onDestroy() {
        f16365l = false;
        unregisterReceiver(this.f16373k);
        AbstractC11149h abstractC11149h = this.f16368f;
        if (abstractC11149h == null) {
            l.l("presenter");
            throw null;
        }
        ((C11139b) abstractC11149h).mo9806c();
        C14454a c14454a = this.f16372j;
        if (c14454a == null) {
            l.l("callNotification");
            throw null;
        }
        c14454a.m20103a();
        super.onDestroy();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        String action = intent != null ? intent.getAction() : null;
        String stringExtra = intent != null ? intent.getStringExtra("com.truecaller.voip.extra.EXTRA_VOIP_ID") : null;
        String stringExtra2 = intent != null ? intent.getStringExtra("com.truecaller.voip.extra.EXTRA_CHANNEL_ID") : null;
        boolean booleanExtra = intent != null ? intent.getBooleanExtra("com.truecaller.voip.extra.EXTRA_INVITED_SECURE", false) : false;
        AbstractC11149h abstractC11149h = this.f16368f;
        if (abstractC11149h == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20576b) abstractC11149h).f57683a = this;
        if (action == null) {
            if (abstractC11149h == null) {
                l.l("presenter");
                throw null;
            }
            C11139b c11139b = (C11139b) abstractC11149h;
            Objects.requireNonNull(c11139b);
            d.w2(c11139b, (f) null, (j0) null, new C11155n(c11139b, stringExtra, stringExtra2, booleanExtra, null), 3, (Object) null);
            return 2;
        } else if (!intent.getBooleanExtra("com.truecaller.voip.incoming.EXTRA_ACTION_REJECT_CALL", false)) {
            return 2;
        } else {
            AbstractC11149h abstractC11149h2 = this.f16368f;
            if (abstractC11149h2 == null) {
                l.l("presenter");
                throw null;
            }
            C11139b c11139b2 = (C11139b) abstractC11149h2;
            c11139b2.f32949s.mo24707l(VoipAnalyticsContext.NOTIFICATION.getValue(), VoipAnalyticsNotificationAction.REJECTED);
            AbstractC11150i abstractC11150i = (AbstractC11150i) c11139b2.f57683a;
            if (abstractC11150i != null) {
                abstractC11150i.mo25118a();
            }
            c11139b2.mo25127Gh();
            return 2;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p625b.AbstractC11150i
    /* renamed from: t */
    public void mo25109t() {
        stopForeground(true);
        stopSelf();
    }
}
