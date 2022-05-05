package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.SharedPreferences;
import org.json.JSONObject;
/* renamed from: h.i.a.e.j.a.w6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/w6.class */
public final class C7445w6 extends AbstractC7409t6<Long> {
    public C7445w6(int i, String str, Long l) {
        super(i, str, l, null);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7409t6
    /* renamed from: a */
    public final /* synthetic */ Long mo20473a(SharedPreferences sharedPreferences) {
        return Long.valueOf(sharedPreferences.getLong(m20667a(), m20658c().longValue()));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7409t6
    /* renamed from: a */
    public final /* synthetic */ Long mo20472a(JSONObject jSONObject) {
        return Long.valueOf(jSONObject.optLong(m20667a(), m20658c().longValue()));
    }
}
