package p000;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import p000.C1324dz;
/* renamed from: dz$e$b */
/* loaded from: classes-dex2jar.jar:dz$e$b.class */
public final class dz$e$b extends Handler {

    /* renamed from: a */
    public final ArrayList<C1324dz.C1327c> f6202a = new ArrayList<>();

    /* renamed from: b */
    public final List<C1324dz.C1332i> f6203b = new ArrayList();

    /* renamed from: c */
    public final /* synthetic */ C1324dz.e f6204c;

    public dz$e$b(C1324dz.e eVar) {
        this.f6204c = eVar;
    }

    /* renamed from: a */
    public final void m2392a(C1324dz.C1327c c1327c, int i, Object obj, int i2) {
        C1324dz c1324dz = c1327c.f6161a;
        C1324dz.AbstractC1326b abstractC1326b = c1327c.f6162b;
        int i3 = 65280 & i;
        if (i3 != 256) {
            if (i3 != 512) {
                return;
            }
            C1324dz.C1331h c1331h = (C1324dz.C1331h) obj;
            switch (i) {
                case 513:
                    abstractC1326b.m2384a(c1324dz, c1331h);
                    return;
                case 514:
                    abstractC1326b.m2382c(c1324dz, c1331h);
                    return;
                case 515:
                    abstractC1326b.m2383b(c1324dz, c1331h);
                    return;
                default:
                    return;
            }
        }
        C1324dz.C1332i c1332i = (i == 264 || i == 262) ? (C1324dz.C1332i) ((ka) obj).b : (C1324dz.C1332i) obj;
        C1324dz.C1332i c1332i2 = (i == 264 || i == 262) ? (C1324dz.C1332i) ((ka) obj).a : null;
        if (c1332i == null || !c1327c.m2371a(c1332i, i, c1332i2, i2)) {
            return;
        }
        switch (i) {
            case 257:
                abstractC1326b.m2381d(c1324dz, c1332i);
                return;
            case 258:
                abstractC1326b.m2378g(c1324dz, c1332i);
                return;
            case 259:
                abstractC1326b.m2380e(c1324dz, c1332i);
                return;
            case 260:
                abstractC1326b.m2372m(c1324dz, c1332i);
                return;
            case 261:
                abstractC1326b.m2379f(c1324dz, c1332i);
                return;
            case 262:
                abstractC1326b.m2375j(c1324dz, c1332i, i2, c1332i);
                return;
            case 263:
                abstractC1326b.m2373l(c1324dz, c1332i, i2);
                return;
            case 264:
                abstractC1326b.m2375j(c1324dz, c1332i, i2, c1332i2);
                return;
            default:
                return;
        }
    }

    /* renamed from: b */
    public void m2391b(int i, Object obj) {
        obtainMessage(i, obj).sendToTarget();
    }

    /* renamed from: c */
    public void m2390c(int i, Object obj, int i2) {
        Message obtainMessage = obtainMessage(i, obj);
        obtainMessage.arg1 = i2;
        obtainMessage.sendToTarget();
    }

    /* renamed from: d */
    public final void m2389d(int i, Object obj) {
        if (i == 262) {
            C1324dz.C1332i c1332i = (C1324dz.C1332i) ((ka) obj).b;
            this.f6204c.l.E(c1332i);
            if (C1324dz.e.e(this.f6204c) == null || !c1332i.m2320v()) {
                return;
            }
            for (C1324dz.C1332i c1332i2 : this.f6203b) {
                this.f6204c.l.D(c1332i2);
            }
            this.f6203b.clear();
        } else if (i != 264) {
            switch (i) {
                case 257:
                    this.f6204c.l.B((C1324dz.C1332i) obj);
                    return;
                case 258:
                    this.f6204c.l.D((C1324dz.C1332i) obj);
                    return;
                case 259:
                    this.f6204c.l.C((C1324dz.C1332i) obj);
                    return;
                default:
                    return;
            }
        } else {
            C1324dz.C1332i c1332i3 = (C1324dz.C1332i) ((ka) obj).b;
            this.f6203b.add(c1332i3);
            this.f6204c.l.B(c1332i3);
            this.f6204c.l.E(c1332i3);
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        Object obj = message.obj;
        int i2 = message.arg1;
        if (i == 259 && this.f6204c.t().m2332j().equals(((C1324dz.C1332i) obj).m2332j())) {
            this.f6204c.P(true);
        }
        m2389d(i, obj);
        try {
            int size = this.f6204c.d.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                C1324dz c1324dz = (C1324dz) ((WeakReference) this.f6204c.d.get(size)).get();
                if (c1324dz == null) {
                    this.f6204c.d.remove(size);
                } else {
                    this.f6202a.addAll(c1324dz.f6160b);
                }
            }
            int size2 = this.f6202a.size();
            for (int i3 = 0; i3 < size2; i3++) {
                m2392a(this.f6202a.get(i3), i, obj, i2);
            }
        } finally {
            this.f6202a.clear();
        }
    }
}
