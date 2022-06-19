package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.google.android.gms.measurement.internal.zzhw;
import com.google.android.gms.measurement.internal.zzr;
/* renamed from: e.m.a.f.l.a.a1 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/a1.class */
public final class RunnableC25022a1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzhw f69997a;

    public RunnableC25022a1(zzhw zzhwVar) {
        this.f69997a = zzhwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzr zzrVar = this.f69997a.n;
        zzrVar.f6455a.a().d();
        if (!zzrVar.m38553b()) {
            return;
        }
        if (zzrVar.m38552c()) {
            zzrVar.f6455a.p().u.m38576b(null);
            Bundle bundle = new Bundle();
            bundle.putString("source", "(not set)");
            bundle.putString("medium", "(not set)");
            bundle.putString("_cis", "intent");
            bundle.putLong("_cc", 1L);
            zzrVar.f6455a.r().k("auto", "_cmpx", bundle);
        } else {
            String m38577a = zzrVar.f6455a.p().u.m38577a();
            if (TextUtils.isEmpty(m38577a)) {
                zzrVar.f6455a.zzay().g.m38590a("Cache still valid but referrer not found");
            } else {
                long m38580a = zzrVar.f6455a.p().v.m38580a() / DefaultRefreshIntervals.REMOTE_CONFIG_FETCH_INTERVAL;
                Uri parse = Uri.parse(m38577a);
                Bundle bundle2 = new Bundle();
                Pair pair = new Pair(parse.getPath(), bundle2);
                for (String str : parse.getQueryParameterNames()) {
                    bundle2.putString(str, parse.getQueryParameter(str));
                }
                ((Bundle) pair.second).putLong("_cc", (m38580a - 1) * DefaultRefreshIntervals.REMOTE_CONFIG_FETCH_INTERVAL);
                Object obj = pair.first;
                zzrVar.f6455a.r().k(obj == null ? "app" : (String) obj, "_cmp", (Bundle) pair.second);
            }
            zzrVar.f6455a.p().u.m38576b(null);
        }
        zzrVar.f6455a.p().v.m38579b(0L);
    }
}
