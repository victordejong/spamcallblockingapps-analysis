package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.google.android.gms.common.util.SharedPreferencesUtils;
import com.google.android.gms.internal.ads.zzayp;
import com.google.android.gms.internal.ads.zzbbb;
import java.util.concurrent.Callable;
/* renamed from: c.d.b.d.g.a.f6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/f6.class */
public final class CallableC3534f6 implements Callable<String> {

    /* renamed from: a */
    public final /* synthetic */ Context f12881a;

    public CallableC3534f6(zzbbb zzbbbVar, Context context) {
        this.f12881a = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        SharedPreferences sharedPreferences = this.f12881a.getSharedPreferences("admob_user_agent", 0);
        String string = sharedPreferences.getString("user_agent", "");
        if (!TextUtils.isEmpty(string)) {
            zzayp.m16153g("User agent is already initialized on Google Play Services.");
            return string;
        }
        zzayp.m16153g("User agent is not initialized on Google Play Services. Initializing.");
        SharedPreferencesUtils.m17050a(this.f12881a, sharedPreferences.edit().putString("user_agent", WebSettings.getDefaultUserAgent(this.f12881a)), "admob_user_agent");
        throw null;
    }
}
