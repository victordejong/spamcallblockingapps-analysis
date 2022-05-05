package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6836l;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
/* renamed from: h.i.a.e.d.k.q.w1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/w1.class */
public final class C6939w1 {

    /* renamed from: d */
    public static final Status f17012d = new Status(8, "The connection to Google Play services was lost");

    /* renamed from: e */
    public static final BasePendingResult<?>[] f17013e = new BasePendingResult[0];

    /* renamed from: a */
    public final Set<BasePendingResult<?>> f17014a = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));

    /* renamed from: b */
    public final AbstractC6951z1 f17015b = new C6943x1(this);

    /* renamed from: c */
    public final Map<C6805a.C6808c<?>, C6805a.AbstractC6816f> f17016c;

    public C6939w1(Map<C6805a.C6808c<?>, C6805a.AbstractC6816f> map) {
        this.f17016c = map;
    }

    /* renamed from: a */
    public final void m21501a() {
        BasePendingResult[] basePendingResultArr;
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.f17014a.toArray(f17013e)) {
            basePendingResult.m31983a((AbstractC6951z1) null);
            if (basePendingResult.m31976e() != null) {
                basePendingResult.mo21817a((AbstractC6836l) null);
                IBinder f = this.f17016c.get(((AbstractC6850c) basePendingResult).m21768i()).m21851f();
                if (basePendingResult.m31977d()) {
                    basePendingResult.m31983a(new C6947y1(basePendingResult, null, f, null));
                } else if (f == null || !f.isBinderAlive()) {
                    basePendingResult.m31983a((AbstractC6951z1) null);
                    basePendingResult.m31987a();
                    basePendingResult.m31976e().intValue();
                    throw new NullPointerException();
                } else {
                    C6947y1 y1Var = new C6947y1(basePendingResult, null, f, null);
                    basePendingResult.m31983a(y1Var);
                    try {
                        f.linkToDeath(y1Var, 0);
                    } catch (RemoteException e) {
                        basePendingResult.m31987a();
                        basePendingResult.m31976e().intValue();
                        throw new NullPointerException();
                    }
                }
                this.f17014a.remove(basePendingResult);
            } else if (basePendingResult.m31975f()) {
                this.f17014a.remove(basePendingResult);
            }
        }
    }

    /* renamed from: a */
    public final void m21500a(BasePendingResult<? extends AbstractC6835k> basePendingResult) {
        this.f17014a.add(basePendingResult);
        basePendingResult.m31983a(this.f17015b);
    }

    /* renamed from: b */
    public final void m21499b() {
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.f17014a.toArray(f17013e)) {
            basePendingResult.m31981b(f17012d);
        }
    }
}
