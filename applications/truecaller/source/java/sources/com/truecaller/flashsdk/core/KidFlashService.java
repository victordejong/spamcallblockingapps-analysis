package com.truecaller.flashsdk.core;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.SystemClock;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.flashsdk.C3909R;
import com.truecaller.flashsdk.models.Flash;
import com.truecaller.flashsdk.models.Payload;
import com.truecaller.flashsdk.models.QueuedFlash;
import com.truecaller.flashsdk.models.Sender;
import com.truecaller.flashsdk.p166ui.incoming.FlashActivity;
import com.truecaller.log.UnmutedException;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1365y.p1381b.AbstractC21597c;
import p193e.p194a.p1365y.p1381b.AbstractC21603f;
import p193e.p194a.p1365y.p1381b.AbstractC21606g0;
import p193e.p194a.p1365y.p1381b.AbstractC21626w;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import p193e.p194a.p1365y.p1382c.AbstractC21642i;
import p193e.p194a.p1365y.p1382c.C21632c;
import p193e.p194a.p1365y.p1382c.C21658r;
import p193e.p194a.p1365y.p1382c.C21661t;
import p193e.p194a.p1365y.p1382c.C21663u;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.C21667b;
import p193e.p194a.p1365y.p1390h.AbstractC21747a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p849h4.AbstractC14920n;
import p193e.p194a.p849h4.p850q.AbstractC14932g;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import q3.a.n0;
import q3.a.p1;
import q3.a.t0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��Û\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001t\u0018��2\u00020\u00012\u00020\u0002B\b¢\u0006\u0005\b\u009c\u0001\u0010\tJ\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0003¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0003H\u0003¢\u0006\u0004\b\u000b\u0010\u0007J\u000f\u0010\f\u001a\u00020\u0005H\u0003¢\u0006\u0004\b\f\u0010\tJ\u000f\u0010\r\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\r\u0010\tJ\u0017\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0012\u0010\u0011J1\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001a\u0010\tJ\u0017\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u001b\u0010\u0011J\u0017\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b!\u0010\u0011J'\u0010$\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u00152\u0006\u0010#\u001a\u00020\u0015H\u0002¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0005H\u0016¢\u0006\u0004\b&\u0010\tJ'\u0010,\u001a\u00020)2\u0006\u0010(\u001a\u00020'2\u0006\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020)H\u0016¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\u0005H\u0016¢\u0006\u0004\b.\u0010\tJ\u0017\u00100\u001a\u00020\u00052\u0006\u0010/\u001a\u00020)H\u0016¢\u0006\u0004\b0\u00101J\u0019\u00103\u001a\u0004\u0018\u0001022\u0006\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b3\u00104R\u0018\u00107\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u00106R\"\u0010>\u001a\u0002088\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001f\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u0018\u0010A\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010@R\"\u0010H\u001a\u00020B8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b:\u0010C\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR\"\u0010P\u001a\u00020I8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR\u0016\u0010R\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010QR\u0018\u0010U\u001a\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010TR\"\u0010X\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u000e0V8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010WR\u0016\u0010[\u001a\u00020Y8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010ZR\u0016\u0010^\u001a\u00020'8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\\\u0010]R\u0016\u0010_\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010QR\"\u0010g\u001a\u00020`8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\ba\u0010b\u001a\u0004\bc\u0010d\"\u0004\be\u0010fR\u0016\u0010\n\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010QR\"\u0010o\u001a\u00020i8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0006\u0010j\u001a\u0004\bk\u0010l\"\u0004\bm\u0010nR\u0016\u0010q\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010pR\u0016\u0010s\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010]R\u0016\u0010w\u001a\u00020t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bu\u0010vR\u0016\u0010z\u001a\u00020x8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bJ\u0010yR,\u0010\u0083\u0001\u001a\u00020{8\u0006@\u0006X\u0087.¢\u0006\u001b\n\u0004\b|\u0010}\u0012\u0005\b\u0082\u0001\u0010\t\u001a\u0004\b~\u0010\u007f\"\u0006\b\u0080\u0001\u0010\u0081\u0001R\u001c\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0084\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0086\u0001R\u0018\u0010\u0089\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0088\u0001\u0010]R\u0017\u0010\u008a\u0001\u001a\u00020{8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\ba\u0010\u007fR)\u0010\u0091\u0001\u001a\u00030\u008b\u00018\u0006@\u0006X\u0086.¢\u0006\u0017\n\u0005\b$\u0010\u008c\u0001\u001a\u0006\b\u008d\u0001\u0010\u008e\u0001\"\u0006\b\u008f\u0001\u0010\u0090\u0001R)\u0010\u0098\u0001\u001a\u00030\u0092\u00018\u0006@\u0006X\u0087.¢\u0006\u0017\n\u0005\b\u0012\u0010\u0093\u0001\u001a\u0006\b\u0094\u0001\u0010\u0095\u0001\"\u0006\b\u0096\u0001\u0010\u0097\u0001R\u001b\u0010\u009b\u0001\u001a\u0005\u0018\u00010\u0099\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u001b\u0010\u009a\u0001¨\u0006\u009d\u0001"}, d2 = {"Lcom/truecaller/flashsdk/core/KidFlashService;", "Landroid/app/Service;", "Landroid/media/AudioManager$OnAudioFocusChangeListener;", "", "duck", "Ls1/s;", "g", "(Z)V", "n", "()V", "isPhoneIdle", "k", "p", "o", "Lcom/truecaller/flashsdk/models/QueuedFlash;", "flash", "i", "(Lcom/truecaller/flashsdk/models/QueuedFlash;)V", C22021b.f61237c, "Landroid/graphics/Bitmap;", "bitmap", "", "title", "content", "m", "(Lcom/truecaller/flashsdk/models/QueuedFlash;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V", "q", "l", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ln3/k/a/q;", AbstractC2405c.f7629a, "(Landroid/content/Context;)Ln3/k/a/q;", "j", "action", "flashActionName", "h", "(Lcom/truecaller/flashsdk/models/QueuedFlash;Ljava/lang/String;Ljava/lang/String;)V", "onCreate", "Landroid/content/Intent;", "intent", "", "flags", "startId", "onStartCommand", "(Landroid/content/Intent;II)I", "onDestroy", "focusChange", "onAudioFocusChange", "(I)V", "Landroid/os/IBinder;", "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;", "Lq3/a/p1;", "Lq3/a/p1;", "job", "Le/a/y/b/c;", "Le/a/y/b/c;", "d", "()Le/a/y/b/c;", "setContactUtils", "(Le/a/y/b/c;)V", "contactUtils", "Landroid/media/MediaPlayer;", "Landroid/media/MediaPlayer;", "mediaPlayer", "Le/a/y/b/f;", "Le/a/y/b/f;", "getDeviceUtils", "()Le/a/y/b/f;", "setDeviceUtils", "(Le/a/y/b/f;)V", "deviceUtils", "Le/a/y/b/g0;", "e", "Le/a/y/b/g0;", "getResourceProvider", "()Le/a/y/b/g0;", "setResourceProvider", "(Le/a/y/b/g0;)V", "resourceProvider", "Z", "isMediaPlayerInitialised", "Landroid/os/Vibrator;", "Landroid/os/Vibrator;", "vibrator", "", "Ljava/util/Map;", "flashMap", "Landroid/content/IntentFilter;", "Landroid/content/IntentFilter;", "activityFilter", "t", "Landroid/content/Intent;", "flashReceivedIntent", "isFlashActive", "Le/a/y/h/a;", "f", "Le/a/y/h/a;", "getFlashNotificationManager", "()Le/a/y/h/a;", "setFlashNotificationManager", "(Le/a/y/h/a;)V", "flashNotificationManager", "v", "Le/a/y/b/w;", "Le/a/y/b/w;", "getPreferenceUtil", "()Le/a/y/b/w;", "setPreferenceUtil", "(Le/a/y/b/w;)V", "preferenceUtil", "I", "mediaVolume", "r", "progressIntent", "com/truecaller/flashsdk/core/KidFlashService$a", "w", "Lcom/truecaller/flashsdk/core/KidFlashService$a;", "activityReceiver", "Le/a/h4/n;", "()Le/a/h4/n;", "notificationManager", "Ls1/w/f;", "a", "Ls1/w/f;", "getUiContext", "()Ls1/w/f;", "setUiContext", "(Ls1/w/f;)V", "getUiContext$annotations", "uiContext", "Landroid/media/AudioFocusRequest;", "u", "Landroid/media/AudioFocusRequest;", "audioFocusRequest", "s", "finishIntent", "parentCoroutineContext", "Le/a/y/c/b;", "Le/a/y/c/b;", "getFlashManager", "()Le/a/y/c/b;", "setFlashManager", "(Le/a/y/c/b;)V", "flashManager", "Landroid/media/AudioManager;", "Landroid/media/AudioManager;", "getAudioManager", "()Landroid/media/AudioManager;", "setAudioManager", "(Landroid/media/AudioManager;)V", "audioManager", "Ljava/util/Timer;", "Ljava/util/Timer;", "incomingTimer", "<init>", "flash_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/core/KidFlashService.class */
public final class KidFlashService extends Service implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: x */
    public static final /* synthetic */ int f11956x = 0;
    @Inject

    /* renamed from: a */
    public f f11957a;
    @Inject

    /* renamed from: b */
    public AudioManager f11958b;
    @Inject

    /* renamed from: c */
    public AbstractC21597c f11959c;
    @Inject

    /* renamed from: d */
    public AbstractC21603f f11960d;
    @Inject

    /* renamed from: e */
    public AbstractC21606g0 f11961e;
    @Inject

    /* renamed from: f */
    public AbstractC21747a f11962f;
    @Inject

    /* renamed from: g */
    public AbstractC21626w f11963g;

    /* renamed from: h */
    public AbstractC21631b f11964h;

    /* renamed from: i */
    public MediaPlayer f11965i;

    /* renamed from: j */
    public Vibrator f11966j;

    /* renamed from: l */
    public Timer f11968l;

    /* renamed from: m */
    public boolean f11969m;

    /* renamed from: n */
    public boolean f11970n;

    /* renamed from: o */
    public p1 f11971o;

    /* renamed from: p */
    public int f11972p;

    /* renamed from: u */
    public AudioFocusRequest f11977u;

    /* renamed from: k */
    public Map<String, QueuedFlash> f11967k = new LinkedHashMap();

    /* renamed from: q */
    public final IntentFilter f11973q = new IntentFilter();

    /* renamed from: r */
    public Intent f11974r = new Intent("type_publish_progress");

    /* renamed from: s */
    public final Intent f11975s = new Intent("type_flash_timer_expired");

    /* renamed from: t */
    public final Intent f11976t = new Intent("type_flash_received");

    /* renamed from: v */
    public boolean f11978v = true;

    /* renamed from: w */
    public final C3915a f11979w = new C3915a();

    /* renamed from: com.truecaller.flashsdk.core.KidFlashService$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/core/KidFlashService$a.class */
    public static final class C3915a extends BroadcastReceiver {
        public C3915a() {
            KidFlashService.this = r4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:45:0x01bd, code lost:
            if (r8 != null) goto L47;
         */
        @Override // android.content.BroadcastReceiver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onReceive(android.content.Context r8, android.content.Intent r9) {
            /*
                Method dump skipped, instructions count: 700
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.truecaller.flashsdk.core.KidFlashService.C3915a.onReceive(android.content.Context, android.content.Intent):void");
        }
    }

    @e(c = "com.truecaller.flashsdk.core.KidFlashService$onStartCommand$1", f = "KidFlashService.kt", l = {220}, m = "invokeSuspend")
    /* renamed from: com.truecaller.flashsdk.core.KidFlashService$b */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/core/KidFlashService$b.class */
    public static final class C3916b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f11981e;

        /* renamed from: g */
        public final /* synthetic */ QueuedFlash f11983g;

        /* renamed from: h */
        public final /* synthetic */ Flash f11984h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3916b(QueuedFlash queuedFlash, Flash flash, d dVar) {
            super(2, dVar);
            KidFlashService.this = r5;
            this.f11983g = queuedFlash;
            this.f11984h = flash;
        }

        /* renamed from: i */
        public final d<s> m35397i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C3916b(this.f11983g, this.f11984h, dVar);
        }

        /* renamed from: k */
        public final Object m35396k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C3916b(this.f11983g, this.f11984h, dVar).m35395s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:32:0x0186, code lost:
            if (r15 != null) goto L34;
         */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m35395s(java.lang.Object r15) {
            /*
                Method dump skipped, instructions count: 1145
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.truecaller.flashsdk.core.KidFlashService.C3916b.m35395s(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: com.truecaller.flashsdk.core.KidFlashService$c */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/core/KidFlashService$c.class */
    public static final class C3917c extends TimerTask {
        public C3917c() {
            KidFlashService.this = r4;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            for (Map.Entry entry : s1.u.i.W0(KidFlashService.this.f11967k).entrySet()) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j = ((QueuedFlash) entry.getValue()).f11997g;
                if (SystemClock.elapsedRealtime() - ((QueuedFlash) entry.getValue()).f11997g >= DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL) {
                    KidFlashService kidFlashService = KidFlashService.this;
                    String str = (String) entry.getKey();
                    QueuedFlash queuedFlash = (QueuedFlash) entry.getValue();
                    Objects.requireNonNull(kidFlashService);
                    if (queuedFlash.f12012i) {
                        kidFlashService.m35399p();
                    }
                    if (queuedFlash.f12013j) {
                        C27062a.m968b(kidFlashService).m966d(kidFlashService.f11975s);
                    }
                    s1.a.a.a.v0.f.d.w2(h1.a, kidFlashService.m35409f(), (j0) null, new C21661t(kidFlashService, queuedFlash, kidFlashService, null), 2, (Object) null);
                    kidFlashService.m35407h(queuedFlash, "FlashMissed", "missed");
                    kidFlashService.m35406i(queuedFlash);
                    if (str != null) {
                        kidFlashService.f11967k.remove(str);
                    }
                    if (kidFlashService.f11967k.isEmpty()) {
                        kidFlashService.f11970n = false;
                    }
                } else {
                    KidFlashService kidFlashService2 = KidFlashService.this;
                    Objects.requireNonNull(kidFlashService2);
                    if (((QueuedFlash) entry.getValue()).f12013j) {
                        Intent intent = new Intent("type_publish_progress");
                        kidFlashService2.f11974r = intent;
                        intent.putExtra("extra_timer_progress", DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL - (elapsedRealtime - j));
                        C27062a.m968b(kidFlashService2).m966d(kidFlashService2.f11974r);
                    }
                }
            }
            if (KidFlashService.this.f11967k.isEmpty()) {
                KidFlashService.this.m35398q();
                KidFlashService.this.m35399p();
            }
        }
    }

    /* renamed from: a */
    public static n0 m35414a(KidFlashService kidFlashService, Flash flash, int i, int i2) {
        if ((i2 & 2) != 0) {
            i = C3909R.C3910drawable.ic_notification_avatar;
        }
        return s1.a.a.a.v0.f.d.H(h1.a, kidFlashService.m35409f().plus(t0.d), (j0) null, new C21658r(kidFlashService, flash, i, null), 2, (Object) null);
    }

    /* renamed from: b */
    public final void m35413b(QueuedFlash queuedFlash) {
        String str = queuedFlash.f11998h;
        if (str != null) {
            this.f11967k.remove(str);
        }
        if (this.f11967k.isEmpty()) {
            m35398q();
            m35399p();
            stopSelf();
        }
    }

    /* renamed from: c */
    public final C26450q m35412c(Context context) {
        return new C26450q(context, m35410e().mo19425a("flash"));
    }

    /* renamed from: d */
    public final AbstractC21597c m35411d() {
        AbstractC21597c abstractC21597c = this.f11959c;
        if (abstractC21597c != null) {
            return abstractC21597c;
        }
        l.l("contactUtils");
        throw null;
    }

    /* renamed from: e */
    public final AbstractC14920n m35410e() {
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

    /* renamed from: f */
    public final f m35409f() {
        f fVar = this.f11957a;
        if (fVar != null) {
            return fVar;
        }
        l.l("uiContext");
        throw null;
    }

    /* renamed from: g */
    public final void m35408g(boolean z) {
        try {
            MediaPlayer mediaPlayer = this.f11965i;
            if (mediaPlayer == null || !this.f11969m || !mediaPlayer.isPlaying()) {
                return;
            }
            float f = z ? this.f11972p * 0.2f : this.f11972p;
            mediaPlayer.setVolume(f, f);
        } catch (IllegalStateException e) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0055, code lost:
        if (r13 != null) goto L17;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m35407h(com.truecaller.flashsdk.models.QueuedFlash r6, java.lang.String r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.flashsdk.core.KidFlashService.m35407h(com.truecaller.flashsdk.models.QueuedFlash, java.lang.String, java.lang.String):void");
    }

    /* renamed from: i */
    public final void m35406i(QueuedFlash queuedFlash) {
        Sender sender = queuedFlash.f11991a;
        l.d(sender, "flash.sender");
        m35410e().mo19420f((int) (sender.m35377c().longValue() % 1000000000));
    }

    /* renamed from: j */
    public final void m35405j(QueuedFlash queuedFlash) {
        AbstractC21631b abstractC21631b = this.f11964h;
        if (abstractC21631b == null) {
            l.l("flashManager");
            throw null;
        }
        AbstractC21642i mo9292z = abstractC21631b.mo9292z();
        if (mo9292z == null) {
            return;
        }
        mo9292z.mo9270k(queuedFlash);
    }

    /* renamed from: k */
    public final void m35404k(boolean z) {
        long[] jArr = {0, 100, 1000};
        AbstractC21603f abstractC21603f = this.f11960d;
        if (abstractC21603f == null) {
            l.l("deviceUtils");
            throw null;
        }
        boolean mo9379f = abstractC21603f.mo9379f();
        if (mo9379f) {
            if (z) {
                Vibrator vibrator = this.f11966j;
                if (vibrator == null) {
                    return;
                }
                vibrator.vibrate(VibrationEffect.createWaveform(jArr, 0));
                return;
            }
            Vibrator vibrator2 = this.f11966j;
            if (vibrator2 == null) {
                return;
            }
            vibrator2.vibrate(VibrationEffect.createWaveform(jArr, -1));
        } else if (mo9379f) {
        } else {
            if (z) {
                Vibrator vibrator3 = this.f11966j;
                if (vibrator3 == null) {
                    return;
                }
                vibrator3.vibrate(jArr, 0);
                return;
            }
            Vibrator vibrator4 = this.f11966j;
            if (vibrator4 == null) {
                return;
            }
            vibrator4.vibrate(jArr, -1);
        }
    }

    /* renamed from: l */
    public final void m35403l(QueuedFlash queuedFlash) {
        AbstractC21631b abstractC21631b = this.f11964h;
        if (abstractC21631b == null) {
            l.l("flashManager");
            throw null;
        }
        Sender sender = queuedFlash.f11991a;
        l.d(sender, "flash.sender");
        abstractC21631b.mo9309i(String.valueOf(sender.m35377c().longValue()), 0L, queuedFlash);
        startActivity(FlashActivity.m35336xa(this, queuedFlash, true));
    }

    /* renamed from: m */
    public final void m35402m(QueuedFlash queuedFlash, Bitmap bitmap, String str, String str2) {
        Sender sender = queuedFlash.f11991a;
        l.d(sender, "flash.sender");
        int longValue = (int) (sender.m35377c().longValue() % 1000000000);
        PendingIntent activity = PendingIntent.getActivity(this, longValue, FlashActivity.m35336xa(this, queuedFlash, queuedFlash.f12014k), 201326592);
        Intent intent = new Intent();
        intent.putExtra("flash", queuedFlash);
        intent.setAction("com.truecaller.flashsdk.receiver.ACTION_DISMISS");
        PendingIntent broadcast = PendingIntent.getBroadcast(this, longValue, intent, 201326592);
        C26450q m35412c = m35412c(this);
        m35412c.f74137R.icon = C3909R.C3910drawable.ic_stat_flash;
        int i = C3909R.color.truecolor;
        Object obj = C26467a.f74235a;
        m35412c.f74123D = C26467a.C26471d.m1787a(this, i);
        m35412c.m1855n(str);
        m35412c.m1856m(str2);
        m35412c.m1853p(16, true);
        m35412c.m1851r(-65536, 1, 1);
        m35412c.f74137R.deleteIntent = broadcast;
        m35412c.f74147g = activity;
        m35412c.m1852q(bitmap);
        l.d(m35412c, "createNotificationBuilde…    .setLargeIcon(bitmap)");
        Notification m1865d = m35412c.m1865d();
        l.d(m1865d, "notificationBuilder.build()");
        m35410e().mo19419g(longValue, m1865d);
    }

    /* renamed from: n */
    public final void m35401n() {
        int i;
        Object systemService = getSystemService("vibrator");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.os.Vibrator");
        this.f11966j = (Vibrator) systemService;
        AudioManager audioManager = this.f11958b;
        if (audioManager == null) {
            l.l("audioManager");
            throw null;
        }
        int ringerMode = audioManager.getRingerMode();
        if (ringerMode == 1) {
            m35404k(this.f11978v);
        } else if (ringerMode != 2) {
        } else {
            Context applicationContext = getApplicationContext();
            l.d(applicationContext, "this.applicationContext");
            if (Settings.System.getInt(applicationContext.getContentResolver(), "vibrate_when_ringing", 0) == 1) {
                m35404k(this.f11978v);
            }
            try {
                Uri mo9314d = this.f11978v ? C21632c.m9330b().mo9314d() : RingtoneManager.getDefaultUri(2);
                AbstractC21603f abstractC21603f = this.f11960d;
                if (abstractC21603f == null) {
                    l.l("deviceUtils");
                    throw null;
                }
                if (abstractC21603f.mo9379f()) {
                    AudioFocusRequest build = new AudioFocusRequest.Builder(3).setAudioAttributes(new AudioAttributes.Builder().setUsage(10).setContentType(0).build()).setAcceptsDelayedFocusGain(false).setWillPauseWhenDucked(false).setOnAudioFocusChangeListener(this, new Handler()).build();
                    this.f11977u = build;
                    AudioManager audioManager2 = this.f11958b;
                    if (audioManager2 == null) {
                        l.l("audioManager");
                        throw null;
                    }
                    i = audioManager2.requestAudioFocus(build);
                } else {
                    AudioManager audioManager3 = this.f11958b;
                    if (audioManager3 == null) {
                        l.l("audioManager");
                        throw null;
                    }
                    i = audioManager3.requestAudioFocus(this, 3, 1);
                }
                this.f11965i = new MediaPlayer();
                AudioManager audioManager4 = this.f11958b;
                if (audioManager4 == null) {
                    l.l("audioManager");
                    throw null;
                }
                int streamVolume = audioManager4.getStreamVolume(2);
                this.f11972p = streamVolume;
                if (streamVolume == 0 || i != 1) {
                    return;
                }
                MediaPlayer mediaPlayer = this.f11965i;
                if (mediaPlayer != null) {
                    mediaPlayer.setDataSource(this, mo9314d);
                }
                AbstractC21603f abstractC21603f2 = this.f11960d;
                if (abstractC21603f2 == null) {
                    l.l("deviceUtils");
                    throw null;
                }
                if (abstractC21603f2.mo9379f()) {
                    AudioAttributes build2 = new AudioAttributes.Builder().setUsage(10).setContentType(0).build();
                    MediaPlayer mediaPlayer2 = this.f11965i;
                    if (mediaPlayer2 != null) {
                        mediaPlayer2.setAudioAttributes(build2);
                    }
                } else {
                    MediaPlayer mediaPlayer3 = this.f11965i;
                    if (mediaPlayer3 != null) {
                        mediaPlayer3.setAudioStreamType(2);
                    }
                }
                MediaPlayer mediaPlayer4 = this.f11965i;
                if (mediaPlayer4 != null) {
                    mediaPlayer4.setLooping(true);
                }
                MediaPlayer mediaPlayer5 = this.f11965i;
                if (mediaPlayer5 != null) {
                    mediaPlayer5.prepare();
                }
                MediaPlayer mediaPlayer6 = this.f11965i;
                if (mediaPlayer6 != null) {
                    mediaPlayer6.start();
                }
                this.f11969m = true;
            } catch (Exception e) {
                StringBuilder m8728C = C22128a.m8728C("Error while Ringing Flash: ");
                m8728C.append(e.getMessage());
                C10480a.m26061I1(new UnmutedException.C4147f(m8728C.toString()));
            }
        }
    }

    /* renamed from: o */
    public final void m35400o() {
        m35398q();
        this.f11968l = new Timer();
        C3917c c3917c = new C3917c();
        Timer timer = this.f11968l;
        if (timer != null) {
            timer.schedule(c3917c, 0L, 100L);
        }
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(int i) {
        try {
            if (this.f11969m) {
                if (i == -3) {
                    m35408g(true);
                } else if (i == 1) {
                    m35408g(false);
                } else if (i == -1 || i == -2) {
                    m35399p();
                }
            }
        } catch (Exception e) {
            C10480a.m26061I1(e);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        l.e(intent, "intent");
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        C21632c c21632c = C21632c.f60288b;
        C21667b.C21672e c21672e = (C21667b.C21672e) C21632c.m9331a().mo9209f(new C21663u(this));
        f mo12378g = c21672e.f60429a.f60392a.mo12378g();
        Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
        this.f11957a = mo12378g;
        this.f11958b = (AudioManager) c21672e.f60430b.get();
        this.f11959c = (AbstractC21597c) c21672e.f60429a.f60404m.get();
        this.f11960d = (AbstractC21603f) c21672e.f60429a.f60403l.get();
        this.f11961e = (AbstractC21606g0) c21672e.f60429a.f60402k.get();
        this.f11962f = (AbstractC21747a) c21672e.f60429a.f60388F.get();
        this.f11963g = (AbstractC21626w) c21672e.f60429a.f60398g.get();
        this.f11964h = C21632c.m9330b();
        this.f11973q.addAction("type_stop_progress");
        this.f11973q.addAction("type_flash_replied");
        this.f11973q.addAction("type_stop_ringer");
        this.f11973q.addAction("type_flash_minimized");
        this.f11973q.addAction("type_flash_active");
        C27062a.m968b(this).m967c(this.f11979w, this.f11973q);
    }

    @Override // android.app.Service
    public void onDestroy() {
        p1 p1Var = this.f11971o;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        C27062a.m968b(this).m965e(this.f11979w);
        this.f11967k.clear();
        m35398q();
        m35399p();
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Bundle extras;
        Flash flash;
        l.e(intent, "intent");
        if (!intent.hasExtra("extra_flash") || (extras = intent.getExtras()) == null || (flash = (Flash) extras.getParcelable("extra_flash")) == null) {
            return 2;
        }
        QueuedFlash queuedFlash = new QueuedFlash();
        queuedFlash.f11991a = flash.f11991a;
        queuedFlash.f11992b = flash.f11992b;
        queuedFlash.f11993c = flash.f11993c;
        queuedFlash.f11994d = flash.f11994d;
        queuedFlash.f11995e = flash.f11995e;
        queuedFlash.f11996f = flash.f11996f;
        queuedFlash.f11997g = flash.f11997g;
        queuedFlash.f11998h = flash.f11998h;
        AbstractC21631b abstractC21631b = this.f11964h;
        if (abstractC21631b == null) {
            l.l("flashManager");
            throw null;
        }
        if (!abstractC21631b.isEnabled()) {
            AbstractC21631b abstractC21631b2 = this.f11964h;
            if (abstractC21631b2 == null) {
                l.l("flashManager");
                throw null;
            } else if (abstractC21631b2.isEnabled()) {
                return 2;
            } else {
                Payload payload = flash.f11996f;
                l.d(payload, "flash.payload");
                String m35382e = payload.m35382e();
                l.d(m35382e, "flash.payload.type");
                if (!l.a(m35382e, "call_me_back")) {
                    return 2;
                }
            }
        }
        AbstractC21626w abstractC21626w = this.f11963g;
        if (abstractC21626w == null) {
            l.l("preferenceUtil");
            throw null;
        }
        abstractC21626w.mo9342j();
        Object systemService = getSystemService(AnalyticsConstants.PHONE);
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        this.f11978v = ((TelephonyManager) systemService).getCallState() == 0;
        try {
            Map<String, QueuedFlash> map = this.f11967k;
            String str = queuedFlash.f11998h;
            l.d(str, "flash.instanceId");
            map.put(str, queuedFlash);
        } catch (IllegalStateException e) {
            StringBuilder m8728C = C22128a.m8728C("Error while adding Flash to the queue ");
            m8728C.append(e.getMessage());
            C10480a.m26061I1(new UnmutedException.C4147f(m8728C.toString()));
        }
        this.f11976t.putExtra("extra_flash", flash);
        C27062a.m968b(this).m966d(this.f11976t);
        this.f11971o = s1.a.a.a.v0.f.d.w2(h1.a, m35409f(), (j0) null, new C3916b(queuedFlash, flash, null), 2, (Object) null);
        return 2;
    }

    /* renamed from: p */
    public final void m35399p() {
        AudioFocusRequest audioFocusRequest;
        AbstractC21603f abstractC21603f;
        MediaPlayer mediaPlayer;
        try {
            if (this.f11969m && (mediaPlayer = this.f11965i) != null) {
                if (mediaPlayer != null) {
                    mediaPlayer.stop();
                }
                MediaPlayer mediaPlayer2 = this.f11965i;
                if (mediaPlayer2 != null) {
                    mediaPlayer2.release();
                }
            }
            audioFocusRequest = this.f11977u;
            abstractC21603f = this.f11960d;
        } catch (IllegalStateException e) {
        }
        if (abstractC21603f == null) {
            l.l("deviceUtils");
            throw null;
        }
        if (!abstractC21603f.mo9379f() || audioFocusRequest == null) {
            AudioManager audioManager = this.f11958b;
            if (audioManager == null) {
                l.l("audioManager");
                throw null;
            }
            audioManager.abandonAudioFocus(this);
        } else {
            AudioManager audioManager2 = this.f11958b;
            if (audioManager2 == null) {
                l.l("audioManager");
                throw null;
            }
            audioManager2.abandonAudioFocusRequest(audioFocusRequest);
        }
        Vibrator vibrator = this.f11966j;
        if (vibrator != null) {
            vibrator.cancel();
        }
        this.f11969m = false;
    }

    /* renamed from: q */
    public final void m35398q() {
        Timer timer = this.f11968l;
        if (timer != null) {
            timer.cancel();
        }
        this.f11968l = null;
    }
}
