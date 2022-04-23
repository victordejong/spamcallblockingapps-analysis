package p081h.p082a.p083a.p088n;

import android.graphics.Color;
import androidx.annotation.ColorInt;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: h.a.a.n.d */
/* loaded from: classes-dex2jar.jar:h/a/a/n/d.class */
public class C5406d {

    /* renamed from: a */
    public String f13542a;

    /* renamed from: b */
    public String f13543b;

    /* renamed from: c */
    public int f13544c;

    /* renamed from: d */
    public int f13545d;

    /* renamed from: e */
    public int f13546e;

    /* renamed from: f */
    public double f13547f;
    @ColorInt

    /* renamed from: g */
    public int f13548g;
    @ColorInt

    /* renamed from: h */
    public int f13549h;

    /* renamed from: i */
    public int f13550i;

    /* renamed from: j */
    public boolean f13551j;

    /* renamed from: h.a.a.n.d$a */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/d$a.class */
    public static final class C5407a {
        /* renamed from: a */
        public static C5406d m25494a(JSONObject jSONObject) {
            String optString = jSONObject.optString("t");
            String optString2 = jSONObject.optString("f");
            int optInt = jSONObject.optInt("s");
            int optInt2 = jSONObject.optInt("j");
            int optInt3 = jSONObject.optInt("tr");
            double optDouble = jSONObject.optDouble("lh");
            JSONArray optJSONArray = jSONObject.optJSONArray("fc");
            int argb = Color.argb(255, (int) (optJSONArray.optDouble(0) * 255.0d), (int) (optJSONArray.optDouble(1) * 255.0d), (int) (optJSONArray.optDouble(2) * 255.0d));
            JSONArray optJSONArray2 = jSONObject.optJSONArray("sc");
            return new C5406d(optString, optString2, optInt, optInt2, optInt3, optDouble, argb, optJSONArray2 != null ? Color.argb(255, (int) (optJSONArray2.optDouble(0) * 255.0d), (int) (optJSONArray2.optDouble(1) * 255.0d), (int) (optJSONArray2.optDouble(2) * 255.0d)) : 0, jSONObject.optInt("sw"), jSONObject.optBoolean("of"));
        }
    }

    public C5406d(String str, String str2, int i, int i2, int i3, double d, @ColorInt int i4, @ColorInt int i5, int i6, boolean z) {
        this.f13542a = str;
        this.f13543b = str2;
        this.f13544c = i;
        this.f13545d = i2;
        this.f13546e = i3;
        this.f13547f = d;
        this.f13548g = i4;
        this.f13549h = i5;
        this.f13550i = i6;
        this.f13551j = z;
    }

    public int hashCode() {
        int hashCode = this.f13542a.hashCode();
        int hashCode2 = this.f13543b.hashCode();
        int i = this.f13544c;
        int i2 = this.f13545d;
        int i3 = this.f13546e;
        long doubleToLongBits = Double.doubleToLongBits(this.f13547f);
        return (((((((((((hashCode * 31) + hashCode2) * 31) + i) * 31) + i2) * 31) + i3) * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31) + this.f13548g;
    }
}
