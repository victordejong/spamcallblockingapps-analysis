package p459j.p460a.p521j0.p529x;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.provider.Telephony;
import android.telephony.SmsMessage;
import android.text.TextUtils;
import android.view.WindowManager;
import androidx.annotation.UiThread;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.Observer;
import com.mopub.common.Constants;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.messaging.datamodel.action.ReceiveSmsMessageAction;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import gogolook.callgogolook2.messaging.p078ui.dialog.SmsDialogActivity;
import gogolook.callgogolook2.p074ad.AdDataSource;
import gogolook.callgogolook2.p074ad.AdDataSourceImpl;
import gogolook.callgogolook2.p074ad.AdRequestState;
import gogolook.callgogolook2.p074ad.AdStatusController;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.p074ad.AppAdsSettingsUtils;
import gogolook.callgogolook2.phone.call.dialog.CallDialogService;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject;
import gogolook.callgogolook2.realm.obj.vas.VasMessageRealm;
import gogolook.callgogolook2.service.WhoscallService;
import gogolook.callgogolook2.vas.util.SimpleVasInfoPack;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p065f.p071b.C4289a;
import p081h.p160h.p161a.EnumC6184a;
import p081h.p160h.p161a.p169o.C6262a;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p471b1.p472a.C11507b;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12219v;
import p459j.p460a.p530k.AsyncTaskC12839g;
import p459j.p460a.p541n0.p542u.p545c.EnumC13225a;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14042j4;
import p459j.p460a.p582w0.C14060l2;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14122p3;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p582w0.p589f5.C14005a;
import p459j.p460a.p582w0.p590x4.C14247d;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p590x4.C14300r;
import p459j.p460a.p582w0.p590x4.C14310x;
import p459j.p460a.p596x.p599m.C14427a;
import p459j.p460a.p604y0.C14469a;
import p459j.p460a.p604y0.p605c.AbstractC14472a;
import p459j.p460a.p604y0.p610e.C14567a;
import p459j.p460a.p604y0.p610e.C14568b;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p631e0.C14966w;
import p626l.p632u.C15012h0;
import p626l.p634w.AbstractC15037a;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018��2\u00020\u0001:\u0003Z[\\B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u00104\u001a\u0004\u0018\u0001052\u0006\u00106\u001a\u000207H\u0003J \u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020;2\u0006\u0010=\u001a\u00020>H\u0002J\u0010\u0010?\u001a\u0002092\u0006\u0010@\u001a\u00020\u0004H\u0007J)\u0010A\u001a\u0004\u0018\u0001072\u0006\u0010B\u001a\u00020'2\u0010\b\u0002\u0010C\u001a\n\u0012\u0004\u0012\u00020E\u0018\u00010DH\u0007¢\u0006\u0002\u0010FJ+\u0010G\u001a\u0004\u0018\u00010\u00042\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020\u00042\u0006\u0010K\u001a\u00020\u0004H\u0082@ø\u0001��¢\u0006\u0002\u0010LJ\u0010\u0010M\u001a\u0002092\u0006\u00106\u001a\u000207H\u0007J\u0016\u0010N\u001a\u00020;2\u0006\u0010O\u001a\u00020\u00042\u0006\u0010:\u001a\u00020;J\u0010\u0010P\u001a\u0002092\u0006\u0010B\u001a\u00020'H\u0007J\u0010\u0010Q\u001a\u0002092\u0006\u0010R\u001a\u000205H\u0003J\u0018\u0010S\u001a\u0002092\u0006\u00106\u001a\u0002072\u0006\u0010<\u001a\u00020;H\u0002J\u0010\u0010T\u001a\u0002092\u0006\u0010U\u001a\u00020VH\u0003J\u0010\u0010W\u001a\u00020;2\u0006\u0010U\u001a\u00020VH\u0007J\u0010\u0010X\u001a\u0002092\u0006\u0010U\u001a\u00020VH\u0003J\b\u0010Y\u001a\u000209H\u0003R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u0016\u0010\u0006\u001a\n \u0007*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u001b\u0010\u0013\u001a\u00020\u00148FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010!\u001a\u00020\"8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010\u0018\u001a\u0004\b#\u0010$R\u0010\u0010&\u001a\u0004\u0018\u00010'X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010(\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010*\u001a\u00020+8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b.\u0010\u0018\u001a\u0004\b,\u0010-R\u001b\u0010/\u001a\u0002008FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b3\u0010\u0018\u001a\u0004\b1\u00102\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006]"}, m815d2 = {"Lgogolook/callgogolook2/phone/sms/SmsReceivedHandler;", "", "()V", "EXTRA_ERROR_CODE", "", "EXTRA_SUBSCRIPTION", CallAction.DONE_TAG, "kotlin.jvm.PlatformType", "WHOSCALL_SMS_EXTRA_ADDRESS", "WHOSCALL_SMS_EXTRA_CONTENT", "WHOSCALL_SMS_EXTRA_DATE", "WHOSCALL_SMS_EXTRA_FORCESHOW", "WHOSCALL_SMS_EXTRA_OTP", "WHOSCALL_SMS_IS_FAKE", "WHOSCALL_SMS_IS_FAKE_ADDRESS", "WHOSCALL_SMS_IS_FAKE_BODY", "WHOSCALL_SMS_IS_FAKE_IS_CLASS_ZERO", "WHOSCALL_SMS_IS_FROM_DYNAMIC_RECEIVER", "WHOSCALL_SMS_VAS_INFO", "adDataSource", "Lgogolook/callgogolook2/ad/AdDataSource;", "getAdDataSource", "()Lgogolook/callgogolook2/ad/AdDataSource;", "adDataSource$delegate", "Lkotlin/Lazy;", "adRequestTimeoutRunnable", "Ljava/lang/Runnable;", "getAdRequestTimeoutRunnable", "()Ljava/lang/Runnable;", "exceptionHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "handler", "Landroid/os/Handler;", "mainScope", "Lkotlinx/coroutines/CoroutineScope;", "getMainScope", "()Lkotlinx/coroutines/CoroutineScope;", "mainScope$delegate", "pendingWhoscallSmsIntent", "Landroid/content/Intent;", "receiveSmsActionListener", "Lgogolook/callgogolook2/messaging/datamodel/action/ReceiveSmsMessageAction$ReceiveSmsMessageActionListener;", "smsDataMutex", "Lkotlinx/coroutines/sync/Mutex;", "getSmsDataMutex", "()Lkotlinx/coroutines/sync/Mutex;", "smsDataMutex$delegate", "smsDataSource", "Lgogolook/callgogolook2/phone/sms/SmsDataSource;", "getSmsDataSource", "()Lgogolook/callgogolook2/phone/sms/SmsDataSource;", "smsDataSource$delegate", "buildVasMessage", "Lgogolook/callgogolook2/realm/obj/vas/VasMessageRealm;", "nativeSmsData", "Lgogolook/callgogolook2/phone/sms/NativeSmsData;", "checkShouldShowType", "", "isContact", "", "isVasMessage", "callback", "Lgogolook/callgogolook2/phone/sms/SmsReceivedHandler$CheckShouldShowUITypeCallback;", "clearPendingSmsDialogIntent", "conversationId", "composeNativeSmsData", Constants.INTENT_SCHEME, NotificationCompat.CarExtender.KEY_MESSAGES, "", "Landroid/telephony/SmsMessage;", "(Landroid/content/Intent;[Landroid/telephony/SmsMessage;)Lgogolook/callgogolook2/phone/sms/NativeSmsData;", "getTelephonyLastInboxSmsUri", "context", "Landroid/content/Context;", "address", "body", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "handleClassZeroSms", "needToShowAd", "number", "processSmsIntent", "saveVasMessage", "vasMessageRealm", "sendBlockedSmsStatusValue", "sendCarrierTracking", "whoscallSmsData", "Lgogolook/callgogolook2/phone/sms/WhoscallSmsData;", "sendNotification", "setSmsStatusEventValue", "showSmsDialog", "CheckShouldShowUITypeCallback", "ShouldShowUIType", "TrackingData", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.j0.x.l */
/* loaded from: classes3-dex2jar.jar:j/a/j0/x/l.class */
public final class C12780l {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f28843a;

    /* renamed from: i */
    public static volatile Intent f28851i;

    /* renamed from: k */
    public static final C12780l f28853k = new C12780l();

    /* renamed from: b */
    public static final String f28844b = C12780l.class.getSimpleName();

    /* renamed from: c */
    public static final AbstractC14974f f28845c = C14975g.m662a(C12785e.f28863a);

    /* renamed from: d */
    public static final AbstractC14974f f28846d = C14975g.m662a(C12790i.f28875a);

    /* renamed from: e */
    public static final AbstractC14974f f28847e = C14975g.m662a(C12798o.f28900a);

    /* renamed from: f */
    public static final CoroutineExceptionHandler f28848f = new C12781a(CoroutineExceptionHandler.Key);

    /* renamed from: g */
    public static final Handler f28849g = new Handler(Looper.getMainLooper());

    /* renamed from: h */
    public static final AbstractC14974f f28850h = C14975g.m662a(C12799p.f28901a);

    /* renamed from: j */
    public static final ReceiveSmsMessageAction.AbstractC4641c f28852j = C12794m.f28880a;

    /* renamed from: j.a.j0.x.l$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/l$a.class */
    public static final class C12781a extends AbstractC15037a implements CoroutineExceptionHandler {
        public C12781a(AbstractC15049g.AbstractC15054c cVar) {
            super(cVar);
        }

        @Override // kotlinx.coroutines.CoroutineExceptionHandler
        public void handleException(AbstractC15049g gVar, Throwable th) {
            C14060l2.m2705a(th);
        }
    }

    /* renamed from: j.a.j0.x.l$b */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/l$b.class */
    public interface AbstractC12782b {
        /* renamed from: a */
        void mo5284a(EnumC12783c cVar);
    }

    /* renamed from: j.a.j0.x.l$c */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/l$c.class */
    public enum EnumC12783c {
        NONE,
        SMS_DIALOG,
        SMS_REMINDER_NOTIFICATION
    }

    /* renamed from: j.a.j0.x.l$d */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/l$d.class */
    public static final class C12784d {

        /* renamed from: a */
        public Boolean f28858a;

        /* renamed from: b */
        public C13930d f28859b;

        /* renamed from: c */
        public Long f28860c;

        /* renamed from: d */
        public Long f28861d;

        /* renamed from: e */
        public Long f28862e;

        public C12784d() {
            this(null, null, null, null, null, 31, null);
        }

        public C12784d(Boolean bool, C13930d dVar, Long l, Long l2, Long l3) {
            this.f28858a = bool;
            this.f28859b = dVar;
            this.f28860c = l;
            this.f28861d = l2;
            this.f28862e = l3;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ C12784d(java.lang.Boolean r8, p459j.p460a.p582w0.p585b5.C13930d r9, java.lang.Long r10, java.lang.Long r11, java.lang.Long r12, int r13, p626l.p641z.p643d.C15145g r14) {
            /*
                r7 = this;
                r0 = r13
                r1 = 1
                r0 = r0 & r1
                if (r0 == 0) goto L_0x000c
                r0 = 0
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                r8 = r0
            L_0x000c:
                r0 = 0
                r14 = r0
                r0 = r13
                r1 = 2
                r0 = r0 & r1
                if (r0 == 0) goto L_0x001b
                r0 = 0
                r9 = r0
                goto L_0x001b
            L_0x001b:
                r0 = r13
                r1 = 4
                r0 = r0 & r1
                if (r0 == 0) goto L_0x0027
                r0 = 0
                r10 = r0
                goto L_0x0027
            L_0x0027:
                r0 = r13
                r1 = 8
                r0 = r0 & r1
                if (r0 == 0) goto L_0x0035
                r0 = 0
                r11 = r0
                goto L_0x0035
            L_0x0035:
                r0 = r13
                r1 = 16
                r0 = r0 & r1
                if (r0 == 0) goto L_0x0044
                r0 = r14
                r12 = r0
                goto L_0x0044
            L_0x0044:
                r0 = r7
                r1 = r8
                r2 = r9
                r3 = r10
                r4 = r11
                r5 = r12
                r0.<init>(r1, r2, r3, r4, r5)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p521j0.p529x.C12780l.C12784d.<init>(java.lang.Boolean, j.a.w0.b5.d, java.lang.Long, java.lang.Long, java.lang.Long, int, l.z.d.g):void");
        }

        /* renamed from: a */
        public final Long m5298a() {
            return this.f28862e;
        }

        /* renamed from: a */
        public final void m5297a(Long l) {
            this.f28862e = l;
        }

        /* renamed from: b */
        public final Long m5296b() {
            return this.f28861d;
        }

        /* renamed from: b */
        public final void m5295b(Long l) {
            this.f28861d = l;
        }

        /* renamed from: c */
        public final Long m5294c() {
            return this.f28860c;
        }

        /* renamed from: c */
        public final void m5293c(Long l) {
            this.f28860c = l;
        }

        /* renamed from: d */
        public final C13930d m5292d() {
            return this.f28859b;
        }

        /* renamed from: e */
        public final Boolean m5291e() {
            return this.f28858a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C12784d)) {
                return false;
            }
            C12784d dVar = (C12784d) obj;
            return C15149k.m384a(this.f28858a, dVar.f28858a) && C15149k.m384a(this.f28859b, dVar.f28859b) && C15149k.m384a(this.f28860c, dVar.f28860c) && C15149k.m384a(this.f28861d, dVar.f28861d) && C15149k.m384a(this.f28862e, dVar.f28862e);
        }

        public int hashCode() {
            Boolean bool = this.f28858a;
            int i = 0;
            int hashCode = bool != null ? bool.hashCode() : 0;
            C13930d dVar = this.f28859b;
            int hashCode2 = dVar != null ? dVar.hashCode() : 0;
            Long l = this.f28860c;
            int hashCode3 = l != null ? l.hashCode() : 0;
            Long l2 = this.f28861d;
            int hashCode4 = l2 != null ? l2.hashCode() : 0;
            Long l3 = this.f28862e;
            if (l3 != null) {
                i = l3.hashCode();
            }
            return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
        }

        public String toString() {
            return "TrackingData(isFromDynamicReceiver=" + this.f28858a + ", timeProbe=" + this.f28859b + ", receiveSmsActionQueueTime=" + this.f28860c + ", receiveSmsActionExecuteStartTime=" + this.f28861d + ", receiveSmsActionExecuteEndTime=" + this.f28862e + ")";
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m815d2 = {"<anonymous>", "Lgogolook/callgogolook2/ad/AdDataSourceImpl;", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.j0.x.l$e */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/l$e.class */
    public static final class C12785e extends AbstractC15150l implements AbstractC15107a<AdDataSourceImpl> {

        /* renamed from: a */
        public static final C12785e f28863a = new C12785e();

        /* renamed from: j.a.j0.x.l$e$a */
        /* loaded from: classes3-dex2jar.jar:j/a/j0/x/l$e$a.class */
        public static final class C12786a<T> implements Observer<AdRequestState> {

            /* renamed from: a */
            public static final C12786a f28864a = new C12786a();

            /* renamed from: a */
            public final void onChanged(AdRequestState adRequestState) {
                if (adRequestState instanceof AdRequestState.Start) {
                    C14247d.f31867v.m2022e(adRequestState.m28847a());
                } else if (adRequestState instanceof AdRequestState.Requesting) {
                    C14247d.f31867v.m2037a(adRequestState.m28847a(), C6262a.EnumC6267e.AD_REQUESTING.m23446a());
                } else if (adRequestState instanceof AdRequestState.End) {
                    C12780l lVar = C12780l.f28853k;
                    C12780l.f28849g.removeCallbacksAndMessages(null);
                    C14247d.f31867v.m2037a(adRequestState.m28847a(), ((AdRequestState.End) adRequestState).m28846b());
                    C12780l.f28853k.m5302f();
                }
            }
        }

        public C12785e() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final AdDataSourceImpl invoke() {
            AdDataSourceImpl adDataSourceImpl = new AdDataSourceImpl();
            adDataSourceImpl.mo28870a().observeForever(C12786a.f28864a);
            return adDataSourceImpl;
        }
    }

    /* renamed from: j.a.j0.x.l$f */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/l$f.class */
    public static final class RunnableC12787f implements Runnable {

        /* renamed from: a */
        public static final RunnableC12787f f28865a = new RunnableC12787f();

        @Override // java.lang.Runnable
        public final void run() {
            C12780l.f28853k.m5302f();
        }
    }

    /* renamed from: j.a.j0.x.l$g */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/l$g.class */
    public static final class C12788g implements CallUtils.AbstractC4992k {

        /* renamed from: a */
        public final /* synthetic */ boolean f28866a;

        /* renamed from: b */
        public final /* synthetic */ boolean f28867b;

        /* renamed from: c */
        public final /* synthetic */ boolean f28868c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC12782b f28869d;

        public C12788g(boolean z, boolean z2, boolean z3, AbstractC12782b bVar) {
            this.f28866a = z;
            this.f28867b = z2;
            this.f28868c = z3;
            this.f28869d = bVar;
        }

        @Override // gogolook.callgogolook2.phone.call.dialog.CallUtils.AbstractC4992k
        /* renamed from: a */
        public final void mo5289a(boolean z) {
            if (z) {
                C14310x.f32065c.m1619a("dialog_popup", "no_show_full_screen");
            }
            boolean z2 = z || this.f28866a;
            boolean z3 = false;
            if (this.f28867b) {
                z3 = false;
                if (this.f28868c) {
                    z3 = true;
                }
            }
            if (z3 && !z2) {
                C14310x.f32065c.m1619a("dialog_popup", "show_dialog");
                this.f28869d.mo5284a(EnumC12783c.SMS_DIALOG);
            } else if (z2) {
                this.f28869d.mo5284a(EnumC12783c.SMS_REMINDER_NOTIFICATION);
            } else {
                this.f28869d.mo5284a(EnumC12783c.NONE);
            }
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/phone/sms/SmsReceivedHandler$getTelephonyLastInboxSmsUri$2", m472f = "SmsReceivedHandler.kt", m471l = {636}, m470m = "invokeSuspend")
    /* renamed from: j.a.j0.x.l$h */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/l$h.class */
    public static final class C12789h extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super String>, Object> {

        /* renamed from: a */
        public CoroutineScope f28870a;

        /* renamed from: b */
        public int f28871b;

        /* renamed from: c */
        public final /* synthetic */ Context f28872c;

        /* renamed from: d */
        public final /* synthetic */ String f28873d;

        /* renamed from: e */
        public final /* synthetic */ String f28874e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12789h(Context context, String str, String str2, AbstractC15044d dVar) {
            super(2, dVar);
            this.f28872c = context;
            this.f28873d = str;
            this.f28874e = str2;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C12789h hVar = new C12789h(this.f28872c, this.f28873d, this.f28874e, dVar);
            hVar.f28870a = (CoroutineScope) obj;
            return hVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super String> dVar) {
            return ((C12789h) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        /* JADX WARN: Removed duplicated region for block: B:33:0x00cd  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0123  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x00e5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                Method dump skipped, instructions count: 318
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p521j0.p529x.C12780l.C12789h.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: j.a.j0.x.l$i */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/l$i.class */
    public static final class C12790i extends AbstractC15150l implements AbstractC15107a<CoroutineScope> {

        /* renamed from: a */
        public static final C12790i f28875a = new C12790i();

        public C12790i() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final CoroutineScope invoke() {
            CoroutineScope plus = CoroutineScopeKt.plus(CoroutineScopeKt.MainScope(), new CoroutineName("SmsReceiverHandler.Main"));
            C12780l lVar = C12780l.f28853k;
            return CoroutineScopeKt.plus(plus, C12780l.f28848f);
        }
    }

    /* renamed from: j.a.j0.x.l$j */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/l$j.class */
    public static final class C12791j<T> implements Single.OnSubscribe<C12755b> {

        /* renamed from: a */
        public final /* synthetic */ boolean f28876a;

        /* renamed from: b */
        public final /* synthetic */ Intent f28877b;

        public C12791j(boolean z, Intent intent) {
            this.f28876a = z;
            this.f28877b = intent;
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super C12755b> singleSubscriber) {
            C12755b bVar;
            if (this.f28876a) {
                Intent intent = this.f28877b;
                SmsMessage[] smsMessageArr = new SmsMessage[1];
                int length = smsMessageArr.length;
                for (int i = 0; i < length; i++) {
                    smsMessageArr[i] = new C4289a(this.f28877b.getStringExtra("whoscall_sms_is_fake_address"), this.f28877b.getStringExtra("whoscall_sms_is_fake_body"), this.f28877b.getBooleanExtra("whoscall_sms_is_fake_is_class_zero", false) ? SmsMessage.MessageClass.CLASS_0 : SmsMessage.MessageClass.CLASS_1);
                }
                bVar = C12780l.m5330a(intent, smsMessageArr);
            } else {
                bVar = C12780l.m5329a(this.f28877b, (SmsMessage[]) null, 2, (Object) null);
            }
            singleSubscriber.onSuccess(bVar);
        }
    }

    /* renamed from: j.a.j0.x.l$k */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/l$k.class */
    public static final class C12792k<T> implements Action1<C12755b> {

        /* renamed from: a */
        public static final C12792k f28878a = new C12792k();

        /* renamed from: a */
        public final void call(C12755b bVar) {
            if (bVar == null) {
                return;
            }
            if (!C12810o.m5236i() || !bVar.m5418f()) {
                C12784d e = bVar.m5419e();
                if (e != null) {
                    e.m5293c(Long.valueOf(System.currentTimeMillis()));
                }
                C12780l lVar = C12780l.f28853k;
                ReceiveSmsMessageAction.m27672a(bVar, C12780l.f28852j);
                return;
            }
            C12780l.m5311c(bVar);
        }
    }

    /* renamed from: j.a.j0.x.l$l */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/l$l.class */
    public static final class C12793l<T> implements Action1<Throwable> {

        /* renamed from: a */
        public static final C12793l f28879a = new C12793l();

        /* renamed from: a */
        public final void call(Throwable th) {
            C13973d4.m2952a(th);
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\bH\n¢\u0006\u0002\b\n"}, m815d2 = {"<anonymous>", "", "isBlocked", "", "nativeSmsData", "Lgogolook/callgogolook2/phone/sms/NativeSmsData;", "kotlin.jvm.PlatformType", "conversationId", "", "messageId", "onActionComplete"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.j0.x.l$m */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/l$m.class */
    public static final class C12794m implements ReceiveSmsMessageAction.AbstractC4641c {

        /* renamed from: a */
        public static final C12794m f28880a = new C12794m();

        /* renamed from: j.a.j0.x.l$m$a */
        /* loaded from: classes3-dex2jar.jar:j/a/j0/x/l$m$a.class */
        public static final class C12795a implements AbstractC12782b {

            /* renamed from: a */
            public final /* synthetic */ C12755b f28881a;

            /* renamed from: b */
            public final /* synthetic */ Context f28882b;

            /* renamed from: c */
            public final /* synthetic */ String f28883c;

            /* renamed from: d */
            public final /* synthetic */ boolean f28884d;

            public C12795a(C12755b bVar, Context context, String str, boolean z) {
                this.f28881a = bVar;
                this.f28882b = context;
                this.f28883c = str;
                this.f28884d = z;
            }

            @Override // p459j.p460a.p521j0.p529x.C12780l.AbstractC12782b
            /* renamed from: a */
            public void mo5284a(EnumC12783c cVar) {
                C13930d d;
                C15149k.m377b(cVar, IapProductRealmObject.STATE);
                C12784d e = this.f28881a.m5419e();
                if (!(e == null || (d = e.m5292d()) == null)) {
                    d.m3017f();
                }
                if (cVar != EnumC12783c.NONE) {
                    C12780l lVar = C12780l.f28853k;
                    SmsDialogActivity.C4776a aVar = SmsDialogActivity.f11781j;
                    Context context = this.f28882b;
                    C15149k.m383a((Object) context, "context");
                    C12780l.f28851i = aVar.m27046a(context, this.f28883c);
                    int i = C12800m.f28902a[cVar.ordinal()];
                    if (i == 1) {
                        C12778k.m5340a(MyApplication.m29013o());
                        if (!C12780l.f28853k.m5319a(this.f28881a.m5425a(), this.f28884d)) {
                            C12780l.f28853k.m5302f();
                        } else if (!C12780l.f28853k.m5333a().mo28867a(AdUnit.SMS)) {
                            C14247d.f31867v.m2040a(AdUnit.SMS);
                            AdDataSource a = C12780l.f28853k.m5333a();
                            Context o = MyApplication.m29013o();
                            C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
                            a.mo28869a(o, AdUnit.SMS, C15012h0.m593b(EnumC6184a.AOTTER_TREK, EnumC6184a.NATIVE));
                            C12780l lVar2 = C12780l.f28853k;
                            C12780l.f28849g.postDelayed(C12780l.f28853k.m5317b(), AppAdsSettingsUtils.INSTANCE.m28782c());
                        }
                    } else if (i == 2) {
                        SmsDialogActivity.f11781j.m27043a(this.f28883c);
                        C12778k.m5338a(MyApplication.m29013o(), this.f28881a.m5425a());
                    }
                }
            }
        }

        @AbstractC15070f(m473c = "gogolook/callgogolook2/phone/sms/SmsReceivedHandler$receiveSmsActionListener$1$2", m472f = "SmsReceivedHandler.kt", m471l = {243, 245, 677, C14427a.f32275e}, m470m = "invokeSuspend")
        /* renamed from: j.a.j0.x.l$m$b */
        /* loaded from: classes3-dex2jar.jar:j/a/j0/x/l$m$b.class */
        public static final class C12796b extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

            /* renamed from: a */
            public CoroutineScope f28885a;

            /* renamed from: b */
            public Object f28886b;

            /* renamed from: c */
            public Object f28887c;

            /* renamed from: d */
            public Object f28888d;

            /* renamed from: e */
            public Object f28889e;

            /* renamed from: f */
            public int f28890f;

            /* renamed from: g */
            public long f28891g;

            /* renamed from: h */
            public int f28892h;

            /* renamed from: i */
            public final /* synthetic */ Context f28893i;

            /* renamed from: j */
            public final /* synthetic */ C12755b f28894j;

            /* renamed from: k */
            public final /* synthetic */ String f28895k;

            /* renamed from: l */
            public final /* synthetic */ String f28896l;

            /* renamed from: m */
            public final /* synthetic */ String f28897m;

            /* renamed from: n */
            public final /* synthetic */ SimpleVasInfoPack f28898n;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12796b(Context context, C12755b bVar, String str, String str2, String str3, SimpleVasInfoPack simpleVasInfoPack, AbstractC15044d dVar) {
                super(2, dVar);
                this.f28893i = context;
                this.f28894j = bVar;
                this.f28895k = str;
                this.f28896l = str2;
                this.f28897m = str3;
                this.f28898n = simpleVasInfoPack;
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
                C15149k.m377b(dVar, "completion");
                C12796b bVar = new C12796b(this.f28893i, this.f28894j, this.f28895k, this.f28896l, this.f28897m, this.f28898n, dVar);
                bVar.f28885a = (CoroutineScope) obj;
                return bVar;
            }

            @Override // p626l.p641z.p642c.AbstractC15122p
            public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
                return ((C12796b) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
            }

            /* JADX WARN: Finally extract failed */
            /* JADX WARN: Not initialized variable reg: 14, insn: 0x0252: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r14 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:88:0x0252 */
            /* JADX WARN: Removed duplicated region for block: B:65:0x01e4  */
            /* JADX WARN: Removed duplicated region for block: B:67:0x01e6  */
            /* JADX WARN: Removed duplicated region for block: B:71:0x0201  */
            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r9) {
                /*
                    Method dump skipped, instructions count: 612
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p521j0.p529x.C12780l.C12794m.C12796b.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x004e  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0069  */
        @Override // gogolook.callgogolook2.messaging.datamodel.action.ReceiveSmsMessageAction.AbstractC4641c
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo5285a(boolean r14, p459j.p460a.p521j0.p529x.C12755b r15, java.lang.String r16, java.lang.String r17) {
            /*
                Method dump skipped, instructions count: 207
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p521j0.p529x.C12780l.C12794m.mo5285a(boolean, j.a.j0.x.b, java.lang.String, java.lang.String):void");
        }
    }

    /* renamed from: j.a.j0.x.l$n */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/l$n.class */
    public static final class C12797n extends AbstractC15150l implements AbstractC15118l<Throwable, C14989s> {

        /* renamed from: a */
        public static final C12797n f28899a = new C12797n();

        public C12797n() {
            super(1);
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Throwable th) {
            invoke2(th);
            return C14989s.f33022a;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(Throwable th) {
            C12755b f;
            C12784d e;
            C15149k.m377b(th, "throwable");
            ArrayList arrayList = new ArrayList();
            arrayList.add("is default sms: " + C12810o.m5236i());
            C12817p value = C12780l.f28853k.m5305e().mo5401a().getValue();
            if (!(value == null || (f = value.m5216f()) == null || (e = f.m5419e()) == null)) {
                arrayList.add("is from dynamic receiver: " + e.m5291e());
                StringBuilder sb = new StringBuilder();
                C13930d d = e.m5292d();
                sb.append(d != null ? Long.valueOf(d.m3025a()) : null);
                sb.append(" ms elapsed");
                arrayList.add(sb.toString());
                Long b = e.m5296b();
                long j = 0;
                long longValue = b != null ? b.longValue() : 0L;
                if (longValue > 0) {
                    Long c = e.m5294c();
                    long longValue2 = c != null ? c.longValue() : 0L;
                    if (longValue > longValue2) {
                        arrayList.add("ReceiveSmsMessageAction delay " + (longValue - longValue2) + " ms after queue");
                    }
                    Long a = e.m5298a();
                    if (a != null) {
                        j = a.longValue();
                    }
                    if (j > longValue) {
                        arrayList.add("ReceiveSmsMessageAction spend " + (j - longValue) + " ms to execute");
                    }
                }
            }
            arrayList.add("is WhoscallService running: " + C14122p3.m2451a(WhoscallService.class));
            C13973d4.m2950a(th, arrayList);
        }
    }

    /* renamed from: j.a.j0.x.l$o */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/l$o.class */
    public static final class C12798o extends AbstractC15150l implements AbstractC15107a<Mutex> {

        /* renamed from: a */
        public static final C12798o f28900a = new C12798o();

        public C12798o() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Mutex invoke() {
            return MutexKt.Mutex$default(false, 1, null);
        }
    }

    /* renamed from: j.a.j0.x.l$p */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/l$p.class */
    public static final class C12799p extends AbstractC15150l implements AbstractC15107a<C12760g> {

        /* renamed from: a */
        public static final C12799p f28901a = new C12799p();

        public C12799p() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C12760g invoke() {
            return new C12760g();
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C12780l.class), "adDataSource", "getAdDataSource()Lgogolook/callgogolook2/ad/AdDataSource;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(C12780l.class), "mainScope", "getMainScope()Lkotlinx/coroutines/CoroutineScope;");
        C15131a0.m412a(sVar2);
        C15157s sVar3 = new C15157s(C15131a0.m419a(C12780l.class), "smsDataMutex", "getSmsDataMutex()Lkotlinx/coroutines/sync/Mutex;");
        C15131a0.m412a(sVar3);
        C15157s sVar4 = new C15157s(C15131a0.m419a(C12780l.class), "smsDataSource", "getSmsDataSource()Lgogolook/callgogolook2/phone/sms/SmsDataSource;");
        C15131a0.m412a(sVar4);
        f28843a = new AbstractC14906i[]{sVar, sVar2, sVar3, sVar4};
    }

    /* renamed from: a */
    public static final C12755b m5330a(Intent intent, SmsMessage[] smsMessageArr) {
        C13930d dVar;
        C15149k.m377b(intent, Constants.INTENT_SCHEME);
        int a = AbstractC12181l0.m6886t().mo6880a(intent, "subscription");
        if (smsMessageArr == null) {
            return null;
        }
        if (smsMessageArr.length == 0) {
            return null;
        }
        if (C11834j.m8071h()) {
            C12219v.m6733a(smsMessageArr[0].getTimestampMillis(), smsMessageArr, null);
        }
        boolean z = smsMessageArr[0].getMessageClass() == SmsMessage.MessageClass.CLASS_0;
        if (!z) {
            dVar = new C13930d();
            dVar.m3018e();
        } else {
            dVar = null;
        }
        String displayOriginatingAddress = smsMessageArr[0].getDisplayOriginatingAddress();
        if (displayOriginatingAddress == null) {
            displayOriginatingAddress = ParticipantData.m27546L();
        }
        StringBuilder sb = new StringBuilder();
        for (SmsMessage smsMessage : smsMessageArr) {
            if (smsMessage != null && !C14217x3.m2160b(smsMessage.getDisplayMessageBody())) {
                sb.append(smsMessage.getDisplayMessageBody());
            }
        }
        String sb2 = sb.toString();
        C15149k.m383a((Object) sb2, "bodyBuilder.toString()");
        String a2 = C14966w.m718a(sb2, "\\f", "\\n", false, 4, (Object) null);
        ContentValues a3 = C11834j.m8123a(MyApplication.m29013o(), smsMessageArr, intent.getIntExtra("errorCode", 0));
        Long a4 = C11834j.m8117a(smsMessageArr[0], System.currentTimeMillis());
        if (a4 != null) {
            a3.put("date", Long.valueOf(a4.longValue()));
            a3.put("read", (Integer) 0);
            a3.put("seen", (Integer) 0);
            if (C14017g4.m2804t()) {
                a3.put("sub_id", Integer.valueOf(a));
            }
            String e = C13891a.m3151k() ? C14005a.m2877e(a2) : null;
            boolean booleanExtra = intent.getBooleanExtra("whoscall_sms_is_from_dynamic_receiver", false);
            C15149k.m383a((Object) displayOriginatingAddress, "address");
            C15149k.m383a((Object) a3, "messageValues");
            return new C12755b(displayOriginatingAddress, a2, z, a, a3, C12810o.m5243c(a2), e, new C12784d(Boolean.valueOf(booleanExtra), dVar, null, null, null, 28, null));
        }
        C15149k.m378b();
        throw null;
    }

    /* renamed from: a */
    public static /* synthetic */ C12755b m5329a(Intent intent, SmsMessage[] smsMessageArr, int i, Object obj) {
        if ((i & 2) != 0) {
            smsMessageArr = Telephony.Sms.Intents.getMessagesFromIntent(intent);
        }
        return m5330a(intent, smsMessageArr);
    }

    /* renamed from: a */
    public static final void m5331a(Intent intent) {
        C15149k.m377b(intent, Constants.INTENT_SCHEME);
        Single.create(new C12791j(intent.getBooleanExtra("whoscall_sms_is_fake", false), intent)).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(C12792k.f28878a, C12793l.f28879a);
    }

    @UiThread
    /* renamed from: a */
    public static final void m5320a(String str) {
        C15149k.m377b(str, "conversationId");
        Intent intent = f28851i;
        if (intent != null && SmsDialogActivity.f11781j.m27045a(intent, str)) {
            f28851i = null;
        }
    }

    /* renamed from: b */
    public static final VasMessageRealm m5315b(C12755b bVar) {
        VasMessageRealm vasMessageRealm;
        Context o = MyApplication.m29013o();
        String l = C14108o4.m2474l(bVar.m5425a());
        C14568b a = C14568b.f32555v.m1093a();
        C15149k.m383a((Object) l, "e164");
        Boolean h = a.m1094h(l);
        if (h == null || !h.booleanValue()) {
            int i = C14568b.f32544k;
            C14289m.m1910a(i, i, i, l);
            vasMessageRealm = null;
        } else {
            C14567a a2 = C14568b.f32555v.m1093a().m1108a(l, bVar.m5423b());
            VasMessageRealm vasMessageRealm2 = new VasMessageRealm(0L, 0, 0, 0, null, null, 0L, null, 0, 0.0d, 0, null, 4095, null);
            vasMessageRealm2.setE164(l);
            vasMessageRealm2.setSubscriptionType(C14568b.f32555v.m1093a().m1099d(l, bVar.m5423b()));
            vasMessageRealm2.setPromotionType(C14568b.f32555v.m1093a().m1102c(l, bVar.m5423b()));
            vasMessageRealm2.setCancelType(C14568b.f32555v.m1093a().m1105b(l, bVar.m5423b()));
            vasMessageRealm2.setContent(bVar.m5423b());
            vasMessageRealm2.setTime(System.currentTimeMillis());
            vasMessageRealm2.setPrice(C14568b.f32555v.m1093a().m1095g(bVar.m5423b()));
            String f = C14568b.f32555v.m1093a().m1096f(bVar.m5423b());
            EnumC13225a.C13226a aVar = EnumC13225a.f29798g;
            C15149k.m383a((Object) o, "context");
            vasMessageRealm2.setPeriod(aVar.m4385a(o, f).name());
            if (a2 != null) {
                vasMessageRealm2.setName(String.valueOf(a2.m1115a()));
                if (vasMessageRealm2.getPrice() <= 0) {
                    vasMessageRealm2.setPrice(a2.m1112d());
                    vasMessageRealm2.setPriceType(C14568b.f32550q);
                }
                if (TextUtils.isEmpty(f)) {
                    vasMessageRealm2.setPeriod(EnumC13225a.f29798g.m4385a(o, a2.m1113c()).name());
                    vasMessageRealm2.setPeriodType(C14568b.f32550q);
                }
            }
            C14289m.m1910a(vasMessageRealm2.getSubscriptionType(), vasMessageRealm2.getPromotionType(), vasMessageRealm2.getCancelType(), l);
            vasMessageRealm = vasMessageRealm2;
        }
        return vasMessageRealm;
    }

    /* renamed from: b */
    public static final void m5316b(VasMessageRealm vasMessageRealm) {
        if (!C13915b3.m3059b("vas_first_scan")) {
            C14469a aVar = C14469a.f32370a;
            Context o = MyApplication.m29013o();
            C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
            aVar.m1271a(o).mo1263a(vasMessageRealm, (AbstractC14472a.AbstractC14473a<Integer>) null);
        }
    }

    /* renamed from: c */
    public static final void m5311c(C12755b bVar) {
        C15149k.m377b(bVar, "nativeSmsData");
        AbstractC11516a n = AbstractC11516a.m9413n();
        C15149k.m383a((Object) n, "Factory.get()");
        n.mo9398k().mo7079a(MyApplication.m29013o(), bVar.m5421c());
    }

    /* renamed from: c */
    public static final void m5309c(C12817p pVar) {
        NumberInfo g;
        NumberInfo g2;
        try {
            Context o = MyApplication.m29013o();
            RowInfo g3 = pVar.m5215g();
            if (g3 != null && (g = g3.m28226g()) != null) {
                if ((C14017g4.m2830F() || C14017g4.m2829G()) && (!C15149k.m384a((Object) pVar.m5216f().m5425a(), (Object) ""))) {
                    RowInfo g4 = pVar.m5215g();
                    String str = null;
                    if (C14217x3.m2160b((g4 == null || (g2 = g4.m28226g()) == null) ? null : g2.m28377S())) {
                        return;
                    }
                    if (!g.m28372X() || (g.m28372X() && !g.m28329f0())) {
                        RowInfo g5 = pVar.m5215g();
                        if (g5 != null) {
                            str = g5.m28269a();
                        }
                        if (!C14217x3.m2160b(str) && C14217x3.m2137h(o)) {
                            C14217x3.m2181a(new AsyncTaskC12839g(o, pVar.m5216f().m5425a(), g.m28377S(), pVar.m5216f().m5423b(), false, null));
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public static final boolean m5306d(C12817p pVar) {
        C15149k.m377b(pVar, "whoscallSmsData");
        boolean z = true;
        if (C12810o.m5232m() || C12810o.m5236i()) {
            C12810o.m5247b(pVar);
        } else if (C12810o.f28921a.m5251a(pVar.m5216f().m5417g())) {
            Context o = MyApplication.m29013o();
            C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
            C12810o.m5262a(o, pVar);
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: e */
    public static final void m5303e(C12817p pVar) {
        String a = pVar.m5224a();
        boolean z = false;
        boolean z2 = !(a == null || C14966w.m724a((CharSequence) a));
        RowInfo g = pVar.m5215g();
        String str = null;
        String d = g != null ? g.m28234d() : null;
        if (d == null) {
            d = "";
        }
        RowInfo g2 = pVar.m5215g();
        NumberInfo g3 = g2 != null ? g2.m28226g() : null;
        String f = z2 ? C14217x3.m2142f(MyApplication.m29013o(), pVar.m5224a()) : C14108o4.m2493a(pVar.m5216f().m5425a(), true, false);
        C14310x xVar = C14310x.f32065c;
        xVar.m1619a("sms_type", 1);
        xVar.m1619a("contact", Boolean.valueOf(z2));
        xVar.m1619a("enable_default_sms", Boolean.valueOf(C12810o.m5236i()));
        xVar.m1619a("remote_e164", d);
        xVar.m1619a("spam_category", g3 != null ? g3.m28383M() : null);
        xVar.m1619a(CacheIndexRealmObject.DISPLAY_NAME, f);
        xVar.m1619a("s_spam", Boolean.valueOf(g3 != null && g3.m28381O() > 0));
        if (g3 != null) {
            str = g3.m28393C();
        }
        xVar.m1619a("s_name", str);
        String a2 = C14042j4.m2727a(d);
        if (a2 == null || C14966w.m724a((CharSequence) a2)) {
            z = true;
        }
        xVar.m1619a("c_spam", Boolean.valueOf(!z));
        xVar.m1619a("c_name", C14042j4.m2727a(d));
    }

    /* renamed from: a */
    public final AdDataSource m5333a() {
        AbstractC14974f fVar = f28845c;
        AbstractC14906i iVar = f28843a[0];
        return (AdDataSource) fVar.getValue();
    }

    /* renamed from: a */
    public final /* synthetic */ Object m5332a(Context context, String str, String str2, AbstractC15044d<? super String> dVar) {
        return BuildersKt.withContext(Dispatchers.getIO(), new C12789h(context, str, str2, null), dVar);
    }

    /* renamed from: a */
    public final void m5326a(C12755b bVar, boolean z) {
        String l = C14108o4.m2474l(bVar.m5425a());
        String c = C14217x3.m2155c(MyApplication.m29013o(), l);
        boolean z2 = !C14217x3.m2160b(c);
        String f = z2 ? C14217x3.m2142f(MyApplication.m29013o(), c) : C14108o4.m2493a(bVar.m5425a(), true, false);
        NumberInfo a = C11052i.m10328e().m10339a(l, false);
        C11507b bVar2 = C13978e.f31386a;
        String str = null;
        boolean a2 = z ? C11507b.m9467a(bVar2, "isVasSmsPopup", (Boolean) null, 2, (Object) null) : z2 ? C11507b.m9467a(bVar2, "isContactSmsPopup", (Boolean) null, 2, (Object) null) : C11507b.m9467a(bVar2, "isStrangerSmsPopup", (Boolean) null, 2, (Object) null);
        C14310x xVar = C14310x.f32065c;
        xVar.m1619a("sms_type", 1);
        xVar.m1619a("contact", Boolean.valueOf(z2));
        xVar.m1619a("enable_default_sms", Boolean.valueOf(C12810o.m5236i()));
        xVar.m1619a("remote_e164", l);
        xVar.m1619a("spam_category", a != null ? a.m28383M() : null);
        xVar.m1619a(CacheIndexRealmObject.DISPLAY_NAME, f);
        xVar.m1619a("s_spam", Boolean.valueOf(a != null && a.m28381O() > 0));
        if (a != null) {
            str = a.m28393C();
        }
        xVar.m1619a("s_name", str);
        String a3 = C14042j4.m2727a(l);
        xVar.m1619a("c_spam", Boolean.valueOf(!(a3 == null || C14966w.m724a((CharSequence) a3))));
        xVar.m1619a("c_name", C14042j4.m2727a(l));
        xVar.m1619a("sms_notification", false);
        xVar.m1619a("dialog_setting", Boolean.valueOf(a2));
        xVar.m1619a("dialog_popup", "no_show_sms_blocked");
        xVar.m1621a();
    }

    /* renamed from: a */
    public final void m5318a(boolean z, boolean z2, AbstractC12782b bVar) {
        C11507b bVar2 = C13978e.f31386a;
        boolean a = z2 ? C11507b.m9467a(bVar2, "isVasSmsPopup", (Boolean) null, 2, (Object) null) : z ? C11507b.m9467a(bVar2, "isContactSmsPopup", (Boolean) null, 2, (Object) null) : C11507b.m9467a(bVar2, "isStrangerSmsPopup", (Boolean) null, 2, (Object) null);
        if (!a) {
            C14310x.f32065c.m1619a("dialog_popup", "no_show_setting_disable");
        }
        C14310x.f32065c.m1619a("dialog_setting", Boolean.valueOf(a));
        boolean a2 = C13878a3.m3250a();
        if (!a2) {
            C14310x.f32065c.m1619a("dialog_popup", "no_show_others");
        }
        boolean r = CallUtils.m26526r();
        if (r) {
            C14310x.f32065c.m1619a("dialog_popup", "no_show_navigation");
        }
        Context o = MyApplication.m29013o();
        Object systemService = o.getSystemService("window");
        if (systemService != null) {
            CallUtils.m26591a(o, (WindowManager) systemService, new C12788g(r, a, a2, bVar));
            return;
        }
        throw new C14986p("null cannot be cast to non-null type android.view.WindowManager");
    }

    /* renamed from: a */
    public final boolean m5319a(String str, boolean z) {
        C15149k.m377b(str, "number");
        AdStatusController c = AdStatusController.m28827c();
        C15149k.m383a((Object) c, "AdStatusController.getInstance()");
        boolean z2 = true;
        if (c.m28831a()) {
            if ((str.length() > 0) && AdUtils.m28807b(z)) {
                return z2;
            }
        }
        z2 = false;
        return z2;
    }

    /* renamed from: b */
    public final Runnable m5317b() {
        return RunnableC12787f.f28865a;
    }

    /* renamed from: c */
    public final CoroutineScope m5312c() {
        AbstractC14974f fVar = f28846d;
        AbstractC14906i iVar = f28843a[1];
        return (CoroutineScope) fVar.getValue();
    }

    /* renamed from: d */
    public final Mutex m5308d() {
        AbstractC14974f fVar = f28847e;
        AbstractC14906i iVar = f28843a[2];
        return (Mutex) fVar.getValue();
    }

    /* renamed from: e */
    public final AbstractC12759f m5305e() {
        AbstractC14974f fVar = f28850h;
        AbstractC14906i iVar = f28843a[3];
        return (AbstractC12759f) fVar.getValue();
    }

    @UiThread
    /* renamed from: f */
    public final void m5302f() {
        Intent intent = f28851i;
        if (intent != null) {
            Context o = MyApplication.m29013o();
            CallDialogService.m26641a(o);
            C14300r.m1653a("SmsDialogActivity", intent);
            C14191v.m2258a(o, intent, C12797n.f28899a);
        }
        f28851i = null;
    }
}
