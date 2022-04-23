package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzads;
import com.google.android.gms.internal.ads.zzahq;
import com.google.android.gms.internal.ads.zzbgj;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: c.d.b.d.g.a.f0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/f0.class */
public final class C3528f0 implements zzahq<zzbgj> {
    @Override // com.google.android.gms.internal.ads.zzahq
    /* renamed from: a */
    public final /* synthetic */ void mo14168a(zzbgj zzbgjVar, Map map) {
        JSONObject W;
        zzbgj zzbgjVar2 = zzbgjVar;
        zzads v = zzbgjVar2.mo15547v();
        if (v == null || (W = v.mo16845W()) == null) {
            zzbgjVar2.mo15576a("nativeAdViewSignalsReady", new JSONObject());
        } else {
            zzbgjVar2.mo15576a("nativeAdViewSignalsReady", W);
        }
    }
}
