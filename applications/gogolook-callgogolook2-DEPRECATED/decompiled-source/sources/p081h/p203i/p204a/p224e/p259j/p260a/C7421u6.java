package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.SharedPreferences;
import org.json.JSONObject;
/* renamed from: h.i.a.e.j.a.u6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/u6.class */
public final class C7421u6 extends AbstractC7409t6<Boolean> {
    public C7421u6(int i, String str, Boolean bool) {
        super(i, str, bool, null);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7409t6
    /* renamed from: a */
    public final /* synthetic */ Boolean mo20473a(SharedPreferences sharedPreferences) {
        return Boolean.valueOf(sharedPreferences.getBoolean(m20667a(), m20658c().booleanValue()));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7409t6
    /* renamed from: a */
    public final /* synthetic */ Boolean mo20472a(JSONObject jSONObject) {
        return Boolean.valueOf(jSONObject.optBoolean(m20667a(), m20658c().booleanValue()));
    }
}
