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
import com.facebook.C10181g;
import com.mopub.common.GpsHelper;
import java.lang.reflect.Method;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\t\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018�� \u00122\u00020\u0001:\u0003\u0012\u0013\u0014B\u0005¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\"\u0010\t\u001a\u0004\u0018\u00010\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\n\u0010\u0006R\"\u0010\u000b\u001a\u0004\u0018\u00010\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\f\u0010\u0006R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n��R\u001e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u000f@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m4298d2 = {"Lcom/facebook/internal/AttributionIdentifiers;", "", "()V", "androidAdvertiserId", "", "getAndroidAdvertiserId", "()Ljava/lang/String;", "androidAdvertiserIdValue", "<set-?>", "androidInstallerPackage", "getAndroidInstallerPackage", "attributionId", "getAttributionId", "fetchTime", "", "", "isTrackingLimited", "()Z", "Companion", "GoogleAdInfo", "GoogleAdServiceConnection", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.b */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/b.class */
public final class C10234b {

    /* renamed from: d */
    public static final C10235a f33723d = new C10235a(null);

    /* renamed from: g */
    private static final String f33724g = C10234b.class.getCanonicalName();

    /* renamed from: h */
    private static C10234b f33725h;

    /* renamed from: a */
    String f33726a;

    /* renamed from: b */
    String f33727b;

    /* renamed from: c */
    boolean f33728c;

    /* renamed from: e */
    private String f33729e;

    /* renamed from: f */
    private long f33730f;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u000fH\u0002J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010 \u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n��R(\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f@BX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006!"}, m4298d2 = {"Lcom/facebook/internal/AttributionIdentifiers$Companion;", "", "()V", "ANDROID_ID_COLUMN_NAME", "", "ATTRIBUTION_ID_COLUMN_NAME", "ATTRIBUTION_ID_CONTENT_PROVIDER", "ATTRIBUTION_ID_CONTENT_PROVIDER_WAKIZASHI", "CONNECTION_RESULT_SUCCESS", "", "IDENTIFIER_REFRESH_INTERVAL_MILLIS", "", "LIMIT_TRACKING_COLUMN_NAME", "TAG", "<set-?>", "Lcom/facebook/internal/AttributionIdentifiers;", "cachedIdentifiers", "getCachedIdentifiers", "()Lcom/facebook/internal/AttributionIdentifiers;", "setCachedIdentifiers", "(Lcom/facebook/internal/AttributionIdentifiers;)V", "cacheAndReturnIdentifiers", "identifiers", "getAndroidId", "context", "Landroid/content/Context;", "getAndroidIdViaReflection", "getAndroidIdViaService", "getAttributionIdentifiers", "getInstallerPackageName", "isGooglePlayServicesAvailable", "", "isTrackingLimited", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.b$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b$a.class */
    public static final class C10235a {
        private C10235a() {
        }

        public /* synthetic */ C10235a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        private static C10234b m23126a(C10234b c10234b) {
            c10234b.f33730f = System.currentTimeMillis();
            C10234b.f33725h = c10234b;
            return c10234b;
        }

        /* renamed from: b */
        private static C10234b m23124b(Context context) {
            boolean z;
            Method m23225a;
            Object m23232a;
            Method m23234a;
            Object m23232a2;
            boolean z2 = false;
            try {
                Method m23225a2 = C10213ae.m23225a("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", Context.class);
                if (m23225a2 != null) {
                    if ((C10213ae.m23232a((Object) null, m23225a2, context) instanceof Integer) && !(!C18524p.m3850a(m23232a2, (Object) 0))) {
                        z = true;
                        if (z || (m23225a = C10213ae.m23225a("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", Context.class)) == null || (m23232a = C10213ae.m23232a((Object) null, m23225a, context)) == null) {
                            return null;
                        }
                        m23234a = C10213ae.m23234a(m23232a.getClass(), "getId", new Class[0]);
                        Method m23234a2 = C10213ae.m23234a(m23232a.getClass(), GpsHelper.IS_LIMIT_AD_TRACKING_ENABLED_KEY, new Class[0]);
                        if (m23234a == null && m23234a2 != null) {
                            C10234b c10234b = new C10234b();
                            c10234b.f33729e = (String) C10213ae.m23232a(m23232a, m23234a, new Object[0]);
                            Boolean bool = (Boolean) C10213ae.m23232a(m23232a, m23234a2, new Object[0]);
                            if (bool != null) {
                                z2 = bool.booleanValue();
                            }
                            c10234b.f33728c = z2;
                            return c10234b;
                        }
                    }
                }
                z = false;
                if (z) {
                    return null;
                }
                m23234a = C10213ae.m23234a(m23232a.getClass(), "getId", new Class[0]);
                Method m23234a22 = C10213ae.m23234a(m23232a.getClass(), GpsHelper.IS_LIMIT_AD_TRACKING_ENABLED_KEY, new Class[0]);
                return m23234a == null ? null : null;
            } catch (Exception e) {
                C10213ae.m23228a("android_id", e);
                return null;
            }
        }

        /* renamed from: c */
        private static C10234b m23123c(Context context) {
            ServiceConnectionC10238c serviceConnectionC10238c = new ServiceConnectionC10238c();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            ServiceConnectionC10238c serviceConnectionC10238c2 = serviceConnectionC10238c;
            try {
                if (!context.bindService(intent, serviceConnectionC10238c2, 1)) {
                    return null;
                }
                if (!(true ^ serviceConnectionC10238c.f33733a.compareAndSet(true, true))) {
                    throw new IllegalStateException("Binder already consumed".toString());
                }
                IBinder take = serviceConnectionC10238c.f33734b.take();
                C18524p.m3843b(take, "queue.take()");
                C10236b c10236b = new C10236b(take);
                C10234b c10234b = new C10234b();
                c10234b.f33729e = c10236b.m23118a();
                c10234b.f33728c = c10236b.m23114b();
                return c10234b;
            } catch (Exception e) {
                C10213ae.m23228a("android_id", e);
                return null;
            } finally {
                context.unbindService(serviceConnectionC10238c2);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:30:0x00b8 A[Catch: all -> 0x019c, Exception -> 0x01a3, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x01a3, all -> 0x019c, blocks: (B:8:0x0027, B:10:0x0033, B:12:0x003b, B:16:0x004c, B:18:0x0068, B:20:0x007f, B:24:0x008d, B:26:0x00a1, B:28:0x00ad, B:30:0x00b8, B:34:0x00ce, B:37:0x00d8, B:40:0x00de, B:62:0x018c, B:63:0x019b), top: B:81:0x0027 }] */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00c6  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00ce A[Catch: all -> 0x019c, Exception -> 0x01a3, TRY_ENTER, TryCatch #4 {Exception -> 0x01a3, all -> 0x019c, blocks: (B:8:0x0027, B:10:0x0033, B:12:0x003b, B:16:0x004c, B:18:0x0068, B:20:0x007f, B:24:0x008d, B:26:0x00a1, B:28:0x00ad, B:30:0x00b8, B:34:0x00ce, B:37:0x00d8, B:40:0x00de, B:62:0x018c, B:63:0x019b), top: B:81:0x0027 }] */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00d8 A[Catch: all -> 0x019c, Exception -> 0x01a3, TRY_ENTER, TryCatch #4 {Exception -> 0x01a3, all -> 0x019c, blocks: (B:8:0x0027, B:10:0x0033, B:12:0x003b, B:16:0x004c, B:18:0x0068, B:20:0x007f, B:24:0x008d, B:26:0x00a1, B:28:0x00ad, B:30:0x00b8, B:34:0x00ce, B:37:0x00d8, B:40:0x00de, B:62:0x018c, B:63:0x019b), top: B:81:0x0027 }] */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00dd  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x01c9  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.facebook.internal.C10234b m23127a(android.content.Context r8) {
            /*
                Method dump skipped, instructions count: 465
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C10234b.C10235a.m23127a(android.content.Context):com.facebook.internal.b");
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018�� \r2\u00020\u0001:\u0001\rB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\f\u001a\u00020\u0003H\u0016R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\t\u0010\u000b¨\u0006\u000e"}, m4298d2 = {"Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;", "Landroid/os/IInterface;", "binder", "Landroid/os/IBinder;", "(Landroid/os/IBinder;)V", ServerParameters.ADVERTISING_ID_PARAM, "", "getAdvertiserId", "()Ljava/lang/String;", "isTrackingLimited", "", "()Z", "asBinder", "Companion", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.b$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b$b.class */
    public static final class C10236b implements IInterface {

        /* renamed from: a */
        public static final C10237a f33731a = new C10237a(null);

        /* renamed from: b */
        private final IBinder f33732b;

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0006"}, m4298d2 = {"Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo$Companion;", "", "()V", "FIRST_TRANSACTION_CODE", "", "SECOND_TRANSACTION_CODE", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
        /* renamed from: com.facebook.internal.b$b$a */
        /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b$b$a.class */
        public static final class C10237a {
            private C10237a() {
            }

            public /* synthetic */ C10237a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public C10236b(IBinder binder) {
            C18524p.m3840d(binder, "binder");
            this.f33732b = binder;
        }

        /* renamed from: a */
        public final String m23118a() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            C18524p.m3843b(obtain, "Parcel.obtain()");
            Parcel obtain2 = Parcel.obtain();
            C18524p.m3843b(obtain2, "Parcel.obtain()");
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f33732b.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this.f33732b;
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: b */
        public final boolean m23114b() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            C18524p.m3843b(obtain, "Parcel.obtain()");
            Parcel obtain2 = Parcel.obtain();
            C18524p.m3843b(obtain2, "Parcel.obtain()");
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                boolean z = true;
                obtain.writeInt(1);
                this.f33732b.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() == 0) {
                    z = false;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            } catch (Throwable th) {
                obtain2.recycle();
                obtain.recycle();
                throw th;
            }
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010\u0010\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\nX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0011"}, m4298d2 = {"Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;", "Landroid/content/ServiceConnection;", "()V", "binder", "Landroid/os/IBinder;", "getBinder", "()Landroid/os/IBinder;", "consumed", "Ljava/util/concurrent/atomic/AtomicBoolean;", "queue", "Ljava/util/concurrent/BlockingQueue;", "onServiceConnected", "", "name", "Landroid/content/ComponentName;", "service", "onServiceDisconnected", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.b$c */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b$c.class */
    public static final class ServiceConnectionC10238c implements ServiceConnection {

        /* renamed from: a */
        final AtomicBoolean f33733a = new AtomicBoolean(false);

        /* renamed from: b */
        final BlockingQueue<IBinder> f33734b = new LinkedBlockingDeque();

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (iBinder != null) {
                try {
                    this.f33734b.put(iBinder);
                } catch (InterruptedException e) {
                }
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* renamed from: a */
    public static final boolean m23139a(Context context) {
        C10235a c10235a = f33723d;
        C18524p.m3840d(context, "context");
        C10234b m23127a = c10235a.m23127a(context);
        return m23127a != null && m23127a.f33728c;
    }

    /* renamed from: b */
    public static final C10234b m23133b(Context context) {
        return f33723d.m23127a(context);
    }

    /* renamed from: a */
    public final String m23140a() {
        if (!C10181g.m23306a() || !C10181g.m23281r()) {
            return null;
        }
        return this.f33729e;
    }
}
