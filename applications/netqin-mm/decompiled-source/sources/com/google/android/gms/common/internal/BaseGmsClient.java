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
import com.google.android.gms.internal.common.zzi;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient.class */
public abstract class BaseGmsClient<T extends IInterface> {

    /* renamed from: B */
    public static final Feature[] f23367B = new Feature[0];
    @VisibleForTesting

    /* renamed from: A */
    public AtomicInteger f23368A;

    /* renamed from: a */
    public int f23369a;

    /* renamed from: b */
    public long f23370b;

    /* renamed from: c */
    public long f23371c;

    /* renamed from: d */
    public int f23372d;

    /* renamed from: e */
    public long f23373e;

    /* renamed from: f */
    public volatile String f23374f;
    @VisibleForTesting

    /* renamed from: g */
    public zzk f23375g;

    /* renamed from: h */
    public final Context f23376h;

    /* renamed from: i */
    public final GmsClientSupervisor f23377i;

    /* renamed from: j */
    public final GoogleApiAvailabilityLight f23378j;

    /* renamed from: k */
    public final Handler f23379k;

    /* renamed from: l */
    public final Object f23380l;

    /* renamed from: m */
    public final Object f23381m;

    /* renamed from: n */
    public IGmsServiceBroker f23382n;
    @VisibleForTesting

    /* renamed from: o */
    public ConnectionProgressReportCallbacks f23383o;

    /* renamed from: p */
    public T f23384p;

    /* renamed from: q */
    public final ArrayList<zzc<?>> f23385q;

    /* renamed from: r */
    public zzd f23386r;

    /* renamed from: s */
    public int f23387s;

    /* renamed from: t */
    public final BaseConnectionCallbacks f23388t;

    /* renamed from: u */
    public final BaseOnConnectionFailedListener f23389u;

    /* renamed from: v */
    public final int f23390v;

    /* renamed from: w */
    public final String f23391w;

    /* renamed from: x */
    public ConnectionResult f23392x;

    /* renamed from: y */
    public boolean f23393y;

    /* renamed from: z */
    public volatile com.google.android.gms.common.internal.zzc f23394z;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks.class */
    public interface BaseConnectionCallbacks {
        @KeepForSdk
        void onConnected(Bundle bundle);

        @KeepForSdk
        void onConnectionSuspended(int i);
    }

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener.class */
    public interface BaseOnConnectionFailedListener {
        @KeepForSdk
        void onConnectionFailed(ConnectionResult connectionResult);
    }

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks.class */
    public interface ConnectionProgressReportCallbacks {
        @KeepForSdk
        /* renamed from: b */
        void mo17343b(ConnectionResult connectionResult);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter.class */
    public class LegacyClientCallbackAdapter implements ConnectionProgressReportCallbacks {
        @KeepForSdk
        public LegacyClientCallbackAdapter() {
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
        /* renamed from: b */
        public void mo17343b(ConnectionResult connectionResult) {
            if (connectionResult.m17830y()) {
                BaseGmsClient baseGmsClient = BaseGmsClient.this;
                baseGmsClient.m17372a((IAccountAccessor) null, baseGmsClient.mo17309x());
            } else if (BaseGmsClient.this.f23389u != null) {
                BaseGmsClient.this.f23389u.onConnectionFailed(connectionResult);
            }
        }
    }

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks.class */
    public interface SignOutCallbacks {
        @KeepForSdk
        /* renamed from: a */
        void mo17342a();
    }

    /* renamed from: com.google.android.gms.common.internal.BaseGmsClient$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$a.class */
    public abstract class AbstractC7237a extends zzc<Boolean> {

        /* renamed from: d */
        public final int f23396d;

        /* renamed from: e */
        public final Bundle f23397e;

        public AbstractC7237a(int i, Bundle bundle) {
            super(true);
            this.f23396d = i;
            this.f23397e = bundle;
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.zzc
        /* renamed from: a */
        public final void mo17339a() {
        }

        /* renamed from: a */
        public abstract void mo17334a(ConnectionResult connectionResult);

        @Override // com.google.android.gms.common.internal.BaseGmsClient.zzc
        /* renamed from: a */
        public final /* synthetic */ void mo17338a(Boolean bool) {
            Boolean bool2 = bool;
            PendingIntent pendingIntent = null;
            if (bool2 == null) {
                BaseGmsClient.this.m17367b(1, null);
                return;
            }
            int i = this.f23396d;
            if (i != 0) {
                if (i != 10) {
                    BaseGmsClient.this.m17367b(1, null);
                    Bundle bundle = this.f23397e;
                    if (bundle != null) {
                        pendingIntent = (PendingIntent) bundle.getParcelable("pendingIntent");
                    }
                    mo17334a(new ConnectionResult(this.f23396d, pendingIntent));
                    return;
                }
                BaseGmsClient.this.m17367b(1, null);
                throw new IllegalStateException(String.format("A fatal developer error has occurred. Class name: %s. Start service action: %s. Service Descriptor: %s. ", getClass().getSimpleName(), BaseGmsClient.this.mo8646A(), BaseGmsClient.this.mo8640z()));
            } else if (!mo17333e()) {
                BaseGmsClient.this.m17367b(1, null);
                mo17334a(new ConnectionResult(8, null));
            }
        }

        /* renamed from: e */
        public abstract boolean mo17333e();
    }

    /* renamed from: com.google.android.gms.common.internal.BaseGmsClient$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$b.class */
    public final class HandlerC7238b extends zzi {
        public HandlerC7238b(Looper looper) {
            super(looper);
        }

        /* renamed from: a */
        public static void m17341a(Message message) {
            zzc zzcVar = (zzc) message.obj;
            zzcVar.mo17339a();
            zzcVar.m17336c();
        }

        /* renamed from: b */
        public static boolean m17340b(Message message) {
            int i = message.what;
            return i == 2 || i == 1 || i == 7;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (BaseGmsClient.this.f23368A.get() == message.arg1) {
                int i = message.what;
                if ((i == 1 || i == 7 || ((i == 4 && !BaseGmsClient.this.m17348r()) || message.what == 5)) && !BaseGmsClient.this.m17358g()) {
                    m17341a(message);
                    return;
                }
                int i2 = message.what;
                PendingIntent pendingIntent = null;
                if (i2 == 4) {
                    BaseGmsClient.this.f23392x = new ConnectionResult(message.arg2);
                    if (!BaseGmsClient.this.m17389G() || BaseGmsClient.this.f23393y) {
                        ConnectionResult connectionResult = BaseGmsClient.this.f23392x != null ? BaseGmsClient.this.f23392x : new ConnectionResult(8);
                        BaseGmsClient.this.f23383o.mo17343b(connectionResult);
                        BaseGmsClient.this.m17383a(connectionResult);
                        return;
                    }
                    BaseGmsClient.this.m17367b(3, null);
                } else if (i2 == 5) {
                    ConnectionResult connectionResult2 = BaseGmsClient.this.f23392x != null ? BaseGmsClient.this.f23392x : new ConnectionResult(8);
                    BaseGmsClient.this.f23383o.mo17343b(connectionResult2);
                    BaseGmsClient.this.m17383a(connectionResult2);
                } else if (i2 == 3) {
                    Object obj = message.obj;
                    if (obj instanceof PendingIntent) {
                        pendingIntent = (PendingIntent) obj;
                    }
                    ConnectionResult connectionResult3 = new ConnectionResult(message.arg2, pendingIntent);
                    BaseGmsClient.this.f23383o.mo17343b(connectionResult3);
                    BaseGmsClient.this.m17383a(connectionResult3);
                } else if (i2 == 6) {
                    BaseGmsClient.this.m17367b(5, null);
                    if (BaseGmsClient.this.f23388t != null) {
                        BaseGmsClient.this.f23388t.onConnectionSuspended(message.arg2);
                    }
                    BaseGmsClient.this.m17388a(message.arg2);
                    BaseGmsClient.this.m17387a(5, 1, (int) null);
                } else if (i2 == 2 && !BaseGmsClient.this.m17365c()) {
                    m17341a(message);
                } else if (m17340b(message)) {
                    ((zzc) message.obj).m17337b();
                } else {
                    int i3 = message.what;
                    StringBuilder sb = new StringBuilder(45);
                    sb.append("Don't know how to handle message: ");
                    sb.append(i3);
                    Log.wtf("GmsClient", sb.toString(), new Exception());
                }
            } else if (m17340b(message)) {
                m17341a(message);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$zzc.class */
    public abstract class zzc<TListener> {

        /* renamed from: a */
        public TListener f23400a;

        /* renamed from: b */
        public boolean f23401b = false;

        public zzc(TListener tlistener) {
            this.f23400a = tlistener;
        }

        /* renamed from: a */
        public abstract void mo17339a();

        /* renamed from: a */
        public abstract void mo17338a(TListener tlistener);

        /* renamed from: b */
        public final void m17337b() {
            TListener tlistener;
            synchronized (this) {
                tlistener = this.f23400a;
                if (this.f23401b) {
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
                    mo17338a(tlistener);
                } catch (RuntimeException e) {
                    mo17339a();
                    throw e;
                }
            } else {
                mo17339a();
            }
            synchronized (this) {
                this.f23401b = true;
            }
            m17336c();
        }

        /* renamed from: c */
        public final void m17336c() {
            m17335d();
            synchronized (BaseGmsClient.this.f23385q) {
                BaseGmsClient.this.f23385q.remove(this);
            }
        }

        /* renamed from: d */
        public final void m17335d() {
            synchronized (this) {
                this.f23400a = null;
            }
        }
    }

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$zzd.class */
    public final class zzd implements ServiceConnection {

        /* renamed from: a */
        public final int f23403a;

        public zzd(int i) {
            this.f23403a = i;
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            IGmsServiceBroker iGmsServiceBroker;
            if (iBinder == null) {
                BaseGmsClient.this.m17364c(16);
                return;
            }
            synchronized (BaseGmsClient.this.f23381m) {
                BaseGmsClient baseGmsClient = BaseGmsClient.this;
                if (iBinder == null) {
                    iGmsServiceBroker = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    iGmsServiceBroker = (queryLocalInterface == null || !(queryLocalInterface instanceof IGmsServiceBroker)) ? new IGmsServiceBroker.Stub.C7239a(iBinder) : (IGmsServiceBroker) queryLocalInterface;
                }
                baseGmsClient.f23382n = iGmsServiceBroker;
            }
            BaseGmsClient.this.m17386a(0, (Bundle) null, this.f23403a);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            synchronized (BaseGmsClient.this.f23381m) {
                BaseGmsClient.this.f23382n = null;
            }
            Handler handler = BaseGmsClient.this.f23379k;
            handler.sendMessage(handler.obtainMessage(6, this.f23403a, 1));
        }
    }

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$zze.class */
    public static final class zze extends IGmsCallbacks.zza {

        /* renamed from: a */
        public BaseGmsClient f23405a;

        /* renamed from: b */
        public final int f23406b;

        public zze(BaseGmsClient baseGmsClient, int i) {
            this.f23405a = baseGmsClient;
            this.f23406b = i;
        }

        @Override // com.google.android.gms.common.internal.IGmsCallbacks
        /* renamed from: a */
        public final void mo17161a(int i, Bundle bundle) {
            Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
        }

        @Override // com.google.android.gms.common.internal.IGmsCallbacks
        /* renamed from: a */
        public final void mo17160a(int i, IBinder iBinder, Bundle bundle) {
            Preconditions.m17287a(this.f23405a, "onPostInitComplete can be called only once per call to getRemoteService");
            this.f23405a.m17385a(i, iBinder, bundle, this.f23406b);
            this.f23405a = null;
        }

        @Override // com.google.android.gms.common.internal.IGmsCallbacks
        /* renamed from: a */
        public final void mo17159a(int i, IBinder iBinder, com.google.android.gms.common.internal.zzc zzcVar) {
            Preconditions.m17287a(this.f23405a, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
            Preconditions.m17288a(zzcVar);
            this.f23405a.m17371a(zzcVar);
            mo17160a(i, iBinder, zzcVar.f23487a);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$zzf.class */
    public final class zzf extends AbstractC7237a {

        /* renamed from: g */
        public final IBinder f23407g;

        public zzf(int i, IBinder iBinder, Bundle bundle) {
            super(i, bundle);
            this.f23407g = iBinder;
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.AbstractC7237a
        /* renamed from: a */
        public final void mo17334a(ConnectionResult connectionResult) {
            if (BaseGmsClient.this.f23389u != null) {
                BaseGmsClient.this.f23389u.onConnectionFailed(connectionResult);
            }
            BaseGmsClient.this.m17383a(connectionResult);
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.AbstractC7237a
        /* renamed from: e */
        public final boolean mo17333e() {
            try {
                String interfaceDescriptor = this.f23407g.getInterfaceDescriptor();
                if (!BaseGmsClient.this.mo8640z().equals(interfaceDescriptor)) {
                    String z = BaseGmsClient.this.mo8640z();
                    StringBuilder sb = new StringBuilder(String.valueOf(z).length() + 34 + String.valueOf(interfaceDescriptor).length());
                    sb.append("service descriptor mismatch: ");
                    sb.append(z);
                    sb.append(" vs. ");
                    sb.append(interfaceDescriptor);
                    Log.e("GmsClient", sb.toString());
                    return false;
                }
                IInterface a = BaseGmsClient.this.mo8645a(this.f23407g);
                if (a == null) {
                    return false;
                }
                if (!BaseGmsClient.this.m17387a(2, 4, (int) a) && !BaseGmsClient.this.m17387a(3, 4, (int) a)) {
                    return false;
                }
                BaseGmsClient.this.f23392x = null;
                Bundle o = BaseGmsClient.this.m17351o();
                if (BaseGmsClient.this.f23388t == null) {
                    return true;
                }
                BaseGmsClient.this.f23388t.onConnected(o);
                return true;
            } catch (RemoteException e) {
                Log.w("GmsClient", "service probably died");
                return false;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$zzg.class */
    public final class zzg extends AbstractC7237a {
        public zzg(int i, Bundle bundle) {
            super(i, null);
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.AbstractC7237a
        /* renamed from: a */
        public final void mo17334a(ConnectionResult connectionResult) {
            if (!BaseGmsClient.this.m17348r() || !BaseGmsClient.this.m17389G()) {
                BaseGmsClient.this.f23383o.mo17343b(connectionResult);
                BaseGmsClient.this.m17383a(connectionResult);
                return;
            }
            BaseGmsClient.this.m17364c(16);
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.AbstractC7237a
        /* renamed from: e */
        public final boolean mo17333e() {
            BaseGmsClient.this.f23383o.mo17343b(ConnectionResult.f23006e);
            return true;
        }
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
            com.google.android.gms.common.internal.GmsClientSupervisor r0 = com.google.android.gms.common.internal.GmsClientSupervisor.m17307a(r0)
            r17 = r0
            com.google.android.gms.common.GoogleApiAvailabilityLight r0 = com.google.android.gms.common.GoogleApiAvailabilityLight.m17812a()
            r18 = r0
            r0 = r14
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.m17288a(r0)
            r0 = r14
            com.google.android.gms.common.internal.BaseGmsClient$BaseConnectionCallbacks r0 = (com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks) r0
            r14 = r0
            r0 = r15
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.m17288a(r0)
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

    @VisibleForTesting
    @KeepForSdk
    public BaseGmsClient(Context context, Looper looper, GmsClientSupervisor gmsClientSupervisor, GoogleApiAvailabilityLight googleApiAvailabilityLight, int i, BaseConnectionCallbacks baseConnectionCallbacks, BaseOnConnectionFailedListener baseOnConnectionFailedListener, String str) {
        this.f23374f = null;
        this.f23380l = new Object();
        this.f23381m = new Object();
        this.f23385q = new ArrayList<>();
        this.f23387s = 1;
        this.f23392x = null;
        this.f23393y = false;
        this.f23394z = null;
        this.f23368A = new AtomicInteger(0);
        Preconditions.m17287a(context, "Context must not be null");
        this.f23376h = context;
        Preconditions.m17287a(looper, "Looper must not be null");
        Preconditions.m17287a(gmsClientSupervisor, "Supervisor must not be null");
        this.f23377i = gmsClientSupervisor;
        Preconditions.m17287a(googleApiAvailabilityLight, "API availability must not be null");
        this.f23378j = googleApiAvailabilityLight;
        this.f23379k = new HandlerC7238b(looper);
        this.f23390v = i;
        this.f23388t = baseConnectionCallbacks;
        this.f23389u = baseOnConnectionFailedListener;
        this.f23391w = str;
    }

    @KeepForSdk
    /* renamed from: A */
    public abstract String mo8646A();

    @KeepForSdk
    /* renamed from: B */
    public String m17394B() {
        return "com.google.android.gms";
    }

    @KeepForSdk
    /* renamed from: C */
    public boolean m17393C() {
        return false;
    }

    @KeepForSdk
    /* renamed from: D */
    public boolean m17392D() {
        return false;
    }

    /* renamed from: E */
    public final String m17391E() {
        String str = this.f23391w;
        String str2 = str;
        if (str == null) {
            str2 = this.f23376h.getClass().getName();
        }
        return str2;
    }

    /* renamed from: F */
    public final boolean m17390F() {
        boolean z;
        synchronized (this.f23380l) {
            z = this.f23387s == 3;
        }
        return z;
    }

    /* renamed from: G */
    public final boolean m17389G() {
        if (this.f23393y || TextUtils.isEmpty(mo8640z()) || TextUtils.isEmpty(m17345w())) {
            return false;
        }
        try {
            Class.forName(mo8640z());
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    @KeepForSdk
    /* renamed from: a */
    public abstract T mo8645a(IBinder iBinder);

    @KeepForSdk
    /* renamed from: a */
    public void m17388a(int i) {
        this.f23369a = i;
        this.f23370b = System.currentTimeMillis();
    }

    /* renamed from: a */
    public final void m17386a(int i, Bundle bundle, int i2) {
        Handler handler = this.f23379k;
        handler.sendMessage(handler.obtainMessage(7, i2, -1, new zzg(i, null)));
    }

    @KeepForSdk
    /* renamed from: a */
    public void m17385a(int i, IBinder iBinder, Bundle bundle, int i2) {
        Handler handler = this.f23379k;
        handler.sendMessage(handler.obtainMessage(1, i2, -1, new zzf(i, iBinder, bundle)));
    }

    @KeepForSdk
    /* renamed from: a */
    public void mo17170a(int i, T t) {
    }

    @KeepForSdk
    /* renamed from: a */
    public void m17384a(T t) {
        this.f23371c = System.currentTimeMillis();
    }

    @KeepForSdk
    /* renamed from: a */
    public void m17383a(ConnectionResult connectionResult) {
        this.f23372d = connectionResult.m17834f();
        this.f23373e = System.currentTimeMillis();
    }

    @KeepForSdk
    /* renamed from: a */
    public void m17382a(ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        Preconditions.m17287a(connectionProgressReportCallbacks, "Connection progress callbacks cannot be null.");
        this.f23383o = connectionProgressReportCallbacks;
        m17367b(2, null);
    }

    @VisibleForTesting
    @KeepForSdk
    /* renamed from: a */
    public void m17381a(ConnectionProgressReportCallbacks connectionProgressReportCallbacks, int i, PendingIntent pendingIntent) {
        Preconditions.m17287a(connectionProgressReportCallbacks, "Connection progress callbacks cannot be null.");
        this.f23383o = connectionProgressReportCallbacks;
        Handler handler = this.f23379k;
        handler.sendMessage(handler.obtainMessage(3, this.f23368A.get(), i, pendingIntent));
    }

    @KeepForSdk
    /* renamed from: a */
    public void m17380a(SignOutCallbacks signOutCallbacks) {
        signOutCallbacks.mo17342a();
    }

    @KeepForSdk
    /* renamed from: a */
    public void m17372a(IAccountAccessor iAccountAccessor, Set<Scope> set) {
        Throwable e;
        Bundle v = mo8641v();
        GetServiceRequest getServiceRequest = new GetServiceRequest(this.f23390v);
        getServiceRequest.f23432d = this.f23376h.getPackageName();
        getServiceRequest.f23435g = v;
        if (set != null) {
            getServiceRequest.f23434f = (Scope[]) set.toArray(new Scope[set.size()]);
        }
        if (mo8642n()) {
            getServiceRequest.f23436h = mo17310s() != null ? mo17310s() : new Account("<<default account>>", "com.google");
            if (iAccountAccessor != null) {
                getServiceRequest.f23433e = iAccountAccessor.asBinder();
            }
        } else if (m17392D()) {
            getServiceRequest.f23436h = mo17310s();
        }
        getServiceRequest.f23437i = f23367B;
        getServiceRequest.f23438j = m17347t();
        try {
            synchronized (this.f23381m) {
                if (this.f23382n != null) {
                    this.f23382n.mo17297a(new zze(this, this.f23368A.get()), getServiceRequest);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e2) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e2);
            m17368b(3);
        } catch (RemoteException e3) {
            e = e3;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            m17385a(8, (IBinder) null, (Bundle) null, this.f23368A.get());
        } catch (SecurityException e4) {
            throw e4;
        } catch (RuntimeException e5) {
            e = e5;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            m17385a(8, (IBinder) null, (Bundle) null, this.f23368A.get());
        }
    }

    /* renamed from: a */
    public final void m17371a(com.google.android.gms.common.internal.zzc zzcVar) {
        this.f23394z = zzcVar;
    }

    @KeepForSdk
    /* renamed from: a */
    public void m17370a(String str) {
        this.f23374f = str;
        mo10491b();
    }

    @KeepForSdk
    /* renamed from: a */
    public void m17369a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i;
        T t;
        IGmsServiceBroker iGmsServiceBroker;
        synchronized (this.f23380l) {
            i = this.f23387s;
            t = this.f23384p;
        }
        synchronized (this.f23381m) {
            iGmsServiceBroker = this.f23382n;
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
            printWriter.append((CharSequence) mo8640z()).append("@").append((CharSequence) Integer.toHexString(System.identityHashCode(t.asBinder())));
        }
        printWriter.append(" mServiceBroker=");
        if (iGmsServiceBroker == null) {
            printWriter.println("null");
        } else {
            printWriter.append("IGmsServiceBroker@").println(Integer.toHexString(System.identityHashCode(iGmsServiceBroker.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.f23371c > 0) {
            PrintWriter append = printWriter.append((CharSequence) str).append("lastConnectedTime=");
            long j = this.f23371c;
            String format = simpleDateFormat.format(new Date(this.f23371c));
            StringBuilder sb = new StringBuilder(String.valueOf(format).length() + 21);
            sb.append(j);
            sb.append(" ");
            sb.append(format);
            append.println(sb.toString());
        }
        if (this.f23370b > 0) {
            printWriter.append((CharSequence) str).append("lastSuspendedCause=");
            int i2 = this.f23369a;
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
            long j2 = this.f23370b;
            String format2 = simpleDateFormat.format(new Date(this.f23370b));
            StringBuilder sb2 = new StringBuilder(String.valueOf(format2).length() + 21);
            sb2.append(j2);
            sb2.append(" ");
            sb2.append(format2);
            append2.println(sb2.toString());
        }
        if (this.f23373e > 0) {
            printWriter.append((CharSequence) str).append("lastFailedStatus=").append((CharSequence) CommonStatusCodes.m17777a(this.f23372d));
            PrintWriter append3 = printWriter.append(" lastFailedTime=");
            long j3 = this.f23373e;
            String format3 = simpleDateFormat.format(new Date(this.f23373e));
            StringBuilder sb3 = new StringBuilder(String.valueOf(format3).length() + 21);
            sb3.append(j3);
            sb3.append(" ");
            sb3.append(format3);
            append3.println(sb3.toString());
        }
    }

    /* renamed from: a */
    public final boolean m17387a(int i, int i2, T t) {
        synchronized (this.f23380l) {
            if (this.f23387s != i) {
                return false;
            }
            m17367b(i2, t);
            return true;
        }
    }

    @KeepForSdk
    /* renamed from: b */
    public void mo10491b() {
        this.f23368A.incrementAndGet();
        synchronized (this.f23385q) {
            try {
                int size = this.f23385q.size();
                for (int i = 0; i < size; i++) {
                    this.f23385q.get(i).m17335d();
                }
                this.f23385q.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.f23381m) {
            this.f23382n = null;
        }
        m17367b(1, null);
    }

    @KeepForSdk
    /* renamed from: b */
    public void m17368b(int i) {
        Handler handler = this.f23379k;
        handler.sendMessage(handler.obtainMessage(6, this.f23368A.get(), i));
    }

    /* renamed from: b */
    public final void m17367b(int i, T t) {
        boolean z = false;
        if ((i == 4) == (t != null)) {
            z = true;
        }
        Preconditions.m17284a(z);
        synchronized (this.f23380l) {
            this.f23387s = i;
            this.f23384p = t;
            mo17170a(i, (int) t);
            if (i != 1) {
                if (i == 2 || i == 3) {
                    if (!(this.f23386r == null || this.f23375g == null)) {
                        String a = this.f23375g.m17166a();
                        String b = this.f23375g.m17165b();
                        StringBuilder sb = new StringBuilder(String.valueOf(a).length() + 70 + String.valueOf(b).length());
                        sb.append("Calling connect() while still connected, missing disconnect() for ");
                        sb.append(a);
                        sb.append(" on ");
                        sb.append(b);
                        Log.e("GmsClient", sb.toString());
                        this.f23377i.m17305a(this.f23375g.m17166a(), this.f23375g.m17165b(), this.f23375g.m17164c(), this.f23386r, m17391E(), this.f23375g.m17163d());
                        this.f23368A.incrementAndGet();
                    }
                    this.f23386r = new zzd(this.f23368A.get());
                    zzk zzkVar = (this.f23387s != 3 || m17345w() == null) ? new zzk(m17394B(), mo8646A(), false, GmsClientSupervisor.m17308a(), m17393C()) : new zzk(m17346u().getPackageName(), m17345w(), true, GmsClientSupervisor.m17308a(), false);
                    this.f23375g = zzkVar;
                    if (!zzkVar.m17163d() || mo8643j() >= 17895000) {
                        if (!this.f23377i.mo17306a(new GmsClientSupervisor.zza(this.f23375g.m17166a(), this.f23375g.m17165b(), this.f23375g.m17164c(), this.f23375g.m17163d()), this.f23386r, m17391E())) {
                            String a2 = this.f23375g.m17166a();
                            String b2 = this.f23375g.m17165b();
                            StringBuilder sb2 = new StringBuilder(String.valueOf(a2).length() + 34 + String.valueOf(b2).length());
                            sb2.append("unable to connect to service: ");
                            sb2.append(a2);
                            sb2.append(" on ");
                            sb2.append(b2);
                            Log.e("GmsClient", sb2.toString());
                            m17386a(16, (Bundle) null, this.f23368A.get());
                        }
                    } else {
                        String valueOf = String.valueOf(this.f23375g.m17166a());
                        throw new IllegalStateException(valueOf.length() != 0 ? "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(valueOf) : new String("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "));
                    }
                } else if (i == 4) {
                    m17384a((BaseGmsClient<T>) t);
                }
            } else if (this.f23386r != null) {
                this.f23377i.m17305a(this.f23375g.m17166a(), this.f23375g.m17165b(), this.f23375g.m17164c(), this.f23386r, m17391E(), this.f23375g.m17163d());
                this.f23386r = null;
            }
        }
    }

    /* renamed from: c */
    public final void m17364c(int i) {
        int i2;
        if (m17390F()) {
            i2 = 5;
            this.f23393y = true;
        } else {
            i2 = 4;
        }
        Handler handler = this.f23379k;
        handler.sendMessage(handler.obtainMessage(i2, this.f23368A.get(), 16));
    }

    @KeepForSdk
    /* renamed from: c */
    public boolean m17365c() {
        boolean z;
        synchronized (this.f23380l) {
            z = this.f23387s == 4;
        }
        return z;
    }

    @KeepForSdk
    /* renamed from: e */
    public boolean m17361e() {
        return false;
    }

    @KeepForSdk
    /* renamed from: g */
    public boolean m17358g() {
        boolean z;
        synchronized (this.f23380l) {
            if (!(this.f23387s == 2 || this.f23387s == 3)) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    @KeepForSdk
    /* renamed from: h */
    public String m17356h() {
        zzk zzkVar;
        if (m17365c() && (zzkVar = this.f23375g) != null) {
            return zzkVar.m17165b();
        }
        throw new RuntimeException("Failed to connect when checking package");
    }

    @KeepForSdk
    /* renamed from: i */
    public boolean m17355i() {
        return true;
    }

    @KeepForSdk
    /* renamed from: j */
    public int mo8643j() {
        return GoogleApiAvailabilityLight.f23021a;
    }

    @KeepForSdk
    /* renamed from: k */
    public final Feature[] m17354k() {
        com.google.android.gms.common.internal.zzc zzcVar = this.f23394z;
        if (zzcVar == null) {
            return null;
        }
        return zzcVar.f23488b;
    }

    @KeepForSdk
    /* renamed from: l */
    public String m17353l() {
        return this.f23374f;
    }

    @KeepForSdk
    /* renamed from: m */
    public Intent m17352m() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    @KeepForSdk
    /* renamed from: n */
    public boolean mo8642n() {
        return false;
    }

    @KeepForSdk
    /* renamed from: o */
    public Bundle m17351o() {
        return null;
    }

    @KeepForSdk
    /* renamed from: p */
    public void m17350p() {
        int a = this.f23378j.mo17809a(this.f23376h, mo8643j());
        if (a != 0) {
            m17367b(1, null);
            m17381a(new LegacyClientCallbackAdapter(), a, (PendingIntent) null);
            return;
        }
        m17382a(new LegacyClientCallbackAdapter());
    }

    @KeepForSdk
    /* renamed from: q */
    public final void m17349q() {
        if (!m17365c()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    @KeepForSdk
    /* renamed from: r */
    public boolean m17348r() {
        return false;
    }

    @KeepForSdk
    /* renamed from: s */
    public Account mo17310s() {
        return null;
    }

    @KeepForSdk
    /* renamed from: t */
    public Feature[] m17347t() {
        return f23367B;
    }

    @KeepForSdk
    /* renamed from: u */
    public final Context m17346u() {
        return this.f23376h;
    }

    @KeepForSdk
    /* renamed from: v */
    public Bundle mo8641v() {
        return new Bundle();
    }

    @KeepForSdk
    /* renamed from: w */
    public String m17345w() {
        return null;
    }

    @KeepForSdk
    /* renamed from: x */
    public Set<Scope> mo17309x() {
        return Collections.emptySet();
    }

    @KeepForSdk
    /* renamed from: y */
    public final T m17344y() throws DeadObjectException {
        T t;
        synchronized (this.f23380l) {
            if (this.f23387s != 5) {
                m17349q();
                Preconditions.m17279b(this.f23384p != null, "Client is connected but service is null");
                t = this.f23384p;
            } else {
                throw new DeadObjectException();
            }
        }
        return t;
    }

    @KeepForSdk
    /* renamed from: z */
    public abstract String mo8640z();
}
