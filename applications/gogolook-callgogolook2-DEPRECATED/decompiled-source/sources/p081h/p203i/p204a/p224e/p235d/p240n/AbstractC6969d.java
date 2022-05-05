package p081h.p203i.p204a.p224e.p235d.p240n;

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
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.GetServiceRequest;
import com.google.android.gms.common.internal.zzc;
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
import p081h.p203i.p204a.p224e.p235d.C6793d;
import p081h.p203i.p204a.p224e.p235d.p236k.C6821d;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6996j;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC7009o;
import p081h.p203i.p204a.p224e.p259j.p267h.HandlerC7748h;
import p459j.p460a.p582w0.p590x4.C14247d;
/* renamed from: h.i.a.e.d.n.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/d.class */
public abstract class AbstractC6969d<T extends IInterface> {

    /* renamed from: A */
    public static final Feature[] f17050A = new Feature[0];

    /* renamed from: a */
    public int f17051a;

    /* renamed from: b */
    public long f17052b;

    /* renamed from: c */
    public long f17053c;

    /* renamed from: d */
    public int f17054d;

    /* renamed from: e */
    public long f17055e;

    /* renamed from: f */
    public C7015q0 f17056f;

    /* renamed from: g */
    public final Context f17057g;

    /* renamed from: h */
    public final AbstractC6996j f17058h;

    /* renamed from: i */
    public final C6793d f17059i;

    /* renamed from: j */
    public final Handler f17060j;

    /* renamed from: k */
    public final Object f17061k;

    /* renamed from: l */
    public final Object f17062l;
    @GuardedBy("mServiceBrokerLock")

    /* renamed from: m */
    public AbstractC7014q f17063m;

    /* renamed from: n */
    public AbstractC6972c f17064n;
    @GuardedBy("mLock")

    /* renamed from: o */
    public T f17065o;

    /* renamed from: p */
    public final ArrayList<AbstractC6977h<?>> f17066p;
    @GuardedBy("mLock")

    /* renamed from: q */
    public ServiceConnectionC6978i f17067q;
    @GuardedBy("mLock")

    /* renamed from: r */
    public int f17068r;

    /* renamed from: s */
    public final AbstractC6970a f17069s;

    /* renamed from: t */
    public final AbstractC6971b f17070t;

    /* renamed from: u */
    public final int f17071u;

    /* renamed from: v */
    public final String f17072v;

    /* renamed from: w */
    public ConnectionResult f17073w;

    /* renamed from: x */
    public boolean f17074x;

    /* renamed from: y */
    public volatile zzc f17075y;

    /* renamed from: z */
    public AtomicInteger f17076z;

    /* renamed from: h.i.a.e.d.n.d$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/d$a.class */
    public interface AbstractC6970a {
        /* renamed from: f */
        void mo16109f(int i);

        /* renamed from: j */
        void mo16108j(@Nullable Bundle bundle);
    }

    /* renamed from: h.i.a.e.d.n.d$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/d$b.class */
    public interface AbstractC6971b {
        /* renamed from: a */
        void mo16112a(@NonNull ConnectionResult connectionResult);
    }

    /* renamed from: h.i.a.e.d.n.d$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/d$c.class */
    public interface AbstractC6972c {
        /* renamed from: a */
        void mo21410a(@NonNull ConnectionResult connectionResult);
    }

    /* renamed from: h.i.a.e.d.n.d$d */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/d$d.class */
    public class C6973d implements AbstractC6972c {
        public C6973d() {
        }

        @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.AbstractC6972c
        /* renamed from: a */
        public void mo21410a(@NonNull ConnectionResult connectionResult) {
            if (connectionResult.m32001K()) {
                AbstractC6969d dVar = AbstractC6969d.this;
                dVar.m21438a((AbstractC7003m) null, dVar.mo21361t());
            } else if (AbstractC6969d.this.f17070t != null) {
                AbstractC6969d.this.f17070t.mo16112a(connectionResult);
            }
        }
    }

    /* renamed from: h.i.a.e.d.n.d$e */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/d$e.class */
    public interface AbstractC6974e {
        /* renamed from: a */
        void mo21409a();
    }

    /* renamed from: h.i.a.e.d.n.d$f */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/d$f.class */
    public abstract class AbstractC6975f extends AbstractC6977h<Boolean> {

        /* renamed from: d */
        public final int f17078d;

        /* renamed from: e */
        public final Bundle f17079e;

        @BinderThread
        public AbstractC6975f(int i, Bundle bundle) {
            super(true);
            this.f17078d = i;
            this.f17079e = bundle;
        }

        /* renamed from: a */
        public abstract void mo21401a(ConnectionResult connectionResult);

        @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.AbstractC6977h
        /* renamed from: a */
        public final /* synthetic */ void mo21405a(Boolean bool) {
            Boolean bool2 = bool;
            PendingIntent pendingIntent = null;
            if (bool2 == null) {
                AbstractC6969d.this.m21434b(1, null);
                return;
            }
            int i = this.f17078d;
            if (i != 0) {
                if (i != 10) {
                    AbstractC6969d.this.m21434b(1, null);
                    Bundle bundle = this.f17079e;
                    if (bundle != null) {
                        pendingIntent = (PendingIntent) bundle.getParcelable("pendingIntent");
                    }
                    mo21401a(new ConnectionResult(this.f17078d, pendingIntent));
                    return;
                }
                AbstractC6969d.this.m21434b(1, null);
                throw new IllegalStateException(String.format("A fatal developer error has occurred. Class name: %s. Start service action: %s. Service Descriptor: %s. ", getClass().getSimpleName(), AbstractC6969d.this.mo16068w(), AbstractC6969d.this.mo16069v()));
            } else if (!mo21400e()) {
                AbstractC6969d.this.m21434b(1, null);
                mo21401a(new ConnectionResult(8, null));
            }
        }

        @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.AbstractC6977h
        /* renamed from: c */
        public final void mo21403c() {
        }

        /* renamed from: e */
        public abstract boolean mo21400e();
    }

    /* renamed from: h.i.a.e.d.n.d$g */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/d$g.class */
    public final class HandlerC6976g extends HandlerC7748h {
        public HandlerC6976g(Looper looper) {
            super(looper);
        }

        /* renamed from: a */
        public static void m21408a(Message message) {
            AbstractC6977h hVar = (AbstractC6977h) message.obj;
            hVar.mo21403c();
            hVar.m21404b();
        }

        /* renamed from: b */
        public static boolean m21407b(Message message) {
            int i = message.what;
            return i == 2 || i == 1 || i == 7;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (AbstractC6969d.this.f17076z.get() == message.arg1) {
                int i = message.what;
                if ((i == 1 || i == 7 || ((i == 4 && !AbstractC6969d.this.m21418n()) || message.what == 5)) && !AbstractC6969d.this.m21436b()) {
                    m21408a(message);
                    return;
                }
                int i2 = message.what;
                PendingIntent pendingIntent = null;
                if (i2 == 4) {
                    AbstractC6969d.this.f17073w = new ConnectionResult(message.arg2);
                    if (!AbstractC6969d.this.m21457C() || AbstractC6969d.this.f17074x) {
                        ConnectionResult connectionResult = AbstractC6969d.this.f17073w != null ? AbstractC6969d.this.f17073w : new ConnectionResult(8);
                        AbstractC6969d.this.f17064n.mo21410a(connectionResult);
                        AbstractC6969d.this.m21450a(connectionResult);
                        return;
                    }
                    AbstractC6969d.this.m21434b(3, null);
                } else if (i2 == 5) {
                    ConnectionResult connectionResult2 = AbstractC6969d.this.f17073w != null ? AbstractC6969d.this.f17073w : new ConnectionResult(8);
                    AbstractC6969d.this.f17064n.mo21410a(connectionResult2);
                    AbstractC6969d.this.m21450a(connectionResult2);
                } else if (i2 == 3) {
                    Object obj = message.obj;
                    if (obj instanceof PendingIntent) {
                        pendingIntent = (PendingIntent) obj;
                    }
                    ConnectionResult connectionResult3 = new ConnectionResult(message.arg2, pendingIntent);
                    AbstractC6969d.this.f17064n.mo21410a(connectionResult3);
                    AbstractC6969d.this.m21450a(connectionResult3);
                } else if (i2 == 6) {
                    AbstractC6969d.this.m21434b(5, null);
                    if (AbstractC6969d.this.f17069s != null) {
                        AbstractC6969d.this.f17069s.mo16109f(message.arg2);
                    }
                    AbstractC6969d.this.m21455a(message.arg2);
                    AbstractC6969d.this.m21454a(5, 1, (int) null);
                } else if (i2 == 2 && !AbstractC6969d.this.isConnected()) {
                    m21408a(message);
                } else if (m21407b(message)) {
                    ((AbstractC6977h) message.obj).m21402d();
                } else {
                    int i3 = message.what;
                    StringBuilder sb = new StringBuilder(45);
                    sb.append("Don't know how to handle message: ");
                    sb.append(i3);
                    Log.wtf("GmsClient", sb.toString(), new Exception());
                }
            } else if (m21407b(message)) {
                m21408a(message);
            }
        }
    }

    /* renamed from: h.i.a.e.d.n.d$h */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/d$h.class */
    public abstract class AbstractC6977h<TListener> {

        /* renamed from: a */
        public TListener f17082a;

        /* renamed from: b */
        public boolean f17083b = false;

        public AbstractC6977h(TListener tlistener) {
            this.f17082a = tlistener;
        }

        /* renamed from: a */
        public final void m21406a() {
            synchronized (this) {
                this.f17082a = null;
            }
        }

        /* renamed from: a */
        public abstract void mo21405a(TListener tlistener);

        /* renamed from: b */
        public final void m21404b() {
            m21406a();
            synchronized (AbstractC6969d.this.f17066p) {
                AbstractC6969d.this.f17066p.remove(this);
            }
        }

        /* renamed from: c */
        public abstract void mo21403c();

        /* renamed from: d */
        public final void m21402d() {
            TListener tlistener;
            synchronized (this) {
                tlistener = this.f17082a;
                if (this.f17083b) {
                    String valueOf = String.valueOf(this);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
                    sb.append("Callback proxy ");
                    sb.append(valueOf);
                    sb.append(" being reused. This is not safe.");
                    sb.toString();
                }
            }
            if (tlistener != null) {
                try {
                    mo21405a(tlistener);
                } catch (RuntimeException e) {
                    mo21403c();
                    throw e;
                }
            } else {
                mo21403c();
            }
            synchronized (this) {
                this.f17083b = true;
            }
            m21404b();
        }
    }

    /* renamed from: h.i.a.e.d.n.d$i */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/d$i.class */
    public final class ServiceConnectionC6978i implements ServiceConnection {

        /* renamed from: a */
        public final int f17085a;

        public ServiceConnectionC6978i(int i) {
            this.f17085a = i;
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            AbstractC7014q qVar;
            if (iBinder == null) {
                AbstractC6969d.this.m21431c(16);
                return;
            }
            synchronized (AbstractC6969d.this.f17062l) {
                AbstractC6969d dVar = AbstractC6969d.this;
                if (iBinder == null) {
                    qVar = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    qVar = (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC7014q)) ? new C7012p(iBinder) : (AbstractC7014q) queryLocalInterface;
                }
                dVar.f17063m = qVar;
            }
            AbstractC6969d.this.m21453a(0, (Bundle) null, this.f17085a);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            synchronized (AbstractC6969d.this.f17062l) {
                AbstractC6969d.this.f17063m = null;
            }
            Handler handler = AbstractC6969d.this.f17060j;
            handler.sendMessage(handler.obtainMessage(6, this.f17085a, 1));
        }
    }

    /* renamed from: h.i.a.e.d.n.d$j */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/d$j.class */
    public static final class BinderC6979j extends AbstractC7009o.AbstractBinderC7010a {

        /* renamed from: a */
        public AbstractC6969d f17087a;

        /* renamed from: b */
        public final int f17088b;

        public BinderC6979j(@NonNull AbstractC6969d dVar, int i) {
            this.f17087a = dVar;
            this.f17088b = i;
        }

        @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC7009o
        @BinderThread
        /* renamed from: a */
        public final void mo21318a(int i, @Nullable Bundle bundle) {
            Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
        }

        @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC7009o
        @BinderThread
        /* renamed from: a */
        public final void mo21317a(int i, @NonNull IBinder iBinder, @Nullable Bundle bundle) {
            C7021t.m21289a(this.f17087a, "onPostInitComplete can be called only once per call to getRemoteService");
            this.f17087a.m21452a(i, iBinder, bundle, this.f17088b);
            this.f17087a = null;
        }

        @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC7009o
        @BinderThread
        /* renamed from: a */
        public final void mo21316a(int i, @NonNull IBinder iBinder, @NonNull zzc zzcVar) {
            C7021t.m21289a(this.f17087a, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
            C7021t.m21290a(zzcVar);
            this.f17087a.m21449a(zzcVar);
            mo21317a(i, iBinder, zzcVar.f6611a);
        }
    }

    /* renamed from: h.i.a.e.d.n.d$k */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/d$k.class */
    public final class C6980k extends AbstractC6975f {

        /* renamed from: g */
        public final IBinder f17089g;

        @BinderThread
        public C6980k(int i, IBinder iBinder, Bundle bundle) {
            super(i, bundle);
            this.f17089g = iBinder;
        }

        @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.AbstractC6975f
        /* renamed from: a */
        public final void mo21401a(ConnectionResult connectionResult) {
            if (AbstractC6969d.this.f17070t != null) {
                AbstractC6969d.this.f17070t.mo16112a(connectionResult);
            }
            AbstractC6969d.this.m21450a(connectionResult);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0095, code lost:
            if (r5.f17090h.m21454a(3, 4, (int) r0) != false) goto L_0x0098;
         */
        @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.AbstractC6975f
        /* renamed from: e */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean mo21400e() {
            /*
                r5 = this;
                r0 = 0
                r6 = r0
                r0 = r5
                android.os.IBinder r0 = r0.f17089g     // Catch: RemoteException -> 0x00c6
                java.lang.String r0 = r0.getInterfaceDescriptor()     // Catch: RemoteException -> 0x00c6
                r7 = r0
                r0 = r5
                h.i.a.e.d.n.d r0 = p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.this
                java.lang.String r0 = r0.mo16069v()
                r1 = r7
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L_0x0068
                r0 = r5
                h.i.a.e.d.n.d r0 = p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.this
                java.lang.String r0 = r0.mo16069v()
                r8 = r0
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = r8
                java.lang.String r2 = java.lang.String.valueOf(r2)
                int r2 = r2.length()
                r3 = 34
                int r2 = r2 + r3
                r3 = r7
                java.lang.String r3 = java.lang.String.valueOf(r3)
                int r3 = r3.length()
                int r2 = r2 + r3
                r1.<init>(r2)
                r9 = r0
                r0 = r9
                java.lang.String r1 = "service descriptor mismatch: "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                r1 = r8
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                java.lang.String r1 = " vs. "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                r1 = r7
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r0 = "GmsClient"
                r1 = r9
                java.lang.String r1 = r1.toString()
                int r0 = android.util.Log.e(r0, r1)
                r0 = 0
                return r0
            L_0x0068:
                r0 = r5
                h.i.a.e.d.n.d r0 = p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.this
                r1 = r5
                android.os.IBinder r1 = r1.f17089g
                android.os.IInterface r0 = r0.mo16074a(r1)
                r8 = r0
                r0 = r6
                r10 = r0
                r0 = r8
                if (r0 == 0) goto L_0x00c3
                r0 = r5
                h.i.a.e.d.n.d r0 = p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.this
                r1 = 2
                r2 = 4
                r3 = r8
                boolean r0 = p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.m21443a(r0, r1, r2, r3)
                if (r0 != 0) goto L_0x0098
                r0 = r6
                r10 = r0
                r0 = r5
                h.i.a.e.d.n.d r0 = p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.this
                r1 = 3
                r2 = 4
                r3 = r8
                boolean r0 = p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.m21443a(r0, r1, r2, r3)
                if (r0 == 0) goto L_0x00c3
            L_0x0098:
                r0 = r5
                h.i.a.e.d.n.d r0 = p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.this
                r1 = 0
                com.google.android.gms.common.ConnectionResult r0 = p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.m21441a(r0, r1)
                r0 = r5
                h.i.a.e.d.n.d r0 = p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.this
                android.os.Bundle r0 = r0.m21421k()
                r8 = r0
                r0 = r5
                h.i.a.e.d.n.d r0 = p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.this
                h.i.a.e.d.n.d$a r0 = p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.m21427e(r0)
                if (r0 == 0) goto L_0x00c0
                r0 = r5
                h.i.a.e.d.n.d r0 = p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.this
                h.i.a.e.d.n.d$a r0 = p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.m21427e(r0)
                r1 = r8
                r0.mo16108j(r1)
            L_0x00c0:
                r0 = 1
                r10 = r0
            L_0x00c3:
                r0 = r10
                return r0
            L_0x00c6:
                r8 = move-exception
                r0 = r6
                r10 = r0
                goto L_0x00c3
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.C6980k.mo21400e():boolean");
        }
    }

    /* renamed from: h.i.a.e.d.n.d$l */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/d$l.class */
    public final class C6981l extends AbstractC6975f {
        @BinderThread
        public C6981l(int i, @Nullable Bundle bundle) {
            super(i, null);
        }

        @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.AbstractC6975f
        /* renamed from: a */
        public final void mo21401a(ConnectionResult connectionResult) {
            if (!AbstractC6969d.this.m21418n() || !AbstractC6969d.this.m21457C()) {
                AbstractC6969d.this.f17064n.mo21410a(connectionResult);
                AbstractC6969d.this.m21450a(connectionResult);
                return;
            }
            AbstractC6969d.this.m21431c(16);
        }

        @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.AbstractC6975f
        /* renamed from: e */
        public final boolean mo21400e() {
            AbstractC6969d.this.f17064n.mo21410a(ConnectionResult.f6495e);
            return true;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AbstractC6969d(android.content.Context r11, android.os.Looper r12, int r13, p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.AbstractC6970a r14, p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.AbstractC6971b r15, java.lang.String r16) {
        /*
            r10 = this;
            r0 = r11
            h.i.a.e.d.n.j r0 = p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6996j.m21349a(r0)
            r17 = r0
            h.i.a.e.d.d r0 = p081h.p203i.p204a.p224e.p235d.C6793d.m21896a()
            r18 = r0
            r0 = r14
            java.lang.Object r0 = p081h.p203i.p204a.p224e.p235d.p240n.C7021t.m21290a(r0)
            r0 = r14
            h.i.a.e.d.n.d$a r0 = (p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.AbstractC6970a) r0
            r14 = r0
            r0 = r15
            java.lang.Object r0 = p081h.p203i.p204a.p224e.p235d.p240n.C7021t.m21290a(r0)
            r0 = r10
            r1 = r11
            r2 = r12
            r3 = r17
            r4 = r18
            r5 = r13
            r6 = r14
            r7 = r15
            h.i.a.e.d.n.d$b r7 = (p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.AbstractC6971b) r7
            r8 = r16
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.<init>(android.content.Context, android.os.Looper, int, h.i.a.e.d.n.d$a, h.i.a.e.d.n.d$b, java.lang.String):void");
    }

    public AbstractC6969d(Context context, Looper looper, AbstractC6996j jVar, C6793d dVar, int i, AbstractC6970a aVar, AbstractC6971b bVar, String str) {
        this.f17061k = new Object();
        this.f17062l = new Object();
        this.f17066p = new ArrayList<>();
        this.f17068r = 1;
        this.f17073w = null;
        this.f17074x = false;
        this.f17075y = null;
        this.f17076z = new AtomicInteger(0);
        C7021t.m21289a(context, "Context must not be null");
        this.f17057g = context;
        C7021t.m21289a(looper, "Looper must not be null");
        C7021t.m21289a(jVar, "Supervisor must not be null");
        this.f17058h = jVar;
        C7021t.m21289a(dVar, "API availability must not be null");
        this.f17059i = dVar;
        this.f17060j = new HandlerC6976g(looper);
        this.f17071u = i;
        this.f17069s = aVar;
        this.f17070t = bVar;
        this.f17072v = str;
    }

    @Nullable
    /* renamed from: A */
    public final String m21459A() {
        String str = this.f17072v;
        String str2 = str;
        if (str == null) {
            str2 = this.f17057g.getClass().getName();
        }
        return str2;
    }

    /* renamed from: B */
    public final boolean m21458B() {
        boolean z;
        synchronized (this.f17061k) {
            z = this.f17068r == 3;
        }
        return z;
    }

    /* renamed from: C */
    public final boolean m21457C() {
        if (this.f17074x || TextUtils.isEmpty(mo16069v()) || TextUtils.isEmpty(m21415s())) {
            return false;
        }
        try {
            Class.forName(mo16069v());
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    @Nullable
    /* renamed from: a */
    public abstract T mo16074a(IBinder iBinder);

    @CallSuper
    /* renamed from: a */
    public void m21455a(int i) {
        this.f17051a = i;
        this.f17052b = System.currentTimeMillis();
    }

    /* renamed from: a */
    public final void m21453a(int i, @Nullable Bundle bundle, int i2) {
        Handler handler = this.f17060j;
        handler.sendMessage(handler.obtainMessage(7, i2, -1, new C6981l(i, null)));
    }

    /* renamed from: a */
    public void m21452a(int i, IBinder iBinder, Bundle bundle, int i2) {
        Handler handler = this.f17060j;
        handler.sendMessage(handler.obtainMessage(1, i2, -1, new C6980k(i, iBinder, bundle)));
    }

    /* renamed from: a */
    public void mo21275a(int i, T t) {
    }

    @CallSuper
    /* renamed from: a */
    public void m21451a(@NonNull T t) {
        this.f17053c = System.currentTimeMillis();
    }

    @CallSuper
    /* renamed from: a */
    public void m21450a(ConnectionResult connectionResult) {
        this.f17054d = connectionResult.m32000c();
        this.f17055e = System.currentTimeMillis();
    }

    /* renamed from: a */
    public final void m21449a(zzc zzcVar) {
        this.f17075y = zzcVar;
    }

    /* renamed from: a */
    public void m21448a(@NonNull AbstractC6972c cVar) {
        C7021t.m21289a(cVar, "Connection progress callbacks cannot be null.");
        this.f17064n = cVar;
        m21434b(2, null);
    }

    /* renamed from: a */
    public void m21447a(@NonNull AbstractC6972c cVar, int i, @Nullable PendingIntent pendingIntent) {
        C7021t.m21289a(cVar, "Connection progress callbacks cannot be null.");
        this.f17064n = cVar;
        Handler handler = this.f17060j;
        handler.sendMessage(handler.obtainMessage(3, this.f17076z.get(), i, pendingIntent));
    }

    /* renamed from: a */
    public void m21446a(@NonNull AbstractC6974e eVar) {
        eVar.mo21409a();
    }

    @WorkerThread
    /* renamed from: a */
    public void m21438a(AbstractC7003m mVar, Set<Scope> set) {
        Bundle r = mo16070r();
        GetServiceRequest getServiceRequest = new GetServiceRequest(this.f17071u);
        getServiceRequest.f6589d = this.f17057g.getPackageName();
        getServiceRequest.f6592g = r;
        if (set != null) {
            getServiceRequest.f6591f = (Scope[]) set.toArray(new Scope[set.size()]);
        }
        if (mo16072e()) {
            getServiceRequest.f6593h = mo21362o() != null ? mo21362o() : new Account("<<default account>>", "com.google");
            if (mVar != null) {
                getServiceRequest.f6590e = mVar.asBinder();
            }
        } else if (m21411z()) {
            getServiceRequest.f6593h = mo21362o();
        }
        getServiceRequest.f6594i = f17050A;
        getServiceRequest.f6595j = m21417p();
        try {
            try {
                synchronized (this.f17062l) {
                    if (this.f17063m != null) {
                        this.f17063m.mo21305a(new BinderC6979j(this, this.f17076z.get()), getServiceRequest);
                    }
                }
            } catch (RemoteException | RuntimeException e) {
                m21452a(8, (IBinder) null, (Bundle) null, this.f17076z.get());
            }
        } catch (DeadObjectException e2) {
            m21435b(1);
        } catch (SecurityException e3) {
            throw e3;
        }
    }

    /* renamed from: a */
    public void m21437a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i;
        T t;
        AbstractC7014q qVar;
        synchronized (this.f17061k) {
            i = this.f17068r;
            t = this.f17065o;
        }
        synchronized (this.f17062l) {
            qVar = this.f17063m;
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
            printWriter.append(C14247d.f31851f);
        } else {
            printWriter.append((CharSequence) mo16069v()).append("@").append((CharSequence) Integer.toHexString(System.identityHashCode(t.asBinder())));
        }
        printWriter.append(" mServiceBroker=");
        if (qVar == null) {
            printWriter.println(C14247d.f31851f);
        } else {
            printWriter.append("IGmsServiceBroker@").println(Integer.toHexString(System.identityHashCode(qVar.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.f17053c > 0) {
            PrintWriter append = printWriter.append((CharSequence) str).append("lastConnectedTime=");
            long j = this.f17053c;
            String format = simpleDateFormat.format(new Date(j));
            StringBuilder sb = new StringBuilder(String.valueOf(format).length() + 21);
            sb.append(j);
            sb.append(" ");
            sb.append(format);
            append.println(sb.toString());
        }
        if (this.f17052b > 0) {
            printWriter.append((CharSequence) str).append("lastSuspendedCause=");
            int i2 = this.f17051a;
            if (i2 == 1) {
                printWriter.append("CAUSE_SERVICE_DISCONNECTED");
            } else if (i2 != 2) {
                printWriter.append((CharSequence) String.valueOf(i2));
            } else {
                printWriter.append("CAUSE_NETWORK_LOST");
            }
            PrintWriter append2 = printWriter.append(" lastSuspendedTime=");
            long j2 = this.f17052b;
            String format2 = simpleDateFormat.format(new Date(j2));
            StringBuilder sb2 = new StringBuilder(String.valueOf(format2).length() + 21);
            sb2.append(j2);
            sb2.append(" ");
            sb2.append(format2);
            append2.println(sb2.toString());
        }
        if (this.f17055e > 0) {
            printWriter.append((CharSequence) str).append("lastFailedStatus=").append((CharSequence) C6821d.m21843a(this.f17054d));
            PrintWriter append3 = printWriter.append(" lastFailedTime=");
            long j3 = this.f17055e;
            String format3 = simpleDateFormat.format(new Date(j3));
            StringBuilder sb3 = new StringBuilder(String.valueOf(format3).length() + 21);
            sb3.append(j3);
            sb3.append(" ");
            sb3.append(format3);
            append3.println(sb3.toString());
        }
    }

    /* renamed from: a */
    public boolean mo21456a() {
        return false;
    }

    /* renamed from: a */
    public final boolean m21454a(int i, int i2, T t) {
        synchronized (this.f17061k) {
            if (this.f17068r != i) {
                return false;
            }
            m21434b(i2, t);
            return true;
        }
    }

    /* renamed from: b */
    public void m21435b(int i) {
        Handler handler = this.f17060j;
        handler.sendMessage(handler.obtainMessage(6, this.f17076z.get(), i));
    }

    /* renamed from: b */
    public final void m21434b(int i, T t) {
        boolean z = false;
        if ((i == 4) == (t != null)) {
            z = true;
        }
        C7021t.m21286a(z);
        synchronized (this.f17061k) {
            this.f17068r = i;
            this.f17065o = t;
            mo21275a(i, (int) t);
            if (i != 1) {
                if (i == 2 || i == 3) {
                    if (!(this.f17067q == null || this.f17056f == null)) {
                        String d = this.f17056f.m21301d();
                        String a = this.f17056f.m21304a();
                        StringBuilder sb = new StringBuilder(String.valueOf(d).length() + 70 + String.valueOf(a).length());
                        sb.append("Calling connect() while still connected, missing disconnect() for ");
                        sb.append(d);
                        sb.append(" on ");
                        sb.append(a);
                        Log.e("GmsClient", sb.toString());
                        this.f17058h.m21348a(this.f17056f.m21301d(), this.f17056f.m21304a(), this.f17056f.m21302c(), this.f17067q, m21459A(), this.f17056f.m21303b());
                        this.f17076z.incrementAndGet();
                    }
                    this.f17067q = new ServiceConnectionC6978i(this.f17076z.get());
                    this.f17056f = (this.f17068r != 3 || m21415s() == null) ? new C7015q0(m21413x(), mo16068w(), false, AbstractC6996j.m21351a(), m21412y()) : new C7015q0(m21416q().getPackageName(), m21415s(), true, AbstractC6996j.m21351a(), false);
                    if (!this.f17056f.m21303b() || mo16071h() >= 17895000) {
                        if (!this.f17058h.mo21315a(new AbstractC6996j.C6997a(this.f17056f.m21301d(), this.f17056f.m21304a(), this.f17056f.m21302c(), this.f17056f.m21303b()), this.f17067q, m21459A())) {
                            String d2 = this.f17056f.m21301d();
                            String a2 = this.f17056f.m21304a();
                            StringBuilder sb2 = new StringBuilder(String.valueOf(d2).length() + 34 + String.valueOf(a2).length());
                            sb2.append("unable to connect to service: ");
                            sb2.append(d2);
                            sb2.append(" on ");
                            sb2.append(a2);
                            Log.e("GmsClient", sb2.toString());
                            m21453a(16, (Bundle) null, this.f17076z.get());
                        }
                    } else {
                        String valueOf = String.valueOf(this.f17056f.m21301d());
                        throw new IllegalStateException(valueOf.length() != 0 ? "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(valueOf) : new String("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "));
                    }
                } else if (i == 4) {
                    m21451a((AbstractC6969d<T>) t);
                }
            } else if (this.f17067q != null) {
                this.f17058h.m21348a(this.f17056f.m21301d(), this.f17056f.m21304a(), this.f17056f.m21302c(), this.f17067q, m21459A(), this.f17056f.m21303b());
                this.f17067q = null;
            }
        }
    }

    /* renamed from: b */
    public boolean m21436b() {
        boolean z;
        synchronized (this.f17061k) {
            if (!(this.f17068r == 2 || this.f17068r == 3)) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    public String m21432c() {
        C7015q0 q0Var;
        if (isConnected() && (q0Var = this.f17056f) != null) {
            return q0Var.m21304a();
        }
        throw new RuntimeException("Failed to connect when checking package");
    }

    /* renamed from: c */
    public final void m21431c(int i) {
        int i2;
        if (m21458B()) {
            i2 = 5;
            this.f17074x = true;
        } else {
            i2 = 4;
        }
        Handler handler = this.f17060j;
        handler.sendMessage(handler.obtainMessage(i2, this.f17076z.get(), 16));
    }

    /* renamed from: d */
    public boolean m21429d() {
        return true;
    }

    public void disconnect() {
        this.f17076z.incrementAndGet();
        synchronized (this.f17066p) {
            int size = this.f17066p.size();
            for (int i = 0; i < size; i++) {
                this.f17066p.get(i).m21406a();
            }
            this.f17066p.clear();
        }
        synchronized (this.f17062l) {
            this.f17063m = null;
        }
        m21434b(1, null);
    }

    /* renamed from: e */
    public boolean mo16072e() {
        return false;
    }

    @Nullable
    /* renamed from: f */
    public IBinder m21426f() {
        synchronized (this.f17062l) {
            if (this.f17063m == null) {
                return null;
            }
            return this.f17063m.asBinder();
        }
    }

    /* renamed from: h */
    public int mo16071h() {
        return C6793d.f16688a;
    }

    @Nullable
    /* renamed from: i */
    public final Feature[] m21423i() {
        zzc zzcVar = this.f17075y;
        if (zzcVar == null) {
            return null;
        }
        return zzcVar.f6612b;
    }

    public boolean isConnected() {
        boolean z;
        synchronized (this.f17061k) {
            z = this.f17068r == 4;
        }
        return z;
    }

    /* renamed from: j */
    public Intent mo21422j() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    /* renamed from: k */
    public Bundle m21421k() {
        return null;
    }

    /* renamed from: l */
    public void m21420l() {
        int a = this.f17059i.mo21893a(this.f17057g, mo16071h());
        if (a != 0) {
            m21434b(1, null);
            m21447a(new C6973d(), a, (PendingIntent) null);
            return;
        }
        m21448a(new C6973d());
    }

    /* renamed from: m */
    public final void m21419m() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    /* renamed from: n */
    public boolean m21418n() {
        return false;
    }

    /* renamed from: o */
    public Account mo21362o() {
        return null;
    }

    /* renamed from: p */
    public Feature[] m21417p() {
        return f17050A;
    }

    /* renamed from: q */
    public final Context m21416q() {
        return this.f17057g;
    }

    /* renamed from: r */
    public Bundle mo16070r() {
        return new Bundle();
    }

    @Nullable
    /* renamed from: s */
    public String m21415s() {
        return null;
    }

    /* renamed from: t */
    public Set<Scope> mo21361t() {
        return Collections.emptySet();
    }

    /* renamed from: u */
    public final T m21414u() throws DeadObjectException {
        T t;
        synchronized (this.f17061k) {
            if (this.f17068r != 5) {
                m21419m();
                C7021t.m21281b(this.f17065o != null, "Client is connected but service is null");
                t = this.f17065o;
            } else {
                throw new DeadObjectException();
            }
        }
        return t;
    }

    @NonNull
    /* renamed from: v */
    public abstract String mo16069v();

    @NonNull
    /* renamed from: w */
    public abstract String mo16068w();

    /* renamed from: x */
    public String m21413x() {
        return "com.google.android.gms";
    }

    /* renamed from: y */
    public boolean m21412y() {
        return false;
    }

    /* renamed from: z */
    public boolean m21411z() {
        return false;
    }
}
