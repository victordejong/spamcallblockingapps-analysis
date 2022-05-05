package p459j.p460a.p576w;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.gson.IapReportedUsersPromotion;
import gogolook.callgogolook2.iap.IapRewardDialogActivity;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import gogolook.callgogolook2.realm.obj.tag.TagRealmObject;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import p081h.p203i.p384e.C10099e;
import p459j.p460a.p541n0.C13092f;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p541n0.C13198r;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14217x3;
import p626l.C14986p;
import p626l.p641z.p643d.C15149k;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0007J\b\u0010\r\u001a\u00020\u0006H\u0007J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\nH\u0007J\b\u0010\u000f\u001a\u00020\u0010H\u0007J\u001a\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00062\b\u0010\u0013\u001a\u0004\u0018\u00010\fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��¨\u0006\u0014"}, m815d2 = {"Lgogolook/callgogolook2/iap/IapReportedManager;", "", "()V", "DAYS_OF_REPORTED_NUMBER", "", "NUM_OF_REPORTED_NUMBER", "", "enableIapReportedUserPromotion", "", "context", "Landroid/content/Context;", "iapProductRealmObject", "Lgogolook/callgogolook2/realm/obj/iap/IapProductRealmObject;", "getReportedNums", "getReportedUserPromotion", "isConfigEnable", "", "isReportedPromotionAvailable", "reportedNum", "hasReportedUserPromotion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w.g */
/* loaded from: classes2-dex2jar.jar:j/a/w/g.class */
public final class C13749g {

    /* renamed from: j.a.w.g$a */
    /* loaded from: classes2-dex2jar.jar:j/a/w/g$a.class */
    public static final class C13750a<T> implements Single.OnSubscribe<Object> {

        /* renamed from: a */
        public final /* synthetic */ IapProductRealmObject f30859a;

        public C13750a(IapProductRealmObject iapProductRealmObject) {
            this.f30859a = iapProductRealmObject;
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super Object> singleSubscriber) {
            try {
                Date parse = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(((IapReportedUsersPromotion) new C10099e().m13388a().m30982a(C13640c.m3745d().m3744d("iap_reported_users_promotion"), (Class<Object>) IapReportedUsersPromotion.class)).m28420b());
                C15149k.m383a((Object) parse, "formatter.parse(expiredTime)");
                long time = parse.getTime();
                if (-1 == this.f30859a.getExpiredTime()) {
                    this.f30859a.setExpiredTime(time);
                    C13092f.m4629a(this.f30859a);
                }
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
            singleSubscriber.onSuccess(null);
        }
    }

    static {
        new C13749g();
    }

    @WorkerThread
    /* renamed from: a */
    public static final int m3533a() {
        int i = 0;
        List<TagRealmObject> a = C13198r.m4426a(C13193p.m4437a("_type", "_updatetime", "_status"), C13193p.m4438a(0, Long.valueOf(System.currentTimeMillis() - TimeUnit.DAYS.toMillis(30L)), 2), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.GREATHER_THAN, C13193p.EnumC13194a.NOT_EQUAL_TO), null, null);
        if (a != null) {
            i = a.size();
        }
        return i;
    }

    @WorkerThread
    /* renamed from: a */
    public static final IapProductRealmObject m3531a(Context context) {
        C15149k.m377b(context, "context");
        try {
            String a = ((IapReportedUsersPromotion) new C10099e().m13388a().m30982a(C13640c.m3745d().m3744d("iap_reported_users_promotion"), (Class<Object>) IapReportedUsersPromotion.class)).m28421a();
            if (a == null) {
                return null;
            }
            List<IapProductRealmObject> a2 = C13092f.m4628a(C13193p.m4437a("productId", IapProductRealmObject.STATE), C13193p.m4438a(a, 1), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.EQUAL_TO), null, null);
            if (C14217x3.m2173a(a2)) {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext != null) {
                    ((MyApplication) applicationContext).m29026c().m3466c();
                    return null;
                }
                throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.MyApplication");
            } else if (a2 == null || 1 != a2.size()) {
                return null;
            } else {
                return a2.get(0);
            }
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
            return null;
        }
    }

    /* renamed from: a */
    public static final void m3530a(Context context, IapProductRealmObject iapProductRealmObject) {
        C15149k.m377b(context, "context");
        C15149k.m377b(iapProductRealmObject, "iapProductRealmObject");
        Single.create(new C13750a(iapProductRealmObject)).subscribeOn(Schedulers.m0io()).subscribe();
        C14217x3.m2156c(context, new Intent(context, IapRewardDialogActivity.class));
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0017, code lost:
        if (r6.getExpiredTime() >= java.lang.System.currentTimeMillis()) goto L_0x001a;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m3532a(int r5, gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject r6) {
        /*
            r0 = 0
            r7 = r0
            r0 = r7
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0024
            r0 = r5
            r1 = 5
            if (r0 >= r1) goto L_0x001a
            r0 = r7
            r8 = r0
            r0 = r6
            long r0 = r0.getExpiredTime()
            long r1 = java.lang.System.currentTimeMillis()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0024
        L_0x001a:
            r0 = r7
            r8 = r0
            boolean r0 = p459j.p460a.p582w0.C14021h2.m2779g()
            if (r0 != 0) goto L_0x0024
            r0 = 1
            r8 = r0
        L_0x0024:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p576w.C13749g.m3532a(int, gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject):boolean");
    }

    /* renamed from: b */
    public static final boolean m3529b() {
        try {
            IapReportedUsersPromotion iapReportedUsersPromotion = (IapReportedUsersPromotion) new C10099e().m13388a().m30982a(C13640c.m3745d().m3744d("iap_reported_users_promotion"), (Class<Object>) IapReportedUsersPromotion.class);
            if (iapReportedUsersPromotion == null || TextUtils.isEmpty(iapReportedUsersPromotion.m28418d())) {
                return false;
            }
            long currentTimeMillis = System.currentTimeMillis();
            Date parse = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(iapReportedUsersPromotion.m28419c());
            C15149k.m383a((Object) parse, "formatter.parse(iapPromotionConfig.expiredTime)");
            return parse.getTime() - TimeUnit.DAYS.toMillis(1L) >= currentTimeMillis;
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
            return false;
        }
    }
}
