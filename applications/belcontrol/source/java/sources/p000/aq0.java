package p000;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.firebase.jobdispatcher.GooglePlayReceiver;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import up0;
/* renamed from: aq0 */
/* loaded from: classes-dex2jar.jar:aq0.class */
public class aq0 implements ServiceConnection {

    /* renamed from: b */
    public final tp0 f1684b;

    /* renamed from: c */
    public final Context f1685c;

    /* renamed from: f */
    public up0 f1687f;

    /* renamed from: a */
    public final Map<yp0, Boolean> f1683a = new HashMap();

    /* renamed from: d */
    public boolean f1686d = false;

    public aq0(tp0 tp0Var, Context context) {
        this.f1684b = tp0Var;
        this.f1685c = context;
    }

    /* renamed from: a */
    public static Bundle m5846a(zp0 zp0Var) {
        xp0 d = GooglePlayReceiver.d();
        Bundle bundle = new Bundle();
        d.g(zp0Var, bundle);
        return bundle;
    }

    /* renamed from: b */
    public boolean m5845b(yp0 yp0Var) {
        boolean containsKey;
        synchronized (this) {
            containsKey = this.f1683a.containsKey(yp0Var);
        }
        return containsKey;
    }

    /* renamed from: c */
    public boolean m5844c() {
        boolean z;
        synchronized (this) {
            z = this.f1687f != null;
        }
        return z;
    }

    /* renamed from: d */
    public void m5843d(yp0 yp0Var) {
        synchronized (this) {
            this.f1683a.remove(yp0Var);
            if (this.f1683a.isEmpty()) {
                m5839h();
            }
        }
    }

    /* renamed from: e */
    public void m5842e(yp0 yp0Var, boolean z) {
        synchronized (this) {
            if (!m5838i()) {
                if (Boolean.TRUE.equals(this.f1683a.remove(yp0Var)) && m5844c()) {
                    m5840g(z, yp0Var);
                }
                if (!z && this.f1683a.isEmpty()) {
                    m5839h();
                }
            } else {
                Log.w("FJD.ExternalReceiver", "Can't send stop request because service was unbound.");
            }
        }
    }

    /* renamed from: f */
    public boolean m5841f(yp0 yp0Var) {
        boolean m5844c;
        synchronized (this) {
            m5844c = m5844c();
            if (m5844c) {
                if (Boolean.TRUE.equals(this.f1683a.get(yp0Var))) {
                    Log.w("FJD.ExternalReceiver", "Received an execution request for already running job " + yp0Var);
                    m5840g(false, yp0Var);
                }
                try {
                    this.f1687f.v(m5846a(yp0Var), this.f1684b);
                } catch (RemoteException e) {
                    Log.e("FJD.ExternalReceiver", "Failed to start the job " + yp0Var, e);
                    m5839h();
                    return false;
                }
            }
            this.f1683a.put(yp0Var, Boolean.valueOf(m5844c));
        }
        return m5844c;
    }

    /* renamed from: g */
    public final void m5840g(boolean z, yp0 yp0Var) {
        synchronized (this) {
            try {
                this.f1687f.l(m5846a(yp0Var), z);
            } catch (RemoteException e) {
                Log.e("FJD.ExternalReceiver", "Failed to stop a job", e);
                m5839h();
            }
        }
    }

    /* renamed from: h */
    public void m5839h() {
        synchronized (this) {
            if (!m5838i()) {
                this.f1687f = null;
                this.f1686d = true;
                try {
                    this.f1685c.unbindService(this);
                } catch (IllegalArgumentException e) {
                    Log.w("FJD.ExternalReceiver", "Error unbinding service: " + e.getMessage());
                }
            }
        }
    }

    /* renamed from: i */
    public boolean m5838i() {
        boolean z;
        synchronized (this) {
            z = this.f1686d;
        }
        return z;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this) {
            if (m5838i()) {
                Log.w("FJD.ExternalReceiver", "Connection have been used already.");
                return;
            }
            this.f1687f = up0.a.b(iBinder);
            HashSet<yp0> hashSet = new HashSet();
            for (Map.Entry<yp0, Boolean> entry : this.f1683a.entrySet()) {
                if (Boolean.FALSE.equals(entry.getValue())) {
                    try {
                        this.f1687f.v(m5846a(entry.getKey()), this.f1684b);
                        hashSet.add(entry.getKey());
                    } catch (RemoteException e) {
                        Log.e("FJD.ExternalReceiver", "Failed to start job " + entry.getKey(), e);
                        m5839h();
                        return;
                    }
                }
            }
            for (yp0 yp0Var : hashSet) {
                this.f1683a.put(yp0Var, Boolean.TRUE);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        synchronized (this) {
            m5839h();
        }
    }
}
