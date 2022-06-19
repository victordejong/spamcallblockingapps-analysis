package com.facebook.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.razorpay.AnalyticsConstants;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import p193e.p1538j.C23228f0;
import p193e.p1538j.C23271v0;
import s1.z.c.l;
@Metadata(d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\t\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018�� \u00122\u00020\u0001:\u0003\u0012\u0013\u0014B\u0005¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\"\u0010\t\u001a\u0004\u0018\u00010\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\n\u0010\u0006R\"\u0010\u000b\u001a\u0004\u0018\u00010\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\f\u0010\u0006R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n��R\u001e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u000f@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, d2 = {"Lcom/facebook/internal/AttributionIdentifiers;", "", "()V", "androidAdvertiserId", "", "getAndroidAdvertiserId", "()Ljava/lang/String;", "androidAdvertiserIdValue", "<set-?>", "androidInstallerPackage", "getAndroidInstallerPackage", "attributionId", "getAttributionId", "fetchTime", "", "", "isTrackingLimited", "()Z", "Companion", "GoogleAdInfo", "GoogleAdServiceConnection", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.q */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/q.class */
public final class C1165q {

    /* renamed from: f */
    public static final String f3182f = "com.facebook.internal.q";

    /* renamed from: g */
    public static C1165q f3183g;

    /* renamed from: a */
    public String f3184a;

    /* renamed from: b */
    public long f3185b;

    /* renamed from: c */
    public String f3186c;

    /* renamed from: d */
    public String f3187d;

    /* renamed from: e */
    public boolean f3188e;

    @Metadata(d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0010H\u0002J\u0010\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0015\u001a\u00020\u0016H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0016\u0010\u0006\u001a\u00020\u00048��X\u0081T¢\u0006\b\n��\u0012\u0004\b\u0007\u0010\u0002R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00108��@��X\u0081\u000e¢\u0006\b\n��\u0012\u0004\b\u0011\u0010\u0002¨\u0006\u001e"}, d2 = {"Lcom/facebook/internal/AttributionIdentifiers$Companion;", "", "()V", "ANDROID_ID_COLUMN_NAME", "", "ATTRIBUTION_ID_COLUMN_NAME", "ATTRIBUTION_ID_CONTENT_PROVIDER", "getATTRIBUTION_ID_CONTENT_PROVIDER$facebook_core_release$annotations", "ATTRIBUTION_ID_CONTENT_PROVIDER_WAKIZASHI", "CONNECTION_RESULT_SUCCESS", "", "IDENTIFIER_REFRESH_INTERVAL_MILLIS", "", "LIMIT_TRACKING_COLUMN_NAME", "TAG", "cachedIdentifiers", "Lcom/facebook/internal/AttributionIdentifiers;", "getCachedIdentifiers$facebook_core_release$annotations", "cacheAndReturnIdentifiers", "identifiers", "getAndroidId", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "getAndroidIdViaReflection", "getAndroidIdViaService", "getAttributionIdentifiers", "getInstallerPackageName", "isGooglePlayServicesAvailable", "", "isTrackingLimited", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.q$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/q$a.class */
    public static final class C1166a {
        /* renamed from: a */
        public static final C1165q m41704a(C1165q c1165q) {
            c1165q.f3185b = System.currentTimeMillis();
            C1165q.f3183g = c1165q;
            return c1165q;
        }

        /* JADX WARN: Removed duplicated region for block: B:134:0x03c1 A[Catch: all -> 0x03ce, Exception -> 0x03d6, TRY_ENTER, TryCatch #10 {Exception -> 0x03d6, all -> 0x03ce, blocks: (B:68:0x023b, B:70:0x0247, B:72:0x024f, B:76:0x0260, B:78:0x027c, B:80:0x0298, B:83:0x02a5, B:85:0x02be, B:87:0x02ca, B:90:0x02db, B:93:0x02eb, B:96:0x02f5, B:98:0x02fc, B:134:0x03c1, B:135:0x03cd), top: B:165:0x023b }] */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0050  */
        /* JADX WARN: Removed duplicated region for block: B:155:0x0411  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0055 A[Catch: Exception -> 0x00fe, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x00fe, blocks: (B:3:0x000a, B:5:0x0022, B:7:0x0037, B:15:0x0055, B:18:0x006f, B:21:0x0088, B:27:0x00b9, B:30:0x00ee, B:32:0x00f6), top: B:160:0x000a }] */
        /* JADX WARN: Removed duplicated region for block: B:37:0x010d  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x0233  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x0247 A[Catch: all -> 0x03ce, Exception -> 0x03d6, TRY_LEAVE, TryCatch #10 {Exception -> 0x03d6, all -> 0x03ce, blocks: (B:68:0x023b, B:70:0x0247, B:72:0x024f, B:76:0x0260, B:78:0x027c, B:80:0x0298, B:83:0x02a5, B:85:0x02be, B:87:0x02ca, B:90:0x02db, B:93:0x02eb, B:96:0x02f5, B:98:0x02fc, B:134:0x03c1, B:135:0x03cd), top: B:165:0x023b }] */
        /* JADX WARN: Removed duplicated region for block: B:89:0x02d5  */
        /* JADX WARN: Removed duplicated region for block: B:90:0x02db A[Catch: all -> 0x03ce, Exception -> 0x03d6, TRY_ENTER, TryCatch #10 {Exception -> 0x03d6, all -> 0x03ce, blocks: (B:68:0x023b, B:70:0x0247, B:72:0x024f, B:76:0x0260, B:78:0x027c, B:80:0x0298, B:83:0x02a5, B:85:0x02be, B:87:0x02ca, B:90:0x02db, B:93:0x02eb, B:96:0x02f5, B:98:0x02fc, B:134:0x03c1, B:135:0x03cd), top: B:165:0x023b }] */
        /* JADX WARN: Removed duplicated region for block: B:93:0x02eb A[Catch: all -> 0x03ce, Exception -> 0x03d6, TRY_ENTER, TryCatch #10 {Exception -> 0x03d6, all -> 0x03ce, blocks: (B:68:0x023b, B:70:0x0247, B:72:0x024f, B:76:0x0260, B:78:0x027c, B:80:0x0298, B:83:0x02a5, B:85:0x02be, B:87:0x02ca, B:90:0x02db, B:93:0x02eb, B:96:0x02f5, B:98:0x02fc, B:134:0x03c1, B:135:0x03cd), top: B:165:0x023b }] */
        /* JADX WARN: Removed duplicated region for block: B:96:0x02f5 A[Catch: all -> 0x03ce, Exception -> 0x03d6, TRY_ENTER, TRY_LEAVE, TryCatch #10 {Exception -> 0x03d6, all -> 0x03ce, blocks: (B:68:0x023b, B:70:0x0247, B:72:0x024f, B:76:0x0260, B:78:0x027c, B:80:0x0298, B:83:0x02a5, B:85:0x02be, B:87:0x02ca, B:90:0x02db, B:93:0x02eb, B:96:0x02f5, B:98:0x02fc, B:134:0x03c1, B:135:0x03cd), top: B:165:0x023b }] */
        /* JADX WARN: Removed duplicated region for block: B:98:0x02fc A[Catch: all -> 0x03ce, Exception -> 0x03d6, TRY_ENTER, TRY_LEAVE, TryCatch #10 {Exception -> 0x03d6, all -> 0x03ce, blocks: (B:68:0x023b, B:70:0x0247, B:72:0x024f, B:76:0x0260, B:78:0x027c, B:80:0x0298, B:83:0x02a5, B:85:0x02be, B:87:0x02ca, B:90:0x02db, B:93:0x02eb, B:96:0x02f5, B:98:0x02fc, B:134:0x03c1, B:135:0x03cd), top: B:165:0x023b }] */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final com.facebook.internal.C1165q m41703b(android.content.Context r7) {
            /*
                Method dump skipped, instructions count: 1053
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C1165q.C1166a.m41703b(android.content.Context):com.facebook.internal.q");
        }
    }

    @Metadata(d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010\u0010\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\nX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0011"}, d2 = {"Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;", "Landroid/content/ServiceConnection;", "()V", "binder", "Landroid/os/IBinder;", "getBinder", "()Landroid/os/IBinder;", "consumed", "Ljava/util/concurrent/atomic/AtomicBoolean;", "queue", "Ljava/util/concurrent/BlockingQueue;", "onServiceConnected", "", AnalyticsConstants.NAME, "Landroid/content/ComponentName;", "service", "onServiceDisconnected", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.q$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/q$b.class */
    public static final class ServiceConnectionC1167b implements ServiceConnection {

        /* renamed from: a */
        public final AtomicBoolean f3189a = new AtomicBoolean(false);

        /* renamed from: b */
        public final BlockingQueue<IBinder> f3190b = new LinkedBlockingDeque();

        /* renamed from: a */
        public final IBinder m41702a() throws InterruptedException {
            if (!this.f3189a.compareAndSet(true, true)) {
                IBinder take = this.f3190b.take();
                l.d(take, "queue.take()");
                return take;
            }
            throw new IllegalStateException("Binder already consumed".toString());
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (iBinder != null) {
                try {
                    this.f3190b.put(iBinder);
                } catch (InterruptedException e) {
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* renamed from: a */
    public final String m41705a() {
        String str;
        C23228f0 c23228f0 = C23228f0.f64291a;
        if (C23228f0.m7345j()) {
            C23271v0 c23271v0 = C23271v0.f64400a;
            if (C23271v0.m7310a()) {
                str = this.f3184a;
                return str;
            }
        }
        str = null;
        return str;
    }
}
