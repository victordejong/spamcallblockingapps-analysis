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
import com.google.android.gms.common.C11941c;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.C11822e;
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
/* renamed from: com.google.android.gms.common.internal.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/d.class */
public abstract class AbstractC12025d<T extends IInterface> {
    public static final int CONNECT_STATE_CONNECTED = 4;
    public static final int CONNECT_STATE_DISCONNECTED = 1;
    public static final int CONNECT_STATE_DISCONNECTING = 5;
    public static final String DEFAULT_ACCOUNT = "<<default account>>";
    public static final String KEY_PENDING_INTENT = "pendingIntent";
    private volatile String zzA;
    private ConnectionResult zzB;
    private boolean zzC;
    private volatile zzi zzD;
    C12019br zza;
    final Handler zzb;
    protected AbstractC12028c zzc;
    protected AtomicInteger zzd;
    private int zzf;
    private long zzg;
    private long zzh;
    private int zzi;
    private long zzj;
    private volatile String zzk;
    private final Context zzl;
    private final Looper zzm;
    private final AbstractC12034g zzn;
    private final C11941c zzo;
    private final Object zzp;
    private final Object zzq;
    private AbstractC12040l zzr;
    private T zzs;
    private final ArrayList<AbstractC12003bb<?>> zzt;
    private ServiceConnectionC12005bd zzu;
    private int zzv;
    private final AbstractC12026a zzw;
    private final AbstractC12027b zzx;
    private final int zzy;
    private final String zzz;
    private static final Feature[] zze = new Feature[0];
    public static final String[] GOOGLE_PLUS_REQUIRED_FEATURES = {"service_esmobile", "service_googleme"};

    /* renamed from: com.google.android.gms.common.internal.d$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/d$a.class */
    public interface AbstractC12026a {
        /* renamed from: a */
        void mo11764a();

        /* renamed from: a */
        void mo11763a(int i);
    }

    /* renamed from: com.google.android.gms.common.internal.d$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/d$b.class */
    public interface AbstractC12027b {
        /* renamed from: a */
        void mo11761a(ConnectionResult connectionResult);
    }

    /* renamed from: com.google.android.gms.common.internal.d$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/d$c.class */
    public interface AbstractC12028c {
        /* renamed from: a */
        void mo19188a(ConnectionResult connectionResult);
    }

    /* renamed from: com.google.android.gms.common.internal.d$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/d$d.class */
    public final class C12029d implements AbstractC12028c {
        public C12029d() {
            AbstractC12025d.this = r4;
        }

        @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12028c
        /* renamed from: a */
        public final void mo19188a(ConnectionResult connectionResult) {
            if (connectionResult.isSuccess()) {
                AbstractC12025d abstractC12025d = AbstractC12025d.this;
                abstractC12025d.getRemoteService(null, abstractC12025d.getScopes());
            } else if (AbstractC12025d.this.zzx == null) {
            } else {
                AbstractC12025d.this.zzx.mo11761a(connectionResult);
            }
        }
    }

    /* renamed from: com.google.android.gms.common.internal.d$e */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/d$e.class */
    public interface AbstractC12030e {
        /* renamed from: a */
        void mo19187a();
    }

    public AbstractC12025d(Context context, Handler handler, AbstractC12034g abstractC12034g, C11941c c11941c, int i, AbstractC12026a abstractC12026a, AbstractC12027b abstractC12027b) {
        this.zzk = null;
        this.zzp = new Object();
        this.zzq = new Object();
        this.zzt = new ArrayList<>();
        this.zzv = 1;
        this.zzB = null;
        this.zzC = false;
        this.zzD = null;
        this.zzd = new AtomicInteger(0);
        C12045o.m19161a(context, "Context must not be null");
        this.zzl = context;
        C12045o.m19161a(handler, "Handler must not be null");
        this.zzb = handler;
        this.zzm = handler.getLooper();
        C12045o.m19161a(abstractC12034g, "Supervisor must not be null");
        this.zzn = abstractC12034g;
        C12045o.m19161a(c11941c, "API availability must not be null");
        this.zzo = c11941c;
        this.zzy = i;
        this.zzw = abstractC12026a;
        this.zzx = abstractC12027b;
        this.zzz = null;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AbstractC12025d(android.content.Context r11, android.os.Looper r12, int r13, com.google.android.gms.common.internal.AbstractC12025d.AbstractC12026a r14, com.google.android.gms.common.internal.AbstractC12025d.AbstractC12027b r15, java.lang.String r16) {
        /*
            r10 = this;
            r0 = r11
            com.google.android.gms.common.internal.g r0 = com.google.android.gms.common.internal.AbstractC12034g.m19180a(r0)
            r17 = r0
            com.google.android.gms.common.c r0 = com.google.android.gms.common.C11941c.m19271b()
            r18 = r0
            r0 = r14
            java.lang.Object r0 = com.google.android.gms.common.internal.C12045o.m19162a(r0)
            r0 = r15
            java.lang.Object r0 = com.google.android.gms.common.internal.C12045o.m19162a(r0)
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.AbstractC12025d.<init>(android.content.Context, android.os.Looper, int, com.google.android.gms.common.internal.d$a, com.google.android.gms.common.internal.d$b, java.lang.String):void");
    }

    public AbstractC12025d(Context context, Looper looper, AbstractC12034g abstractC12034g, C11941c c11941c, int i, AbstractC12026a abstractC12026a, AbstractC12027b abstractC12027b, String str) {
        this.zzk = null;
        this.zzp = new Object();
        this.zzq = new Object();
        this.zzt = new ArrayList<>();
        this.zzv = 1;
        this.zzB = null;
        this.zzC = false;
        this.zzD = null;
        this.zzd = new AtomicInteger(0);
        C12045o.m19161a(context, "Context must not be null");
        this.zzl = context;
        C12045o.m19161a(looper, "Looper must not be null");
        this.zzm = looper;
        C12045o.m19161a(abstractC12034g, "Supervisor must not be null");
        this.zzn = abstractC12034g;
        C12045o.m19161a(c11941c, "API availability must not be null");
        this.zzo = c11941c;
        this.zzb = new HandlerC12002ba(this, looper);
        this.zzy = i;
        this.zzw = abstractC12026a;
        this.zzx = abstractC12027b;
        this.zzz = str;
    }

    public static /* synthetic */ void zzc(AbstractC12025d abstractC12025d, int i) {
        int i2;
        int i3;
        synchronized (abstractC12025d.zzp) {
            i2 = abstractC12025d.zzv;
        }
        if (i2 == 3) {
            abstractC12025d.zzC = true;
            i3 = 5;
        } else {
            i3 = 4;
        }
        Handler handler = abstractC12025d.zzb;
        handler.sendMessage(handler.obtainMessage(i3, abstractC12025d.zzd.get(), 16));
    }

    public static /* synthetic */ boolean zzg(AbstractC12025d abstractC12025d) {
        boolean z = false;
        if (!abstractC12025d.zzC && !TextUtils.isEmpty(abstractC12025d.getServiceDescriptor()) && !TextUtils.isEmpty(abstractC12025d.getLocalStartServiceAction())) {
            try {
                Class.forName(abstractC12025d.getServiceDescriptor());
                z = true;
            } catch (ClassNotFoundException e) {
            }
        }
        return z;
    }

    public static /* synthetic */ boolean zzl(AbstractC12025d abstractC12025d, int i, int i2, IInterface iInterface) {
        boolean z;
        synchronized (abstractC12025d.zzp) {
            if (abstractC12025d.zzv != i) {
                z = false;
            } else {
                abstractC12025d.zzp(i2, iInterface);
                z = true;
            }
        }
        return z;
    }

    public static /* synthetic */ void zzo(AbstractC12025d abstractC12025d, zzi zziVar) {
        abstractC12025d.zzD = zziVar;
        if (abstractC12025d.usesClientTelemetry()) {
            ConnectionTelemetryConfiguration connectionTelemetryConfiguration = zziVar.zzd;
            C12046p.m19151a().m19150a(connectionTelemetryConfiguration == null ? null : connectionTelemetryConfiguration.getRootTelemetryConfiguration());
        }
    }

    public final void zzp(int i, T t) {
        C12019br c12019br;
        boolean z = false;
        if ((i == 4) == (t != null)) {
            z = true;
        }
        C12045o.m19154b(z);
        synchronized (this.zzp) {
            this.zzv = i;
            this.zzs = t;
            if (i == 1) {
                ServiceConnectionC12005bd serviceConnectionC12005bd = this.zzu;
                if (serviceConnectionC12005bd != null) {
                    AbstractC12034g abstractC12034g = this.zzn;
                    String str = this.zza.f39535a;
                    C12045o.m19162a(str);
                    abstractC12034g.m19177a(str, this.zza.f39536b, this.zza.f39537c, serviceConnectionC12005bd, zza(), this.zza.f39538d);
                    this.zzu = null;
                }
            } else if (i == 2 || i == 3) {
                ServiceConnectionC12005bd serviceConnectionC12005bd2 = this.zzu;
                if (serviceConnectionC12005bd2 != null && (c12019br = this.zza) != null) {
                    String str2 = c12019br.f39535a;
                    String str3 = this.zza.f39536b;
                    StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 70 + String.valueOf(str3).length());
                    sb.append("Calling connect() while still connected, missing disconnect() for ");
                    sb.append(str2);
                    sb.append(" on ");
                    sb.append(str3);
                    Log.e("GmsClient", sb.toString());
                    AbstractC12034g abstractC12034g2 = this.zzn;
                    String str4 = this.zza.f39535a;
                    C12045o.m19162a(str4);
                    abstractC12034g2.m19177a(str4, this.zza.f39536b, this.zza.f39537c, serviceConnectionC12005bd2, zza(), this.zza.f39538d);
                    this.zzd.incrementAndGet();
                }
                ServiceConnectionC12005bd serviceConnectionC12005bd3 = new ServiceConnectionC12005bd(this, this.zzd.get());
                this.zzu = serviceConnectionC12005bd3;
                C12019br c12019br2 = (this.zzv != 3 || getLocalStartServiceAction() == null) ? new C12019br(getStartServicePackage(), getStartServiceAction(), false, AbstractC12034g.m19182a(), getUseDynamicLookup()) : new C12019br(getContext().getPackageName(), getLocalStartServiceAction(), true, AbstractC12034g.m19182a(), false);
                this.zza = c12019br2;
                if (c12019br2.f39538d && getMinApkVersion() < 17895000) {
                    String valueOf = String.valueOf(this.zza.f39535a);
                    throw new IllegalStateException(valueOf.length() != 0 ? "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(valueOf) : new String("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "));
                }
                AbstractC12034g abstractC12034g3 = this.zzn;
                String str5 = this.zza.f39535a;
                C12045o.m19162a(str5);
                if (!abstractC12034g3.mo19178a(new C12012bk(str5, this.zza.f39536b, this.zza.f39537c, this.zza.f39538d), serviceConnectionC12005bd3, zza())) {
                    String str6 = this.zza.f39535a;
                    String str7 = this.zza.f39536b;
                    StringBuilder sb2 = new StringBuilder(String.valueOf(str6).length() + 34 + String.valueOf(str7).length());
                    sb2.append("unable to connect to service: ");
                    sb2.append(str6);
                    sb2.append(" on ");
                    sb2.append(str7);
                    Log.e("GmsClient", sb2.toString());
                    zzb(16, null, this.zzd.get());
                }
            } else if (i == 4) {
                C12045o.m19162a(t);
                onConnectedLocked(t);
            }
        }
    }

    public void checkAvailabilityAndConnect() {
        int mo19269b = this.zzo.mo19269b(this.zzl, getMinApkVersion());
        if (mo19269b == 0) {
            connect(new C12029d());
            return;
        }
        zzp(1, null);
        triggerNotAvailable(new C12029d(), mo19269b, null);
    }

    public final void checkConnected() {
        if (isConnected()) {
            return;
        }
        throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    }

    public void connect(AbstractC12028c abstractC12028c) {
        C12045o.m19161a(abstractC12028c, "Connection progress callbacks cannot be null.");
        this.zzc = abstractC12028c;
        zzp(2, null);
    }

    public abstract T createServiceInterface(IBinder iBinder);

    public void disconnect() {
        this.zzd.incrementAndGet();
        synchronized (this.zzt) {
            int size = this.zzt.size();
            for (int i = 0; i < size; i++) {
                this.zzt.get(i).m19209e();
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
        AbstractC12040l abstractC12040l;
        synchronized (this.zzp) {
            i = this.zzv;
            t = this.zzs;
        }
        synchronized (this.zzq) {
            abstractC12040l = this.zzr;
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
        if (abstractC12040l == null) {
            printWriter.println(JsonReaderKt.NULL);
        } else {
            printWriter.append("IGmsServiceBroker@").println(Integer.toHexString(System.identityHashCode(abstractC12040l.asBinder())));
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
            printWriter.append((CharSequence) str).append("lastFailedStatus=").append((CharSequence) C11822e.m19462a(this.zzi));
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
        C12019br c12019br;
        if (!isConnected() || (c12019br = this.zza) == null) {
            throw new RuntimeException("Failed to connect when checking package");
        }
        return c12019br.f39536b;
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
        return C11941c.f39428b;
    }

    public void getRemoteService(AbstractC12036i abstractC12036i, Set<Scope> set) {
        Throwable e;
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
            if (abstractC12036i != null) {
                getServiceRequest.zze = abstractC12036i.asBinder();
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
                AbstractC12040l abstractC12040l = this.zzr;
                if (abstractC12040l != null) {
                    abstractC12040l.mo19170a(new BinderC12004bc(this, this.zzd.get()), getServiceRequest);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e2) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e2);
            triggerConnectionSuspended(3);
        } catch (RemoteException e3) {
            e = e3;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            onPostInitHandler(8, null, null, this.zzd.get());
        } catch (SecurityException e4) {
            throw e4;
        } catch (RuntimeException e5) {
            e = e5;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            onPostInitHandler(8, null, null, this.zzd.get());
        }
    }

    protected Set<Scope> getScopes() {
        return Collections.emptySet();
    }

    public final T getService() throws DeadObjectException {
        T t;
        synchronized (this.zzp) {
            if (this.zzv == 5) {
                throw new DeadObjectException();
            }
            checkConnected();
            t = this.zzs;
            C12045o.m19161a(t, "Client is connected but service is null");
        }
        return t;
    }

    public IBinder getServiceBrokerBinder() {
        synchronized (this.zzq) {
            AbstractC12040l abstractC12040l = this.zzr;
            if (abstractC12040l == null) {
                return null;
            }
            return abstractC12040l.asBinder();
        }
    }

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

    public void onConnectionFailed(ConnectionResult connectionResult) {
        this.zzi = connectionResult.getErrorCode();
        this.zzj = System.currentTimeMillis();
    }

    public void onConnectionSuspended(int i) {
        this.zzf = i;
        this.zzg = System.currentTimeMillis();
    }

    public void onPostInitHandler(int i, IBinder iBinder, Bundle bundle, int i2) {
        Handler handler = this.zzb;
        handler.sendMessage(handler.obtainMessage(1, i2, -1, new C12006be(this, i, iBinder, bundle)));
    }

    public void onUserSignOut(AbstractC12030e abstractC12030e) {
        abstractC12030e.mo19187a();
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

    public void triggerNotAvailable(AbstractC12028c abstractC12028c, int i, PendingIntent pendingIntent) {
        C12045o.m19161a(abstractC12028c, "Connection progress callbacks cannot be null.");
        this.zzc = abstractC12028c;
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

    public final void zzb(int i, Bundle bundle, int i2) {
        Handler handler = this.zzb;
        handler.sendMessage(handler.obtainMessage(7, i2, -1, new C12007bf(this, i, null)));
    }
}
