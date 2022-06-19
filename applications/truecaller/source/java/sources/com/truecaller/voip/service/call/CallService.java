package com.truecaller.voip.service.call;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.IBinder;
import android.widget.Toast;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.groupavatar.GroupAvatarXView;
import com.truecaller.notification.call.C4304R;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.VoipCallOptions;
import com.truecaller.voip.legacy.incall.LegacyVoipService;
import com.truecaller.voip.p192ui.VoipActivity;
import com.truecaller.voip.util.VoipAnalyticsCallDirection;
import com.truecaller.voip.util.VoipAnalyticsState;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p619d.p637c0.C11395e0;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import p193e.p194a.p619d.p670z.BinderC12331a;
import p193e.p194a.p619d.p670z.p671b.AbstractC12332a;
import p193e.p194a.p619d.p670z.p671b.AbstractC12333b;
import p193e.p194a.p619d.p670z.p671b.AbstractServiceC12374o;
import p193e.p194a.p619d.p670z.p671b.C12334c;
import p193e.p194a.p619d.p670z.p671b.C12347e;
import p193e.p194a.p619d.p670z.p671b.C12348f;
import p193e.p194a.p619d.p670z.p671b.C12352g;
import p193e.p194a.p794g4.p795a.AbstractC14447a;
import p193e.p194a.p794g4.p795a.C14453b;
import p193e.p194a.p794g4.p795a.p797d.C14458b;
import p193e.p194a.p849h4.AbstractC14920n;
import p193e.p194a.p849h4.p850q.AbstractC14932g;
import q3.a.j0;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0001\u0018�� \u00192\u00020\u00012\u00020\u0002:\u0001/B\u0007¢\u0006\u0004\bX\u0010\nJ'\u0010\u0007\u001a\u00020\u0005*\u00020\u00032\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\t\u0010\nJ)\u0010\u0010\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0013\u001a\u00020\u00122\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\nJ\u001f\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0019\u0010 \u001a\u00020\u00052\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\"\u0010\nJ\u000f\u0010#\u001a\u00020\u0005H\u0016¢\u0006\u0004\b#\u0010\nJ\u000f\u0010$\u001a\u00020\u0005H\u0016¢\u0006\u0004\b$\u0010\nJ\u000f\u0010%\u001a\u00020\u0005H\u0016¢\u0006\u0004\b%\u0010\nJ\u0017\u0010(\u001a\u00020\u00052\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b(\u0010)J!\u0010-\u001a\u00020\u00052\f\u0010,\u001a\b\u0012\u0004\u0012\u00020+0*H\u0096@ø\u0001��¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0005H\u0016¢\u0006\u0004\b/\u0010\nJ\u0017\u00101\u001a\u00020\u00052\u0006\u00100\u001a\u00020\u0016H\u0016¢\u0006\u0004\b1\u0010\u001dJ\u000f\u00102\u001a\u00020\u0005H\u0016¢\u0006\u0004\b2\u0010\nJ\u0017\u00104\u001a\u00020\u00052\u0006\u00103\u001a\u00020\u0016H\u0016¢\u0006\u0004\b4\u0010\u001dJ\u000f\u00105\u001a\u00020\u0005H\u0016¢\u0006\u0004\b5\u0010\nJ\u000f\u00106\u001a\u00020\u0005H\u0016¢\u0006\u0004\b6\u0010\nR\"\u0010=\u001a\u0002078��@��X\u0081.¢\u0006\u0012\n\u0004\b%\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\"\u0010D\u001a\u00020>8��@��X\u0081.¢\u0006\u0012\n\u0004\b\u0015\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\"\u0010K\u001a\u00020E8��@��X\u0081.¢\u0006\u0012\n\u0004\b2\u0010F\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR\u001d\u0010P\u001a\u00020L8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010M\u001a\u0004\bN\u0010OR\u001d\u0010T\u001a\u00020Q8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010M\u001a\u0004\bR\u0010SR\u001d\u0010W\u001a\u00020\u00038B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010M\u001a\u0004\bU\u0010V\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006Y"}, d2 = {"Lcom/truecaller/voip/service/call/CallService;", "Landroid/app/Service;", "Le/a/d/z/b/b;", "Le/a/g4/a/d/b;", "Lkotlin/Function1;", "Ls1/s;", "block", "m", "(Le/a/g4/a/d/b;Ls1/z/b/l;)V", "onCreate", "()V", "Landroid/content/Intent;", "intent", "", "flags", "startId", "onStartCommand", "(Landroid/content/Intent;II)I", "Landroid/os/IBinder;", "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;", "f", "", "title", "extra", "j", "(Ljava/lang/String;Ljava/lang/String;)V", "desc", "h", "(Ljava/lang/String;)V", "", "elapsedTime", "k", "(Ljava/lang/Long;)V", AbstractC2405c.f7629a, C22021b.f61237c, "g", "e", "Lcom/truecaller/common/ui/avatar/AvatarXConfig;", DTBMetricsConfiguration.CONFIG_DIR, "setAvatarXConfig", "(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V", "", "Le/a/b0/a/c/m/b;", "configs", "i", "(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;", "a", "message", "M", "d", "number", "l", "t", "onDestroy", "Le/a/g4/a/b;", "Le/a/g4/a/b;", "getNotificationFactory$voip_release", "()Le/a/g4/a/b;", "setNotificationFactory$voip_release", "(Le/a/g4/a/b;)V", "notificationFactory", "Le/a/p5/c;", "Le/a/p5/c;", "getClock$voip_release", "()Le/a/p5/c;", "setClock$voip_release", "(Le/a/p5/c;)V", "clock", "Le/a/d/z/b/a;", "Le/a/d/z/b/a;", "getPresenter$voip_release", "()Le/a/d/z/b/a;", "setPresenter$voip_release", "(Le/a/d/z/b/a;)V", "presenter", "Le/a/h4/n;", "Ls1/g;", "o", "()Le/a/h4/n;", "notificationManager", "Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;", "getGroupAvatarView", "()Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;", "groupAvatarView", "n", "()Le/a/g4/a/d/b;", RemoteMessageConst.NOTIFICATION, "<init>", "voip_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/service/call/CallService.class */
public final class CallService extends AbstractServiceC12374o implements AbstractC12333b {

    /* renamed from: j */
    public static final C4816a f16392j = new C4816a(null);
    @Inject

    /* renamed from: d */
    public AbstractC12332a f16393d;
    @Inject

    /* renamed from: e */
    public C14453b f16394e;
    @Inject

    /* renamed from: f */
    public AbstractC19222c f16395f;

    /* renamed from: g */
    public final g f16396g = C25225a.m3978P1(new C4821f());

    /* renamed from: h */
    public final g f16397h = C25225a.m3978P1(new C4820e());

    /* renamed from: i */
    public final g f16398i = C25225a.m3978P1(new C4819d());

    /* renamed from: com.truecaller.voip.service.call.CallService$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/service/call/CallService$a.class */
    public static final class C4816a {
        public C4816a(f fVar) {
        }

        /* renamed from: a */
        public final Intent m34315a(Context context, Set<String> set, VoipCallOptions voipCallOptions) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(set, "numbers");
            l.e(voipCallOptions, "callOptions");
            Intent intent = new Intent(context, CallService.class);
            intent.setAction("OutgoingCall");
            Object[] array = set.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            intent.putExtra("Numbers", (String[]) array);
            intent.putExtra("CallOptions", voipCallOptions);
            return intent;
        }
    }

    /* renamed from: com.truecaller.voip.service.call.CallService$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/service/call/CallService$b.class */
    public static final class C4817b extends m implements s1.z.b.l<C14458b, s> {

        /* renamed from: b */
        public static final C4817b f16399b = new C4817b();

        public C4817b() {
            super(1);
        }

        /* renamed from: d */
        public Object m34314d(Object obj) {
            C14458b c14458b = (C14458b) obj;
            l.e(c14458b, "$receiver");
            c14458b.m20075r();
            return s.a;
        }
    }

    /* renamed from: com.truecaller.voip.service.call.CallService$c */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/service/call/CallService$c.class */
    public static final class C4818c extends m implements s1.z.b.l<C14458b, s> {

        /* renamed from: b */
        public static final C4818c f16400b = new C4818c();

        public C4818c() {
            super(1);
        }

        /* renamed from: d */
        public Object m34313d(Object obj) {
            C14458b c14458b = (C14458b) obj;
            l.e(c14458b, "$receiver");
            c14458b.m20073t();
            return s.a;
        }
    }

    /* renamed from: com.truecaller.voip.service.call.CallService$d */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/service/call/CallService$d.class */
    public static final class C4819d extends m implements a<GroupAvatarXView> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4819d() {
            super(0);
            CallService.this = r4;
        }

        public Object invoke() {
            return new GroupAvatarXView(CallService.this, null, 0, 6);
        }
    }

    /* renamed from: com.truecaller.voip.service.call.CallService$e */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/service/call/CallService$e.class */
    public static final class C4820e extends m implements a<C14458b> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4820e() {
            super(0);
            CallService.this = r4;
        }

        public Object invoke() {
            C14458b m20083b;
            CallService callService = CallService.this;
            C14453b c14453b = callService.f16394e;
            if (c14453b == null) {
                l.l("notificationFactory");
                throw null;
            }
            int i = C4781R.C4783id.voip_call_service_foreground_notification;
            String mo19425a = callService.m34316o().mo19425a("voip_v1");
            CallService callService2 = CallService.this;
            Objects.requireNonNull(callService2);
            int i2 = C4781R.C4783id.voip_incoming_notification_action_mute;
            l.e(callService2, AnalyticsConstants.CONTEXT);
            Intent intent = new Intent(callService2, CallService.class);
            intent.setAction("ToggleMute");
            PendingIntent service = PendingIntent.getService(callService2, i2, intent, 201326592);
            l.d(service, "PendingIntent.getService….FLAG_IMMUTABLE\n        )");
            CallService callService3 = CallService.this;
            Objects.requireNonNull(callService3);
            int i3 = C4781R.C4783id.voip_incoming_notification_action_speaker;
            l.e(callService3, AnalyticsConstants.CONTEXT);
            Intent intent2 = new Intent(callService3, CallService.class);
            intent2.setAction("ToggleSpeaker");
            PendingIntent service2 = PendingIntent.getService(callService3, i3, intent2, 201326592);
            l.d(service2, "PendingIntent.getService….FLAG_IMMUTABLE\n        )");
            CallService callService4 = CallService.this;
            Objects.requireNonNull(callService4);
            int i4 = C4781R.C4783id.voip_incoming_notification_action_hang_up;
            l.e(callService4, AnalyticsConstants.CONTEXT);
            Intent intent3 = new Intent(callService4, CallService.class);
            intent3.setAction("HangUp");
            PendingIntent service3 = PendingIntent.getService(callService4, i4, intent3, 201326592);
            l.d(service3, "PendingIntent.getService….FLAG_IMMUTABLE\n        )");
            m20083b = c14453b.m20083b(i, mo19425a, service, service2, service3, null);
            m20083b.m20095m(C4781R.C4782drawable.ic_voip_notification);
            m20083b.m20097i(VoipActivity.f16434m.m34293a(CallService.this, false));
            l.e("VoipOngoing", "groupKey");
            m20083b.m20101c().f74162v = "VoipOngoing";
            CallService callService5 = CallService.this;
            String string = callService5.getString(C4781R.string.voip_truecaller_audio_call, new Object[]{callService5.getString(C4781R.string.voip_text)});
            l.d(string, "getString(R.string.voip_…ring(R.string.voip_text))");
            m20083b.mo20077j(string);
            m20083b.m20098g(new AvatarXConfig(null, null, null, null, false, false, false, false, false, false, false, false, false, false, null, false, 65535));
            return m20083b;
        }
    }

    /* renamed from: com.truecaller.voip.service.call.CallService$f */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/service/call/CallService$f.class */
    public static final class C4821f extends m implements a<AbstractC14920n> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4821f() {
            super(0);
            CallService.this = r4;
        }

        public Object invoke() {
            Context applicationContext = CallService.this.getApplicationContext();
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

    /* renamed from: com.truecaller.voip.service.call.CallService$g */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/service/call/CallService$g.class */
    public static final class C4822g extends m implements s1.z.b.l<C14458b, s> {

        /* renamed from: b */
        public final /* synthetic */ AvatarXConfig f16404b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4822g(AvatarXConfig avatarXConfig) {
            super(1);
            this.f16404b = avatarXConfig;
        }

        /* renamed from: d */
        public Object m34312d(Object obj) {
            C14458b c14458b = (C14458b) obj;
            l.e(c14458b, "$receiver");
            c14458b.m20098g(this.f16404b);
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.service.call.CallService", f = "CallService.kt", l = {209}, m = "setGroupAvatarViewConfigs")
    /* renamed from: com.truecaller.voip.service.call.CallService$h */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/service/call/CallService$h.class */
    public static final class C4823h extends c {

        /* renamed from: d */
        public /* synthetic */ Object f16405d;

        /* renamed from: e */
        public int f16406e;

        /* renamed from: g */
        public Object f16408g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4823h(d dVar) {
            super(dVar);
            CallService.this = r4;
        }

        /* renamed from: s */
        public final Object m34311s(Object obj) {
            this.f16405d = obj;
            this.f16406e |= Integer.MIN_VALUE;
            return CallService.this.mo23247i(null, this);
        }
    }

    /* renamed from: com.truecaller.voip.service.call.CallService$i */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/service/call/CallService$i.class */
    public static final class C4824i extends m implements s1.z.b.l<C14458b, s> {

        /* renamed from: b */
        public final /* synthetic */ Bitmap f16409b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4824i(Bitmap bitmap) {
            super(1);
            this.f16409b = bitmap;
        }

        /* renamed from: d */
        public Object m34310d(Object obj) {
            C14458b c14458b = (C14458b) obj;
            l.e(c14458b, "$receiver");
            c14458b.mo20076l(this.f16409b);
            return s.a;
        }
    }

    /* renamed from: com.truecaller.voip.service.call.CallService$j */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/service/call/CallService$j.class */
    public static final class C4825j extends m implements s1.z.b.l<C14458b, s> {

        /* renamed from: c */
        public final /* synthetic */ Long f16411c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4825j(Long l) {
            super(1);
            CallService.this = r4;
            this.f16411c = l;
        }

        /* renamed from: d */
        public Object m34309d(Object obj) {
            C14458b c14458b = (C14458b) obj;
            l.e(c14458b, "$receiver");
            if (this.f16411c == null) {
                c14458b.m20094n(false);
            } else {
                AbstractC19222c abstractC19222c = CallService.this.f16395f;
                if (abstractC19222c == null) {
                    l.l("clock");
                    throw null;
                }
                long mo13819c = abstractC19222c.mo13819c();
                AbstractC19222c abstractC19222c2 = CallService.this.f16395f;
                if (abstractC19222c2 == null) {
                    l.l("clock");
                    throw null;
                }
                long mo13821a = abstractC19222c2.mo13821a();
                long longValue = this.f16411c.longValue();
                c14458b.m20094n(true);
                c14458b.m20093o(mo13819c - (mo13821a - longValue));
            }
            return s.a;
        }
    }

    /* renamed from: com.truecaller.voip.service.call.CallService$k */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/service/call/CallService$k.class */
    public static final class C4826k extends m implements s1.z.b.l<C14458b, s> {

        /* renamed from: b */
        public final /* synthetic */ String f16412b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4826k(String str) {
            super(1);
            this.f16412b = str;
        }

        /* renamed from: d */
        public Object m34308d(Object obj) {
            C14458b c14458b = (C14458b) obj;
            l.e(c14458b, "$receiver");
            c14458b.m20072u(this.f16412b);
            return s.a;
        }
    }

    /* renamed from: com.truecaller.voip.service.call.CallService$l */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/service/call/CallService$l.class */
    public static final class C4827l extends m implements s1.z.b.l<C14458b, s> {

        /* renamed from: b */
        public final /* synthetic */ String f16413b;

        /* renamed from: c */
        public final /* synthetic */ String f16414c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4827l(String str, String str2) {
            super(1);
            this.f16413b = str;
            this.f16414c = str2;
        }

        /* renamed from: d */
        public Object m34307d(Object obj) {
            C14458b c14458b = (C14458b) obj;
            l.e(c14458b, "$receiver");
            c14458b.mo20077j(this.f16413b);
            String str = this.f16414c;
            l.e(str, "extra");
            c14458b.f41646j.setTextViewText(C4304R.C4306id.title_extra, str);
            return s.a;
        }
    }

    /* renamed from: com.truecaller.voip.service.call.CallService$m */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/service/call/CallService$m.class */
    public static final class C4828m extends m implements s1.z.b.l<C14458b, s> {

        /* renamed from: b */
        public static final C4828m f16415b = new C4828m();

        public C4828m() {
            super(1);
        }

        /* renamed from: d */
        public Object m34306d(Object obj) {
            C14458b c14458b = (C14458b) obj;
            l.e(c14458b, "$receiver");
            c14458b.m20071v();
            return s.a;
        }
    }

    /* renamed from: com.truecaller.voip.service.call.CallService$n */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/service/call/CallService$n.class */
    public static final class C4829n extends m implements s1.z.b.l<C14458b, s> {

        /* renamed from: b */
        public static final C4829n f16416b = new C4829n();

        public C4829n() {
            super(1);
        }

        /* renamed from: d */
        public Object m34305d(Object obj) {
            C14458b c14458b = (C14458b) obj;
            l.e(c14458b, "$receiver");
            c14458b.m20069x();
            return s.a;
        }
    }

    @Override // p193e.p194a.p619d.p670z.p671b.AbstractC12333b
    /* renamed from: M */
    public void mo23256M(String str) {
        l.e(str, "message");
        Toast.makeText(this, str, 1).show();
    }

    @Override // p193e.p194a.p619d.p670z.p671b.AbstractC12333b
    /* renamed from: a */
    public void mo23255a() {
        C19291g.m13515s(this);
    }

    @Override // p193e.p194a.p619d.p670z.p671b.AbstractC12333b
    /* renamed from: b */
    public void mo23254b() {
        m34318m(m34317n(), C4829n.f16416b);
    }

    @Override // p193e.p194a.p619d.p670z.p671b.AbstractC12333b
    /* renamed from: c */
    public void mo23253c() {
        m34318m(m34317n(), C4818c.f16400b);
    }

    @Override // p193e.p194a.p619d.p670z.p671b.AbstractC12333b
    /* renamed from: d */
    public void mo23252d() {
        startActivity(VoipActivity.f16434m.m34293a(this, false));
    }

    @Override // p193e.p194a.p619d.p670z.p671b.AbstractC12333b
    /* renamed from: e */
    public void mo23251e() {
        m34318m(m34317n(), C4828m.f16415b);
    }

    @Override // p193e.p194a.p619d.p670z.p671b.AbstractC12333b
    /* renamed from: f */
    public void mo23250f() {
        String string = getString(C4781R.string.voip_truecaller_audio_call, new Object[]{getString(C4781R.string.voip_text)});
        l.d(string, "getString(R.string.voip_…ring(R.string.voip_text))");
        C26450q c26450q = new C26450q(this, m34316o().mo19425a("miscellaneous_channel"));
        c26450q.f74137R.icon = C4781R.C4782drawable.ic_voip_notification;
        c26450q.m1855n(string);
        c26450q.m1853p(2, true);
        c26450q.m1853p(8, true);
        c26450q.f74121B = "call";
        c26450q.f74153m = false;
        l.d(c26450q, "NotificationCompat.Build…      .setShowWhen(false)");
        startForeground(C4781R.C4783id.voip_call_service_foreground_notification, c26450q.m1865d());
        C10480a.m26045M1("[CallService] startForeground called");
    }

    @Override // p193e.p194a.p619d.p670z.p671b.AbstractC12333b
    /* renamed from: g */
    public void mo23249g() {
        m34318m(m34317n(), C4817b.f16399b);
    }

    @Override // p193e.p194a.p619d.p670z.p671b.AbstractC12333b
    /* renamed from: h */
    public void mo23248h(String str) {
        l.e(str, "desc");
        m34318m(m34317n(), new C4826k(str));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006b  */
    @Override // p193e.p194a.p619d.p670z.p671b.AbstractC12333b
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo23247i(java.util.List<p193e.p194a.p372b0.p373a.p378c.p380m.C8279b> r7, s1.w.d<? super s1.s> r8) {
        /*
            r6 = this;
            r0 = r8
            boolean r0 = r0 instanceof com.truecaller.voip.service.call.CallService.C4823h
            if (r0 == 0) goto L2a
            r0 = r8
            com.truecaller.voip.service.call.CallService$h r0 = (com.truecaller.voip.service.call.CallService.C4823h) r0
            r9 = r0
            r0 = r9
            int r0 = r0.f16406e
            r10 = r0
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2a
            r0 = r9
            r1 = r10
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f16406e = r1
            r0 = r9
            r8 = r0
            goto L34
        L2a:
            com.truecaller.voip.service.call.CallService$h r0 = new com.truecaller.voip.service.call.CallService$h
            r1 = r0
            r2 = r6
            r3 = r8
            r1.<init>(r3)
            r8 = r0
        L34:
            r0 = r8
            java.lang.Object r0 = r0.f16405d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r11 = r0
            r0 = r8
            int r0 = r0.f16406e
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L6b
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L60
            r0 = r8
            java.lang.Object r0 = r0.f16408g
            com.truecaller.voip.service.call.CallService r0 = (com.truecaller.voip.service.call.CallService) r0
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
            s1.g r0 = r0.f16398i
            java.lang.Object r0 = r0.getValue()
            com.truecaller.common.ui.groupavatar.GroupAvatarXView r0 = (com.truecaller.common.p156ui.groupavatar.GroupAvatarXView) r0
            r9 = r0
            int r0 = com.truecaller.voip.C4781R.dimen.notification_call_avatar_size
            r10 = r0
            r0 = r8
            r1 = r6
            r0.f16408g = r1
            r0 = r8
            r1 = 1
            r0.f16406e = r1
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
            e.a.g4.a.d.b r1 = r1.m34317n()
            com.truecaller.voip.service.call.CallService$i r2 = new com.truecaller.voip.service.call.CallService$i
            r3 = r2
            r4 = r8
            r3.<init>(r4)
            r0.m34318m(r1, r2)
            s1.s r0 = s1.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.voip.service.call.CallService.mo23247i(java.util.List, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p619d.p670z.p671b.AbstractC12333b
    /* renamed from: j */
    public void mo23246j(String str, String str2) {
        l.e(str, "title");
        l.e(str2, "extra");
        m34318m(m34317n(), new C4827l(str, str2));
    }

    @Override // p193e.p194a.p619d.p670z.p671b.AbstractC12333b
    /* renamed from: k */
    public void mo23245k(Long l) {
        m34318m(m34317n(), new C4825j(l));
    }

    @Override // p193e.p194a.p619d.p670z.p671b.AbstractC12333b
    /* renamed from: l */
    public void mo23244l(String str) {
        l.e(str, "number");
        l.e(this, AnalyticsConstants.CONTEXT);
        l.e(str, "number");
        Intent intent = new Intent(this, LegacyVoipService.class);
        intent.putExtra("com.truecaller.voip.extra.EXTRA_NUMBER", str);
        C26467a.m1796f(this, intent);
    }

    /* renamed from: m */
    public final void m34318m(C14458b c14458b, s1.z.b.l<? super C14458b, s> lVar) {
        lVar.d(c14458b);
        AbstractC14447a.m20091q(c14458b, this, false, 2, null);
    }

    /* renamed from: n */
    public final C14458b m34317n() {
        return (C14458b) this.f16397h.getValue();
    }

    /* renamed from: o */
    public final AbstractC14920n m34316o() {
        return (AbstractC14920n) this.f16396g.getValue();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return new BinderC12331a();
    }

    @Override // p193e.p194a.p619d.p670z.p671b.AbstractServiceC12374o, android.app.Service
    public void onCreate() {
        super.onCreate();
        AbstractC12332a abstractC12332a = this.f16393d;
        if (abstractC12332a != null) {
            ((C12334c) abstractC12332a).mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        AbstractC12332a abstractC12332a = this.f16393d;
        if (abstractC12332a == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20574a) abstractC12332a).mo9806c();
        m34317n().m20103a();
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        String action;
        if (intent == null || (action = intent.getAction()) == null) {
            return 2;
        }
        switch (action.hashCode()) {
            case -2140708147:
                if (!action.equals("HangUp")) {
                    return 2;
                }
                AbstractC12332a abstractC12332a = this.f16393d;
                if (abstractC12332a == null) {
                    l.l("presenter");
                    throw null;
                }
                C12334c c12334c = (C12334c) abstractC12332a;
                AbstractC12333b abstractC12333b = (AbstractC12333b) c12334c.f57683a;
                if (abstractC12333b != null) {
                    abstractC12333b.mo23255a();
                }
                c12334c.f36019f.mo23958e();
                AbstractC12333b abstractC12333b2 = (AbstractC12333b) c12334c.f57683a;
                if (abstractC12333b2 != null) {
                    String mo13768b = c12334c.f36021h.mo13768b(C4781R.string.voip_status_ending, new Object[0]);
                    l.d(mo13768b, "resourceProvider.getString(res)");
                    abstractC12333b2.mo23248h(mo13768b);
                }
                c12334c.m23240Kj();
                return 2;
            case -1664174140:
                if (!action.equals("IncomingCall")) {
                    return 2;
                }
                AbstractC12332a abstractC12332a2 = this.f16393d;
                if (abstractC12332a2 == null) {
                    l.l("presenter");
                    throw null;
                }
                String stringExtra = intent.getStringExtra("ChannelId");
                if (stringExtra == null) {
                    throw new IllegalArgumentException("Channel id needs to be provided");
                }
                C12334c c12334c2 = (C12334c) abstractC12332a2;
                Objects.requireNonNull(c12334c2);
                l.e(stringExtra, RemoteMessageConst.Notification.CHANNEL_ID);
                s1.a.a.a.v0.f.d.w2(c12334c2, (s1.w.f) null, (j0) null, new C12348f(c12334c2, null), 3, (Object) null);
                c12334c2.m23240Kj();
                return 2;
            case 1053541867:
                if (!action.equals("ToggleSpeaker")) {
                    return 2;
                }
                AbstractC12332a abstractC12332a3 = this.f16393d;
                if (abstractC12332a3 == null) {
                    l.l("presenter");
                    throw null;
                }
                AbstractC11822b m23239Lj = ((C12334c) abstractC12332a3).m23239Lj();
                if (m23239Lj == null) {
                    return 2;
                }
                m23239Lj.mo23854q();
                return 2;
            case 1136189450:
                if (!action.equals("OutgoingCall")) {
                    return 2;
                }
                AbstractC12332a abstractC12332a4 = this.f16393d;
                if (abstractC12332a4 == null) {
                    l.l("presenter");
                    throw null;
                }
                String[] stringArrayExtra = intent.getStringArrayExtra("Numbers");
                if (stringArrayExtra == null) {
                    throw new IllegalArgumentException("Numbers need to be provided");
                }
                Set m3887j3 = C25225a.m3887j3(stringArrayExtra);
                VoipCallOptions voipCallOptions = (VoipCallOptions) intent.getParcelableExtra("CallOptions");
                if (voipCallOptions == null) {
                    throw new IllegalArgumentException("Call options needs to be provided");
                }
                C12334c c12334c3 = (C12334c) abstractC12332a4;
                Objects.requireNonNull(c12334c3);
                l.e(m3887j3, "numbers");
                l.e(voipCallOptions, "callOptions");
                c12334c3.f36022i.mo24715d(new C11395e0(VoipAnalyticsCallDirection.OUTGOING, null, null, null, null, null, null, true, 126), VoipAnalyticsState.INITIATED, null);
                s1.a.a.a.v0.f.d.w2(c12334c3, (s1.w.f) null, (j0) null, new C12352g(c12334c3, m3887j3, voipCallOptions, null), 3, (Object) null);
                return 2;
            case 1140822957:
                if (!action.equals("ToggleMute")) {
                    return 2;
                }
                AbstractC12332a abstractC12332a5 = this.f16393d;
                if (abstractC12332a5 == null) {
                    l.l("presenter");
                    throw null;
                }
                AbstractC11822b m23239Lj2 = ((C12334c) abstractC12332a5).m23239Lj();
                if (m23239Lj2 == null) {
                    return 2;
                }
                m23239Lj2.mo23919g();
                return 2;
            case 1182257597:
                if (!action.equals("DebugOutgoingCall")) {
                    return 2;
                }
                AbstractC12332a abstractC12332a6 = this.f16393d;
                if (abstractC12332a6 == null) {
                    l.l("presenter");
                    throw null;
                }
                C12334c c12334c4 = (C12334c) abstractC12332a6;
                Objects.requireNonNull(c12334c4);
                s1.a.a.a.v0.f.d.w2(c12334c4, (s1.w.f) null, (j0) null, new C12347e(c12334c4, null), 3, (Object) null);
                return 2;
            default:
                return 2;
        }
    }

    @Override // p193e.p194a.p619d.p670z.p671b.AbstractC12333b
    public void setAvatarXConfig(AvatarXConfig avatarXConfig) {
        l.e(avatarXConfig, DTBMetricsConfiguration.CONFIG_DIR);
        m34318m(m34317n(), new C4822g(avatarXConfig));
    }

    @Override // p193e.p194a.p619d.p670z.p671b.AbstractC12333b
    /* renamed from: t */
    public void mo23243t() {
        m34316o().mo19420f(C4781R.C4783id.voip_call_service_foreground_notification);
        stopForeground(false);
        stopSelf();
    }
}
