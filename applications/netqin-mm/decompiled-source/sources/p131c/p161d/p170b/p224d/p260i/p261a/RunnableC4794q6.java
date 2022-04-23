package p131c.p161d.p170b.p224d.p260i.p261a;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.measurement.internal.zzei;
import com.google.android.gms.measurement.internal.zzeq;
import com.google.android.gms.measurement.internal.zzir;
import com.google.android.gms.measurement.internal.zzn;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: c.d.b.d.i.a.q6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/q6.class */
public final class RunnableC4794q6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f17348a;

    /* renamed from: b */
    public final /* synthetic */ String f17349b;

    /* renamed from: c */
    public final /* synthetic */ String f17350c;

    /* renamed from: d */
    public final /* synthetic */ String f17351d;

    /* renamed from: e */
    public final /* synthetic */ boolean f17352e;

    /* renamed from: f */
    public final /* synthetic */ zzn f17353f;

    /* renamed from: g */
    public final /* synthetic */ zzir f17354g;

    public RunnableC4794q6(zzir zzirVar, AtomicReference atomicReference, String str, String str2, String str3, boolean z, zzn zznVar) {
        this.f17354g = zzirVar;
        this.f17348a = atomicReference;
        this.f17349b = str;
        this.f17350c = str2;
        this.f17351d = str3;
        this.f17352e = z;
        this.f17353f = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzei zzeiVar;
        synchronized (this.f17348a) {
            try {
                zzeiVar = this.f17354g.f30089d;
            } catch (RemoteException e) {
                this.f17354g.mo8789p().m9152q().m9140a("(legacy) Failed to get user properties; remote exception", zzeq.m9157a(this.f17349b), this.f17350c, e);
                this.f17348a.set(Collections.emptyList());
                this.f17348a.notify();
            }
            if (zzeiVar == null) {
                this.f17354g.mo8789p().m9152q().m9140a("(legacy) Failed to get user properties; not connected to service", zzeq.m9157a(this.f17349b), this.f17350c, this.f17351d);
                this.f17348a.set(Collections.emptyList());
                this.f17348a.notify();
                return;
            }
            if (TextUtils.isEmpty(this.f17349b)) {
                this.f17348a.set(zzeiVar.mo9021a(this.f17350c, this.f17351d, this.f17352e, this.f17353f));
            } else {
                this.f17348a.set(zzeiVar.mo9022a(this.f17349b, this.f17350c, this.f17351d, this.f17352e));
            }
            this.f17354g.m8912J();
            this.f17348a.notify();
        }
    }
}
