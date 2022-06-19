package com.truecaller.push;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.HmsMessageService;
import com.huawei.hms.push.RemoteMessage;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p1113o4.AbstractC18920b;
import p193e.p194a.p1113o4.AbstractC18923e;
import p193e.p194a.p1113o4.C18922d;
import p193e.p194a.p678d4.AbstractC12603e;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import q3.a.t0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u001d\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fR\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, d2 = {"Lcom/truecaller/push/HuaweiMessageService;", "Lcom/huawei/hms/push/HmsMessageService;", "Ls1/s;", "onCreate", "()V", "Lcom/huawei/hms/push/RemoteMessage;", "message", "onMessageReceived", "(Lcom/huawei/hms/push/RemoteMessage;)V", "", AnalyticsConstants.TOKEN, "onNewToken", "(Ljava/lang/String;)V", "Le/a/o4/e;", C22021b.f61237c, "Le/a/o4/e;", "getPushIdManager", "()Le/a/o4/e;", "setPushIdManager", "(Le/a/o4/e;)V", "pushIdManager", "Le/a/o4/b;", AbstractC2405c.f7629a, "Le/a/o4/b;", "getPushIdHandler", "()Le/a/o4/b;", "setPushIdHandler", "(Le/a/o4/b;)V", "pushIdHandler", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/push/HuaweiMessageService.class */
public final class HuaweiMessageService extends HmsMessageService {
    @Inject

    /* renamed from: b */
    public AbstractC18923e f14414b;
    @Inject

    /* renamed from: c */
    public AbstractC18920b f14415c;

    @e(c = "com.truecaller.push.HuaweiMessageService$onMessageReceived$1", f = "HuaweiMessageService.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.truecaller.push.HuaweiMessageService$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/push/HuaweiMessageService$a.class */
    public static final class C4383a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ RemoteMessage f14417f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4383a(RemoteMessage remoteMessage, d dVar) {
            super(2, dVar);
            HuaweiMessageService.this = r5;
            this.f14417f = remoteMessage;
        }

        /* renamed from: i */
        public final d<s> m34793i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4383a(this.f14417f, dVar);
        }

        /* renamed from: k */
        public final Object m34792k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            HuaweiMessageService huaweiMessageService = HuaweiMessageService.this;
            RemoteMessage remoteMessage = this.f14417f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            AbstractC18920b abstractC18920b = huaweiMessageService.f14415c;
            if (abstractC18920b != null) {
                abstractC18920b.mo14324a(remoteMessage);
                return sVar;
            }
            l.l("pushIdHandler");
            throw null;
        }

        /* renamed from: s */
        public final Object m34791s(Object obj) {
            C25225a.m3932a3(obj);
            AbstractC18920b abstractC18920b = HuaweiMessageService.this.f14415c;
            if (abstractC18920b != null) {
                abstractC18920b.mo14324a(this.f14417f);
                return s.a;
            }
            l.l("pushIdHandler");
            throw null;
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        AbstractC16444k2.f46188a.m17389a().mo11372u(this);
    }

    @Override // com.huawei.hms.push.HmsMessageService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        l.e(remoteMessage, "message");
        s1.a.a.a.v0.f.d.w2(h1.a, t0.d, (j0) null, new C4383a(remoteMessage, null), 2, (Object) null);
    }

    @Override // com.huawei.hms.push.HmsMessageService
    public void onNewToken(String str) {
        if (str != null) {
            AbstractC18923e abstractC18923e = this.f14414b;
            if (abstractC18923e != null) {
                abstractC18923e.mo14320c(new C18922d(str, AbstractC12603e.C12605b.f36738c));
            } else {
                l.l("pushIdManager");
                throw null;
            }
        }
    }
}
