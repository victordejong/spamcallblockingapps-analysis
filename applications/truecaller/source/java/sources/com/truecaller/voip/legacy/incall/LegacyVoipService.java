package com.truecaller.voip.legacy.incall;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.PowerManager;
import android.service.notification.StatusBarNotification;
import android.widget.Toast;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.google.android.gms.ads.RequestConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.VoipUser;
import com.truecaller.voip.legacy.incall.p190ui.LegacyVoipActivity;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.C19252p;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.C11730l;
import p193e.p194a.p619d.p622b.p623a.AbstractC11106e;
import p193e.p194a.p619d.p622b.p623a.AbstractC11107f;
import p193e.p194a.p619d.p622b.p623a.AbstractC11108g;
import p193e.p194a.p619d.p622b.p623a.AbstractServiceC11104c;
import p193e.p194a.p619d.p622b.p623a.BinderC11121s;
import p193e.p194a.p619d.p622b.p623a.C11087b;
import p193e.p194a.p619d.p637c0.p640x1.AbstractC11514a;
import p193e.p194a.p619d.p652q.AbstractC11776v;
import p193e.p194a.p619d.p663x.C12221p;
import p193e.p194a.p794g4.p795a.C14453b;
import p193e.p194a.p794g4.p795a.p797d.C14458b;
import p193e.p194a.p849h4.AbstractC14920n;
import p193e.p194a.p849h4.p850q.AbstractC14932g;
import q3.a.i0;
import q3.a.w2.h;
import s1.w.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��²\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\b¢\u0006\u0005\b\u0081\u0001\u0010\u0006J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J)\u0010\f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000e\u0010\u0006J\u000f\u0010\u000f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000f\u0010\u0006J\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001b\u001a\u00020\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001d\u0010\u0006J\u000f\u0010\u001e\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001e\u0010\u0006J\u0017\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010%\u001a\u00020\u00042\u0006\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0004H\u0016¢\u0006\u0004\b'\u0010\u0006J\u000f\u0010(\u001a\u00020\u0004H\u0016¢\u0006\u0004\b(\u0010\u0006J\u000f\u0010)\u001a\u00020\u0004H\u0016¢\u0006\u0004\b)\u0010\u0006J\u000f\u0010*\u001a\u00020\u0004H\u0016¢\u0006\u0004\b*\u0010\u0006J\u000f\u0010+\u001a\u00020\u0004H\u0016¢\u0006\u0004\b+\u0010\u0006J\u000f\u0010,\u001a\u00020\u0004H\u0016¢\u0006\u0004\b,\u0010\u0006J\u000f\u0010-\u001a\u00020\u0004H\u0016¢\u0006\u0004\b-\u0010\u0006J\u0017\u0010/\u001a\u00020\u00042\u0006\u0010.\u001a\u00020\u001fH\u0016¢\u0006\u0004\b/\u0010\"J\u001f\u00103\u001a\u00020\u00042\u0006\u00101\u001a\u0002002\u0006\u00102\u001a\u00020\u0016H\u0016¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020\u0004H\u0016¢\u0006\u0004\b5\u0010\u0006J\u000f\u00106\u001a\u00020\u0004H\u0016¢\u0006\u0004\b6\u0010\u0006J\u0017\u00108\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u001fH\u0016¢\u0006\u0004\b8\u0010\"J\u0017\u0010;\u001a\u00020\u00042\u0006\u0010:\u001a\u000209H\u0016¢\u0006\u0004\b;\u0010<J\u000f\u0010=\u001a\u00020\u0004H\u0016¢\u0006\u0004\b=\u0010\u0006J\u0017\u0010?\u001a\u00020\u00042\u0006\u0010>\u001a\u000200H\u0016¢\u0006\u0004\b?\u0010@J\u000f\u0010A\u001a\u00020\u0004H\u0016¢\u0006\u0004\bA\u0010\u0006J\u000f\u0010B\u001a\u00020\u0004H\u0016¢\u0006\u0004\bB\u0010\u0006R\u001c\u0010F\u001a\b\u0012\u0004\u0012\u00020\u00100C8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bD\u0010ER\u0016\u0010J\u001a\u00020G8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bH\u0010IR(\u0010R\u001a\u00020K8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b(\u0010L\u0012\u0004\bQ\u0010\u0006\u001a\u0004\bM\u0010N\"\u0004\bO\u0010PR(\u0010V\u001a\u00020K8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b-\u0010L\u0012\u0004\bU\u0010\u0006\u001a\u0004\bS\u0010N\"\u0004\bT\u0010PR\"\u0010]\u001a\u00020W8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b'\u0010X\u001a\u0004\bY\u0010Z\"\u0004\b[\u0010\\R\"\u0010d\u001a\u00020^8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b!\u0010_\u001a\u0004\b`\u0010a\"\u0004\bb\u0010cR\"\u0010l\u001a\u00020e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bf\u0010g\u001a\u0004\bh\u0010i\"\u0004\bj\u0010kR\u0016\u0010n\u001a\u00020K8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bm\u0010NR\u001c\u0010s\u001a\b\u0018\u00010oR\u00020p8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010rR\"\u0010{\u001a\u00020t8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bu\u0010v\u001a\u0004\bw\u0010x\"\u0004\by\u0010zR\u001c\u0010}\u001a\b\u0012\u0004\u0012\u00020\u00130C8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b|\u0010ER\u001d\u0010\u0080\u0001\u001a\b\u0012\u0004\u0012\u00020~0C8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u007f\u0010E¨\u0006\u0082\u0001"}, d2 = {"Lcom/truecaller/voip/legacy/incall/LegacyVoipService;", "Landroid/app/Service;", "Le/a/d/b/a/g;", "Lq3/a/i0;", "Ls1/s;", "onCreate", "()V", "Landroid/content/Intent;", "intent", "", "flags", "startId", "onStartCommand", "(Landroid/content/Intent;II)I", "onDestroy", "t", "Le/a/d/l;", "getState", "()Le/a/d/l;", "Le/a/d/x/p;", "T1", "()Le/a/d/x/p;", "", "N1", "()J", "Le/a/d/b/a/e;", "binderCallback", "L1", "(Le/a/d/b/a/e;)V", "o3", "r3", "", "title", "h", "(Ljava/lang/String;)V", "Lcom/truecaller/common/ui/avatar/AvatarXConfig;", DTBMetricsConfiguration.CONFIG_DIR, "m3", "(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V", "g", "e", AbstractC2405c.f7629a, C22021b.f61237c, "s3", "p3", "d", "text", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "", "startTimer", "callStartRealtime", "l3", "(ZJ)V", "a", "q3", "number", "n3", "Le/a/d/c0/x1/a;", "audioRoute", "S1", "(Le/a/d/c0/x1/a;)V", "Q1", "enabled", "R1", "(Z)V", "O1", "M1", "Lq3/a/w2/h;", "K1", "()Lq3/a/w2/h;", "statesChannel", "Le/a/g4/a/d/b;", "j", "Le/a/g4/a/d/b;", "callNotification", "Ls1/w/f;", "Ls1/w/f;", "getAsyncContext", "()Ls1/w/f;", "setAsyncContext", "(Ls1/w/f;)V", "getAsyncContext$annotations", "asyncContext", "getUiContext", "setUiContext", "getUiContext$annotations", "uiContext", "Le/a/p5/c;", "Le/a/p5/c;", "getClock", "()Le/a/p5/c;", "setClock", "(Le/a/p5/c;)V", "clock", "Le/a/d/q/v;", "Le/a/d/q/v;", "getCallConnectionManager", "()Le/a/d/q/v;", "setCallConnectionManager", "(Le/a/d/q/v;)V", "callConnectionManager", "Le/a/g4/a/b;", "i", "Le/a/g4/a/b;", "getNotificationFactory", "()Le/a/g4/a/b;", "setNotificationFactory", "(Le/a/g4/a/b;)V", "notificationFactory", "getCoroutineContext", "coroutineContext", "Landroid/os/PowerManager$WakeLock;", "Landroid/os/PowerManager;", "k", "Landroid/os/PowerManager$WakeLock;", "proximityLock", "Le/a/d/b/a/f;", "f", "Le/a/d/b/a/f;", "getPresenter", "()Le/a/d/b/a/f;", "setPresenter", "(Le/a/d/b/a/f;)V", "presenter", "P1", "serviceSettingsChannel", "Lcom/truecaller/voip/VoipUser;", "J0", "usersChannel", "<init>", "voip_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/legacy/incall/LegacyVoipService.class */
public final class LegacyVoipService extends AbstractServiceC11104c implements AbstractC11108g, i0 {

    /* renamed from: l */
    public static boolean f16356l;
    @Inject

    /* renamed from: d */
    public f f16357d;
    @Inject

    /* renamed from: e */
    public f f16358e;
    @Inject

    /* renamed from: f */
    public AbstractC11107f f16359f;
    @Inject

    /* renamed from: g */
    public AbstractC19222c f16360g;
    @Inject

    /* renamed from: h */
    public AbstractC11776v f16361h;
    @Inject

    /* renamed from: i */
    public C14453b f16362i;

    /* renamed from: j */
    public C14458b f16363j;

    /* renamed from: k */
    public PowerManager.WakeLock f16364k;

    /* renamed from: f */
    public static final Intent m34333f(Context context, String str) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "number");
        Intent intent = new Intent(context, LegacyVoipService.class);
        intent.putExtra("com.truecaller.voip.extra.EXTRA_NUMBER", str);
        return intent;
    }

    /* renamed from: i */
    public static void m34332i(LegacyVoipService legacyVoipService, boolean z, int i) {
        if ((i & 1) != 0) {
            z = false;
        }
        C14458b c14458b = legacyVoipService.f16363j;
        if (c14458b != null) {
            c14458b.m20092p(legacyVoipService, z);
        } else {
            l.l("callNotification");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11108g
    /* renamed from: G */
    public void mo25217G(String str) {
        l.e(str, "text");
        C14458b c14458b = this.f16363j;
        if (c14458b == null) {
            l.l("callNotification");
            throw null;
        }
        c14458b.m20072u(str);
        m34332i(this, false, 1);
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11105d
    /* renamed from: J0 */
    public h<VoipUser> mo25233J0() {
        AbstractC11107f abstractC11107f = this.f16359f;
        if (abstractC11107f != null) {
            return ((C11087b) abstractC11107f).f32787p;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11105d
    /* renamed from: K1 */
    public h<C11730l> mo25232K1() {
        AbstractC11107f abstractC11107f = this.f16359f;
        if (abstractC11107f != null) {
            return ((C11087b) abstractC11107f).f32788q;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11105d
    /* renamed from: L1 */
    public void mo25231L1(AbstractC11106e abstractC11106e) {
        AbstractC11107f abstractC11107f = this.f16359f;
        if (abstractC11107f != null) {
            ((C11087b) abstractC11107f).f32775d = abstractC11106e;
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11105d
    /* renamed from: M1 */
    public void mo25230M1() {
        AbstractC11107f abstractC11107f = this.f16359f;
        if (abstractC11107f != null) {
            ((C11087b) abstractC11107f).m25265fk(false);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11105d
    /* renamed from: N1 */
    public long mo25229N1() {
        AbstractC11107f abstractC11107f = this.f16359f;
        if (abstractC11107f != null) {
            return ((C11087b) abstractC11107f).f32783l;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11105d
    /* renamed from: O1 */
    public void mo25228O1() {
        AbstractC11107f abstractC11107f = this.f16359f;
        if (abstractC11107f != null) {
            ((C11087b) abstractC11107f).m25265fk(true);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11105d
    /* renamed from: P1 */
    public h<C12221p> mo25227P1() {
        AbstractC11107f abstractC11107f = this.f16359f;
        if (abstractC11107f != null) {
            return ((C11087b) abstractC11107f).f32790s;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11105d
    /* renamed from: Q1 */
    public void mo25226Q1() {
        AbstractC11107f abstractC11107f = this.f16359f;
        if (abstractC11107f != null) {
            ((C11087b) abstractC11107f).m25272Yj();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11105d
    /* renamed from: R1 */
    public void mo25225R1(boolean z) {
        AbstractC11107f abstractC11107f = this.f16359f;
        if (abstractC11107f != null) {
            ((C11087b) abstractC11107f).m25271Zj(z);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11105d
    /* renamed from: S1 */
    public void mo25224S1(AbstractC11514a abstractC11514a) {
        l.e(abstractC11514a, "audioRoute");
        AbstractC11107f abstractC11107f = this.f16359f;
        if (abstractC11107f == null) {
            l.l("presenter");
            throw null;
        }
        C11087b c11087b = (C11087b) abstractC11107f;
        l.e(abstractC11514a, "audioRoute");
        c11087b.f32767C.mo24548j(abstractC11514a, c11087b.f32792u);
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11105d
    /* renamed from: T1 */
    public C12221p mo25223T1() {
        AbstractC11107f abstractC11107f = this.f16359f;
        if (abstractC11107f != null) {
            return ((C11087b) abstractC11107f).m25281Pj();
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11108g
    /* renamed from: a */
    public void mo25216a() {
        C19291g.m13515s(this);
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11108g
    /* renamed from: b */
    public void mo25215b() {
        C14458b c14458b = this.f16363j;
        if (c14458b == null) {
            l.l("callNotification");
            throw null;
        }
        c14458b.m20069x();
        m34332i(this, false, 1);
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11108g
    /* renamed from: c */
    public void mo25214c() {
        C14458b c14458b = this.f16363j;
        if (c14458b == null) {
            l.l("callNotification");
            throw null;
        }
        c14458b.m20073t();
        m34332i(this, false, 1);
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11108g
    /* renamed from: d */
    public void mo25213d() {
        startActivity(LegacyVoipActivity.m34331pa(this));
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11108g
    /* renamed from: e */
    public void mo25212e() {
        C14458b c14458b = this.f16363j;
        if (c14458b == null) {
            l.l("callNotification");
            throw null;
        }
        c14458b.m20071v();
        m34332i(this, false, 1);
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11108g
    /* renamed from: g */
    public void mo25211g() {
        C14458b c14458b = this.f16363j;
        if (c14458b == null) {
            l.l("callNotification");
            throw null;
        }
        c14458b.m20075r();
        m34332i(this, false, 1);
    }

    public f getCoroutineContext() {
        f fVar = this.f16357d;
        if (fVar != null) {
            return fVar;
        }
        l.l("uiContext");
        throw null;
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11105d
    public C11730l getState() {
        AbstractC11107f abstractC11107f = this.f16359f;
        if (abstractC11107f != null) {
            return ((C11087b) abstractC11107f).m25280Qj();
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11108g
    /* renamed from: h */
    public void mo25210h(String str) {
        l.e(str, "title");
        C14458b c14458b = this.f16363j;
        if (c14458b == null) {
            l.l("callNotification");
            throw null;
        }
        c14458b.mo20077j(str);
        m34332i(this, false, 1);
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11108g
    /* renamed from: l3 */
    public void mo25209l3(boolean z, long j) {
        AbstractC19222c abstractC19222c = this.f16360g;
        if (abstractC19222c == null) {
            l.l("clock");
            throw null;
        }
        long mo13821a = abstractC19222c.mo13821a();
        C14458b c14458b = this.f16363j;
        if (c14458b == null) {
            l.l("callNotification");
            throw null;
        }
        c14458b.m20101c().f74154n = z;
        C14458b c14458b2 = this.f16363j;
        if (c14458b2 == null) {
            l.l("callNotification");
            throw null;
        }
        AbstractC19222c abstractC19222c2 = this.f16360g;
        if (abstractC19222c2 == null) {
            l.l("clock");
            throw null;
        }
        c14458b2.m20093o(abstractC19222c2.mo13819c() - (mo13821a - j));
        m34332i(this, false, 1);
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11108g
    /* renamed from: m3 */
    public void mo25208m3(AvatarXConfig avatarXConfig) {
        l.e(avatarXConfig, DTBMetricsConfiguration.CONFIG_DIR);
        C14458b c14458b = this.f16363j;
        if (c14458b == null) {
            l.l("callNotification");
            throw null;
        }
        c14458b.m20098g(avatarXConfig);
        m34332i(this, false, 1);
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11108g
    /* renamed from: n3 */
    public void mo25207n3(String str) {
        l.e(str, "number");
        Toast.makeText(this, getString(C4781R.string.voip_number_does_not_support, new Object[]{getString(C4781R.string.voip_text), str}), 1).show();
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11108g
    /* renamed from: o3 */
    public void mo25206o3() {
        C19291g.m13515s(this);
        C19291g.m13573Y(this).cancel(C4781R.C4783id.voip_incoming_service_missed_call_notification);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return new BinderC11121s(this);
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractServiceC11104c, android.app.Service
    public void onCreate() {
        C14458b m20083b;
        StatusBarNotification statusBarNotification;
        super.onCreate();
        f16356l = true;
        Context applicationContext = getApplicationContext();
        l.d(applicationContext, "applicationContext");
        Context applicationContext2 = applicationContext.getApplicationContext();
        Context context = applicationContext2;
        if (!(applicationContext2 instanceof AbstractC14932g)) {
            context = null;
        }
        AbstractC14932g abstractC14932g = (AbstractC14932g) context;
        if (abstractC14932g != null) {
            AbstractC14920n mo19403n = abstractC14932g.mo19403n();
            C14453b c14453b = this.f16362i;
            if (c14453b == null) {
                l.l("notificationFactory");
                throw null;
            }
            int i = C4781R.C4783id.voip_service_foreground_notification;
            String mo19425a = mo19403n.mo19425a("voip_v1");
            int i2 = C4781R.C4783id.voip_incoming_notification_action_mute;
            Intent intent = new Intent(this, LegacyVoipService.class);
            intent.setAction("com.truecaller.voip.incoming.ACTION_TOGGLE_MUTE");
            PendingIntent service = PendingIntent.getService(this, i2, intent, 201326592);
            l.d(service, "PendingIntent.getService….FLAG_IMMUTABLE\n        )");
            int i3 = C4781R.C4783id.voip_incoming_notification_action_speaker;
            Intent intent2 = new Intent(this, LegacyVoipService.class);
            intent2.setAction("com.truecaller.voip.incoming.ACTION_TOGGLE_SPEAKER");
            PendingIntent service2 = PendingIntent.getService(this, i3, intent2, 201326592);
            l.d(service2, "PendingIntent.getService….FLAG_IMMUTABLE\n        )");
            int i4 = C4781R.C4783id.voip_incoming_notification_action_hang_up;
            Intent intent3 = new Intent(this, LegacyVoipService.class);
            intent3.setAction("com.truecaller.voip.incoming.ACTION_HANG_UP");
            PendingIntent service3 = PendingIntent.getService(this, i4, intent3, 201326592);
            l.d(service3, "PendingIntent.getService….FLAG_IMMUTABLE\n        )");
            m20083b = c14453b.m20083b(i, mo19425a, service, service2, service3, null);
            m20083b.m20095m(C4781R.C4782drawable.ic_voip_notification);
            m20083b.m20097i(LegacyVoipActivity.m34331pa(this));
            this.f16363j = m20083b;
            this.f16364k = C19291g.m13562c0(C19291g.m13565b0(this));
            if (!C19252p.m13743a()) {
                return;
            }
            StatusBarNotification[] activeNotifications = C19291g.m13573Y(this).getActiveNotifications();
            l.d(activeNotifications, "notificationManager.activeNotifications");
            int length = activeNotifications.length;
            int i5 = 0;
            while (true) {
                if (i5 >= length) {
                    statusBarNotification = null;
                    break;
                }
                statusBarNotification = activeNotifications[i5];
                l.d(statusBarNotification, "it");
                if (statusBarNotification.getId() == C4781R.C4783id.voip_service_foreground_notification) {
                    break;
                }
                i5++;
            }
            if (statusBarNotification == null) {
                return;
            }
            AbstractC11776v abstractC11776v = this.f16361h;
            if (abstractC11776v == null) {
                l.l("callConnectionManager");
                throw null;
            }
            abstractC11776v.mo24009d();
            mo25201t();
            return;
        }
        throw new RuntimeException(C22128a.m8643a2(AbstractC14932g.class, C22128a.m8728C("Application class does not implement ")));
    }

    @Override // android.app.Service
    public void onDestroy() {
        f16356l = false;
        AbstractC11107f abstractC11107f = this.f16359f;
        if (abstractC11107f == null) {
            l.l("presenter");
            throw null;
        }
        ((C11087b) abstractC11107f).mo9806c();
        C14458b c14458b = this.f16363j;
        if (c14458b == null) {
            l.l("callNotification");
            throw null;
        }
        c14458b.m20103a();
        super.onDestroy();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01a5  */
    @Override // android.app.Service
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int onStartCommand(android.content.Intent r14, int r15, int r16) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.voip.legacy.incall.LegacyVoipService.onStartCommand(android.content.Intent, int, int):int");
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11108g
    /* renamed from: p3 */
    public void mo25205p3() {
        PowerManager.WakeLock wakeLock = this.f16364k;
        if (wakeLock == null || !wakeLock.isHeld()) {
            return;
        }
        wakeLock.release();
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11108g
    /* renamed from: q3 */
    public void mo25204q3() {
        Toast.makeText(this, getString(C4781R.string.voip_error_already_in_another_call, new Object[]{getString(C4781R.string.voip_text)}), 1).show();
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11108g
    /* renamed from: r3 */
    public void mo25203r3() {
        C14458b c14458b = this.f16363j;
        if (c14458b != null) {
            c14458b.m20092p(this, true);
        } else {
            l.l("callNotification");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11108g
    /* renamed from: s3 */
    public void mo25202s3() {
        PowerManager.WakeLock wakeLock = this.f16364k;
        if (wakeLock == null || wakeLock.isHeld()) {
            return;
        }
        wakeLock.acquire(TimeUnit.HOURS.toMillis(5L));
    }

    @Override // p193e.p194a.p619d.p622b.p623a.AbstractC11108g
    /* renamed from: t */
    public void mo25201t() {
        stopForeground(true);
        stopSelf();
    }
}
