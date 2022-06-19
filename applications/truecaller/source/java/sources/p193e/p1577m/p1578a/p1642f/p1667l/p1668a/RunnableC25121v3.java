package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzau;
import com.google.android.gms.measurement.internal.zzkp;
import java.util.Objects;
/* renamed from: e.m.a.f.l.a.v3 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/v3.class */
public final class RunnableC25121v3 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f70325a;

    /* renamed from: b */
    public final /* synthetic */ Bundle f70326b;

    /* renamed from: c */
    public final /* synthetic */ w3 f70327c;

    public RunnableC25121v3(w3 w3Var, String str, Bundle bundle) {
        this.f70327c = w3Var;
        this.f70325a = str;
        this.f70326b = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzau o0 = this.f70327c.a.M().o0(this.f70325a, "_err", this.f70326b, "auto", this.f70327c.a.zzav().mo38787c(), false, true);
        zzkp zzkpVar = this.f70327c.a;
        Objects.requireNonNull(o0, "null reference");
        zzkpVar.f(o0, this.f70325a);
    }
}
