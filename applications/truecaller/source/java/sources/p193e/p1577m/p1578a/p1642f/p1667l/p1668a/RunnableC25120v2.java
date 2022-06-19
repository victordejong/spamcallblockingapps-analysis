package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.measurement.internal.zzdx;
import com.google.android.gms.measurement.internal.zzjk;
import com.google.android.gms.measurement.internal.zzp;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: e.m.a.f.l.a.v2 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/v2.class */
public final class RunnableC25120v2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f70320a;

    /* renamed from: b */
    public final /* synthetic */ String f70321b;

    /* renamed from: c */
    public final /* synthetic */ String f70322c;

    /* renamed from: d */
    public final /* synthetic */ zzp f70323d;

    /* renamed from: e */
    public final /* synthetic */ zzjk f70324e;

    public RunnableC25120v2(zzjk zzjkVar, AtomicReference atomicReference, String str, String str2, zzp zzpVar) {
        this.f70324e = zzjkVar;
        this.f70320a = atomicReference;
        this.f70321b = str;
        this.f70322c = str2;
        this.f70323d = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        zzjk zzjkVar;
        zzdx zzdxVar;
        synchronized (this.f70320a) {
            try {
                zzjkVar = this.f70324e;
                zzdxVar = zzjkVar.d;
            } catch (RemoteException e) {
                ((v0) this.f70324e).a.zzay().f.m38587d("(legacy) Failed to get conditional properties; remote exception", null, this.f70321b, e);
                this.f70320a.set(Collections.emptyList());
                atomicReference = this.f70320a;
            }
            if (zzdxVar == null) {
                ((v0) zzjkVar).a.zzay().f.m38587d("(legacy) Failed to get conditional properties; not connected to service", null, this.f70321b, this.f70322c);
                this.f70320a.set(Collections.emptyList());
                this.f70320a.notify();
                return;
            }
            if (TextUtils.isEmpty(null)) {
                Objects.requireNonNull(this.f70323d, "null reference");
                this.f70320a.set(zzdxVar.m38603g1(this.f70321b, this.f70322c, this.f70323d));
            } else {
                this.f70320a.set(zzdxVar.m38608U(null, this.f70321b, this.f70322c));
            }
            this.f70324e.o();
            atomicReference = this.f70320a;
            atomicReference.notify();
        }
    }
}
