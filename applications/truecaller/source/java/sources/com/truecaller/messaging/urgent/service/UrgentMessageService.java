package com.truecaller.messaging.urgent.service;

import android.app.KeyguardManager;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Binder;
import android.os.Build;
import android.os.IBinder;
import android.view.ContextThemeWrapper;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.urgent.UrgentMessageKeyguardActivity;
import com.truecaller.messaging.urgent.conversations.UrgentConversationsActivity;
import java.lang.ref.WeakReference;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1128p4.AbstractC19215b;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p237h1.C6328g;
import p193e.p194a.p195a.p237h1.p238n.AbstractC6352k;
import p193e.p194a.p195a.p237h1.p239o.AbstractC6368i;
import p193e.p194a.p195a.p237h1.p239o.AbstractC6369j;
import p193e.p194a.p195a.p237h1.p239o.C6371l;
import p193e.p194a.p195a.p237h1.p239o.C6374n;
import p193e.p194a.p849h4.AbstractC14920n;
import s1.w.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\b\u0006*\u0001/\u0018��2\u00020\u00012\u00020\u0002:\u0001\u0012B\u0007¢\u0006\u0004\b3\u0010\u0005J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0005J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ)\u0010\u000f\u001a\u00020\f2\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0011\u0010\u0005J\u000f\u0010\u0012\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0013\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0013\u0010\u001cR\u0016\u0010 \u001a\u00020\u001e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0015\u0010\u001fR\"\u0010'\u001a\u00020!8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0012\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\"\u0010.\u001a\u00020(8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0011\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u0016\u00102\u001a\u00020/8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101¨\u00064"}, d2 = {"Lcom/truecaller/messaging/urgent/service/UrgentMessageService;", "Landroid/app/Service;", "Le/a/a/h1/o/j;", "Ls1/s;", "onCreate", "()V", "onDestroy", "Landroid/content/Intent;", "intent", "Landroid/os/IBinder;", "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;", "", "flags", "startId", "onStartCommand", "(Landroid/content/Intent;II)I", C22021b.f61237c, "a", AbstractC2405c.f7629a, "", "d", "()Z", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "Le/a/a/h1/o/n;", "Le/a/a/h1/o/n;", "presenterView", "Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;", "Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;", "binder", "Le/a/h4/n;", "Le/a/h4/n;", "getNotificationManager", "()Le/a/h4/n;", "setNotificationManager", "(Le/a/h4/n;)V", "notificationManager", "Le/a/a/h1/o/i;", "Le/a/a/h1/o/i;", "getPresenter", "()Le/a/a/h1/o/i;", "setPresenter", "(Le/a/a/h1/o/i;)V", "presenter", "com/truecaller/messaging/urgent/service/UrgentMessageService$b", "e", "Lcom/truecaller/messaging/urgent/service/UrgentMessageService$b;", "dismissReceiver", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/urgent/service/UrgentMessageService.class */
public final class UrgentMessageService extends Service implements AbstractC6369j {
    @Inject

    /* renamed from: a */
    public AbstractC14920n f13934a;
    @Inject

    /* renamed from: b */
    public AbstractC6368i f13935b;

    /* renamed from: c */
    public C6374n f13936c;

    /* renamed from: d */
    public BinderC4280a f13937d;

    /* renamed from: e */
    public final C4281b f13938e = new C4281b();

    /* renamed from: com.truecaller.messaging.urgent.service.UrgentMessageService$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/urgent/service/UrgentMessageService$a.class */
    public static final class BinderC4280a extends Binder implements AbstractC6352k {

        /* renamed from: a */
        public final WeakReference<AbstractC6368i> f13939a;

        public BinderC4280a(AbstractC6368i abstractC6368i) {
            l.e(abstractC6368i, "presenter");
            this.f13939a = new WeakReference<>(abstractC6368i);
        }

        @Override // p193e.p194a.p195a.p237h1.p238n.AbstractC6352k
        /* renamed from: Zd */
        public void mo31391Zd(long j) {
            AbstractC6368i abstractC6368i = this.f13939a.get();
            if (abstractC6368i != null) {
                abstractC6368i.mo31391Zd(j);
            }
        }
    }

    /* renamed from: com.truecaller.messaging.urgent.service.UrgentMessageService$b */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/urgent/service/UrgentMessageService$b.class */
    public static final class C4281b extends BroadcastReceiver {
        public C4281b() {
            UrgentMessageService.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(intent, "intent");
            long longExtra = intent.getLongExtra("conversation_id", -1L);
            AbstractC6368i abstractC6368i = UrgentMessageService.this.f13935b;
            if (abstractC6368i != null) {
                abstractC6368i.mo31393Nf(longExtra);
            } else {
                l.l("presenter");
                throw null;
            }
        }
    }

    /* renamed from: e */
    public static final void m34870e(Context context, long j) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C27062a.m968b(context).m966d(new Intent("com.truecaller.messaging.urgent.ACTION_DISMISS_CONVERSATION").putExtra("conversation_id", j));
    }

    /* renamed from: f */
    public static final void m34869f(Context context, Conversation conversation) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(conversation, "conversation");
        Intent putExtra = new Intent(context, UrgentMessageService.class).setAction("new_message").putExtra("conversation", conversation);
        l.d(putExtra, "Intent(context, UrgentMe…NVERSATION, conversation)");
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(putExtra);
        } else {
            context.startService(putExtra);
        }
    }

    @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6369j
    /* renamed from: a */
    public void mo31403a() {
        l.e(this, AnalyticsConstants.CONTEXT);
        Intent flags = new Intent(this, UrgentConversationsActivity.class).setFlags(268435456);
        l.d(flags, "Intent(context, UrgentCo…t.FLAG_ACTIVITY_NEW_TASK)");
        startActivity(flags);
    }

    @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6369j
    /* renamed from: b */
    public void mo31402b() {
        stopSelf();
    }

    @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6369j
    /* renamed from: c */
    public void mo31401c() {
        startActivity(new Intent(this, UrgentMessageKeyguardActivity.class).addFlags(268435456));
    }

    @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6369j
    /* renamed from: d */
    public boolean mo31400d() {
        Object systemService = getSystemService("keyguard");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.KeyguardManager");
        return ((KeyguardManager) systemService).isKeyguardLocked();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        l.e(intent, "intent");
        BinderC4280a binderC4280a = this.f13937d;
        if (binderC4280a != null) {
            return binderC4280a;
        }
        l.l("binder");
        throw null;
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        l.e(configuration, "newConfig");
        super.onConfigurationChanged(configuration);
        C6374n c6374n = this.f13936c;
        if (c6374n != null) {
            c6374n.f21246e.setVisibility(0);
        } else {
            l.l("presenterView");
            throw null;
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Context applicationContext = getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        Objects.requireNonNull(mo10154s);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        AbstractC14920n mo12458a1 = mo10154s.mo12458a1();
        Objects.requireNonNull(mo12458a1, "Cannot return null from a non-@Nullable component method");
        this.f13934a = mo12458a1;
        f mo12378g = mo10154s.mo12378g();
        Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
        AbstractC19223c0 mo12349i = mo10154s.mo12349i();
        Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
        AbstractC19222c mo11637k = mo10154s.mo11637k();
        Objects.requireNonNull(mo11637k, "Cannot return null from a non-@Nullable component method");
        AbstractC19230g mo12512W = mo10154s.mo12512W();
        Objects.requireNonNull(mo12512W, "Cannot return null from a non-@Nullable component method");
        AbstractC6392i0 mo12565S = mo10154s.mo12565S();
        Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
        AbstractC19510i0 mo12264o4 = mo10154s.mo12264o4();
        Objects.requireNonNull(mo12264o4, "Cannot return null from a non-@Nullable component method");
        C20592g mo11648b = mo10154s.mo11648b();
        Objects.requireNonNull(mo11648b, "Cannot return null from a non-@Nullable component method");
        AbstractC19215b mo12666K6 = mo10154s.mo12666K6();
        Objects.requireNonNull(mo12666K6, "Cannot return null from a non-@Nullable component method");
        this.f13935b = new C6371l(mo12378g, mo12349i, mo11637k, mo12512W, mo12565S, mo12264o4, new C6328g(mo11648b, mo12666K6));
        ContextThemeWrapper m16113E = C17422k.m16113E(this, true);
        AbstractC6368i abstractC6368i = this.f13935b;
        if (abstractC6368i == null) {
            l.l("presenter");
            throw null;
        }
        this.f13936c = new C6374n(m16113E, abstractC6368i);
        AbstractC6368i abstractC6368i2 = this.f13935b;
        if (abstractC6368i2 == null) {
            l.l("presenter");
            throw null;
        }
        abstractC6368i2.mo11014F3(this);
        AbstractC6368i abstractC6368i3 = this.f13935b;
        if (abstractC6368i3 == null) {
            l.l("presenter");
            throw null;
        }
        C6374n c6374n = this.f13936c;
        if (c6374n == null) {
            l.l("presenterView");
            throw null;
        }
        abstractC6368i3.mo9029Y0(c6374n);
        AbstractC6368i abstractC6368i4 = this.f13935b;
        if (abstractC6368i4 == null) {
            l.l("presenter");
            throw null;
        }
        this.f13937d = new BinderC4280a(abstractC6368i4);
        C27062a.m968b(this).m967c(this.f13938e, new IntentFilter("com.truecaller.messaging.urgent.ACTION_DISMISS_CONVERSATION"));
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        AbstractC6368i abstractC6368i = this.f13935b;
        if (abstractC6368i == null) {
            l.l("presenter");
            throw null;
        }
        abstractC6368i.mo9806c();
        AbstractC6368i abstractC6368i2 = this.f13935b;
        if (abstractC6368i2 == null) {
            l.l("presenter");
            throw null;
        }
        abstractC6368i2.mo11013xb();
        C27062a.m968b(this).m965e(this.f13938e);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        String action = intent != null ? intent.getAction() : null;
        if (action == null) {
            return 2;
        }
        int hashCode = action.hashCode();
        if (hashCode != 210284648) {
            if (hashCode != 1203654752 || !action.equals("notification_tapped")) {
                return 2;
            }
            AbstractC6368i abstractC6368i = this.f13935b;
            if (abstractC6368i != null) {
                abstractC6368i.mo31395K8();
                return 2;
            }
            l.l("presenter");
            throw null;
        } else if (!action.equals("new_message")) {
            return 2;
        } else {
            if (Build.VERSION.SDK_INT >= 26) {
                PendingIntent foregroundService = PendingIntent.getForegroundService(this, 0, new Intent(this, UrgentMessageService.class).setAction("notification_tapped"), 201326592);
                AbstractC14920n abstractC14920n = this.f13934a;
                if (abstractC14920n == null) {
                    l.l("notificationManager");
                    throw null;
                }
                Notification.Builder contentTitle = new Notification.Builder(this, abstractC14920n.mo19425a("urgent_messages")).setSmallIcon(C2752R.C2753drawable.ic_offline_bolt_24dp).setContentTitle(getString(C2752R.string.urgent_message_notification_title));
                Object obj = C26467a.f74235a;
                Notification build = contentTitle.setColor(C26467a.C26471d.m1787a(this, 2131101323)).setContentIntent(foregroundService).build();
                l.d(build, "Notification.Builder(thi…ent)\n            .build()");
                startForeground(C2752R.C2754id.urgent_message_notification_id, build);
            }
            Conversation conversation = (Conversation) intent.getParcelableExtra("conversation");
            AbstractC6368i abstractC6368i2 = this.f13935b;
            if (abstractC6368i2 != null) {
                abstractC6368i2.mo31399B6(conversation);
                return 2;
            }
            l.l("presenter");
            throw null;
        }
    }
}
