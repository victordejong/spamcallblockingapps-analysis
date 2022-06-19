package com.truecaller.service;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.notifications.MissedCallsNotificationActionReceiver;
import com.truecaller.p183ui.NotificationAccessActivity;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.premium.util.NotificationAccessSource;
import com.truecaller.settings.CallingSettings;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1808a.AbstractServiceC26412a0;
import p1727n3.p1807k.p1808a.AbstractServiceC26431i;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.C19252p;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1359x4.AbstractC21423g;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p849h4.AbstractC14920n;
import p193e.p194a.p912i4.AbstractC15275e;
import p193e.p194a.p912i4.C15292u;
import p193e.p194a.p997k3.p998j.C16487j;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.a0;
import s1.z.c.c0;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u0001:\u0002\u0003\u001cB\u0007¢\u0006\u0004\ba\u0010\u0007J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\n\u0010\u000bJ#\u0010\u0010\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0082@ø\u0001��¢\u0006\u0004\b\u0010\u0010\u0011J\u001b\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0082@ø\u0001��¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0018\u001a\u0004\u0018\u00010\f2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0082@ø\u0001��¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u001c\u001a\u0004\u0018\u00010\u000e2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0082@ø\u0001��¢\u0006\u0004\b\u001c\u0010\u001dJ#\u0010 \u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u001eH\u0082@ø\u0001��¢\u0006\u0004\b \u0010!R(\u0010)\u001a\u00020\"8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b\u001c\u0010#\u0012\u0004\b(\u0010\u0007\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\"\u00101\u001a\u00020*8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\"\u00108\u001a\u0002028\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b \u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R(\u0010<\u001a\u00020\"8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b\u0003\u0010#\u0012\u0004\b;\u0010\u0007\u001a\u0004\b9\u0010%\"\u0004\b:\u0010'R\"\u0010D\u001a\u00020=8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\"\u0010K\u001a\u00020E8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b9\u0010F\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR\"\u0010R\u001a\u00020L8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0010\u0010M\u001a\u0004\bN\u0010O\"\u0004\bP\u0010QR(\u0010Y\u001a\b\u0012\u0004\u0012\u00020T0S8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b4\u0010U\u001a\u0004\b>\u0010V\"\u0004\bW\u0010XR\"\u0010`\u001a\u00020Z8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0014\u0010[\u001a\u0004\b\\\u0010]\"\u0004\b^\u0010_\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006b"}, d2 = {"Lcom/truecaller/service/MissedCallsNotificationService;", "Ln3/k/a/a0;", "Ln3/k/a/q;", "a", "()Ln3/k/a/q;", "Ls1/s;", "onCreate", "()V", "Landroid/content/Intent;", "intent", "onHandleWork", "(Landroid/content/Intent;)V", "Landroid/app/Notification;", RemoteMessageConst.NOTIFICATION, "", "contextName", "i", "(Landroid/app/Notification;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;", "Le/a/l0/u/d/b;", "missedCalls", "g", "(Le/a/l0/u/d/b;Ls1/w/d;)Ljava/lang/Object;", "Lcom/truecaller/data/entity/HistoryEvent;", "missedCall", "j", "(Lcom/truecaller/data/entity/HistoryEvent;Ls1/w/d;)Ljava/lang/Object;", "Lcom/truecaller/data/entity/Contact;", AnalyticsConstants.CONTACT, C22021b.f61237c, "(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "f", "(Le/a/l0/u/d/b;Landroid/content/Context;Ls1/w/d;)Ljava/lang/Object;", "Ls1/w/f;", "Ls1/w/f;", "getCpuCoroutineContext", "()Ls1/w/f;", "setCpuCoroutineContext", "(Ls1/w/f;)V", "getCpuCoroutineContext$annotations", "cpuCoroutineContext", "Le/a/x4/g;", "h", "Le/a/x4/g;", "getSearchWarningsHelper", "()Le/a/x4/g;", "setSearchWarningsHelper", "(Le/a/x4/g;)V", "searchWarningsHelper", "Lcom/truecaller/settings/CallingSettings;", "Lcom/truecaller/settings/CallingSettings;", AbstractC2405c.f7629a, "()Lcom/truecaller/settings/CallingSettings;", "setCallingSettings", "(Lcom/truecaller/settings/CallingSettings;)V", "callingSettings", "e", "setUiCoroutineContext", "getUiCoroutineContext$annotations", "uiCoroutineContext", "Le/a/i4/e;", "d", "Le/a/i4/e;", "getNotificationManager", "()Le/a/i4/e;", "setNotificationManager", "(Le/a/i4/e;)V", "notificationManager", "Le/a/h4/n;", "Le/a/h4/n;", "getSystemNotificationManager", "()Le/a/h4/n;", "setSystemNotificationManager", "(Le/a/h4/n;)V", "systemNotificationManager", "Le/a/k3/j/j;", "Le/a/k3/j/j;", "getRawContactDao", "()Le/a/k3/j/j;", "setRawContactDao", "(Le/a/k3/j/j;)V", "rawContactDao", "Le/a/r2/f;", "Le/a/l0/c;", "Le/a/r2/f;", "()Le/a/r2/f;", "setHistoryManager", "(Le/a/r2/f;)V", "historyManager", "Le/a/p5/a0;", "Le/a/p5/a0;", "getPermissionUtil", "()Le/a/p5/a0;", "setPermissionUtil", "(Le/a/p5/a0;)V", "permissionUtil", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes13-dex2jar.jar:com/truecaller/service/MissedCallsNotificationService.class */
public final class MissedCallsNotificationService extends AbstractServiceC26412a0 {

    /* renamed from: j */
    public static final /* synthetic */ int f14712j = 0;
    @Inject

    /* renamed from: a */
    public f f14713a;
    @Inject

    /* renamed from: b */
    public f f14714b;
    @Inject

    /* renamed from: c */
    public AbstractC19854f<AbstractC17348c> f14715c;
    @Inject

    /* renamed from: d */
    public AbstractC15275e f14716d;
    @Inject

    /* renamed from: e */
    public AbstractC14920n f14717e;
    @Inject

    /* renamed from: f */
    public CallingSettings f14718f;
    @Inject

    /* renamed from: g */
    public AbstractC19219a0 f14719g;
    @Inject

    /* renamed from: h */
    public AbstractC21423g f14720h;
    @Inject

    /* renamed from: i */
    public C16487j f14721i;

    /* renamed from: com.truecaller.service.MissedCallsNotificationService$a */
    /* loaded from: classes13-dex2jar.jar:com/truecaller/service/MissedCallsNotificationService$a.class */
    public static final class C4462a {
        /* renamed from: a */
        public static final void m34757a(Context context) {
            l.e(context, AnalyticsConstants.CONTEXT);
            AbstractServiceC26431i.enqueueWork(context, MissedCallsNotificationService.class, (int) C2752R.C2754id.missed_calls_notification_service_id, new Intent());
        }
    }

    /* renamed from: com.truecaller.service.MissedCallsNotificationService$b */
    /* loaded from: classes13-dex2jar.jar:com/truecaller/service/MissedCallsNotificationService$b.class */
    public enum EnumC4463b {
        NORMAL,
        PROMO,
        NO_NOTIFICATION
    }

    @e(c = "com.truecaller.service.MissedCallsNotificationService", f = "MissedCallsNotificationService.kt", l = {419}, m = "getBizCallReason")
    /* renamed from: com.truecaller.service.MissedCallsNotificationService$c */
    /* loaded from: classes13-dex2jar.jar:com/truecaller/service/MissedCallsNotificationService$c.class */
    public static final class C4464c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f14726d;

        /* renamed from: e */
        public int f14727e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4464c(d dVar) {
            super(dVar);
            MissedCallsNotificationService.this = r4;
        }

        /* renamed from: s */
        public final Object m34756s(Object obj) {
            this.f14726d = obj;
            this.f14727e |= Integer.MIN_VALUE;
            return MissedCallsNotificationService.this.m34766b(null, this);
        }
    }

    @e(c = "com.truecaller.service.MissedCallsNotificationService$onHandleWork$1", f = "MissedCallsNotificationService.kt", l = {137, 164, 166, 143, 164, 166, 147, 149, 164, 166, Constants.ERR_PUBLISH_STREAM_CDN_ERROR, Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR, Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED, 164, 166, 164, 166}, m = "invokeSuspend")
    /* renamed from: com.truecaller.service.MissedCallsNotificationService$d */
    /* loaded from: classes13-dex2jar.jar:com/truecaller/service/MissedCallsNotificationService$d.class */
    public static final class C4465d extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f14729e;

        /* renamed from: f */
        public Object f14730f;

        /* renamed from: g */
        public Object f14731g;

        /* renamed from: h */
        public Object f14732h;

        /* renamed from: i */
        public Object f14733i;

        /* renamed from: j */
        public int f14734j;

        /* renamed from: k */
        public int f14735k;

        @e(c = "com.truecaller.service.MissedCallsNotificationService$onHandleWork$1$1", f = "MissedCallsNotificationService.kt", l = {}, m = "invokeSuspend")
        /* renamed from: com.truecaller.service.MissedCallsNotificationService$d$a */
        /* loaded from: classes13-dex2jar.jar:com/truecaller/service/MissedCallsNotificationService$d$a.class */
        public static final class C4466a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public final /* synthetic */ c0 f14737e;

            /* renamed from: f */
            public final /* synthetic */ c0 f14738f;

            /* renamed from: g */
            public final /* synthetic */ a0 f14739g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C4466a(c0 c0Var, c0 c0Var2, a0 a0Var, d dVar) {
                super(2, dVar);
                this.f14737e = c0Var;
                this.f14738f = c0Var2;
                this.f14739g = a0Var;
            }

            /* renamed from: i */
            public final d<s> m34752i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C4466a(this.f14737e, this.f14738f, this.f14739g, dVar);
            }

            /* renamed from: k */
            public final Object m34751k(Object obj, Object obj2) {
                s sVar = s.a;
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                c0 c0Var = this.f14737e;
                c0 c0Var2 = this.f14738f;
                a0 a0Var = this.f14739g;
                dVar.getContext();
                C25225a.m3932a3(sVar);
                if (C19252p.m13743a()) {
                    new C15292u((MissedCallsNotificationService) c0Var.a);
                    MissedCallsNotificationService missedCallsNotificationService = (MissedCallsNotificationService) c0Var.a;
                    Notification notification = (Notification) c0Var2.a;
                    int i = a0Var.a;
                    if (C19252p.m13743a() && notification != null) {
                        List list = r3.a.a.c.a;
                        if (C19252p.m13743a()) {
                            NotificationManager notificationManager = (NotificationManager) missedCallsNotificationService.getSystemService(RemoteMessageConst.NOTIFICATION);
                            r3.a.a.c.b(notificationManager, "missedCall", 12345, notification, 0);
                            r3.a.a.c.b(notificationManager, "missedCall", 12345, notification, i);
                        }
                    }
                } else {
                    C12864a2.m22562c0((MissedCallsNotificationService) c0Var.a, a0Var.a);
                }
                return sVar;
            }

            /* renamed from: s */
            public final Object m34750s(Object obj) {
                C25225a.m3932a3(obj);
                if (C19252p.m13743a()) {
                    new C15292u((MissedCallsNotificationService) this.f14737e.a);
                    MissedCallsNotificationService missedCallsNotificationService = (MissedCallsNotificationService) this.f14737e.a;
                    Notification notification = (Notification) this.f14738f.a;
                    int i = this.f14739g.a;
                    if (C19252p.m13743a() && notification != null) {
                        List list = r3.a.a.c.a;
                        if (C19252p.m13743a()) {
                            NotificationManager notificationManager = (NotificationManager) missedCallsNotificationService.getSystemService(RemoteMessageConst.NOTIFICATION);
                            r3.a.a.c.b(notificationManager, "missedCall", 12345, notification, 0);
                            r3.a.a.c.b(notificationManager, "missedCall", 12345, notification, i);
                        }
                    }
                } else {
                    C12864a2.m22562c0((MissedCallsNotificationService) this.f14737e.a, this.f14739g.a);
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4465d(d dVar) {
            super(2, dVar);
            MissedCallsNotificationService.this = r5;
        }

        /* renamed from: i */
        public final d<s> m34755i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4465d(dVar);
        }

        /* renamed from: k */
        public final Object m34754k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C4465d(dVar).m34753s(s.a);
        }

        /* JADX WARN: Not initialized variable reg: 13, insn: 0x09a2: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r13 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:217:0x099e */
        /* JADX WARN: Not initialized variable reg: 14, insn: 0x099e: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r14 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:217:0x099e */
        /* JADX WARN: Removed duplicated region for block: B:101:0x0605  */
        /* JADX WARN: Removed duplicated region for block: B:104:0x0626  */
        /* JADX WARN: Removed duplicated region for block: B:110:0x0678  */
        /* JADX WARN: Removed duplicated region for block: B:145:0x0785  */
        /* JADX WARN: Removed duplicated region for block: B:159:0x07ed  */
        /* JADX WARN: Removed duplicated region for block: B:234:0x0a72  */
        /* JADX WARN: Removed duplicated region for block: B:240:0x0ac4  */
        /* JADX WARN: Removed duplicated region for block: B:242:0x0ac6  */
        /* JADX WARN: Removed duplicated region for block: B:264:0x0b62  */
        /* JADX WARN: Removed duplicated region for block: B:267:0x0bc5  */
        /* JADX WARN: Removed duplicated region for block: B:269:0x0bc7  */
        /* JADX WARN: Removed duplicated region for block: B:272:0x0bdd  */
        /* JADX WARN: Removed duplicated region for block: B:278:0x0c27  */
        /* JADX WARN: Removed duplicated region for block: B:285:0x0c48  */
        /* JADX WARN: Removed duplicated region for block: B:288:0x0cb1  */
        /* JADX WARN: Removed duplicated region for block: B:290:0x0cb3  */
        /* JADX WARN: Removed duplicated region for block: B:293:0x0cd3  */
        /* JADX WARN: Removed duplicated region for block: B:299:0x0d25  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x03e2  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0471  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x04c2  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x04c4  */
        /* JADX WARN: Removed duplicated region for block: B:96:0x059c  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x0603  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m34753s(java.lang.Object r8) {
            /*
                Method dump skipped, instructions count: 3367
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.truecaller.service.MissedCallsNotificationService.C4465d.m34753s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.service.MissedCallsNotificationService", f = "MissedCallsNotificationService.kt", l = {235, 299}, m = "showGroupedNotificationForMissedCalls")
    /* renamed from: com.truecaller.service.MissedCallsNotificationService$e */
    /* loaded from: classes13-dex2jar.jar:com/truecaller/service/MissedCallsNotificationService$e.class */
    public static final class C4467e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f14740d;

        /* renamed from: e */
        public int f14741e;

        /* renamed from: g */
        public Object f14743g;

        /* renamed from: h */
        public Object f14744h;

        /* renamed from: i */
        public Object f14745i;

        /* renamed from: j */
        public Object f14746j;

        /* renamed from: k */
        public Object f14747k;

        /* renamed from: l */
        public Object f14748l;

        /* renamed from: m */
        public Object f14749m;

        /* renamed from: n */
        public Object f14750n;

        /* renamed from: o */
        public int f14751o;

        /* renamed from: p */
        public int f14752p;

        /* renamed from: q */
        public int f14753q;

        /* renamed from: r */
        public long f14754r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4467e(d dVar) {
            super(dVar);
            MissedCallsNotificationService.this = r4;
        }

        /* renamed from: s */
        public final Object m34749s(Object obj) {
            this.f14740d = obj;
            this.f14741e |= Integer.MIN_VALUE;
            return MissedCallsNotificationService.this.m34761g(null, this);
        }
    }

    @e(c = "com.truecaller.service.MissedCallsNotificationService$showNotification$2", f = "MissedCallsNotificationService.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.truecaller.service.MissedCallsNotificationService$f */
    /* loaded from: classes13-dex2jar.jar:com/truecaller/service/MissedCallsNotificationService$f.class */
    public static final class C4468f extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Notification f14756f;

        /* renamed from: g */
        public final /* synthetic */ String f14757g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4468f(Notification notification, String str, d dVar) {
            super(2, dVar);
            MissedCallsNotificationService.this = r5;
            this.f14756f = notification;
            this.f14757g = str;
        }

        /* renamed from: i */
        public final d<s> m34748i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4468f(this.f14756f, this.f14757g, dVar);
        }

        /* renamed from: k */
        public final Object m34747k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            MissedCallsNotificationService missedCallsNotificationService = MissedCallsNotificationService.this;
            Notification notification = this.f14756f;
            String str = this.f14757g;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            AbstractC15275e abstractC15275e = missedCallsNotificationService.f14716d;
            if (abstractC15275e != null) {
                abstractC15275e.mo18965i("missedCall", 12345, notification, C10480a.m26052K2(str));
                return sVar;
            }
            l.l("notificationManager");
            throw null;
        }

        /* renamed from: s */
        public final Object m34746s(Object obj) {
            C25225a.m3932a3(obj);
            AbstractC15275e abstractC15275e = MissedCallsNotificationService.this.f14716d;
            if (abstractC15275e != null) {
                abstractC15275e.mo18965i("missedCall", 12345, this.f14756f, C10480a.m26052K2(this.f14757g));
                return s.a;
            }
            l.l("notificationManager");
            throw null;
        }
    }

    @e(c = "com.truecaller.service.MissedCallsNotificationService", f = "MissedCallsNotificationService.kt", l = {377, 387, 400, 407}, m = "showNotificationForMissedCall")
    /* renamed from: com.truecaller.service.MissedCallsNotificationService$g */
    /* loaded from: classes13-dex2jar.jar:com/truecaller/service/MissedCallsNotificationService$g.class */
    public static final class C4469g extends c {

        /* renamed from: d */
        public /* synthetic */ Object f14758d;

        /* renamed from: e */
        public int f14759e;

        /* renamed from: g */
        public Object f14761g;

        /* renamed from: h */
        public Object f14762h;

        /* renamed from: i */
        public Object f14763i;

        /* renamed from: j */
        public Object f14764j;

        /* renamed from: k */
        public Object f14765k;

        /* renamed from: l */
        public Object f14766l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4469g(d dVar) {
            super(dVar);
            MissedCallsNotificationService.this = r4;
        }

        /* renamed from: s */
        public final Object m34745s(Object obj) {
            this.f14758d = obj;
            this.f14759e |= Integer.MIN_VALUE;
            return MissedCallsNotificationService.this.m34758j(null, this);
        }
    }

    /* renamed from: h */
    public static final void m34760h(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        AbstractServiceC26431i.enqueueWork(context, MissedCallsNotificationService.class, (int) C2752R.C2754id.missed_calls_notification_service_id, new Intent());
    }

    /* renamed from: a */
    public final C26450q m34767a() {
        AbstractC14920n abstractC14920n = this.f14717e;
        if (abstractC14920n != null) {
            return new C26450q(this, abstractC14920n.mo19425a("missed_calls"));
        }
        l.l("systemNotificationManager");
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e9  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m34766b(com.truecaller.data.entity.Contact r6, s1.w.d<? super java.lang.String> r7) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.service.MissedCallsNotificationService.m34766b(com.truecaller.data.entity.Contact, s1.w.d):java.lang.Object");
    }

    /* renamed from: c */
    public final CallingSettings m34765c() {
        CallingSettings callingSettings = this.f14718f;
        if (callingSettings != null) {
            return callingSettings;
        }
        l.l("callingSettings");
        throw null;
    }

    /* renamed from: d */
    public final AbstractC19854f<AbstractC17348c> m34764d() {
        AbstractC19854f<AbstractC17348c> abstractC19854f = this.f14715c;
        if (abstractC19854f != null) {
            return abstractC19854f;
        }
        l.l("historyManager");
        throw null;
    }

    /* renamed from: e */
    public final f m34763e() {
        f fVar = this.f14713a;
        if (fVar != null) {
            return fVar;
        }
        l.l("uiCoroutineContext");
        throw null;
    }

    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    /* renamed from: f */
    public final Object m34762f(AbstractC17373b abstractC17373b, Context context, d<? super s> dVar) {
        char c = 0;
        while (abstractC17373b.moveToNext()) {
            HistoryEvent mo16159n = abstractC17373b.mo16159n();
            if (mo16159n != null) {
                l.d(mo16159n, "missedCalls.historyEvent ?: continue");
                c = Math.max((long) c, mo16159n.f11541h);
            }
        }
        C26450q m34767a = m34767a();
        m34767a.m1854o(4);
        Object obj = C26467a.f74235a;
        m34767a.f74123D = C26467a.C26471d.m1787a(context, 2131101323);
        m34767a.f74137R.icon = 2131232126;
        m34767a.m1853p(16, true);
        l.d(m34767a, "createNotificationBuilde…     .setAutoCancel(true)");
        m34767a.f74137R.when = c;
        Intent putExtra = new Intent(context, MissedCallsNotificationActionReceiver.class).setAction("com.truecaller.CLEAR_ALTERNATIVE_MISSED_CALLS").putExtra("lastTimestamp", (long) c);
        l.d(putExtra, "Intent(context, MissedCa…AST_TIMESTAMP, timestamp)");
        m34767a.f74137R.deleteIntent = PendingIntent.getBroadcast(context, C2752R.C2754id.req_code_missed_call_notification_dismiss, putExtra, 335544320);
        m34767a.f74152l = 1;
        m34767a.m1855n(getString(C2752R.string.missed_call_alt_notification_title));
        m34767a.m1856m(getString(C2752R.string.missed_call_alt_notification_text));
        Intent m34553xa = TruecallerInit.m34553xa(context, "calls", RemoteMessageConst.NOTIFICATION);
        NotificationAccessSource notificationAccessSource = NotificationAccessSource.MISSED_CALL_NOTIFICATION;
        l.d(m34553xa, "goBackIntent");
        Intent m34592a = NotificationAccessActivity.C4662a.m34592a(context, notificationAccessSource, C2752R.string.LocalNotificationIdentifyMessagesToast, m34553xa);
        ArrayList arrayList = new ArrayList();
        arrayList.add(m34592a);
        if (!arrayList.isEmpty()) {
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            PendingIntent activities = PendingIntent.getActivities(context, C2752R.C2754id.req_code_missed_call_notification_settings, intentArr, 335544320, null);
            m34767a.m1868a(0, getString(C2752R.string.missed_call_notification_title_enable_button), activities);
            m34767a.f74147g = activities;
            m34767a.m1852q(BitmapFactory.decodeResource(getResources(), C2752R.mipmap.ic_launcher));
            Notification m1865d = m34767a.m1865d();
            l.d(m1865d, "builder.build()");
            Object m34759i = m34759i(m1865d, "notificationMissedCallPromo", dVar);
            return m34759i == a.a ? m34759i : s.a;
        }
        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0241, code lost:
        if (r20 == 0) goto L83;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x042c A[LOOP:0: B:72:0x0422->B:74:0x042c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x04be  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x04cd  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x052a  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0593  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x05eb  */
    /* JADX WARN: Type inference failed for: r0v142, types: [long] */
    /* JADX WARN: Type inference failed for: r0v256, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x028b -> B:76:0x04b3). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0319 -> B:52:0x035a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:81:0x0513 -> B:82:0x051a). Please submit an issue!!! */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m34761g(p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b r12, s1.w.d<? super android.app.Notification> r13) {
        /*
            Method dump skipped, instructions count: 1529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.service.MissedCallsNotificationService.m34761g(e.a.l0.u.d.b, s1.w.d):java.lang.Object");
    }

    /* renamed from: i */
    public final /* synthetic */ Object m34759i(Notification notification, String str, d<? super s> dVar) {
        f fVar = this.f14713a;
        if (fVar != null) {
            Object a4 = s1.a.a.a.v0.f.d.a4(fVar, new C4468f(notification, str, null), dVar);
            return a4 == a.a ? a4 : s.a;
        }
        l.l("uiCoroutineContext");
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0574  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x05bd  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0624  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0640  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x06bc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x06d0  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0719  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x071b  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0735  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x079e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0152  */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m34758j(com.truecaller.data.entity.HistoryEvent r12, s1.w.d<? super android.app.Notification> r13) {
        /*
            Method dump skipped, instructions count: 2017
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.service.MissedCallsNotificationService.m34758j(com.truecaller.data.entity.HistoryEvent, s1.w.d):java.lang.Object");
    }

    @Override // p1727n3.p1807k.p1808a.AbstractServiceC26431i, android.app.Service
    public void onCreate() {
        super.onCreate();
        AbstractC16444k2.f46188a.m17389a().mo11369x(this);
    }

    @Override // p1727n3.p1807k.p1808a.AbstractServiceC26431i
    public void onHandleWork(Intent intent) {
        l.e(intent, "intent");
        s1.a.a.a.v0.f.d.c3((f) null, new C4465d(null), 1, (Object) null);
    }
}
