package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.BinderThread;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.IGmsCallbacks;
import com.google.android.gms.common.internal.IGmsServiceBroker;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.GuardedBy;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient.class */
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
    private final Context mContext;
    final Handler mHandler;
    private final Object mLock;
    private int zzbu;
    private long zzbv;
    private long zzbw;
    private int zzbx;
    private long zzby;
    @VisibleForTesting
    private zzh zzbz;
    private final Looper zzca;
    private final GmsClientSupervisor zzcb;
    private final GoogleApiAvailabilityLight zzcc;
    private final Object zzcd;
    @GuardedBy
    private IGmsServiceBroker zzce;
    @VisibleForTesting
    protected ConnectionProgressReportCallbacks zzcf;
    @GuardedBy
    private T zzcg;
    private final ArrayList<zzc<?>> zzch;
    @GuardedBy
    private zze zzci;
    @GuardedBy
    private int zzcj;
    private final BaseConnectionCallbacks zzck;
    private final BaseOnConnectionFailedListener zzcl;
    private final int zzcm;
    private final String zzcn;
    private ConnectionResult zzco;
    private boolean zzcp;
    private volatile com.google.android.gms.common.internal.zzb zzcq;
    @VisibleForTesting
    protected AtomicInteger zzcr;
    private static final Feature[] zzbt = new Feature[0];
    @KeepForSdk
    public static final String[] GOOGLE_PLUS_REQUIRED_FEATURES = {"service_esmobile", "service_googleme"};

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks.class */
    public interface BaseConnectionCallbacks {
        @KeepForSdk
        /* renamed from: a */
        void mo11170a(int i);

        @KeepForSdk
        /* renamed from: b */
        void mo11169b(@Nullable Bundle bundle);
    }

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener.class */
    public interface BaseOnConnectionFailedListener {
        /* renamed from: f */
        void mo11165f(@NonNull ConnectionResult connectionResult);
    }

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks.class */
    public interface ConnectionProgressReportCallbacks {
        @KeepForSdk
        /* renamed from: a */
        void mo14593a(@NonNull ConnectionResult connectionResult);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter.class */
    protected class LegacyClientCallbackAdapter implements ConnectionProgressReportCallbacks {
        @KeepForSdk
        public LegacyClientCallbackAdapter() {
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
        /* renamed from: a */
        public void mo14593a(@NonNull ConnectionResult connectionResult) {
            if (connectionResult.m15090d0()) {
                BaseGmsClient baseGmsClient = BaseGmsClient.this;
                baseGmsClient.getRemoteService(null, baseGmsClient.getScopes());
            } else if (BaseGmsClient.this.zzcl != null) {
                BaseGmsClient.this.zzcl.mo11165f(connectionResult);
            }
        }
    }

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks.class */
    public interface SignOutCallbacks {
        @KeepForSdk
        /* renamed from: a */
        void mo14592a();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$zza.class */
    private abstract class zza extends zzc<Boolean> {

        /* renamed from: d */
        private final int f7446d;

        /* renamed from: e */
        private final Bundle f7447e;

        @BinderThread
        protected zza(int i, Bundle bundle) {
            super(Boolean.TRUE);
            this.f7446d = i;
            this.f7447e = bundle;
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.zzc
        /* renamed from: c */
        protected final /* synthetic */ void mo14587c(Boolean bool) {
            Boolean bool2 = bool;
            PendingIntent pendingIntent = null;
            if (bool2 == null) {
                BaseGmsClient.this.zza(1, (int) null);
                return;
            }
            int i = this.f7446d;
            if (i != 0) {
                if (i != 10) {
                    BaseGmsClient.this.zza(1, (int) null);
                    Bundle bundle = this.f7447e;
                    if (bundle != null) {
                        pendingIntent = (PendingIntent) bundle.getParcelable(BaseGmsClient.KEY_PENDING_INTENT);
                    }
                    mo14584f(new ConnectionResult(this.f7446d, pendingIntent));
                    return;
                }
                BaseGmsClient.this.zza(1, (int) null);
                throw new IllegalStateException(String.format("A fatal developer error has occurred. Class name: %s. Start service action: %s. Service Descriptor: %s. ", getClass().getSimpleName(), BaseGmsClient.this.getStartServiceAction(), BaseGmsClient.this.getServiceDescriptor()));
            } else if (!mo14583g()) {
                BaseGmsClient.this.zza(1, (int) null);
                mo14584f(new ConnectionResult(8, null));
            }
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.zzc
        /* renamed from: d */
        protected final void mo14586d() {
        }

        /* renamed from: f */
        protected abstract void mo14584f(ConnectionResult connectionResult);

        /* renamed from: g */
        protected abstract boolean mo14583g();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$zzb.class */
    final class zzb extends com.google.android.gms.internal.common.zze {
        public zzb(Looper looper) {
            super(looper);
        }

        /* renamed from: a */
        private static void m14591a(Message message) {
            zzc zzcVar = (zzc) message.obj;
            zzcVar.mo14586d();
            zzcVar.m14588b();
        }

        /* renamed from: b */
        private static boolean m14590b(Message message) {
            int i = message.what;
            return i == 2 || i == 1 || i == 7;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (BaseGmsClient.this.zzcr.get() == message.arg1) {
                int i = message.what;
                if ((i == 1 || i == 7 || ((i == 4 && !BaseGmsClient.this.enableLocalFallback()) || message.what == 5)) && !BaseGmsClient.this.isConnecting()) {
                    m14591a(message);
                    return;
                }
                int i2 = message.what;
                PendingIntent pendingIntent = null;
                if (i2 == 4) {
                    BaseGmsClient.this.zzco = new ConnectionResult(message.arg2);
                    if (!BaseGmsClient.this.zzl() || BaseGmsClient.this.zzcp) {
                        ConnectionResult connectionResult = BaseGmsClient.this.zzco != null ? BaseGmsClient.this.zzco : new ConnectionResult(8);
                        BaseGmsClient.this.zzcf.mo14593a(connectionResult);
                        BaseGmsClient.this.onConnectionFailed(connectionResult);
                        return;
                    }
                    BaseGmsClient.this.zza(3, (int) null);
                } else if (i2 == 5) {
                    ConnectionResult connectionResult2 = BaseGmsClient.this.zzco != null ? BaseGmsClient.this.zzco : new ConnectionResult(8);
                    BaseGmsClient.this.zzcf.mo14593a(connectionResult2);
                    BaseGmsClient.this.onConnectionFailed(connectionResult2);
                } else if (i2 == 3) {
                    Object obj = message.obj;
                    if (obj instanceof PendingIntent) {
                        pendingIntent = (PendingIntent) obj;
                    }
                    ConnectionResult connectionResult3 = new ConnectionResult(message.arg2, pendingIntent);
                    BaseGmsClient.this.zzcf.mo14593a(connectionResult3);
                    BaseGmsClient.this.onConnectionFailed(connectionResult3);
                } else if (i2 == 6) {
                    BaseGmsClient.this.zza(5, (int) null);
                    if (BaseGmsClient.this.zzck != null) {
                        BaseGmsClient.this.zzck.mo11170a(message.arg2);
                    }
                    BaseGmsClient.this.onConnectionSuspended(message.arg2);
                    BaseGmsClient.this.zza(5, 1, (int) null);
                } else if (i2 == 2 && !BaseGmsClient.this.isConnected()) {
                    m14591a(message);
                } else if (m14590b(message)) {
                    ((zzc) message.obj).m14585e();
                } else {
                    int i3 = message.what;
                    StringBuilder sb = new StringBuilder(45);
                    sb.append("Don't know how to handle message: ");
                    sb.append(i3);
                    Log.wtf("GmsClient", sb.toString(), new Exception());
                }
            } else if (m14590b(message)) {
                m14591a(message);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$zzc.class */
    public abstract class zzc<TListener> {

        /* renamed from: a */
        private TListener f7450a;

        /* renamed from: b */
        private boolean f7451b = false;

        public zzc(TListener tlistener) {
            this.f7450a = tlistener;
        }

        /* renamed from: a */
        public final void m14589a() {
            synchronized (this) {
                this.f7450a = null;
            }
        }

        /* renamed from: b */
        public final void m14588b() {
            m14589a();
            synchronized (BaseGmsClient.this.zzch) {
                BaseGmsClient.this.zzch.remove(this);
            }
        }

        /* renamed from: c */
        protected abstract void mo14587c(TListener tlistener);

        /* renamed from: d */
        protected abstract void mo14586d();

        /* renamed from: e */
        public final void m14585e() {
            TListener tlistener;
            synchronized (this) {
                tlistener = this.f7450a;
                if (this.f7451b) {
                    String valueOf = String.valueOf(this);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
                    sb.append("Callback proxy ");
                    sb.append(valueOf);
                    sb.append(" being reused. This is not safe.");
                    Log.w("GmsClient", sb.toString());
                }
            }
            if (tlistener != null) {
                try {
                    mo14587c(tlistener);
                } catch (RuntimeException e) {
                    mo14586d();
                    throw e;
                }
            } else {
                mo14586d();
            }
            synchronized (this) {
                this.f7451b = true;
            }
            m14588b();
        }
    }

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$zzd.class */
    public static final class zzd extends IGmsCallbacks.zza {

        /* renamed from: a */
        private BaseGmsClient f7453a;

        /* renamed from: b */
        private final int f7454b;

        public zzd(@NonNull BaseGmsClient baseGmsClient, int i) {
            this.f7453a = baseGmsClient;
            this.f7454b = i;
        }

        @Override // com.google.android.gms.common.internal.IGmsCallbacks
        @BinderThread
        /* renamed from: P */
        public final void mo14406P(int i, @NonNull IBinder iBinder, @NonNull com.google.android.gms.common.internal.zzb zzbVar) {
            Preconditions.m14522l(this.f7453a, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
            Preconditions.m14523k(zzbVar);
            this.f7453a.zza(zzbVar);
            mo14404a0(i, iBinder, zzbVar.f7554f);
        }

        @Override // com.google.android.gms.common.internal.IGmsCallbacks
        @BinderThread
        /* renamed from: W */
        public final void mo14405W(int i, @Nullable Bundle bundle) {
            Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
        }

        @Override // com.google.android.gms.common.internal.IGmsCallbacks
        @BinderThread
        /* renamed from: a0 */
        public final void mo14404a0(int i, @NonNull IBinder iBinder, @Nullable Bundle bundle) {
            Preconditions.m14522l(this.f7453a, "onPostInitComplete can be called only once per call to getRemoteService");
            this.f7453a.onPostInitHandler(i, iBinder, bundle, this.f7454b);
            this.f7453a = null;
        }
    }

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$zze.class */
    public final class zze implements ServiceConnection {

        /* renamed from: a */
        private final int f7455a;

        public zze(int i) {
            this.f7455a = i;
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            IGmsServiceBroker iGmsServiceBroker;
            if (iBinder == null) {
                BaseGmsClient.this.zzb(16);
                return;
            }
            synchronized (BaseGmsClient.this.zzcd) {
                BaseGmsClient baseGmsClient = BaseGmsClient.this;
                if (iBinder == null) {
                    iGmsServiceBroker = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    iGmsServiceBroker = (queryLocalInterface == null || !(queryLocalInterface instanceof IGmsServiceBroker)) ? new IGmsServiceBroker.Stub.zza(iBinder) : (IGmsServiceBroker) queryLocalInterface;
                }
                baseGmsClient.zzce = iGmsServiceBroker;
            }
            BaseGmsClient.this.zza(0, (Bundle) null, this.f7455a);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            synchronized (BaseGmsClient.this.zzcd) {
                BaseGmsClient.this.zzce = null;
            }
            Handler handler = BaseGmsClient.this.mHandler;
            handler.sendMessage(handler.obtainMessage(6, this.f7455a, 1));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$zzf.class */
    public final class zzf extends zza {

        /* renamed from: g */
        private final IBinder f7457g;

        @BinderThread
        public zzf(int i, IBinder iBinder, Bundle bundle) {
            super(i, bundle);
            this.f7457g = iBinder;
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.zza
        /* renamed from: f */
        protected final void mo14584f(ConnectionResult connectionResult) {
            if (BaseGmsClient.this.zzcl != null) {
                BaseGmsClient.this.zzcl.mo11165f(connectionResult);
            }
            BaseGmsClient.this.onConnectionFailed(connectionResult);
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.zza
        /* renamed from: g */
        protected final boolean mo14583g() {
            try {
                String interfaceDescriptor = this.f7457g.getInterfaceDescriptor();
                if (!BaseGmsClient.this.getServiceDescriptor().equals(interfaceDescriptor)) {
                    String serviceDescriptor = BaseGmsClient.this.getServiceDescriptor();
                    StringBuilder sb = new StringBuilder(String.valueOf(serviceDescriptor).length() + 34 + String.valueOf(interfaceDescriptor).length());
                    sb.append("service descriptor mismatch: ");
                    sb.append(serviceDescriptor);
                    sb.append(" vs. ");
                    sb.append(interfaceDescriptor);
                    Log.e("GmsClient", sb.toString());
                    return false;
                }
                IInterface createServiceInterface = BaseGmsClient.this.createServiceInterface(this.f7457g);
                if (createServiceInterface == null) {
                    return false;
                }
                if (!BaseGmsClient.this.zza(2, 4, (int) createServiceInterface) && !BaseGmsClient.this.zza(3, 4, (int) createServiceInterface)) {
                    return false;
                }
                BaseGmsClient.this.zzco = null;
                Bundle connectionHint = BaseGmsClient.this.getConnectionHint();
                if (BaseGmsClient.this.zzck == null) {
                    return true;
                }
                BaseGmsClient.this.zzck.mo11169b(connectionHint);
                return true;
            } catch (RemoteException e) {
                Log.w("GmsClient", "service probably died");
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$zzg.class */
    public final class zzg extends zza {
        @BinderThread
        public zzg(int i, @Nullable Bundle bundle) {
            super(i, null);
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.zza
        /* renamed from: f */
        protected final void mo14584f(ConnectionResult connectionResult) {
            if (!BaseGmsClient.this.enableLocalFallback() || !BaseGmsClient.this.zzl()) {
                BaseGmsClient.this.zzcf.mo14593a(connectionResult);
                BaseGmsClient.this.onConnectionFailed(connectionResult);
                return;
            }
            BaseGmsClient.this.zzb(16);
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.zza
        /* renamed from: g */
        protected final boolean mo14583g() {
            BaseGmsClient.this.zzcf.mo14593a(ConnectionResult.f6965j);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    @KeepForSdk
    public BaseGmsClient(Context context, Handler handler, GmsClientSupervisor gmsClientSupervisor, GoogleApiAvailabilityLight googleApiAvailabilityLight, int i, BaseConnectionCallbacks baseConnectionCallbacks, BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        this.mLock = new Object();
        this.zzcd = new Object();
        this.zzch = new ArrayList<>();
        this.zzcj = 1;
        this.zzco = null;
        this.zzcp = false;
        this.zzcq = null;
        this.zzcr = new AtomicInteger(0);
        Preconditions.m14522l(context, "Context must not be null");
        this.mContext = context;
        Preconditions.m14522l(handler, "Handler must not be null");
        this.mHandler = handler;
        this.zzca = handler.getLooper();
        Preconditions.m14522l(gmsClientSupervisor, "Supervisor must not be null");
        this.zzcb = gmsClientSupervisor;
        Preconditions.m14522l(googleApiAvailabilityLight, "API availability must not be null");
        this.zzcc = googleApiAvailabilityLight;
        this.zzcm = i;
        this.zzck = baseConnectionCallbacks;
        this.zzcl = baseOnConnectionFailedListener;
        this.zzcn = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
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
            com.google.android.gms.common.internal.GmsClientSupervisor r0 = com.google.android.gms.common.internal.GmsClientSupervisor.m14549a(r0)
            r17 = r0
            com.google.android.gms.common.GoogleApiAvailabilityLight r0 = com.google.android.gms.common.GoogleApiAvailabilityLight.m15064h()
            r18 = r0
            r0 = r14
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.m14523k(r0)
            r0 = r14
            com.google.android.gms.common.internal.BaseGmsClient$BaseConnectionCallbacks r0 = (com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks) r0
            r14 = r0
            r0 = r15
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.m14523k(r0)
            r0 = r10
            r1 = r11
            r2 = r12
            r3 = r17
            r4 = r18
            r5 = r13
            r6 = r14
            r7 = r15
            com.google.android.gms.common.internal.BaseGmsClient$BaseOnConnectionFailedListener r7 = (com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener) r7
            r8 = r16
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.BaseGmsClient.<init>(android.content.Context, android.os.Looper, int, com.google.android.gms.common.internal.BaseGmsClient$BaseConnectionCallbacks, com.google.android.gms.common.internal.BaseGmsClient$BaseOnConnectionFailedListener, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    @KeepForSdk
    public BaseGmsClient(Context context, Looper looper, GmsClientSupervisor gmsClientSupervisor, GoogleApiAvailabilityLight googleApiAvailabilityLight, int i, BaseConnectionCallbacks baseConnectionCallbacks, BaseOnConnectionFailedListener baseOnConnectionFailedListener, String str) {
        this.mLock = new Object();
        this.zzcd = new Object();
        this.zzch = new ArrayList<>();
        this.zzcj = 1;
        this.zzco = null;
        this.zzcp = false;
        this.zzcq = null;
        this.zzcr = new AtomicInteger(0);
        Preconditions.m14522l(context, "Context must not be null");
        this.mContext = context;
        Preconditions.m14522l(looper, "Looper must not be null");
        this.zzca = looper;
        Preconditions.m14522l(gmsClientSupervisor, "Supervisor must not be null");
        this.zzcb = gmsClientSupervisor;
        Preconditions.m14522l(googleApiAvailabilityLight, "API availability must not be null");
        this.zzcc = googleApiAvailabilityLight;
        this.mHandler = new zzb(looper);
        this.zzcm = i;
        this.zzck = baseConnectionCallbacks;
        this.zzcl = baseOnConnectionFailedListener;
        this.zzcn = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(int i, T t) {
        Preconditions.m14533a((i == 4) == (t != null));
        synchronized (this.mLock) {
            this.zzcj = i;
            this.zzcg = t;
            onSetConnectState(i, t);
            if (i != 1) {
                if (i == 2 || i == 3) {
                    if (!(this.zzci == null || this.zzbz == null)) {
                        String c = this.zzbz.m14408c();
                        String a = this.zzbz.m14410a();
                        StringBuilder sb = new StringBuilder(String.valueOf(c).length() + 70 + String.valueOf(a).length());
                        sb.append("Calling connect() while still connected, missing disconnect() for ");
                        sb.append(c);
                        sb.append(" on ");
                        sb.append(a);
                        Log.e("GmsClient", sb.toString());
                        this.zzcb.m14548b(this.zzbz.m14408c(), this.zzbz.m14410a(), this.zzbz.m14409b(), this.zzci, zzj());
                        this.zzcr.incrementAndGet();
                    }
                    this.zzci = new zze(this.zzcr.get());
                    zzh zzhVar = (this.zzcj != 3 || getLocalStartServiceAction() == null) ? new zzh(getStartServicePackage(), getStartServiceAction(), false, 129) : new zzh(getContext().getPackageName(), getLocalStartServiceAction(), true, 129);
                    this.zzbz = zzhVar;
                    if (!this.zzcb.mo14430c(new GmsClientSupervisor.zza(zzhVar.m14408c(), this.zzbz.m14410a(), this.zzbz.m14409b()), this.zzci, zzj())) {
                        String c2 = this.zzbz.m14408c();
                        String a2 = this.zzbz.m14410a();
                        StringBuilder sb2 = new StringBuilder(String.valueOf(c2).length() + 34 + String.valueOf(a2).length());
                        sb2.append("unable to connect to service: ");
                        sb2.append(c2);
                        sb2.append(" on ");
                        sb2.append(a2);
                        Log.e("GmsClient", sb2.toString());
                        zza(16, (Bundle) null, this.zzcr.get());
                    }
                } else if (i == 4) {
                    onConnectedLocked(t);
                }
            } else if (this.zzci != null) {
                this.zzcb.m14548b(this.zzbz.m14408c(), this.zzbz.m14410a(), this.zzbz.m14409b(), this.zzci, zzj());
                this.zzci = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(com.google.android.gms.common.internal.zzb zzbVar) {
        this.zzcq = zzbVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zza(int i, int i2, T t) {
        synchronized (this.mLock) {
            if (this.zzcj != i) {
                return false;
            }
            zza(i2, (int) t);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb(int i) {
        int i2;
        if (zzk()) {
            i2 = 5;
            this.zzcp = true;
        } else {
            i2 = 4;
        }
        Handler handler = this.mHandler;
        handler.sendMessage(handler.obtainMessage(i2, this.zzcr.get(), 16));
    }

    @Nullable
    private final String zzj() {
        String str = this.zzcn;
        String str2 = str;
        if (str == null) {
            str2 = this.mContext.getClass().getName();
        }
        return str2;
    }

    private final boolean zzk() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzcj == 3;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zzl() {
        if (this.zzcp || TextUtils.isEmpty(getServiceDescriptor()) || TextUtils.isEmpty(getLocalStartServiceAction())) {
            return false;
        }
        try {
            Class.forName(getServiceDescriptor());
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    @KeepForSdk
    public void checkAvailabilityAndConnect() {
        int j = this.zzcc.mo15062j(this.mContext, getMinApkVersion());
        if (j != 0) {
            zza(1, (int) null);
            triggerNotAvailable(new LegacyClientCallbackAdapter(), j, null);
            return;
        }
        connect(new LegacyClientCallbackAdapter());
    }

    @KeepForSdk
    protected final void checkConnected() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    @KeepForSdk
    public void connect(@NonNull ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        Preconditions.m14522l(connectionProgressReportCallbacks, "Connection progress callbacks cannot be null.");
        this.zzcf = connectionProgressReportCallbacks;
        zza(2, (int) null);
    }

    @Nullable
    @KeepForSdk
    protected abstract T createServiceInterface(IBinder iBinder);

    @KeepForSdk
    public void disconnect() {
        this.zzcr.incrementAndGet();
        synchronized (this.zzch) {
            int size = this.zzch.size();
            for (int i = 0; i < size; i++) {
                this.zzch.get(i).m14589a();
            }
            this.zzch.clear();
        }
        synchronized (this.zzcd) {
            this.zzce = null;
        }
        zza(1, (int) null);
    }

    @KeepForSdk
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i;
        T t;
        IGmsServiceBroker iGmsServiceBroker;
        synchronized (this.mLock) {
            i = this.zzcj;
            t = this.zzcg;
        }
        synchronized (this.zzcd) {
            iGmsServiceBroker = this.zzce;
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
            printWriter.append("null");
        } else {
            printWriter.append((CharSequence) getServiceDescriptor()).append("@").append((CharSequence) Integer.toHexString(System.identityHashCode(t.asBinder())));
        }
        printWriter.append(" mServiceBroker=");
        if (iGmsServiceBroker == null) {
            printWriter.println("null");
        } else {
            printWriter.append("IGmsServiceBroker@").println(Integer.toHexString(System.identityHashCode(iGmsServiceBroker.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.zzbw > 0) {
            PrintWriter append = printWriter.append((CharSequence) str).append("lastConnectedTime=");
            long j = this.zzbw;
            String format = simpleDateFormat.format(new Date(this.zzbw));
            StringBuilder sb = new StringBuilder(String.valueOf(format).length() + 21);
            sb.append(j);
            sb.append(" ");
            sb.append(format);
            append.println(sb.toString());
        }
        if (this.zzbv > 0) {
            printWriter.append((CharSequence) str).append("lastSuspendedCause=");
            int i2 = this.zzbu;
            if (i2 == 1) {
                printWriter.append("CAUSE_SERVICE_DISCONNECTED");
            } else if (i2 != 2) {
                printWriter.append((CharSequence) String.valueOf(i2));
            } else {
                printWriter.append("CAUSE_NETWORK_LOST");
            }
            PrintWriter append2 = printWriter.append(" lastSuspendedTime=");
            long j2 = this.zzbv;
            String format2 = simpleDateFormat.format(new Date(this.zzbv));
            StringBuilder sb2 = new StringBuilder(String.valueOf(format2).length() + 21);
            sb2.append(j2);
            sb2.append(" ");
            sb2.append(format2);
            append2.println(sb2.toString());
        }
        if (this.zzby > 0) {
            printWriter.append((CharSequence) str).append("lastFailedStatus=").append((CharSequence) CommonStatusCodes.m15014a(this.zzbx));
            PrintWriter append3 = printWriter.append(" lastFailedTime=");
            long j3 = this.zzby;
            String format3 = simpleDateFormat.format(new Date(this.zzby));
            StringBuilder sb3 = new StringBuilder(String.valueOf(format3).length() + 21);
            sb3.append(j3);
            sb3.append(" ");
            sb3.append(format3);
            append3.println(sb3.toString());
        }
    }

    @KeepForSdk
    protected boolean enableLocalFallback() {
        return false;
    }

    @KeepForSdk
    public Account getAccount() {
        return null;
    }

    @KeepForSdk
    public Feature[] getApiFeatures() {
        return zzbt;
    }

    @Nullable
    @KeepForSdk
    public final Feature[] getAvailableFeatures() {
        com.google.android.gms.common.internal.zzb zzbVar = this.zzcq;
        if (zzbVar == null) {
            return null;
        }
        return zzbVar.f7555g;
    }

    @KeepForSdk
    public Bundle getConnectionHint() {
        return null;
    }

    @KeepForSdk
    public final Context getContext() {
        return this.mContext;
    }

    @KeepForSdk
    public String getEndpointPackageName() {
        zzh zzhVar;
        if (isConnected() && (zzhVar = this.zzbz) != null) {
            return zzhVar.m14410a();
        }
        throw new RuntimeException("Failed to connect when checking package");
    }

    @KeepForSdk
    protected Bundle getGetServiceRequestExtraArgs() {
        return new Bundle();
    }

    @Nullable
    @KeepForSdk
    protected String getLocalStartServiceAction() {
        return null;
    }

    @KeepForSdk
    public final Looper getLooper() {
        return this.zzca;
    }

    @KeepForSdk
    public int getMinApkVersion() {
        return GoogleApiAvailabilityLight.f6980a;
    }

    @KeepForSdk
    @WorkerThread
    public void getRemoteService(IAccountAccessor iAccountAccessor, Set<Scope> set) {
        Throwable e;
        Bundle getServiceRequestExtraArgs = getGetServiceRequestExtraArgs();
        GetServiceRequest getServiceRequest = new GetServiceRequest(this.zzcm);
        getServiceRequest.f7486i = this.mContext.getPackageName();
        getServiceRequest.f7489l = getServiceRequestExtraArgs;
        if (set != null) {
            getServiceRequest.f7488k = (Scope[]) set.toArray(new Scope[set.size()]);
        }
        if (requiresSignIn()) {
            getServiceRequest.f7490m = getAccount() != null ? getAccount() : new Account(DEFAULT_ACCOUNT, "com.google");
            if (iAccountAccessor != null) {
                getServiceRequest.f7487j = iAccountAccessor.asBinder();
            }
        } else if (requiresAccount()) {
            getServiceRequest.f7490m = getAccount();
        }
        getServiceRequest.f7491n = zzbt;
        getServiceRequest.f7492o = getApiFeatures();
        try {
            synchronized (this.zzcd) {
                if (this.zzce != null) {
                    this.zzce.mo14539D(new zzd(this, this.zzcr.get()), getServiceRequest);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e2) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e2);
            triggerConnectionSuspended(1);
        } catch (RemoteException e3) {
            e = e3;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            onPostInitHandler(8, null, null, this.zzcr.get());
        } catch (SecurityException e4) {
            throw e4;
        } catch (RuntimeException e5) {
            e = e5;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            onPostInitHandler(8, null, null, this.zzcr.get());
        }
    }

    @KeepForSdk
    protected Set<Scope> getScopes() {
        return Collections.EMPTY_SET;
    }

    @KeepForSdk
    public final T getService() throws DeadObjectException {
        T t;
        synchronized (this.mLock) {
            if (this.zzcj != 5) {
                checkConnected();
                Preconditions.m14519o(this.zzcg != null, "Client is connected but service is null");
                t = this.zzcg;
            } else {
                throw new DeadObjectException();
            }
        }
        return t;
    }

    @Nullable
    @KeepForSdk
    public IBinder getServiceBrokerBinder() {
        synchronized (this.zzcd) {
            if (this.zzce == null) {
                return null;
            }
            return this.zzce.asBinder();
        }
    }

    @NonNull
    @KeepForSdk
    protected abstract String getServiceDescriptor();

    @KeepForSdk
    public Intent getSignInIntent() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    @NonNull
    @KeepForSdk
    protected abstract String getStartServiceAction();

    @KeepForSdk
    protected String getStartServicePackage() {
        return "com.google.android.gms";
    }

    @KeepForSdk
    public boolean isConnected() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzcj == 4;
        }
        return z;
    }

    @KeepForSdk
    public boolean isConnecting() {
        boolean z;
        synchronized (this.mLock) {
            if (!(this.zzcj == 2 || this.zzcj == 3)) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    @CallSuper
    public void onConnectedLocked(@NonNull T t) {
        this.zzbw = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    @CallSuper
    public void onConnectionFailed(ConnectionResult connectionResult) {
        this.zzbx = connectionResult.m15094B();
        this.zzby = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    @CallSuper
    public void onConnectionSuspended(int i) {
        this.zzbu = i;
        this.zzbv = System.currentTimeMillis();
    }

    @KeepForSdk
    protected void onPostInitHandler(int i, IBinder iBinder, Bundle bundle, int i2) {
        Handler handler = this.mHandler;
        handler.sendMessage(handler.obtainMessage(1, i2, -1, new zzf(i, iBinder, bundle)));
    }

    @KeepForSdk
    void onSetConnectState(int i, T t) {
    }

    @KeepForSdk
    public void onUserSignOut(@NonNull SignOutCallbacks signOutCallbacks) {
        signOutCallbacks.mo14592a();
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
    public void triggerConnectionSuspended(int i) {
        Handler handler = this.mHandler;
        handler.sendMessage(handler.obtainMessage(6, this.zzcr.get(), i));
    }

    @VisibleForTesting
    @KeepForSdk
    protected void triggerNotAvailable(@NonNull ConnectionProgressReportCallbacks connectionProgressReportCallbacks, int i, @Nullable PendingIntent pendingIntent) {
        Preconditions.m14522l(connectionProgressReportCallbacks, "Connection progress callbacks cannot be null.");
        this.zzcf = connectionProgressReportCallbacks;
        Handler handler = this.mHandler;
        handler.sendMessage(handler.obtainMessage(3, this.zzcr.get(), i, pendingIntent));
    }

    protected final void zza(int i, @Nullable Bundle bundle, int i2) {
        Handler handler = this.mHandler;
        handler.sendMessage(handler.obtainMessage(7, i2, -1, new zzg(i, null)));
    }
}
