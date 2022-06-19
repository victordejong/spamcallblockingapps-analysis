package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.util.VisibleForTesting;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import p193e.p1577m.p1578a.p1642f.p1653e.p1656b.HandlerC24976m;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient.class */
public abstract class BaseGmsClient<T extends IInterface> {
    @KeepForSdk
    public static final int CONNECT_STATE_CONNECTED = 4;
    @KeepForSdk
    public static final int CONNECT_STATE_DISCONNECTED = 1;
    @KeepForSdk
    public static final int CONNECT_STATE_DISCONNECTING = 5;
    @KeepForSdk
    public static final String DEFAULT_ACCOUNT = "<<default account>>";
    @KeepForSdk
    public static final String KEY_PENDING_INTENT = "pendingIntent";
    private volatile String zzA;
    private ConnectionResult zzB;
    private boolean zzC;
    private volatile zzj zzD;
    @VisibleForTesting
    public zzu zza;
    public final Handler zzb;
    @VisibleForTesting
    public ConnectionProgressReportCallbacks zzc;
    @VisibleForTesting
    public AtomicInteger zzd;
    private int zzf;
    private long zzg;
    private long zzh;
    private int zzi;
    private long zzj;
    private volatile String zzk;
    private final Context zzl;
    private final Looper zzm;
    private final GmsClientSupervisor zzn;
    private final GoogleApiAvailabilityLight zzo;
    private final Object zzp;
    private final Object zzq;
    private IGmsServiceBroker zzr;
    private T zzs;
    private final ArrayList<zzc<?>> zzt;
    private zze zzu;
    private int zzv;
    private final BaseConnectionCallbacks zzw;
    private final BaseOnConnectionFailedListener zzx;
    private final int zzy;
    private final String zzz;
    private static final Feature[] zze = new Feature[0];
    @KeepForSdk
    public static final String[] GOOGLE_PLUS_REQUIRED_FEATURES = {"service_esmobile", "service_googleme"};

    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks.class */
    public interface BaseConnectionCallbacks {
        @KeepForSdk
        void onConnected(Bundle bundle);

        @KeepForSdk
        void onConnectionSuspended(int i);
    }

    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener.class */
    public interface BaseOnConnectionFailedListener {
        @KeepForSdk
        void onConnectionFailed(ConnectionResult connectionResult);
    }

    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks.class */
    public interface ConnectionProgressReportCallbacks {
        @KeepForSdk
        /* renamed from: a */
        void mo4289a(ConnectionResult connectionResult);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter.class */
    public class LegacyClientCallbackAdapter implements ConnectionProgressReportCallbacks {
        @KeepForSdk
        public LegacyClientCallbackAdapter() {
            BaseGmsClient.this = r4;
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
        /* renamed from: a */
        public final void mo4289a(ConnectionResult connectionResult) {
            if (connectionResult.m39076p2()) {
                BaseGmsClient baseGmsClient = BaseGmsClient.this;
                baseGmsClient.getRemoteService(null, baseGmsClient.getScopes());
            } else if (BaseGmsClient.this.zzx == null) {
            } else {
                BaseGmsClient.this.zzx.onConnectionFailed(connectionResult);
            }
        }
    }

    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks.class */
    public interface SignOutCallbacks {
        @KeepForSdk
        /* renamed from: a */
        void mo4276a();
    }

    @VisibleForTesting
    @KeepForSdk
    public BaseGmsClient(Context context, Handler handler, GmsClientSupervisor gmsClientSupervisor, GoogleApiAvailabilityLight googleApiAvailabilityLight, int i, BaseConnectionCallbacks baseConnectionCallbacks, BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        this.zzk = null;
        this.zzp = new Object();
        this.zzq = new Object();
        this.zzt = new ArrayList<>();
        this.zzv = 1;
        this.zzB = null;
        this.zzC = false;
        this.zzD = null;
        this.zzd = new AtomicInteger(0);
        Preconditions.m38897k(context, "Context must not be null");
        this.zzl = context;
        Preconditions.m38897k(handler, "Handler must not be null");
        this.zzb = handler;
        this.zzm = handler.getLooper();
        Preconditions.m38897k(gmsClientSupervisor, "Supervisor must not be null");
        this.zzn = gmsClientSupervisor;
        Preconditions.m38897k(googleApiAvailabilityLight, "API availability must not be null");
        this.zzo = googleApiAvailabilityLight;
        this.zzy = i;
        this.zzw = baseConnectionCallbacks;
        this.zzx = baseOnConnectionFailedListener;
        this.zzz = null;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @com.google.android.gms.common.annotation.KeepForSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BaseGmsClient(android.content.Context r11, android.os.Looper r12, int r13, com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks r14, com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener r15, java.lang.String r16) {
        /*
            r10 = this;
            r0 = r11
            com.google.android.gms.common.internal.GmsClientSupervisor r0 = com.google.android.gms.common.internal.GmsClientSupervisor.m38918a(r0)
            r17 = r0
            com.google.android.gms.common.GoogleApiAvailabilityLight r0 = com.google.android.gms.common.GoogleApiAvailabilityLight.f5675b
            r18 = r0
            r0 = r14
            java.lang.String r1 = "null reference"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r15
            java.lang.String r1 = "null reference"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r10
            r1 = r11
            r2 = r12
            r3 = r17
            r4 = r18
            r5 = r13
            r6 = r14
            r7 = r15
            r8 = r16
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.BaseGmsClient.<init>(android.content.Context, android.os.Looper, int, com.google.android.gms.common.internal.BaseGmsClient$BaseConnectionCallbacks, com.google.android.gms.common.internal.BaseGmsClient$BaseOnConnectionFailedListener, java.lang.String):void");
    }

    @VisibleForTesting
    @KeepForSdk
    public BaseGmsClient(Context context, Looper looper, GmsClientSupervisor gmsClientSupervisor, GoogleApiAvailabilityLight googleApiAvailabilityLight, int i, BaseConnectionCallbacks baseConnectionCallbacks, BaseOnConnectionFailedListener baseOnConnectionFailedListener, String str) {
        this.zzk = null;
        this.zzp = new Object();
        this.zzq = new Object();
        this.zzt = new ArrayList<>();
        this.zzv = 1;
        this.zzB = null;
        this.zzC = false;
        this.zzD = null;
        this.zzd = new AtomicInteger(0);
        Preconditions.m38897k(context, "Context must not be null");
        this.zzl = context;
        Preconditions.m38897k(looper, "Looper must not be null");
        this.zzm = looper;
        Preconditions.m38897k(gmsClientSupervisor, "Supervisor must not be null");
        this.zzn = gmsClientSupervisor;
        Preconditions.m38897k(googleApiAvailabilityLight, "API availability must not be null");
        this.zzo = googleApiAvailabilityLight;
        this.zzb = new HandlerC24976m(this, looper);
        this.zzy = i;
        this.zzw = baseConnectionCallbacks;
        this.zzx = baseOnConnectionFailedListener;
        this.zzz = str;
    }

    public static void zzj(BaseGmsClient baseGmsClient, zzj zzjVar) {
        RootTelemetryConfiguration rootTelemetryConfiguration;
        baseGmsClient.zzD = zzjVar;
        if (baseGmsClient.usesClientTelemetry()) {
            ConnectionTelemetryConfiguration connectionTelemetryConfiguration = zzjVar.f6058d;
            RootTelemetryConfigManager m38893a = RootTelemetryConfigManager.m38893a();
            RootTelemetryConfiguration rootTelemetryConfiguration2 = connectionTelemetryConfiguration == null ? null : connectionTelemetryConfiguration.f5955a;
            synchronized (m38893a) {
                if (rootTelemetryConfiguration2 == null) {
                    rootTelemetryConfiguration = RootTelemetryConfigManager.f5994c;
                } else {
                    RootTelemetryConfiguration rootTelemetryConfiguration3 = m38893a.f5995a;
                    rootTelemetryConfiguration = rootTelemetryConfiguration2;
                    if (rootTelemetryConfiguration3 != null) {
                        if (rootTelemetryConfiguration3.f5996a < rootTelemetryConfiguration2.f5996a) {
                            rootTelemetryConfiguration = rootTelemetryConfiguration2;
                        }
                    }
                }
                m38893a.f5995a = rootTelemetryConfiguration;
            }
        }
    }

    public static /* bridge */ /* synthetic */ void zzk(BaseGmsClient baseGmsClient, int i) {
        int i2;
        int i3;
        synchronized (baseGmsClient.zzp) {
            i2 = baseGmsClient.zzv;
        }
        if (i2 == 3) {
            baseGmsClient.zzC = true;
            i3 = 5;
        } else {
            i3 = 4;
        }
        Handler handler = baseGmsClient.zzb;
        handler.sendMessage(handler.obtainMessage(i3, baseGmsClient.zzd.get(), 16));
    }

    public static /* bridge */ /* synthetic */ boolean zzn(BaseGmsClient baseGmsClient, int i, int i2, IInterface iInterface) {
        boolean z;
        synchronized (baseGmsClient.zzp) {
            if (baseGmsClient.zzv != i) {
                z = false;
            } else {
                baseGmsClient.zzp(i2, iInterface);
                z = true;
            }
        }
        return z;
    }

    public static /* bridge */ /* synthetic */ boolean zzo(BaseGmsClient baseGmsClient) {
        boolean z = false;
        if (!baseGmsClient.zzC && !TextUtils.isEmpty(baseGmsClient.getServiceDescriptor()) && !TextUtils.isEmpty(baseGmsClient.getLocalStartServiceAction())) {
            try {
                Class.forName(baseGmsClient.getServiceDescriptor());
                z = true;
            } catch (ClassNotFoundException e) {
            }
        }
        return z;
    }

    public final void zzp(int i, T t) {
        zzu zzuVar;
        zzu zzuVar2;
        Preconditions.m38907a((i == 4) == (t != null));
        synchronized (this.zzp) {
            this.zzv = i;
            this.zzs = t;
            if (i == 1) {
                zze zzeVar = this.zzu;
                if (zzeVar != null) {
                    GmsClientSupervisor gmsClientSupervisor = this.zzn;
                    String str = this.zza.f6066a;
                    Objects.requireNonNull(str, "null reference");
                    zzu zzuVar3 = this.zza;
                    String str2 = zzuVar3.f6067b;
                    int i2 = zzuVar3.f6068c;
                    String zze2 = zze();
                    boolean z = this.zza.f6069d;
                    Objects.requireNonNull(gmsClientSupervisor);
                    gmsClientSupervisor.mo4247b(new zzn(str, str2, i2, z), zzeVar, zze2);
                    this.zzu = null;
                }
            } else if (i == 2 || i == 3) {
                zze zzeVar2 = this.zzu;
                if (zzeVar2 != null && (zzuVar2 = this.zza) != null) {
                    String str3 = zzuVar2.f6066a;
                    String str4 = zzuVar2.f6067b;
                    String.valueOf(str3).length();
                    String.valueOf(str4).length();
                    GmsClientSupervisor gmsClientSupervisor2 = this.zzn;
                    String str5 = this.zza.f6066a;
                    Objects.requireNonNull(str5, "null reference");
                    zzu zzuVar4 = this.zza;
                    String str6 = zzuVar4.f6067b;
                    int i3 = zzuVar4.f6068c;
                    String zze3 = zze();
                    boolean z2 = this.zza.f6069d;
                    Objects.requireNonNull(gmsClientSupervisor2);
                    gmsClientSupervisor2.mo4247b(new zzn(str5, str6, i3, z2), zzeVar2, zze3);
                    this.zzd.incrementAndGet();
                }
                zze zzeVar3 = new zze(this, this.zzd.get());
                this.zzu = zzeVar3;
                if (this.zzv != 3 || getLocalStartServiceAction() == null) {
                    String startServicePackage = getStartServicePackage();
                    String startServiceAction = getStartServiceAction();
                    Object obj = GmsClientSupervisor.f5975a;
                    zzuVar = new zzu(startServicePackage, startServiceAction, 4225, getUseDynamicLookup());
                } else {
                    String packageName = getContext().getPackageName();
                    String localStartServiceAction = getLocalStartServiceAction();
                    Object obj2 = GmsClientSupervisor.f5975a;
                    zzuVar = new zzu(packageName, localStartServiceAction, 4225, false);
                }
                this.zza = zzuVar;
                if (zzuVar.f6069d && getMinApkVersion() < 17895000) {
                    String valueOf = String.valueOf(this.zza.f6066a);
                    throw new IllegalStateException(valueOf.length() != 0 ? "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(valueOf) : new String("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "));
                }
                GmsClientSupervisor gmsClientSupervisor3 = this.zzn;
                String str7 = this.zza.f6066a;
                Objects.requireNonNull(str7, "null reference");
                zzu zzuVar5 = this.zza;
                if (!gmsClientSupervisor3.mo4246c(new zzn(str7, zzuVar5.f6067b, zzuVar5.f6068c, this.zza.f6069d), zzeVar3, zze(), getBindServiceExecutor())) {
                    zzu zzuVar6 = this.zza;
                    String str8 = zzuVar6.f6066a;
                    String str9 = zzuVar6.f6067b;
                    String.valueOf(str8).length();
                    String.valueOf(str9).length();
                    zzl(16, null, this.zzd.get());
                }
            } else if (i == 4) {
                Objects.requireNonNull(t, "null reference");
                onConnectedLocked(t);
            }
        }
    }

    @KeepForSdk
    public void checkAvailabilityAndConnect() {
        int mo39062e = this.zzo.mo39062e(this.zzl, getMinApkVersion());
        if (mo39062e == 0) {
            connect(new LegacyClientCallbackAdapter());
            return;
        }
        zzp(1, null);
        triggerNotAvailable(new LegacyClientCallbackAdapter(), mo39062e, null);
    }

    @KeepForSdk
    public final void checkConnected() {
        if (isConnected()) {
            return;
        }
        throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    }

    @KeepForSdk
    public void connect(ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        Preconditions.m38897k(connectionProgressReportCallbacks, "Connection progress callbacks cannot be null.");
        this.zzc = connectionProgressReportCallbacks;
        zzp(2, null);
    }

    @KeepForSdk
    public abstract T createServiceInterface(IBinder iBinder);

    @KeepForSdk
    public void disconnect() {
        this.zzd.incrementAndGet();
        synchronized (this.zzt) {
            int size = this.zzt.size();
            for (int i = 0; i < size; i++) {
                zzc<?> zzcVar = this.zzt.get(i);
                synchronized (zzcVar) {
                    zzcVar.f6045a = null;
                }
            }
            this.zzt.clear();
        }
        synchronized (this.zzq) {
            this.zzr = null;
        }
        zzp(1, null);
    }

    @KeepForSdk
    public void disconnect(String str) {
        this.zzk = str;
        disconnect();
    }

    @KeepForSdk
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i;
        T t;
        IGmsServiceBroker iGmsServiceBroker;
        synchronized (this.zzp) {
            i = this.zzv;
            t = this.zzs;
        }
        synchronized (this.zzq) {
            iGmsServiceBroker = this.zzr;
        }
        printWriter.append((CharSequence) str).append("mConnectState=");
        if (i == 1) {
            printWriter.print("DISCONNECTED");
        } else if (i == 2) {
            printWriter.print("REMOTE_CONNECTING");
        } else if (i == 3) {
            printWriter.print("LOCAL_CONNECTING");
        } else if (i == 4) {
            printWriter.print("CONNECTED");
        } else if (i != 5) {
            printWriter.print("UNKNOWN");
        } else {
            printWriter.print("DISCONNECTING");
        }
        printWriter.append(" mService=");
        if (t == null) {
            printWriter.append(AnalyticsConstants.NULL);
        } else {
            printWriter.append((CharSequence) getServiceDescriptor()).append(StringConstant.f9511AT).append((CharSequence) Integer.toHexString(System.identityHashCode(t.asBinder())));
        }
        printWriter.append(" mServiceBroker=");
        if (iGmsServiceBroker == null) {
            printWriter.println(AnalyticsConstants.NULL);
        } else {
            printWriter.append("IGmsServiceBroker@").println(Integer.toHexString(System.identityHashCode(iGmsServiceBroker.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.zzh > 0) {
            PrintWriter append = printWriter.append((CharSequence) str).append("lastConnectedTime=");
            long j = this.zzh;
            String format = simpleDateFormat.format(new Date(j));
            StringBuilder sb = new StringBuilder(String.valueOf(format).length() + 21);
            sb.append(j);
            sb.append(StringConstant.SPACE);
            sb.append(format);
            append.println(sb.toString());
        }
        if (this.zzg > 0) {
            printWriter.append((CharSequence) str).append("lastSuspendedCause=");
            int i2 = this.zzf;
            if (i2 == 1) {
                printWriter.append("CAUSE_SERVICE_DISCONNECTED");
            } else if (i2 == 2) {
                printWriter.append("CAUSE_NETWORK_LOST");
            } else if (i2 != 3) {
                printWriter.append((CharSequence) String.valueOf(i2));
            } else {
                printWriter.append("CAUSE_DEAD_OBJECT_EXCEPTION");
            }
            PrintWriter append2 = printWriter.append(" lastSuspendedTime=");
            long j2 = this.zzg;
            String format2 = simpleDateFormat.format(new Date(j2));
            StringBuilder sb2 = new StringBuilder(String.valueOf(format2).length() + 21);
            sb2.append(j2);
            sb2.append(StringConstant.SPACE);
            sb2.append(format2);
            append2.println(sb2.toString());
        }
        if (this.zzj > 0) {
            printWriter.append((CharSequence) str).append("lastFailedStatus=").append((CharSequence) CommonStatusCodes.getStatusCodeString(this.zzi));
            PrintWriter append3 = printWriter.append(" lastFailedTime=");
            long j3 = this.zzj;
            String format3 = simpleDateFormat.format(new Date(j3));
            StringBuilder sb3 = new StringBuilder(String.valueOf(format3).length() + 21);
            sb3.append(j3);
            sb3.append(StringConstant.SPACE);
            sb3.append(format3);
            append3.println(sb3.toString());
        }
    }

    @KeepForSdk
    public boolean enableLocalFallback() {
        return false;
    }

    @KeepForSdk
    public Account getAccount() {
        return null;
    }

    @KeepForSdk
    public Feature[] getApiFeatures() {
        return zze;
    }

    @KeepForSdk
    public final Feature[] getAvailableFeatures() {
        zzj zzjVar = this.zzD;
        if (zzjVar == null) {
            return null;
        }
        return zzjVar.f6056b;
    }

    @KeepForSdk
    public Executor getBindServiceExecutor() {
        return null;
    }

    @KeepForSdk
    public Bundle getConnectionHint() {
        return null;
    }

    @KeepForSdk
    public final Context getContext() {
        return this.zzl;
    }

    @KeepForSdk
    public String getEndpointPackageName() {
        zzu zzuVar;
        if (!isConnected() || (zzuVar = this.zza) == null) {
            throw new RuntimeException("Failed to connect when checking package");
        }
        return zzuVar.f6067b;
    }

    @KeepForSdk
    public int getGCoreServiceId() {
        return this.zzy;
    }

    @KeepForSdk
    public Bundle getGetServiceRequestExtraArgs() {
        return new Bundle();
    }

    @KeepForSdk
    public String getLastDisconnectMessage() {
        return this.zzk;
    }

    @KeepForSdk
    public String getLocalStartServiceAction() {
        return null;
    }

    @KeepForSdk
    public final Looper getLooper() {
        return this.zzm;
    }

    @KeepForSdk
    public int getMinApkVersion() {
        return GoogleApiAvailabilityLight.f5674a;
    }

    @KeepForSdk
    public void getRemoteService(IAccountAccessor iAccountAccessor, Set<Scope> set) {
        Bundle getServiceRequestExtraArgs = getGetServiceRequestExtraArgs();
        GetServiceRequest getServiceRequest = new GetServiceRequest(this.zzy, this.zzA);
        getServiceRequest.f5964d = this.zzl.getPackageName();
        getServiceRequest.f5967g = getServiceRequestExtraArgs;
        if (set != null) {
            getServiceRequest.f5966f = (Scope[]) set.toArray(new Scope[set.size()]);
        }
        if (requiresSignIn()) {
            Account account = getAccount();
            Account account2 = account;
            if (account == null) {
                account2 = new Account(DEFAULT_ACCOUNT, "com.google");
            }
            getServiceRequest.f5968h = account2;
            if (iAccountAccessor != null) {
                getServiceRequest.f5965e = iAccountAccessor.asBinder();
            }
        } else if (requiresAccount()) {
            getServiceRequest.f5968h = getAccount();
        }
        getServiceRequest.f5969i = zze;
        getServiceRequest.f5970j = getApiFeatures();
        if (usesClientTelemetry()) {
            getServiceRequest.f5973m = true;
        }
        try {
            try {
                synchronized (this.zzq) {
                    IGmsServiceBroker iGmsServiceBroker = this.zzr;
                    if (iGmsServiceBroker != null) {
                        iGmsServiceBroker.mo4250Q(new zzd(this, this.zzd.get()), getServiceRequest);
                    }
                }
            } catch (RemoteException | RuntimeException e) {
                onPostInitHandler(8, null, null, this.zzd.get());
            }
        } catch (DeadObjectException e2) {
            triggerConnectionSuspended(3);
        } catch (SecurityException e3) {
            throw e3;
        }
    }

    @KeepForSdk
    public Set<Scope> getScopes() {
        return Collections.emptySet();
    }

    @KeepForSdk
    public final T getService() throws DeadObjectException {
        T t;
        synchronized (this.zzp) {
            if (this.zzv == 5) {
                throw new DeadObjectException();
            }
            checkConnected();
            t = this.zzs;
            Preconditions.m38897k(t, "Client is connected but service is null");
        }
        return t;
    }

    @KeepForSdk
    public IBinder getServiceBrokerBinder() {
        synchronized (this.zzq) {
            IGmsServiceBroker iGmsServiceBroker = this.zzr;
            if (iGmsServiceBroker == null) {
                return null;
            }
            return iGmsServiceBroker.asBinder();
        }
    }

    @KeepForSdk
    public abstract String getServiceDescriptor();

    @KeepForSdk
    public Intent getSignInIntent() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    @KeepForSdk
    public abstract String getStartServiceAction();

    @KeepForSdk
    public String getStartServicePackage() {
        return "com.google.android.gms";
    }

    @KeepForSdk
    public ConnectionTelemetryConfiguration getTelemetryConfiguration() {
        zzj zzjVar = this.zzD;
        if (zzjVar == null) {
            return null;
        }
        return zzjVar.f6058d;
    }

    @KeepForSdk
    public boolean getUseDynamicLookup() {
        return getMinApkVersion() >= 211700000;
    }

    @KeepForSdk
    public boolean hasConnectionInfo() {
        return this.zzD != null;
    }

    @KeepForSdk
    public boolean isConnected() {
        boolean z;
        synchronized (this.zzp) {
            z = this.zzv == 4;
        }
        return z;
    }

    @KeepForSdk
    public boolean isConnecting() {
        boolean z;
        synchronized (this.zzp) {
            int i = this.zzv;
            z = true;
            if (i != 2) {
                z = i == 3;
            }
        }
        return z;
    }

    @KeepForSdk
    public void onConnectedLocked(T t) {
        this.zzh = System.currentTimeMillis();
    }

    @KeepForSdk
    public void onConnectionFailed(ConnectionResult connectionResult) {
        this.zzi = connectionResult.f5663b;
        this.zzj = System.currentTimeMillis();
    }

    @KeepForSdk
    public void onConnectionSuspended(int i) {
        this.zzf = i;
        this.zzg = System.currentTimeMillis();
    }

    @KeepForSdk
    public void onPostInitHandler(int i, IBinder iBinder, Bundle bundle, int i2) {
        Handler handler = this.zzb;
        handler.sendMessage(handler.obtainMessage(1, i2, -1, new zzf(this, i, iBinder, bundle)));
    }

    @KeepForSdk
    public void onUserSignOut(SignOutCallbacks signOutCallbacks) {
        signOutCallbacks.mo4276a();
    }

    @KeepForSdk
    public boolean providesSignIn() {
        return false;
    }

    @KeepForSdk
    public boolean requiresAccount() {
        return false;
    }

    @KeepForSdk
    public boolean requiresGooglePlayServices() {
        return true;
    }

    @KeepForSdk
    public boolean requiresSignIn() {
        return false;
    }

    @KeepForSdk
    public void setAttributionTag(String str) {
        this.zzA = str;
    }

    @KeepForSdk
    public void triggerConnectionSuspended(int i) {
        Handler handler = this.zzb;
        handler.sendMessage(handler.obtainMessage(6, this.zzd.get(), i));
    }

    @VisibleForTesting
    @KeepForSdk
    public void triggerNotAvailable(ConnectionProgressReportCallbacks connectionProgressReportCallbacks, int i, PendingIntent pendingIntent) {
        Preconditions.m38897k(connectionProgressReportCallbacks, "Connection progress callbacks cannot be null.");
        this.zzc = connectionProgressReportCallbacks;
        Handler handler = this.zzb;
        handler.sendMessage(handler.obtainMessage(3, this.zzd.get(), i, pendingIntent));
    }

    @KeepForSdk
    public boolean usesClientTelemetry() {
        return false;
    }

    public final String zze() {
        String str = this.zzz;
        String str2 = str;
        if (str == null) {
            str2 = this.zzl.getClass().getName();
        }
        return str2;
    }

    public final void zzl(int i, Bundle bundle, int i2) {
        Handler handler = this.zzb;
        handler.sendMessage(handler.obtainMessage(7, i2, -1, new zzg(this, i)));
    }
}
