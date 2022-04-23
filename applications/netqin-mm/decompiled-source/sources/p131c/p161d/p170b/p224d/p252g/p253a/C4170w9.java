package p131c.p161d.p170b.p224d.p252g.p253a;

import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzahq;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbgj;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.w9 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/w9.class */
public final class C4170w9 implements zzahq<zzbgj> {

    /* renamed from: a */
    public final /* synthetic */ ViewTreeObserver$OnGlobalLayoutListenerC4096u9 f15922a;

    public C4170w9(ViewTreeObserver$OnGlobalLayoutListenerC4096u9 u9Var) {
        this.f15922a = u9Var;
    }

    @Override // com.google.android.gms.internal.ads.zzahq
    /* renamed from: a */
    public final /* synthetic */ void mo14168a(zzbgj zzbgjVar, Map map) {
        int i;
        if (map != null) {
            String str = (String) map.get("height");
            if (!TextUtils.isEmpty(str)) {
                try {
                    int parseInt = Integer.parseInt(str);
                    synchronized (this.f15922a) {
                        i = this.f15922a.f15473G;
                        if (i != parseInt) {
                            this.f15922a.f15473G = parseInt;
                            this.f15922a.requestLayout();
                        }
                    }
                } catch (Exception e) {
                    zzbbq.m15853c("Exception occurred while getting webview content height", e);
                }
            }
        }
    }
}
