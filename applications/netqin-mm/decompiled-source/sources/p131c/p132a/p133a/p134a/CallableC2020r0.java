package p131c.p132a.p133a.p134a;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.play_billing.zzd;
import java.util.concurrent.Callable;
/* renamed from: c.a.a.a.r0 */
/* loaded from: classes-dex2jar.jar:c/a/a/a/r0.class */
public final class CallableC2020r0 implements Callable<Integer> {

    /* renamed from: a */
    public final /* synthetic */ String f7885a;

    /* renamed from: b */
    public final /* synthetic */ C1987d f7886b;

    public CallableC2020r0(C1987d dVar, String str) {
        this.f7886b = dVar;
        this.f7885a = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Integer call() throws Exception {
        zzd zzdVar;
        Context context;
        zzdVar = this.f7886b.f7809g;
        context = this.f7886b.f7808f;
        String packageName = context.getPackageName();
        String str = this.f7885a;
        Bundle bundle = new Bundle();
        bundle.putBoolean("vr", true);
        return Integer.valueOf(zzdVar.mo9431b(7, packageName, str, bundle));
    }
}
