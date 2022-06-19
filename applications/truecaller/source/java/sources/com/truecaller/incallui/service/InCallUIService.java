package com.truecaller.incallui.service;

import android.app.KeyguardManager;
import android.app.PendingIntent;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.telecom.Call;
import android.telecom.CallAudioState;
import android.widget.Toast;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.google.android.gms.ads.RequestConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.incallui.C4013R;
import com.truecaller.incallui.callui.InCallUIActivity;
import com.truecaller.incallui.callui.phoneAccount.PhoneAccountsActivity;
import com.truecaller.incallui.utils.audio.AudioRoute;
import com.truecaller.log.AssertionUtil;
import com.truecaller.notification.call.C4304R;
import com.truecaller.settings.CallingSettings;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Provider;
import kotlin.Metadata;
import p1727n3.p1807k.p1808a.C26450q;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.p1131r0.C19264b;
import p193e.p194a.p1129p5.p1131r0.C19270d;
import p193e.p194a.p717f.p733y.AbstractC13769g;
import p193e.p194a.p717f.p733y.AbstractC13771i;
import p193e.p194a.p717f.p733y.AbstractC13773k;
import p193e.p194a.p717f.p733y.C13770h;
import p193e.p194a.p717f.p733y.C13774l;
import p193e.p194a.p717f.p733y.C13778o;
import p193e.p194a.p717f.p733y.C13790t;
import p193e.p194a.p717f.p734z.AbstractC13795a;
import p193e.p194a.p717f.p734z.AbstractC13824j;
import p193e.p194a.p717f.p734z.C13812e;
import p193e.p194a.p717f.p734z.C13827k0;
import p193e.p194a.p717f.p734z.ServiceConnectionC13822i;
import p193e.p194a.p717f.p734z.p736n0.C13843a;
import p193e.p194a.p717f.p734z.p737o0.C13845a;
import p193e.p194a.p749f3.AbstractC13907c;
import p193e.p194a.p749f3.C13919o;
import p193e.p194a.p749f3.C13930w;
import p193e.p194a.p773g.AbstractC14235c;
import p193e.p194a.p794g4.p795a.AbstractC14447a;
import p193e.p194a.p794g4.p795a.C14453b;
import p193e.p194a.p794g4.p795a.p796c.C14454a;
import p193e.p194a.p794g4.p795a.p797d.AbstractC14455a;
import p193e.p194a.p794g4.p795a.p797d.C14458b;
import p193e.p194a.p849h4.AbstractC14920n;
import p193e.p194a.p849h4.p850q.AbstractC14932g;
import p193e.p194a.p982k0.AbstractC16315h;
import q3.a.j0;
import q3.a.w2.r;
import q3.a.x2.a1;
import q3.a.x2.k1;
import s1.a.a.a.v0.f.d;
import s1.g;
import s1.h;
import s1.i;
import s1.u.s;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��Â\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\b¢\u0006\u0005\b\u008c\u0001\u0010\tJ\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u0004*\u0004\u0018\u00010\u0003H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\tJ\u0019\u0010\r\u001a\u00020\u00072\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0011\u0010\u0013\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0015\u0010\tJ\u0015\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ-\u0010$\u001a\u00020\u00072\b\b\u0001\u0010\u001f\u001a\u00020\u001e2\b\u0010!\u001a\u0004\u0018\u00010 2\b\u0010#\u001a\u0004\u0018\u00010\"H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0007H\u0016¢\u0006\u0004\b&\u0010\tJ%\u0010+\u001a\u00020\u00072\u0006\u0010(\u001a\u00020'2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00070)H\u0016¢\u0006\u0004\b+\u0010,J\u0017\u0010/\u001a\u00020\u00072\u0006\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b/\u00100J\u0017\u00103\u001a\u00020\u00072\u0006\u00102\u001a\u000201H\u0016¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020\u0007H\u0016¢\u0006\u0004\b5\u0010\tJ\u0017\u00108\u001a\u00020\u00072\u0006\u00107\u001a\u000206H\u0016¢\u0006\u0004\b8\u00109J\u000f\u0010:\u001a\u00020\u0007H\u0016¢\u0006\u0004\b:\u0010\tJ\u000f\u0010;\u001a\u00020\u0007H\u0016¢\u0006\u0004\b;\u0010\tJ\u000f\u0010<\u001a\u00020\u0007H\u0016¢\u0006\u0004\b<\u0010\tJ\u000f\u0010=\u001a\u00020\u0007H\u0016¢\u0006\u0004\b=\u0010\tJ\u000f\u0010>\u001a\u00020\u0007H\u0016¢\u0006\u0004\b>\u0010\tJ\u000f\u0010?\u001a\u00020\u0007H\u0016¢\u0006\u0004\b?\u0010\tJ\u000f\u0010@\u001a\u00020\u0007H\u0016¢\u0006\u0004\b@\u0010\tJ\u000f\u0010A\u001a\u00020\u0007H\u0016¢\u0006\u0004\bA\u0010\tJ\u000f\u0010B\u001a\u00020\u0007H\u0016¢\u0006\u0004\bB\u0010\tJ\u000f\u0010C\u001a\u00020\u0007H\u0016¢\u0006\u0004\bC\u0010\tJ\u000f\u0010D\u001a\u00020\u0007H\u0016¢\u0006\u0004\bD\u0010\tJ\u0017\u0010F\u001a\u00020\u00072\u0006\u0010E\u001a\u00020-H\u0016¢\u0006\u0004\bF\u00100J\u000f\u0010G\u001a\u00020\u001aH\u0016¢\u0006\u0004\bG\u0010HJ\u0017\u0010I\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\bI\u0010\u0012J\u0017\u0010K\u001a\u00020\u00072\u0006\u0010J\u001a\u00020-H\u0016¢\u0006\u0004\bK\u00100J\u000f\u0010L\u001a\u00020\u0007H\u0016¢\u0006\u0004\bL\u0010\tJ\u000f\u0010M\u001a\u00020\u0007H\u0016¢\u0006\u0004\bM\u0010\tJ\u000f\u0010N\u001a\u00020\u0007H\u0016¢\u0006\u0004\bN\u0010\tJ\u000f\u0010O\u001a\u00020\u001aH\u0016¢\u0006\u0004\bO\u0010HJ\u000f\u0010P\u001a\u00020\u0007H\u0016¢\u0006\u0004\bP\u0010\tJ\u0017\u0010R\u001a\u00020\u00072\u0006\u0010Q\u001a\u00020 H\u0016¢\u0006\u0004\bR\u0010SJ\u000f\u0010T\u001a\u00020\u0007H\u0016¢\u0006\u0004\bT\u0010\tR\"\u0010[\u001a\u00020U8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b;\u0010V\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR(\u0010c\u001a\b\u0012\u0004\u0012\u00020]0\\8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b:\u0010^\u001a\u0004\b_\u0010`\"\u0004\ba\u0010bR\u001d\u0010h\u001a\u00020d8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b?\u0010e\u001a\u0004\bf\u0010gR\"\u0010o\u001a\u00020i8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bA\u0010j\u001a\u0004\bk\u0010l\"\u0004\bm\u0010nR\u001e\u0010r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0p8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010qR\u001c\u0010t\u001a\b\u0012\u0004\u0012\u00020\u00170\u00168\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010sR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010uR(\u0010z\u001a\u0004\u0018\u00010\u00032\b\u0010v\u001a\u0004\u0018\u00010\u00038\u0002@BX\u0082\u000e¢\u0006\f\n\u0004\bC\u0010w\"\u0004\bx\u0010yR$\u0010\u0081\u0001\u001a\u00020{8\u0006@\u0006X\u0087.¢\u0006\u0013\n\u0004\b/\u0010|\u001a\u0004\b}\u0010~\"\u0005\b\u007f\u0010\u0080\u0001R)\u0010\u0088\u0001\u001a\u00030\u0082\u00018\u0006@\u0006X\u0087.¢\u0006\u0017\n\u0005\b\u0005\u0010\u0083\u0001\u001a\u0006\b\u0084\u0001\u0010\u0085\u0001\"\u0006\b\u0086\u0001\u0010\u0087\u0001R\u0019\u0010\u008b\u0001\u001a\u00030\u0089\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bM\u0010\u008a\u0001¨\u0006\u008d\u0001"}, d2 = {"Lcom/truecaller/incallui/service/InCallUIService;", "Landroid/telecom/InCallService;", "Le/a/f/y/k;", "Le/a/g4/a/a;", "Le/a/g4/a/d/b;", "f", "(Le/a/g4/a/a;)Le/a/g4/a/d/b;", "Ls1/s;", "H", "()V", "onCreate", "Landroid/telecom/CallAudioState;", "audioState", "onCallAudioStateChanged", "(Landroid/telecom/CallAudioState;)V", "Landroid/telecom/Call;", "call", "onCallAdded", "(Landroid/telecom/Call;)V", "r", "()Landroid/telecom/Call;", "a", "Lq3/a/w2/r;", "Le/a/f/z/n0/a;", "s", "()Lq3/a/w2/r;", "", "fullscreenIntent", "j", "(Z)V", "", "contentText", "", "timestamp", "Le/a/k0/h;", "recordingState", "v", "(ILjava/lang/Long;Le/a/k0/h;)V", "x", "Le/a/f3/c;", "callBubbles", "Lkotlin/Function0;", "clickListener", "z", "(Le/a/f3/c;Ls1/z/b/a;)V", "", "title", "h", "(Ljava/lang/String;)V", "Le/a/f/z/a;", "callerLabel", "D", "(Le/a/f/z/a;)V", "p", "Le/a/f/z/k0;", DTBMetricsConfiguration.CONFIG_DIR, "t", "(Le/a/f/z/k0;)V", "g", "e", "k", AbstractC2405c.f7629a, C22021b.f61237c, "m", "B", "d", "C", "l", "o", "deviceAddress", "u", "E", "()Z", "onCallRemoved", "message", "A", "i", "n", "w", "R0", "onDestroy", "startTimeBase", "q", "(J)V", "y", "Le/a/f/z/o0/a;", "Le/a/f/z/o0/a;", "getNotificationFactory", "()Le/a/f/z/o0/a;", "setNotificationFactory", "(Le/a/f/z/o0/a;)V", "notificationFactory", "Ljavax/inject/Provider;", "Le/a/g/c;", "Ljavax/inject/Provider;", "getAfterCallScreen", "()Ljavax/inject/Provider;", "setAfterCallScreen", "(Ljavax/inject/Provider;)V", "afterCallScreen", "Le/a/p5/r0/b;", "Ls1/g;", "F", "()Le/a/p5/r0/b;", "bluetoothHeadsetMonitor", "Le/a/f/y/i;", "Le/a/f/y/i;", "getPresenter", "()Le/a/f/y/i;", "setPresenter", "(Le/a/f/y/i;)V", "presenter", "Lq3/a/x2/a1;", "Lq3/a/x2/a1;", "systemAudioState", "Lq3/a/w2/r;", "audioStateChannel", "Landroid/telecom/Call;", "value", "Le/a/g4/a/a;", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "(Le/a/g4/a/a;)V", RemoteMessageConst.NOTIFICATION, "Le/a/p5/a0;", "Le/a/p5/a0;", "getPermissionUtil", "()Le/a/p5/a0;", "setPermissionUtil", "(Le/a/p5/a0;)V", "permissionUtil", "Le/a/f/z/j;", "Le/a/f/z/j;", "getInCallUICallerIdServiceProxy", "()Le/a/f/z/j;", "setInCallUICallerIdServiceProxy", "(Le/a/f/z/j;)V", "inCallUICallerIdServiceProxy", "Le/a/f/z/i;", "Le/a/f/z/i;", "connection", "<init>", "incallui_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/incallui/service/InCallUIService.class */
public final class InCallUIService extends AbstractC13769g implements AbstractC13773k {
    @Inject

    /* renamed from: d */
    public AbstractC13771i f12430d;
    @Inject

    /* renamed from: e */
    public C13845a f12431e;
    @Inject

    /* renamed from: f */
    public AbstractC13824j f12432f;
    @Inject

    /* renamed from: g */
    public Provider<AbstractC14235c> f12433g;
    @Inject

    /* renamed from: h */
    public AbstractC19219a0 f12434h;

    /* renamed from: i */
    public Call f12435i;

    /* renamed from: l */
    public AbstractC14447a f12438l;

    /* renamed from: j */
    public final a1<CallAudioState> f12436j = k1.a((Object) null);

    /* renamed from: k */
    public final r<C13843a> f12437k = new r<>(new C13843a(AudioRoute.EARPIECE, s.a, null, false));

    /* renamed from: m */
    public final g f12439m = C25225a.m3982O1(h.c, new C4028a());

    /* renamed from: n */
    public final ServiceConnectionC13822i f12440n = new ServiceConnectionC13822i(this);

    /* renamed from: com.truecaller.incallui.service.InCallUIService$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/incallui/service/InCallUIService$a.class */
    public static final class C4028a extends m implements a<C19264b> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4028a() {
            super(0);
            InCallUIService.this = r4;
        }

        public Object invoke() {
            InCallUIService inCallUIService = InCallUIService.this;
            int i = C4013R.string.incallui_button_bluetooth;
            AbstractC19219a0 abstractC19219a0 = inCallUIService.f12434h;
            if (abstractC19219a0 != null) {
                return new C19264b(inCallUIService, i, abstractC19219a0);
            }
            l.l("permissionUtil");
            throw null;
        }
    }

    /* renamed from: com.truecaller.incallui.service.InCallUIService$b */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/incallui/service/InCallUIService$b.class */
    public static final class C4029b extends m implements a<Intent> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4029b() {
            super(0);
            InCallUIService.this = r4;
        }

        public Object invoke() {
            return InCallUIActivity.f12407g.m35302a(InCallUIService.this, null);
        }
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: A */
    public void mo21175A(String str) {
        l.e(str, "message");
        Toast.makeText(this, str, 0).show();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: B */
    public void mo21174B() {
        Toast.makeText(this, C4013R.string.incallui_status_call_connected, 0).show();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: C */
    public void mo21173C() {
        setMuted(false);
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: D */
    public void mo21172D(AbstractC13795a abstractC13795a) {
        l.e(abstractC13795a, "callerLabel");
        AbstractC14447a abstractC14447a = this.f12438l;
        if (abstractC14447a != null) {
            abstractC14447a.mo20078h(abstractC13795a.f40012a, abstractC13795a.f40013b, abstractC13795a.f40014c);
        }
        m35290H();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: E */
    public boolean mo21171E() {
        return canAddCall();
    }

    /* renamed from: F */
    public final C19264b m35292F() {
        return (C19264b) this.f12439m.getValue();
    }

    /* renamed from: G */
    public final void m35291G(AbstractC14447a abstractC14447a) {
        AbstractC14447a abstractC14447a2 = this.f12438l;
        if (abstractC14447a2 != null) {
            abstractC14447a2.m20103a();
        }
        this.f12438l = null;
    }

    /* renamed from: H */
    public final void m35290H() {
        AbstractC14447a abstractC14447a = this.f12438l;
        if (abstractC14447a != null) {
            AbstractC14447a.m20091q(abstractC14447a, this, false, 2, null);
        }
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: R0 */
    public boolean mo21170R0() {
        Object systemService = getSystemService("keyguard");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.KeyguardManager");
        return ((KeyguardManager) systemService).isKeyguardLocked();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: a */
    public void mo21169a() {
        Provider<AbstractC14235c> provider = this.f12433g;
        if (provider != null) {
            ((AbstractC14235c) provider.get()).mo20334a();
        } else {
            l.l("afterCallScreen");
            throw null;
        }
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: b */
    public void mo21168b() {
        C14458b m35289f = m35289f(this.f12438l);
        if (m35289f != null) {
            m35289f.m20069x();
        }
        m35290H();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: c */
    public void mo21167c() {
        C14458b m35289f = m35289f(this.f12438l);
        if (m35289f != null) {
            m35289f.m20073t();
        }
        m35290H();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: d */
    public void mo21166d() {
        setMuted(true);
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: e */
    public void mo21165e() {
        C14458b m35289f = m35289f(this.f12438l);
        if (m35289f != null) {
            m35289f.m20071v();
        }
        m35290H();
    }

    /* renamed from: f */
    public final C14458b m35289f(AbstractC14447a abstractC14447a) {
        AbstractC14447a abstractC14447a2 = abstractC14447a;
        if (!(abstractC14447a instanceof C14458b)) {
            abstractC14447a2 = null;
        }
        return (C14458b) abstractC14447a2;
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: g */
    public void mo21164g() {
        C14458b m35289f = m35289f(this.f12438l);
        if (m35289f != null) {
            m35289f.m20075r();
        }
        m35290H();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: h */
    public void mo21163h(String str) {
        l.e(str, "title");
        AbstractC14447a abstractC14447a = this.f12438l;
        if (abstractC14447a != null) {
            abstractC14447a.mo20077j(str);
        }
        m35290H();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: i */
    public void mo21162i() {
        stopForeground(true);
        m35291G(null);
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: j */
    public void mo21161j(boolean z) {
        C13845a c13845a = this.f12431e;
        if (c13845a == null) {
            l.l("notificationFactory");
            throw null;
        }
        Context applicationContext = c13845a.f40173a.getApplicationContext();
        Context context = applicationContext;
        if (!(applicationContext instanceof AbstractC14932g)) {
            context = null;
        }
        AbstractC14932g abstractC14932g = (AbstractC14932g) context;
        if (abstractC14932g == null) {
            throw new RuntimeException(C22128a.m8643a2(AbstractC14932g.class, C22128a.m8728C("Application class does not implement ")));
        }
        AbstractC14920n mo19403n = abstractC14932g.mo19403n();
        C14453b c14453b = c13845a.f40174b;
        int i = C4013R.C4015id.incallui_service_incoming_call_notification;
        String mo19425a = mo19403n.mo19425a(z ? "incoming_calls" : "phone_calls");
        Context context2 = c13845a.f40173a;
        int i2 = C4013R.C4015id.incallui_incoming_notification_action_answer;
        InCallUIActivity.C4019a c4019a = InCallUIActivity.f12407g;
        l.e(context2, AnalyticsConstants.CONTEXT);
        l.e("Notification", "callerContext");
        PendingIntent activity = PendingIntent.getActivity(context2, i2, Build.VERSION.SDK_INT < 24 ? null : new Intent(context2, InCallUIActivity.class).setAction("com.truecaller.incallui.callui.ACTION_ANSWER_CALL").putExtra("com.truecaller.incallui.callui.PARAM_CONTEXT", "Notification").setFlags(268435456), 201326592);
        l.d(activity, "PendingIntent.getActivit…G_IMMUTABLE\n            )");
        C14454a m20084a = c14453b.m20084a(i, mo19425a, activity, c13845a.m21003a(C4013R.C4015id.incallui_incoming_notification_action_decline, "Decline"));
        Intent m35302a = c4019a.m35302a(c13845a.f40173a, "Notification");
        if (m35302a != null) {
            String string = c13845a.f40173a.getString(C4013R.string.incallui_notification_incoming_content);
            l.d(string, "context.getString(R.stri…ication_incoming_content)");
            m20084a.m20081r(string);
            m20084a.m20097i(m35302a);
            if (z) {
                l.e(m35302a, "intent");
                C26450q m20101c = m20084a.m20101c();
                m20101c.f74148h = PendingIntent.getActivity(m20084a.m20100d(), 0, m35302a, 67108864);
                m20101c.m1853p(128, true);
                m20084a.m20101c().f74152l = 2;
            }
        }
        AbstractC14447a abstractC14447a = this.f12438l;
        if (abstractC14447a != null) {
            abstractC14447a.m20103a();
        }
        this.f12438l = m20084a;
        m35290H();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: k */
    public void mo21160k() {
        C14458b m35289f = m35289f(this.f12438l);
        if (m35289f != null) {
            m35289f.f41646j.setViewVisibility(C4304R.C4306id.image_mute, 8);
        }
        m35290H();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: l */
    public void mo21159l() {
        setAudioRoute(5);
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: m */
    public void mo21158m() {
        l.e(this, AnalyticsConstants.CONTEXT);
        Intent flags = new Intent(this, PhoneAccountsActivity.class).setFlags(268435456);
        l.d(flags, "Intent(context, PhoneAcc…t.FLAG_ACTIVITY_NEW_TASK)");
        startActivity(flags);
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: n */
    public void mo21157n() {
        AbstractC13824j abstractC13824j = this.f12432f;
        if (abstractC13824j == null) {
            l.l("inCallUICallerIdServiceProxy");
            throw null;
        }
        String mo14905a = abstractC13824j.mo14905a();
        if (mo14905a == null) {
            return;
        }
        ServiceConnectionC13822i serviceConnectionC13822i = this.f12440n;
        Intent intent = new Intent(this, Class.forName(mo14905a));
        Objects.requireNonNull(serviceConnectionC13822i);
        l.e(intent, "intent");
        if (serviceConnectionC13822i.f40083a) {
            return;
        }
        try {
            serviceConnectionC13822i.f40083a = serviceConnectionC13822i.f40084b.bindService(intent, serviceConnectionC13822i, 64);
        } catch (ClassNotFoundException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        } catch (SecurityException e2) {
            AssertionUtil.reportThrowableButNeverCrash(e2);
        }
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: o */
    public void mo21156o() {
        setAudioRoute(8);
    }

    @Override // android.telecom.InCallService
    public void onCallAdded(Call call) {
        l.e(call, "call");
        this.f12435i = call;
        AbstractC13771i abstractC13771i = this.f12430d;
        if (abstractC13771i == null) {
            l.l("presenter");
            throw null;
        }
        C13778o c13778o = (C13778o) abstractC13771i;
        boolean z = ((CallingSettings) ((C13812e) c13778o.f39971z).f40057c.get()).getBoolean("key_temp_latest_call_made_with_tc");
        c13778o.f39961p.mo21191p("inCallUIServicePresenter", c13778o);
        c13778o.m21116Qj();
        AbstractC13773k abstractC13773k = (AbstractC13773k) c13778o.f57683a;
        if (abstractC13773k != null) {
            abstractC13773k.mo21169a();
        }
        d.w2(c13778o.f39950e, (f) null, (j0) null, new C13774l(c13778o, new C13790t(c13778o, z), null), 3, (Object) null);
    }

    @Override // android.telecom.InCallService
    public void onCallAudioStateChanged(CallAudioState callAudioState) {
        AudioRoute audioRoute;
        if (callAudioState == null) {
            return;
        }
        int route = callAudioState.getRoute();
        boolean z = true;
        if (route == 1) {
            audioRoute = AudioRoute.EARPIECE;
        } else if (route == 2) {
            audioRoute = AudioRoute.BLUETOOTH;
        } else if (route == 4) {
            audioRoute = AudioRoute.WIRED_HEADSET;
        } else if (route != 8) {
            return;
        } else {
            audioRoute = AudioRoute.SPEAKER;
        }
        if ((callAudioState.getSupportedRouteMask() & 2) != 2) {
            z = false;
        }
        C19270d m13724b = z ? m35292F().m13724b() : new C19270d(null, s.a);
        d.I2(this.f12437k, new C13843a(audioRoute, m13724b.f53665b, m13724b.f53664a, callAudioState.isMuted()));
        this.f12436j.setValue(callAudioState);
    }

    @Override // android.telecom.InCallService
    public void onCallRemoved(Call call) {
        l.e(call, "call");
        AbstractC13771i abstractC13771i = this.f12430d;
        if (abstractC13771i != null) {
            ((C13778o) abstractC13771i).f39961p.mo21227C();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13769g, android.app.Service
    public void onCreate() {
        super.onCreate();
        AbstractC13771i abstractC13771i = this.f12430d;
        if (abstractC13771i == null) {
            l.l("presenter");
            throw null;
        }
        ((C13778o) abstractC13771i).mo9029Y0(this);
        m35292F().f53650d = new C13770h(this);
        C19264b m35292F = m35292F();
        AbstractC13771i abstractC13771i2 = this.f12430d;
        if (abstractC13771i2 == null) {
            l.l("presenter");
            throw null;
        }
        m35292F.m13718h((C13778o) abstractC13771i2, this.f12436j);
        this.f12436j.setValue(getCallAudioState());
    }

    @Override // android.app.Service
    public void onDestroy() {
        m35291G(null);
        AbstractC13771i abstractC13771i = this.f12430d;
        if (abstractC13771i == null) {
            l.l("presenter");
            throw null;
        }
        ((C13778o) abstractC13771i).mo9806c();
        m35292F().m13717i();
        super.onDestroy();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: p */
    public void mo21155p() {
        AbstractC14447a abstractC14447a = this.f12438l;
        if (abstractC14447a != null) {
            abstractC14447a.mo20079e();
        }
        m35290H();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: q */
    public void mo21154q(long j) {
        C14458b m35289f = m35289f(this.f12438l);
        if (m35289f != null) {
            m35289f.m20074s(j);
        }
        m35290H();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: r */
    public Call mo21153r() {
        return this.f12435i;
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: s */
    public r<C13843a> mo21152s() {
        return this.f12437k;
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: t */
    public void mo21151t(C13827k0 c13827k0) {
        l.e(c13827k0, DTBMetricsConfiguration.CONFIG_DIR);
        AbstractC14447a abstractC14447a = this.f12438l;
        if (abstractC14447a != null) {
            abstractC14447a.m20098g(C17891a1.C17902k.m15647R0(c13827k0));
        }
        m35290H();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: u */
    public void mo21150u(String str) {
        Object obj;
        l.e(str, "deviceAddress");
        if (Build.VERSION.SDK_INT < 28) {
            setAudioRoute(2);
            return;
        }
        CallAudioState callAudioState = getCallAudioState();
        l.d(callAudioState, "callAudioState");
        Collection<BluetoothDevice> supportedBluetoothDevices = callAudioState.getSupportedBluetoothDevices();
        l.d(supportedBluetoothDevices, "callAudioState.supportedBluetoothDevices");
        Iterator<T> it = supportedBluetoothDevices.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            Object next = it.next();
            BluetoothDevice bluetoothDevice = (BluetoothDevice) next;
            l.d(bluetoothDevice, AnalyticsConstants.DEVICE);
            if (l.a(bluetoothDevice.getAddress(), str)) {
                obj = next;
                break;
            }
        }
        BluetoothDevice bluetoothDevice2 = (BluetoothDevice) obj;
        if (bluetoothDevice2 == null) {
            setAudioRoute(2);
        } else {
            requestBluetoothAudio(bluetoothDevice2);
        }
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: v */
    public void mo21149v(int i, Long l, AbstractC16315h abstractC16315h) {
        AbstractC14455a.C14457b c14457b;
        C13845a c13845a = this.f12431e;
        if (c13845a == null) {
            l.l("notificationFactory");
            throw null;
        }
        Context applicationContext = c13845a.f40173a.getApplicationContext();
        Context context = applicationContext;
        if (!(applicationContext instanceof AbstractC14932g)) {
            context = null;
        }
        AbstractC14932g abstractC14932g = (AbstractC14932g) context;
        if (abstractC14932g == null) {
            throw new RuntimeException(C22128a.m8643a2(AbstractC14932g.class, C22128a.m8728C("Application class does not implement ")));
        }
        AbstractC14920n mo19403n = abstractC14932g.mo19403n();
        C14453b c14453b = c13845a.f40174b;
        int i2 = C4013R.C4015id.incallui_service_ongoing_call_notification;
        String mo19425a = mo19403n.mo19425a("phone_calls");
        PendingIntent m21003a = c13845a.m21003a(C4013R.C4015id.incallui_incoming_notification_action_mute, "ToggleMute");
        PendingIntent m21003a2 = c13845a.m21003a(C4013R.C4015id.incallui_incoming_notification_action_speaker, "ToggleSpeaker");
        PendingIntent m21003a3 = c13845a.m21003a(C4013R.C4015id.incallui_incoming_notification_action_hang_up, "HangUp");
        if (abstractC16315h != null) {
            PendingIntent m21003a4 = c13845a.m21003a(C4013R.C4015id.incallui_incoming_notification_action_record, "ToggleRecord");
            if (l.a(abstractC16315h, AbstractC16315h.C16318c.f45934a) || l.a(abstractC16315h, AbstractC16315h.C16319d.f45935a) || l.a(abstractC16315h, AbstractC16315h.C16316a.f45932a) || (abstractC16315h instanceof AbstractC16315h.C16317b)) {
                c14457b = new AbstractC14455a.C14456a(m21003a4);
            } else if (!(abstractC16315h instanceof AbstractC16315h.C16320e)) {
                throw new i();
            } else {
                c14457b = new AbstractC14455a.C14457b(((AbstractC16315h.C16320e) abstractC16315h).f45937b, m21003a4);
            }
        } else {
            c14457b = null;
        }
        C14458b m20083b = c14453b.m20083b(i2, mo19425a, m21003a, m21003a2, m21003a3, c14457b);
        Intent m35302a = InCallUIActivity.f12407g.m35302a(c13845a.f40173a, "Notification");
        if (m35302a != null) {
            String string = c13845a.f40173a.getString(i);
            l.d(string, "context.getString(contentText)");
            m20083b.m20072u(string);
            m20083b.m20097i(m35302a);
            if (l != null) {
                m20083b.m20101c().f74137R.when = l.longValue();
                m20083b.m20094n(true);
            }
        }
        AbstractC14447a abstractC14447a = this.f12438l;
        if (abstractC14447a != null) {
            abstractC14447a.m20103a();
        }
        this.f12438l = m20083b;
        m35290H();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: w */
    public void mo21148w() {
        this.f12440n.m21041a();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: x */
    public void mo21147x() {
        startActivity(InCallUIActivity.f12407g.m35302a(this, null));
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: y */
    public void mo21146y() {
        C14458b m35289f = m35289f(this.f12438l);
        if (m35289f != null) {
            m35289f.m20070w();
        }
        m35290H();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13773k
    /* renamed from: z */
    public void mo21145z(AbstractC13907c abstractC13907c, a<s1.s> aVar) {
        l.e(abstractC13907c, "callBubbles");
        l.e(aVar, "clickListener");
        C4029b c4029b = new C4029b();
        C13919o c13919o = (C13919o) abstractC13907c;
        l.e(c4029b, "intentProvider");
        l.e(aVar, "clickListener");
        c13919o.m20964a().offer(new C13930w(c13919o, c4029b, aVar));
    }
}
