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
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/d.class */
public abstract class d<T extends IInterface> {
    public static final int CONNECT_STATE_CONNECTED = 4;
    public static final int CONNECT_STATE_DISCONNECTED = 1;
    public static final int CONNECT_STATE_DISCONNECTING = 5;
    public static final String DEFAULT_ACCOUNT = "<<default account>>";
    public static final String KEY_PENDING_INTENT = "pendingIntent";
    private volatile String zzA;
    private ConnectionResult zzB;
    private boolean zzC;
    private volatile zzi zzD;
    br zza;
    final Handler zzb;
    protected c zzc;
    protected AtomicInteger zzd;
    private int zzf;
    private long zzg;
    private long zzh;
    private int zzi;
    private long zzj;
    private volatile String zzk;
    private final Context zzl;
    private final Looper zzm;
    private final g zzn;
    private final com.google.android.gms.common.c zzo;
    private final Object zzp;
    private final Object zzq;
    private l zzr;
    private T zzs;
    private final ArrayList<bb<?>> zzt;
    private bd zzu;
    private int zzv;
    private final a zzw;
    private final b zzx;
    private final int zzy;
    private final String zzz;
    private static final Feature[] zze = new Feature[0];
    public static final String[] GOOGLE_PLUS_REQUIRED_FEATURES = {"service_esmobile", "service_googleme"};

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/d$a.class */
    public interface a {
        void a();

        void a(int i);
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/d$b.class */
    public interface b {
        void a(ConnectionResult connectionResult);
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/d$c.class */
    public interface c {
        void a(ConnectionResult connectionResult);
    }

    /* renamed from: com.google.android.gms.common.internal.d$d  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/d$d.class */
    public final class C0457d implements c {
        public C0457d() {
        }

        @Override // com.google.android.gms.common.internal.d.c
        public final void a(ConnectionResult connectionResult) {
            if (connectionResult.isSuccess()) {
                d dVar = d.this;
                dVar.getRemoteService(null, dVar.getScopes());
            } else if (d.this.zzx != null) {
                d.this.zzx.a(connectionResult);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/d$e.class */
    public interface e {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d(Context context, Handler handler, g gVar, com.google.android.gms.common.c cVar, int i, a aVar, b bVar) {
        this.zzk = null;
        this.zzp = new Object();
        this.zzq = new Object();
        this.zzt = new ArrayList<>();
        this.zzv = 1;
        this.zzB = null;
        this.zzC = false;
        this.zzD = null;
        this.zzd = new AtomicInteger(0);
        o.a(context, "Context must not be null");
        this.zzl = context;
        o.a(handler, "Handler must not be null");
        this.zzb = handler;
        this.zzm = handler.getLooper();
        o.a(gVar, "Supervisor must not be null");
        this.zzn = gVar;
        o.a(cVar, "API availability must not be null");
        this.zzo = cVar;
        this.zzy = i;
        this.zzw = aVar;
        this.zzx = bVar;
        this.zzz = null;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public d(android.content.Context r11, android.os.Looper r12, int r13, com.google.android.gms.common.internal.d.a r14, com.google.android.gms.common.internal.d.b r15, java.lang.String r16) {
        /*
            r10 = this;
            r0 = r11
            com.google.android.gms.common.internal.g r0 = com.google.android.gms.common.internal.g.a(r0)
            r17 = r0
            com.google.android.gms.common.c r0 = com.google.android.gms.common.c.b()
            r18 = r0
            r0 = r14
            java.lang.Object r0 = com.google.android.gms.common.internal.o.a(r0)
            r0 = r15
            java.lang.Object r0 = com.google.android.gms.common.internal.o.a(r0)
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.d.<init>(android.content.Context, android.os.Looper, int, com.google.android.gms.common.internal.d$a, com.google.android.gms.common.internal.d$b, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d(Context context, Looper looper, g gVar, com.google.android.gms.common.c cVar, int i, a aVar, b bVar, String str) {
        this.zzk = null;
        this.zzp = new Object();
        this.zzq = new Object();
        this.zzt = new ArrayList<>();
        this.zzv = 1;
        this.zzB = null;
        this.zzC = false;
        this.zzD = null;
        this.zzd = new AtomicInteger(0);
        o.a(context, "Context must not be null");
        this.zzl = context;
        o.a(looper, "Looper must not be null");
        this.zzm = looper;
        o.a(gVar, "Supervisor must not be null");
        this.zzn = gVar;
        o.a(cVar, "API availability must not be null");
        this.zzo = cVar;
        this.zzb = new ba(this, looper);
        this.zzy = i;
        this.zzw = aVar;
        this.zzx = bVar;
        this.zzz = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzc(d dVar, int i) {
        int i2;
        int i3;
        synchronized (dVar.zzp) {
            i2 = dVar.zzv;
        }
        if (i2 == 3) {
            dVar.zzC = true;
            i3 = 5;
        } else {
            i3 = 4;
        }
        Handler handler = dVar.zzb;
        handler.sendMessage(handler.obtainMessage(i3, dVar.zzd.get(), 16));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean zzg(d dVar) {
        boolean z = false;
        if (!dVar.zzC && !TextUtils.isEmpty(dVar.getServiceDescriptor()) && !TextUtils.isEmpty(dVar.getLocalStartServiceAction())) {
            try {
                Class.forName(dVar.getServiceDescriptor());
                z = true;
            } catch (ClassNotFoundException e2) {
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean zzl(d dVar, int i, int i2, IInterface iInterface) {
        boolean z;
        synchronized (dVar.zzp) {
            if (dVar.zzv != i) {
                z = false;
            } else {
                dVar.zzp(i2, iInterface);
                z = true;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzo(d dVar, zzi zziVar) {
        dVar.zzD = zziVar;
        if (dVar.usesClientTelemetry()) {
            ConnectionTelemetryConfiguration connectionTelemetryConfiguration = zziVar.zzd;
            p.a().a(connectionTelemetryConfiguration == null ? null : connectionTelemetryConfiguration.getRootTelemetryConfiguration());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzp(int i, T t) {
        br brVar;
        boolean z = false;
        if ((i == 4) == (t != null)) {
            z = true;
        }
        o.b(z);
        synchronized (this.zzp) {
            this.zzv = i;
            this.zzs = t;
            if (i == 1) {
                bd bdVar = this.zzu;
                if (bdVar != null) {
                    g gVar = this.zzn;
                    String str = this.zza.f22876a;
                    o.a(str);
                    gVar.a(str, this.zza.f22877b, this.zza.f22878c, bdVar, zza(), this.zza.f22879d);
                    this.zzu = null;
                }
            } else if (i == 2 || i == 3) {
                bd bdVar2 = this.zzu;
                if (!(bdVar2 == null || (brVar = this.zza) == null)) {
                    String str2 = brVar.f22876a;
                    String str3 = this.zza.f22877b;
                    StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 70 + String.valueOf(str3).length());
                    sb.append("Calling connect() while still connected, missing disconnect() for ");
                    sb.append(str2);
                    sb.append(" on ");
                    sb.append(str3);
                    Log.e("GmsClient", sb.toString());
                    g gVar2 = this.zzn;
                    String str4 = this.zza.f22876a;
                    o.a(str4);
                    gVar2.a(str4, this.zza.f22877b, this.zza.f22878c, bdVar2, zza(), this.zza.f22879d);
                    this.zzd.incrementAndGet();
                }
                bd bdVar3 = new bd(this, this.zzd.get());
                this.zzu = bdVar3;
                br brVar2 = (this.zzv != 3 || getLocalStartServiceAction() == null) ? new br(getStartServicePackage(), getStartServiceAction(), false, g.a(), getUseDynamicLookup()) : new br(getContext().getPackageName(), getLocalStartServiceAction(), true, g.a(), false);
                this.zza = brVar2;
                if (!brVar2.f22879d || getMinApkVersion() >= 17895000) {
                    g gVar3 = this.zzn;
                    String str5 = this.zza.f22876a;
                    o.a(str5);
                    if (!gVar3.a(new bk(str5, this.zza.f22877b, this.zza.f22878c, this.zza.f22879d), bdVar3, zza())) {
                        String str6 = this.zza.f22876a;
                        String str7 = this.zza.f22877b;
                        StringBuilder sb2 = new StringBuilder(String.valueOf(str6).length() + 34 + String.valueOf(str7).length());
                        sb2.append("unable to connect to service: ");
                        sb2.append(str6);
                        sb2.append(" on ");
                        sb2.append(str7);
                        Log.e("GmsClient", sb2.toString());
                        zzb(16, null, this.zzd.get());
                    }
                } else {
                    String valueOf = String.valueOf(this.zza.f22876a);
                    throw new IllegalStateException(valueOf.length() != 0 ? "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(valueOf) : new String("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "));
                }
            } else if (i == 4) {
                o.a(t);
                onConnectedLocked(t);
            }
        }
    }

    public void checkAvailabilityAndConnect() {
        int b2 = this.zzo.b(this.zzl, getMinApkVersion());
        if (b2 != 0) {
            zzp(1, null);
            triggerNotAvailable(new C0457d(), b2, null);
            return;
        }
        connect(new C0457d());
    }

    public final void checkConnected() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public void connect(c cVar) {
        o.a(cVar, "Connection progress callbacks cannot be null.");
        this.zzc = cVar;
        zzp(2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract T createServiceInterface(IBinder iBinder);

    public void disconnect() {
        this.zzd.incrementAndGet();
        synchronized (this.zzt) {
            int size = this.zzt.size();
            for (int i = 0; i < size; i++) {
                this.zzt.get(i).e();
            }
            this.zzt.clear();
        }
        synchronized (this.zzq) {
            this.zzr = null;
        }
        zzp(1, null);
    }

    public void disconnect(String str) {
        this.zzk = str;
        disconnect();
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i;
        T t;
        l lVar;
        synchronized (this.zzp) {
            i = this.zzv;
            t = this.zzs;
        }
        synchronized (this.zzq) {
            lVar = this.zzr;
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
            printWriter.append(JsonReaderKt.NULL);
        } else {
            printWriter.append((CharSequence) getServiceDescriptor()).append("@").append((CharSequence) Integer.toHexString(System.identityHashCode(t.asBinder())));
        }
        printWriter.append(" mServiceBroker=");
        if (lVar == null) {
            printWriter.println(JsonReaderKt.NULL);
        } else {
            printWriter.append("IGmsServiceBroker@").println(Integer.toHexString(System.identityHashCode(lVar.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.zzh > 0) {
            PrintWriter append = printWriter.append((CharSequence) str).append("lastConnectedTime=");
            long j = this.zzh;
            String format = simpleDateFormat.format(new Date(j));
            StringBuilder sb = new StringBuilder(String.valueOf(format).length() + 21);
            sb.append(j);
            sb.append(StringUtils.SPACE);
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
            sb2.append(StringUtils.SPACE);
            sb2.append(format2);
            append2.println(sb2.toString());
        }
        if (this.zzj > 0) {
            printWriter.append((CharSequence) str).append("lastFailedStatus=").append((CharSequence) com.google.android.gms.common.api.e.a(this.zzi));
            PrintWriter append3 = printWriter.append(" lastFailedTime=");
            long j3 = this.zzj;
            String format3 = simpleDateFormat.format(new Date(j3));
            StringBuilder sb3 = new StringBuilder(String.valueOf(format3).length() + 21);
            sb3.append(j3);
            sb3.append(StringUtils.SPACE);
            sb3.append(format3);
            append3.println(sb3.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean enableLocalFallback() {
        return false;
    }

    public Account getAccount() {
        return null;
    }

    public Feature[] getApiFeatures() {
        return zze;
    }

    public final Feature[] getAvailableFeatures() {
        zzi zziVar = this.zzD;
        if (zziVar == null) {
            return null;
        }
        return zziVar.zzb;
    }

    public Bundle getConnectionHint() {
        return null;
    }

    public final Context getContext() {
        return this.zzl;
    }

    public String getEndpointPackageName() {
        br brVar;
        if (isConnected() && (brVar = this.zza) != null) {
            return brVar.f22877b;
        }
        throw new RuntimeException("Failed to connect when checking package");
    }

    public int getGCoreServiceId() {
        return this.zzy;
    }

    protected Bundle getGetServiceRequestExtraArgs() {
        return new Bundle();
    }

    public String getLastDisconnectMessage() {
        return this.zzk;
    }

    protected String getLocalStartServiceAction() {
        return null;
    }

    public final Looper getLooper() {
        return this.zzm;
    }

    public int getMinApkVersion() {
        return com.google.android.gms.common.c.f22789b;
    }

    public void getRemoteService(i iVar, Set<Scope> set) {
        Throwable e2;
        Bundle getServiceRequestExtraArgs = getGetServiceRequestExtraArgs();
        GetServiceRequest getServiceRequest = new GetServiceRequest(this.zzy, this.zzA);
        getServiceRequest.zzd = this.zzl.getPackageName();
        getServiceRequest.zzg = getServiceRequestExtraArgs;
        if (set != null) {
            getServiceRequest.zzf = (Scope[]) set.toArray(new Scope[set.size()]);
        }
        if (requiresSignIn()) {
            Account account = getAccount();
            Account account2 = account;
            if (account == null) {
                account2 = new Account(DEFAULT_ACCOUNT, "com.google");
            }
            getServiceRequest.zzh = account2;
            if (iVar != null) {
                getServiceRequest.zze = iVar.asBinder();
            }
        } else if (requiresAccount()) {
            getServiceRequest.zzh = getAccount();
        }
        getServiceRequest.zzi = zze;
        getServiceRequest.zzj = getApiFeatures();
        if (usesClientTelemetry()) {
            getServiceRequest.zzm = true;
        }
        try {
            synchronized (this.zzq) {
                l lVar = this.zzr;
                if (lVar != null) {
                    lVar.a(new bc(this, this.zzd.get()), getServiceRequest);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e3) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e3);
            triggerConnectionSuspended(3);
        } catch (RemoteException e4) {
            e2 = e4;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e2);
            onPostInitHandler(8, null, null, this.zzd.get());
        } catch (SecurityException e5) {
            throw e5;
        } catch (RuntimeException e6) {
            e2 = e6;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e2);
            onPostInitHandler(8, null, null, this.zzd.get());
        }
    }

    protected Set<Scope> getScopes() {
        return Collections.emptySet();
    }

    public final T getService() throws DeadObjectException {
        T t;
        synchronized (this.zzp) {
            if (this.zzv != 5) {
                checkConnected();
                t = this.zzs;
                o.a(t, "Client is connected but service is null");
            } else {
                throw new DeadObjectException();
            }
        }
        return t;
    }

    public IBinder getServiceBrokerBinder() {
        synchronized (this.zzq) {
            l lVar = this.zzr;
            if (lVar == null) {
                return null;
            }
            return lVar.asBinder();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract String getServiceDescriptor();

    public Intent getSignInIntent() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    protected abstract String getStartServiceAction();

    protected String getStartServicePackage() {
        return "com.google.android.gms";
    }

    public ConnectionTelemetryConfiguration getTelemetryConfiguration() {
        zzi zziVar = this.zzD;
        if (zziVar == null) {
            return null;
        }
        return zziVar.zzd;
    }

    protected boolean getUseDynamicLookup() {
        return false;
    }

    public boolean hasConnectionInfo() {
        return this.zzD != null;
    }

    public boolean isConnected() {
        boolean z;
        synchronized (this.zzp) {
            z = this.zzv == 4;
        }
        return z;
    }

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

    protected void onConnectedLocked(T t) {
        this.zzh = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onConnectionFailed(ConnectionResult connectionResult) {
        this.zzi = connectionResult.getErrorCode();
        this.zzj = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onConnectionSuspended(int i) {
        this.zzf = i;
        this.zzg = System.currentTimeMillis();
    }

    public void onPostInitHandler(int i, IBinder iBinder, Bundle bundle, int i2) {
        Handler handler = this.zzb;
        handler.sendMessage(handler.obtainMessage(1, i2, -1, new be(this, i, iBinder, bundle)));
    }

    public void onUserSignOut(e eVar) {
        eVar.a();
    }

    public boolean providesSignIn() {
        return false;
    }

    public boolean requiresAccount() {
        return false;
    }

    public boolean requiresGooglePlayServices() {
        return true;
    }

    public boolean requiresSignIn() {
        return false;
    }

    public void setAttributionTag(String str) {
        this.zzA = str;
    }

    public void triggerConnectionSuspended(int i) {
        Handler handler = this.zzb;
        handler.sendMessage(handler.obtainMessage(6, this.zzd.get(), i));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void triggerNotAvailable(c cVar, int i, PendingIntent pendingIntent) {
        o.a(cVar, "Connection progress callbacks cannot be null.");
        this.zzc = cVar;
        Handler handler = this.zzb;
        handler.sendMessage(handler.obtainMessage(3, this.zzd.get(), i, pendingIntent));
    }

    public boolean usesClientTelemetry() {
        return false;
    }

    protected final String zza() {
        String str = this.zzz;
        String str2 = str;
        if (str == null) {
            str2 = this.zzl.getClass().getName();
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzb(int i, Bundle bundle, int i2) {
        Handler handler = this.zzb;
        handler.sendMessage(handler.obtainMessage(7, i2, -1, new bf(this, i, null)));
    }
}
