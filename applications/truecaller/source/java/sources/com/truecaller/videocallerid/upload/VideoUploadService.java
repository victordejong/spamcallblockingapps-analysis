package com.truecaller.videocallerid.upload;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.IBinder;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.videocallerid.C4718R;
import com.truecaller.videocallerid.p187ui.preview.PreviewActivity;
import com.truecaller.videocallerid.p187ui.preview.PreviewModes;
import com.truecaller.videocallerid.utils.analytics.OnboardingData;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p849h4.AbstractC14920n;
import p193e.p194a.p849h4.p850q.AbstractC14932g;
import p193e.p194a.p947k.p980p.AbstractC16252d;
import p193e.p194a.p947k.p980p.AbstractC16253e;
import p193e.p194a.p947k.p980p.AbstractServiceC16248a;
import p193e.p194a.p947k.p980p.C16254f;
import p193e.p194a.p947k.p980p.C16255g;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.g;
import s1.h;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b-\u0010\u0005J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J)\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ#\u0010\u0011\u001a\u00020\u00032\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J#\u0010\u0013\u001a\u00020\u00032\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0013\u0010\u0012J#\u0010\u0014\u001a\u00020\u00032\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0014\u0010\u0012J\u000f\u0010\u0015\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0015\u0010\u0005J\u001b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u001a\u0010\u0005J#\u0010\u001c\u001a\u00020\u001b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u001c\u0010\u001dR\"\u0010$\u001a\u00020\u001e8��@��X\u0081.¢\u0006\u0012\n\u0004\b\u0015\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001d\u0010)\u001a\u00020\b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R\u001d\u0010,\u001a\u00020*8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010&\u001a\u0004\b%\u0010+¨\u0006."}, d2 = {"Lcom/truecaller/videocallerid/upload/VideoUploadService;", "Landroid/app/Service;", "Le/a/k/p/e;", "Ls1/s;", "onCreate", "()V", "Landroid/content/Intent;", "intent", "", "flags", "startId", "onStartCommand", "(Landroid/content/Intent;II)I", "Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;", "onboardingData", "", "tempRecordingFilePath", "a", "(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;)V", AbstractC2405c.f7629a, C22021b.f61237c, "d", "Landroid/os/IBinder;", "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;", "finish", "onDestroy", "Landroid/app/PendingIntent;", "g", "(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;)Landroid/app/PendingIntent;", "Le/a/k/p/d;", "Le/a/k/p/d;", "getPresenter$video_caller_id_release", "()Le/a/k/p/d;", "setPresenter$video_caller_id_release", "(Le/a/k/p/d;)V", "presenter", "f", "Ls1/g;", "e", "()I", "notificationIconSize", "Le/a/h4/n;", "()Le/a/h4/n;", "notificationManager", "<init>", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/upload/VideoUploadService.class */
public final class VideoUploadService extends AbstractServiceC16248a implements AbstractC16253e {
    @Inject

    /* renamed from: d */
    public AbstractC16252d f16109d;

    /* renamed from: e */
    public final g f16110e;

    /* renamed from: f */
    public final g f16111f;

    /* renamed from: com.truecaller.videocallerid.upload.VideoUploadService$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/upload/VideoUploadService$a.class */
    public static final class C4749a extends m implements a<Integer> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4749a() {
            super(0);
            VideoUploadService.this = r4;
        }

        public Object invoke() {
            return Integer.valueOf(VideoUploadService.this.getResources().getDimensionPixelSize(C4718R.dimen.vid_upload_notification_icon_size));
        }
    }

    /* renamed from: com.truecaller.videocallerid.upload.VideoUploadService$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/upload/VideoUploadService$b.class */
    public static final class C4750b extends m implements a<AbstractC14920n> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4750b() {
            super(0);
            VideoUploadService.this = r4;
        }

        public Object invoke() {
            Context applicationContext = VideoUploadService.this.getApplicationContext();
            Context context = applicationContext;
            if (!(applicationContext instanceof AbstractC14932g)) {
                context = null;
            }
            AbstractC14932g abstractC14932g = (AbstractC14932g) context;
            if (abstractC14932g != null) {
                return abstractC14932g.mo19403n();
            }
            throw new RuntimeException(C22128a.m8643a2(AbstractC14932g.class, C22128a.m8728C("Application class does not implement ")));
        }
    }

    public VideoUploadService() {
        h hVar = h.c;
        this.f16110e = C25225a.m3982O1(hVar, new C4750b());
        this.f16111f = C25225a.m3982O1(hVar, new C4749a());
    }

    /* renamed from: h */
    public static final void m34428h(Context context, OnboardingData onboardingData, String str) {
        Intent m8581q0 = C22128a.m8581q0(context, AnalyticsConstants.CONTEXT, context, VideoUploadService.class);
        if (onboardingData != null) {
            m8581q0.putExtra("onboardingData", onboardingData);
        }
        m8581q0.putExtra("tempRecordingFilePath", str);
        C10480a.m26045M1("Starting service VideoUploadService");
        C26467a.m1796f(context, m8581q0);
    }

    @Override // p193e.p194a.p947k.p980p.AbstractC16253e
    /* renamed from: a */
    public void mo17674a(OnboardingData onboardingData, String str) {
        int m13612L = C19291g.m13612L(this, C4718R.attr.tcx_brandBackgroundBlue);
        C26450q c26450q = new C26450q(this, m34430f().mo19425a("miscellaneous_channel"));
        c26450q.f74137R.icon = C4718R.C4719drawable.ic_tcx_phone_24dp;
        c26450q.f74123D = m13612L;
        c26450q.m1855n(getString(C4718R.string.vid_video_upload_notification_ongoing_title, new Object[]{getString(C4718R.string.video_caller_id)}));
        c26450q.m1853p(2, true);
        c26450q.m1848u(0, 0, true);
        c26450q.f74121B = "progress";
        c26450q.f74153m = false;
        c26450q.m1853p(16, true);
        if (onboardingData != null) {
            c26450q.f74147g = m34429g(onboardingData, str);
        }
        l.d(c26450q, "NotificationCompat.Build…          }\n            }");
        startForeground(C4718R.C4720id.vid_upload_service_notification, c26450q.m1865d());
    }

    @Override // p193e.p194a.p947k.p980p.AbstractC16253e
    /* renamed from: b */
    public void mo17673b(OnboardingData onboardingData, String str) {
        int m13612L = C19291g.m13612L(this, C4718R.attr.tcx_brandBackgroundBlue);
        String mo19425a = m34430f().mo19425a("miscellaneous_channel");
        int i = C4718R.C4719drawable.ic_vid_notification_upload_failed;
        Object obj = C26467a.f74235a;
        Drawable m1789b = C26467a.C26470c.m1789b(this, i);
        Bitmap bitmap = null;
        if (m1789b != null) {
            bitmap = MediaSessionCompat.m43311D1(m1789b, m34431e(), m34431e(), null, 4);
        }
        C26450q c26450q = new C26450q(this, mo19425a);
        c26450q.f74137R.icon = C4718R.C4719drawable.ic_tcx_phone_24dp;
        c26450q.m1852q(bitmap);
        c26450q.f74123D = m13612L;
        c26450q.m1855n(getString(C4718R.string.vid_video_upload_notification_fail_title, new Object[]{getString(C4718R.string.video_caller_id)}));
        c26450q.f74147g = m34429g(onboardingData, str);
        c26450q.m1853p(16, true);
        l.d(c26450q, "NotificationCompat.Build…     .setAutoCancel(true)");
        AbstractC14920n m34430f = m34430f();
        int i2 = C4718R.C4720id.vid_upload_service_result_failure_notification;
        Notification m1865d = c26450q.m1865d();
        l.d(m1865d, "initialNotification.build()");
        m34430f.mo19419g(i2, m1865d);
    }

    @Override // p193e.p194a.p947k.p980p.AbstractC16253e
    /* renamed from: c */
    public void mo17672c(OnboardingData onboardingData, String str) {
        int m13612L = C19291g.m13612L(this, C4718R.attr.tcx_brandBackgroundBlue);
        String mo19425a = m34430f().mo19425a("miscellaneous_channel");
        int i = C4718R.C4719drawable.ic_vid_notification_upload_successful;
        Object obj = C26467a.f74235a;
        Drawable m1789b = C26467a.C26470c.m1789b(this, i);
        Bitmap bitmap = null;
        if (m1789b != null) {
            bitmap = MediaSessionCompat.m43311D1(m1789b, m34431e(), m34431e(), null, 4);
        }
        C26450q c26450q = new C26450q(this, mo19425a);
        c26450q.f74137R.icon = C4718R.C4719drawable.ic_tcx_phone_24dp;
        c26450q.m1852q(bitmap);
        c26450q.f74123D = m13612L;
        c26450q.m1855n(getString(C4718R.string.vid_video_upload_notification_success_title, new Object[]{getString(C4718R.string.video_caller_id)}));
        c26450q.f74147g = m34429g(onboardingData, str);
        c26450q.m1853p(16, true);
        l.d(c26450q, "NotificationCompat.Build…     .setAutoCancel(true)");
        AbstractC14920n m34430f = m34430f();
        int i2 = C4718R.C4720id.vid_upload_service_result_success_notification;
        Notification m1865d = c26450q.m1865d();
        l.d(m1865d, "initialNotification.build()");
        m34430f.mo19419g(i2, m1865d);
    }

    @Override // p193e.p194a.p947k.p980p.AbstractC16253e
    /* renamed from: d */
    public void mo17671d() {
        m34430f().mo19420f(C4718R.C4720id.vid_upload_service_result_failure_notification);
    }

    /* renamed from: e */
    public final int m34431e() {
        return ((Number) this.f16111f.getValue()).intValue();
    }

    /* renamed from: f */
    public final AbstractC14920n m34430f() {
        return (AbstractC14920n) this.f16110e.getValue();
    }

    @Override // p193e.p194a.p947k.p980p.AbstractC16253e
    public void finish() {
        stopSelf();
    }

    /* renamed from: g */
    public final PendingIntent m34429g(OnboardingData onboardingData, String str) {
        PendingIntent activity = PendingIntent.getActivity(this, C4718R.C4720id.video_caller_id_upload_notification, PreviewActivity.f16024o.m34456a(this, PreviewModes.PREVIEW.name(), onboardingData, str, null), 201326592);
        l.d(activity, "PendingIntent.getActivit….FLAG_IMMUTABLE\n        )");
        return activity;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // p193e.p194a.p947k.p980p.AbstractServiceC16248a, android.app.Service
    public void onCreate() {
        super.onCreate();
        AbstractC16252d abstractC16252d = this.f16109d;
        if (abstractC16252d != null) {
            ((C16255g) abstractC16252d).mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        AbstractC16252d abstractC16252d = this.f16109d;
        if (abstractC16252d == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20574a) abstractC16252d).mo9806c();
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null) {
            return 2;
        }
        OnboardingData onboardingData = (OnboardingData) intent.getParcelableExtra("onboardingData");
        String stringExtra = intent.getStringExtra("tempRecordingFilePath");
        AbstractC16252d abstractC16252d = this.f16109d;
        if (abstractC16252d == null) {
            l.l("presenter");
            throw null;
        }
        C16255g c16255g = (C16255g) abstractC16252d;
        Objects.requireNonNull(c16255g);
        d.w2(c16255g, (f) null, j0.d, new C16254f(c16255g, onboardingData, stringExtra, null), 1, (Object) null);
        return 2;
    }
}
