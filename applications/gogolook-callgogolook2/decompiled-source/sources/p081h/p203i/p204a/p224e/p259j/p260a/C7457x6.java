package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.SharedPreferences;
import org.json.JSONObject;
/* renamed from: h.i.a.e.j.a.x6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/x6.class */
public final class C7457x6 extends AbstractC7409t6<Float> {
    public C7457x6(int i, String str, Float f) {
        super(i, str, f, null);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7409t6
    /* renamed from: a */
    public final /* synthetic */ Float mo20473a(SharedPreferences sharedPreferences) {
        return Float.valueOf(sharedPreferences.getFloat(m20667a(), m20658c().floatValue()));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7409t6
    /* renamed from: a */
    public final /* synthetic */ Float mo20472a(JSONObject jSONObject) {
        return Float.valueOf((float) jSONObject.optDouble(m20667a(), m20658c().floatValue()));
    }
}
