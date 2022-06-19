package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.measurement.internal.zzdx;
import com.google.android.gms.measurement.internal.zzjk;
import com.google.android.gms.measurement.internal.zzp;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: e.m.a.f.l.a.x2 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/x2.class */
public final class RunnableC25126x2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f70341a;

    /* renamed from: b */
    public final /* synthetic */ String f70342b;

    /* renamed from: c */
    public final /* synthetic */ String f70343c;

    /* renamed from: d */
    public final /* synthetic */ zzp f70344d;

    /* renamed from: e */
    public final /* synthetic */ boolean f70345e;

    /* renamed from: f */
    public final /* synthetic */ zzjk f70346f;

    public RunnableC25126x2(zzjk zzjkVar, AtomicReference atomicReference, String str, String str2, zzp zzpVar, boolean z) {
        this.f70346f = zzjkVar;
        this.f70341a = atomicReference;
        this.f70342b = str;
        this.f70343c = str2;
        this.f70344d = zzpVar;
        this.f70345e = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        zzjk zzjkVar;
        zzdx zzdxVar;
        synchronized (this.f70341a) {
            try {
                zzjkVar = this.f70346f;
                zzdxVar = zzjkVar.d;
            } catch (RemoteException e) {
                ((v0) this.f70346f).a.zzay().f.m38587d("(legacy) Failed to get user properties; remote exception", null, this.f70342b, e);
                this.f70341a.set(Collections.emptyList());
                atomicReference = this.f70341a;
            }
            if (zzdxVar == null) {
                ((v0) zzjkVar).a.zzay().f.m38587d("(legacy) Failed to get user properties; not connected to service", null, this.f70342b, this.f70343c);
                this.f70341a.set(Collections.emptyList());
                this.f70341a.notify();
                return;
            }
            if (TextUtils.isEmpty(null)) {
                Objects.requireNonNull(this.f70344d, "null reference");
                this.f70341a.set(zzdxVar.m38611C0(this.f70342b, this.f70343c, this.f70345e, this.f70344d));
            } else {
                this.f70341a.set(zzdxVar.m38607U0(null, this.f70342b, this.f70343c, this.f70345e));
            }
            this.f70346f.o();
            atomicReference = this.f70341a;
            atomicReference.notify();
        }
    }
}
