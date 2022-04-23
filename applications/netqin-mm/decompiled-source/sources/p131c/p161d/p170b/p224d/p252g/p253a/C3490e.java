package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzaaq;
import org.json.JSONObject;
/* renamed from: c.d.b.d.g.a.e */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/e.class */
public final class C3490e extends zzaaq<Integer> {
    public C3490e(int i, String str, Integer num) {
        super(1, str, num, null);
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    /* renamed from: a */
    public final /* synthetic */ Integer mo16934a(SharedPreferences sharedPreferences) {
        return Integer.valueOf(sharedPreferences.getInt(m16942a(), m16930c().intValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    /* renamed from: a */
    public final /* synthetic */ Integer mo16933a(Bundle bundle) {
        String valueOf = String.valueOf(m16942a());
        if (!bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            return m16930c();
        }
        String valueOf2 = String.valueOf(m16942a());
        return Integer.valueOf(bundle.getInt(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    /* renamed from: a */
    public final /* synthetic */ Integer mo16932a(JSONObject jSONObject) {
        return Integer.valueOf(jSONObject.optInt(m16942a(), m16930c().intValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    /* renamed from: a */
    public final /* synthetic */ void mo16935a(SharedPreferences.Editor editor, Integer num) {
        editor.putInt(m16942a(), num.intValue());
    }
}
