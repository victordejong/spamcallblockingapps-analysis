package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p235d.C6793d;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p240n.C6983e;
import p081h.p203i.p204a.p224e.p290p.AbstractC9123f;
import p081h.p203i.p204a.p224e.p290p.C9109a;
/* renamed from: h.i.a.e.d.k.q.w0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/w0.class */
public final class C6938w0 implements AbstractC6887j1, AbstractC6904n2 {

    /* renamed from: a */
    public final Lock f16997a;

    /* renamed from: b */
    public final Condition f16998b;

    /* renamed from: c */
    public final Context f16999c;

    /* renamed from: d */
    public final C6793d f17000d;

    /* renamed from: e */
    public final HandlerC6946y0 f17001e;

    /* renamed from: f */
    public final Map<C6805a.C6808c<?>, C6805a.AbstractC6816f> f17002f;

    /* renamed from: h */
    public final C6983e f17004h;

    /* renamed from: i */
    public final Map<C6805a<?>, Boolean> f17005i;

    /* renamed from: j */
    public final C6805a.AbstractC6806a<? extends AbstractC9123f, C9109a> f17006j;

    /* renamed from: k */
    public volatile AbstractC6934v0 f17007k;

    /* renamed from: m */
    public int f17009m;

    /* renamed from: n */
    public final C6902n0 f17010n;

    /* renamed from: o */
    public final AbstractC6891k1 f17011o;

    /* renamed from: g */
    public final Map<C6805a.C6808c<?>, ConnectionResult> f17003g = new HashMap();

    /* renamed from: l */
    public ConnectionResult f17008l = null;

    public C6938w0(Context context, C6902n0 n0Var, Lock lock, Looper looper, C6793d dVar, Map<C6805a.C6808c<?>, C6805a.AbstractC6816f> map, C6983e eVar, Map<C6805a<?>, Boolean> map2, C6805a.AbstractC6806a<? extends AbstractC9123f, C9109a> aVar, ArrayList<C6900m2> arrayList, AbstractC6891k1 k1Var) {
        this.f16999c = context;
        this.f16997a = lock;
        this.f17000d = dVar;
        this.f17002f = map;
        this.f17004h = eVar;
        this.f17005i = map2;
        this.f17006j = aVar;
        this.f17010n = n0Var;
        this.f17011o = k1Var;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            C6900m2 m2Var = arrayList.get(i);
            i++;
            m2Var.m21652a(this);
        }
        this.f17001e = new HandlerC6946y0(this, looper);
        this.f16998b = lock.newCondition();
        this.f17007k = new C6898m0(this);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    @GuardedBy("mLock")
    /* renamed from: a */
    public final <A extends C6805a.AbstractC6807b, T extends AbstractC6850c<? extends AbstractC6835k, A>> T mo21516a(@NonNull T t) {
        t.m31974g();
        return (T) this.f17007k.mo21484a(t);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    @GuardedBy("mLock")
    /* renamed from: a */
    public final void mo21519a() {
        if (isConnected()) {
            ((C6945y) this.f17007k).m21482b();
        }
    }

    /* renamed from: a */
    public final void m21518a(ConnectionResult connectionResult) {
        this.f16997a.lock();
        try {
            this.f17008l = connectionResult;
            this.f17007k = new C6898m0(this);
            this.f17007k.mo21486a();
            this.f16998b.signalAll();
        } finally {
            this.f16997a.unlock();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6904n2
    /* renamed from: a */
    public final void mo21517a(@NonNull ConnectionResult connectionResult, @NonNull C6805a<?> aVar, boolean z) {
        this.f16997a.lock();
        try {
            this.f17007k.mo21485a(connectionResult, aVar, z);
        } finally {
            this.f16997a.unlock();
        }
    }

    /* renamed from: a */
    public final void m21513a(AbstractC6942x0 x0Var) {
        this.f17001e.sendMessage(this.f17001e.obtainMessage(1, x0Var));
    }

    /* renamed from: a */
    public final void m21512a(RuntimeException runtimeException) {
        this.f17001e.sendMessage(this.f17001e.obtainMessage(2, runtimeException));
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    /* renamed from: a */
    public final void mo21511a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String concat = String.valueOf(str).concat("  ");
        printWriter.append((CharSequence) str).append("mState=").println(this.f17007k);
        for (C6805a<?> aVar : this.f17005i.keySet()) {
            printWriter.append((CharSequence) str).append((CharSequence) aVar.m21865b()).println(":");
            this.f17002f.get(aVar.m21866a()).m21855a(concat, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    /* renamed from: a */
    public final boolean mo21515a(AbstractC6893l lVar) {
        return false;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    @GuardedBy("mLock")
    /* renamed from: b */
    public final <A extends C6805a.AbstractC6807b, R extends AbstractC6835k, T extends AbstractC6850c<R, A>> T mo21509b(@NonNull T t) {
        t.m31974g();
        return (T) this.f17007k.mo21481b(t);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    /* renamed from: b */
    public final void mo21510b() {
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    @GuardedBy("mLock")
    /* renamed from: c */
    public final ConnectionResult mo21507c() {
        connect();
        while (m21506d()) {
            try {
                this.f16998b.await();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
        }
        if (isConnected()) {
            return ConnectionResult.f6495e;
        }
        ConnectionResult connectionResult = this.f17008l;
        return connectionResult != null ? connectionResult : new ConnectionResult(13, null);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    @GuardedBy("mLock")
    public final void connect() {
        this.f17007k.connect();
    }

    /* renamed from: d */
    public final boolean m21506d() {
        return this.f17007k instanceof C6847b0;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    @GuardedBy("mLock")
    public final void disconnect() {
        if (this.f17007k.disconnect()) {
            this.f17003g.clear();
        }
    }

    /* renamed from: e */
    public final void m21505e() {
        this.f16997a.lock();
        try {
            this.f17007k = new C6847b0(this, this.f17004h, this.f17005i, this.f17000d, this.f17006j, this.f16997a, this.f16999c);
            this.f17007k.mo21486a();
            this.f16998b.signalAll();
        } finally {
            this.f16997a.unlock();
        }
    }

    /* renamed from: f */
    public final void m21504f() {
        this.f16997a.lock();
        try {
            this.f17010n.m21630o();
            this.f17007k = new C6945y(this);
            this.f17007k.mo21486a();
            this.f16998b.signalAll();
        } finally {
            this.f16997a.unlock();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f.AbstractC6827b
    /* renamed from: f */
    public final void mo21503f(int i) {
        this.f16997a.lock();
        try {
            this.f17007k.mo21480f(i);
        } finally {
            this.f16997a.unlock();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    public final boolean isConnected() {
        return this.f17007k instanceof C6945y;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f.AbstractC6827b
    /* renamed from: j */
    public final void mo21502j(@Nullable Bundle bundle) {
        this.f16997a.lock();
        try {
            this.f17007k.mo21479j(bundle);
        } finally {
            this.f16997a.unlock();
        }
    }
}
