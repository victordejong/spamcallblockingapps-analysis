package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzaaq;
import org.json.JSONObject;
/* renamed from: c.d.b.d.g.a.g */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/g.class */
public final class C3564g extends zzaaq<Float> {
    public C3564g(int i, String str, Float f) {
        super(1, str, f, null);
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    /* renamed from: a */
    public final /* synthetic */ Float mo16934a(SharedPreferences sharedPreferences) {
        return Float.valueOf(sharedPreferences.getFloat(m16942a(), m16930c().floatValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    /* renamed from: a */
    public final /* synthetic */ Float mo16933a(Bundle bundle) {
        String valueOf = String.valueOf(m16942a());
        if (!bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            return m16930c();
        }
        String valueOf2 = String.valueOf(m16942a());
        return Float.valueOf(bundle.getFloat(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    /* renamed from: a */
    public final /* synthetic */ Float mo16932a(JSONObject jSONObject) {
        return Float.valueOf((float) jSONObject.optDouble(m16942a(), m16930c().floatValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    /* renamed from: a */
    public final /* synthetic */ void mo16935a(SharedPreferences.Editor editor, Float f) {
        editor.putFloat(m16942a(), f.floatValue());
    }
}
