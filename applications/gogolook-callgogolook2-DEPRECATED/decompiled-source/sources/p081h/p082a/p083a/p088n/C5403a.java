package p081h.p082a.p083a.p088n;

import android.graphics.Color;
import org.json.JSONArray;
import p081h.p082a.p083a.p088n.p089k.AbstractC5452m;
/* renamed from: h.a.a.n.a */
/* loaded from: classes-dex2jar.jar:h/a/a/n/a.class */
public class C5403a implements AbstractC5452m.AbstractC5453a<Integer> {

    /* renamed from: a */
    public static final C5403a f13538a = new C5403a();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p081h.p082a.p083a.p088n.p089k.AbstractC5452m.AbstractC5453a
    /* renamed from: a */
    public Integer mo25373a(Object obj, float f) {
        JSONArray jSONArray = (JSONArray) obj;
        if (jSONArray.length() != 4) {
            return -16777216;
        }
        boolean z = true;
        for (int i = 0; i < jSONArray.length(); i++) {
            if (jSONArray.optDouble(i) > 1.0d) {
                z = false;
            }
        }
        float f2 = z ? 255.0f : 1.0f;
        double optDouble = jSONArray.optDouble(3);
        double d = f2;
        return Integer.valueOf(Color.argb((int) (optDouble * d), (int) (jSONArray.optDouble(0) * d), (int) (jSONArray.optDouble(1) * d), (int) (jSONArray.optDouble(2) * d)));
    }
}
