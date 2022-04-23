package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.measurement.internal.zzfz;
import com.google.android.gms.measurement.internal.zzkl;
import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: c.d.b.d.i.a.a4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/a4.class */
public final class CallableC4642a4 implements Callable<List<C4822t7>> {

    /* renamed from: a */
    public final /* synthetic */ String f16950a;

    /* renamed from: b */
    public final /* synthetic */ String f16951b;

    /* renamed from: c */
    public final /* synthetic */ String f16952c;

    /* renamed from: d */
    public final /* synthetic */ zzfz f16953d;

    public CallableC4642a4(zzfz zzfzVar, String str, String str2, String str3) {
        this.f16953d = zzfzVar;
        this.f16950a = str;
        this.f16951b = str2;
        this.f16952c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<C4822t7> call() throws Exception {
        zzkl zzklVar;
        zzkl zzklVar2;
        zzklVar = this.f16953d.f30034a;
        zzklVar.m8785t();
        zzklVar2 = this.f16953d.f30034a;
        return zzklVar2.m8794k().m25070a(this.f16950a, this.f16951b, this.f16952c);
    }
}
