package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.appsflyer.ServerParameters;
import com.facebook.g;
import com.mopub.common.GpsHelper;
import java.lang.reflect.Method;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\t\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018�� \u00122\u00020\u0001:\u0003\u0012\u0013\u0014B\u0005¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\"\u0010\t\u001a\u0004\u0018\u00010\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\n\u0010\u0006R\"\u0010\u000b\u001a\u0004\u0018\u00010\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\f\u0010\u0006R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n��R\u001e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u000f@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, d2 = {"Lcom/facebook/internal/AttributionIdentifiers;", "", "()V", "androidAdvertiserId", "", "getAndroidAdvertiserId", "()Ljava/lang/String;", "androidAdvertiserIdValue", "<set-?>", "androidInstallerPackage", "getAndroidInstallerPackage", "attributionId", "getAttributionId", "fetchTime", "", "", "isTrackingLimited", "()Z", "Companion", "GoogleAdInfo", "GoogleAdServiceConnection", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/b.class */
public final class b {

    /* renamed from: d  reason: collision with root package name */
    public static final a f19858d = new a(null);
    private static final String g = b.class.getCanonicalName();
    private static b h;

    /* renamed from: a  reason: collision with root package name */
    String f19859a;

    /* renamed from: b  reason: collision with root package name */
    String f19860b;

    /* renamed from: c  reason: collision with root package name */
    boolean f19861c;
    private String e;
    private long f;

    @Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u000fH\u0002J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010 \u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n��R(\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f@BX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006!"}, d2 = {"Lcom/facebook/internal/AttributionIdentifiers$Companion;", "", "()V", "ANDROID_ID_COLUMN_NAME", "", "ATTRIBUTION_ID_COLUMN_NAME", "ATTRIBUTION_ID_CONTENT_PROVIDER", "ATTRIBUTION_ID_CONTENT_PROVIDER_WAKIZASHI", "CONNECTION_RESULT_SUCCESS", "", "IDENTIFIER_REFRESH_INTERVAL_MILLIS", "", "LIMIT_TRACKING_COLUMN_NAME", "TAG", "<set-?>", "Lcom/facebook/internal/AttributionIdentifiers;", "cachedIdentifiers", "getCachedIdentifiers", "()Lcom/facebook/internal/AttributionIdentifiers;", "setCachedIdentifiers", "(Lcom/facebook/internal/AttributionIdentifiers;)V", "cacheAndReturnIdentifiers", "identifiers", "getAndroidId", "context", "Landroid/content/Context;", "getAndroidIdViaReflection", "getAndroidIdViaService", "getAttributionIdentifiers", "getInstallerPackageName", "isGooglePlayServicesAvailable", "", "isTrackingLimited", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static b a(b bVar) {
            bVar.f = System.currentTimeMillis();
            b.h = bVar;
            return bVar;
        }

        private static b b(Context context) {
            boolean z;
            Method a2;
            Object a3;
            Method a4;
            boolean z2 = false;
            try {
                Method a5 = ae.a("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", Context.class);
                if (a5 != null) {
                    Object a6 = ae.a((Object) null, a5, context);
                    if ((a6 instanceof Integer) && !(!p.a(a6, (Object) 0))) {
                        z = true;
                        if (z || (a2 = ae.a("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", Context.class)) == null || (a3 = ae.a((Object) null, a2, context)) == null) {
                            return null;
                        }
                        a4 = ae.a(a3.getClass(), "getId", new Class[0]);
                        Method a7 = ae.a(a3.getClass(), GpsHelper.IS_LIMIT_AD_TRACKING_ENABLED_KEY, new Class[0]);
                        if (a4 == null && a7 != null) {
                            b bVar = new b();
                            bVar.e = (String) ae.a(a3, a4, new Object[0]);
                            Boolean bool = (Boolean) ae.a(a3, a7, new Object[0]);
                            if (bool != null) {
                                z2 = bool.booleanValue();
                            }
                            bVar.f19861c = z2;
                            return bVar;
                        }
                    }
                }
                z = false;
                if (z) {
                    return null;
                }
                a4 = ae.a(a3.getClass(), "getId", new Class[0]);
                Method a72 = ae.a(a3.getClass(), GpsHelper.IS_LIMIT_AD_TRACKING_ENABLED_KEY, new Class[0]);
                return a4 == null ? null : null;
            } catch (Exception e) {
                ae.a("android_id", e);
                return null;
            }
        }

        private static b c(Context context) {
            c cVar = new c();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            c cVar2 = cVar;
            try {
                if (!context.bindService(intent, cVar2, 1)) {
                    return null;
                }
                if (true ^ cVar.f19881a.compareAndSet(true, true)) {
                    IBinder take = cVar.f19882b.take();
                    p.b(take, "queue.take()");
                    C0397b bVar = new C0397b(take);
                    b bVar2 = new b();
                    bVar2.e = bVar.a();
                    bVar2.f19861c = bVar.b();
                    return bVar2;
                }
                throw new IllegalStateException("Binder already consumed".toString());
            } catch (Exception e) {
                ae.a("android_id", e);
                return null;
            } finally {
                context.unbindService(cVar2);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:30:0x00b8 A[Catch: all -> 0x019c, Exception -> 0x01a3, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x01a3, all -> 0x019c, blocks: (B:8:0x0027, B:10:0x0033, B:12:0x003b, B:16:0x004c, B:18:0x0068, B:20:0x007f, B:24:0x008d, B:26:0x00a1, B:28:0x00ad, B:30:0x00b8, B:34:0x00ce, B:37:0x00d8, B:40:0x00de, B:62:0x018c, B:63:0x019b), top: B:81:0x0027 }] */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00c6  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00ce A[Catch: all -> 0x019c, Exception -> 0x01a3, TRY_ENTER, TryCatch #4 {Exception -> 0x01a3, all -> 0x019c, blocks: (B:8:0x0027, B:10:0x0033, B:12:0x003b, B:16:0x004c, B:18:0x0068, B:20:0x007f, B:24:0x008d, B:26:0x00a1, B:28:0x00ad, B:30:0x00b8, B:34:0x00ce, B:37:0x00d8, B:40:0x00de, B:62:0x018c, B:63:0x019b), top: B:81:0x0027 }] */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00d8 A[Catch: all -> 0x019c, Exception -> 0x01a3, TRY_ENTER, TryCatch #4 {Exception -> 0x01a3, all -> 0x019c, blocks: (B:8:0x0027, B:10:0x0033, B:12:0x003b, B:16:0x004c, B:18:0x0068, B:20:0x007f, B:24:0x008d, B:26:0x00a1, B:28:0x00ad, B:30:0x00b8, B:34:0x00ce, B:37:0x00d8, B:40:0x00de, B:62:0x018c, B:63:0x019b), top: B:81:0x0027 }] */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00dd  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x01c9  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.facebook.internal.b a(android.content.Context r8) {
            /*
                Method dump skipped, instructions count: 465
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.b.a.a(android.content.Context):com.facebook.internal.b");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018�� \r2\u00020\u0001:\u0001\rB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\f\u001a\u00020\u0003H\u0016R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\t\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;", "Landroid/os/IInterface;", "binder", "Landroid/os/IBinder;", "(Landroid/os/IBinder;)V", ServerParameters.ADVERTISING_ID_PARAM, "", "getAdvertiserId", "()Ljava/lang/String;", "isTrackingLimited", "", "()Z", "asBinder", "Companion", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.b$b  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b$b.class */
    public static final class C0397b implements IInterface {

        /* renamed from: a  reason: collision with root package name */
        public static final a f19871a = new a(null);

        /* renamed from: b  reason: collision with root package name */
        private final IBinder f19872b;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0006"}, d2 = {"Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo$Companion;", "", "()V", "FIRST_TRANSACTION_CODE", "", "SECOND_TRANSACTION_CODE", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
        /* renamed from: com.facebook.internal.b$b$a */
        /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b$b$a.class */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public C0397b(IBinder binder) {
            p.d(binder, "binder");
            this.f19872b = binder;
        }

        public final String a() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            p.b(obtain, "Parcel.obtain()");
            Parcel obtain2 = Parcel.obtain();
            p.b(obtain2, "Parcel.obtain()");
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f19872b.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this.f19872b;
        }

        public final boolean b() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            p.b(obtain, "Parcel.obtain()");
            Parcel obtain2 = Parcel.obtain();
            p.b(obtain2, "Parcel.obtain()");
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                boolean z = true;
                obtain.writeInt(1);
                this.f19872b.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() == 0) {
                    z = false;
                }
                return z;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010\u0010\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\nX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0011"}, d2 = {"Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;", "Landroid/content/ServiceConnection;", "()V", "binder", "Landroid/os/IBinder;", "getBinder", "()Landroid/os/IBinder;", "consumed", "Ljava/util/concurrent/atomic/AtomicBoolean;", "queue", "Ljava/util/concurrent/BlockingQueue;", "onServiceConnected", "", "name", "Landroid/content/ComponentName;", "service", "onServiceDisconnected", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b$c.class */
    public static final class c implements ServiceConnection {

        /* renamed from: a  reason: collision with root package name */
        final AtomicBoolean f19881a = new AtomicBoolean(false);

        /* renamed from: b  reason: collision with root package name */
        final BlockingQueue<IBinder> f19882b = new LinkedBlockingDeque();

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (iBinder != null) {
                try {
                    this.f19882b.put(iBinder);
                } catch (InterruptedException e) {
                }
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public static final boolean a(Context context) {
        a aVar = f19858d;
        p.d(context, "context");
        b a2 = aVar.a(context);
        return a2 != null && a2.f19861c;
    }

    public static final b b(Context context) {
        return f19858d.a(context);
    }

    public final String a() {
        if (!g.a() || !g.r()) {
            return null;
        }
        return this.e;
    }
}
