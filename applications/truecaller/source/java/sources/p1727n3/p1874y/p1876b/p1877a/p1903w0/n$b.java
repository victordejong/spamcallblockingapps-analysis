package p1727n3.p1874y.p1876b.p1877a.p1903w0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Map;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27438q;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.w0.n$b */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/w0/n$b.class */
public class n$b extends BroadcastReceiver {

    /* renamed from: c */
    public static n$b f77141c;

    /* renamed from: a */
    public final Handler f77142a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    public final ArrayList<WeakReference<n>> f77143b = new ArrayList<>();

    /* renamed from: a */
    public final void m381a() {
        for (int size = this.f77143b.size() - 1; size >= 0; size--) {
            if (this.f77143b.get(size).get() == null) {
                this.f77143b.remove(size);
            }
        }
    }

    /* renamed from: b */
    public final void m380b(n nVar) {
        Map map = n.n;
        synchronized (nVar) {
            Context context = nVar.a;
            int m275l = context == null ? 0 : C27445x.m275l(context);
            if (nVar.i == m275l) {
                return;
            }
            nVar.i = m275l;
            if (m275l == 1 || m275l == 0 || m275l == 8) {
                return;
            }
            nVar.l = nVar.i(m275l);
            long m378a = nVar.e.m378a();
            nVar.j(nVar.f > 0 ? (int) (m378a - nVar.g) : 0, nVar.h, nVar.l);
            nVar.g = m378a;
            nVar.h = 0L;
            nVar.k = 0L;
            nVar.j = 0L;
            C27438q c27438q = nVar.d;
            c27438q.f77211b.clear();
            c27438q.f77213d = -1;
            c27438q.f77214e = 0;
            c27438q.f77215f = 0;
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        synchronized (this) {
            if (isInitialStickyBroadcast()) {
                return;
            }
            m381a();
            for (int i = 0; i < this.f77143b.size(); i++) {
                n nVar = this.f77143b.get(i).get();
                if (nVar != null) {
                    m380b(nVar);
                }
            }
        }
    }
}
