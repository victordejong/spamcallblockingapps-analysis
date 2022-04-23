package p131c.p135b.p136a.p138b;

import org.json.JSONObject;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p153y.C2390i;
/* renamed from: c.b.a.b.p */
/* loaded from: classes-dex2jar.jar:c/b/a/b/p.class */
public class C2108p {

    /* renamed from: a */
    public final int f8105a;

    /* renamed from: b */
    public final int f8106b;

    /* renamed from: c */
    public final int f8107c;

    /* renamed from: d */
    public final int f8108d;

    /* renamed from: e */
    public final boolean f8109e;

    /* renamed from: f */
    public final int f8110f;

    /* renamed from: g */
    public final int f8111g;

    /* renamed from: h */
    public final int f8112h;

    /* renamed from: i */
    public final float f8113i;

    /* renamed from: j */
    public final float f8114j;

    public C2108p(JSONObject jSONObject, C2341l lVar) {
        C2374t d0 = lVar.m30262d0();
        d0.m30042c("VideoButtonProperties", "Updating video button properties with JSON = " + C2390i.m29907e(jSONObject));
        this.f8105a = C2390i.m29916b(jSONObject, "width", 64, lVar);
        this.f8106b = C2390i.m29916b(jSONObject, "height", 7, lVar);
        this.f8107c = C2390i.m29916b(jSONObject, "margin", 20, lVar);
        this.f8108d = C2390i.m29916b(jSONObject, "gravity", 85, lVar);
        this.f8109e = C2390i.m29928a(jSONObject, "tap_to_fade", (Boolean) false, lVar).booleanValue();
        this.f8110f = C2390i.m29916b(jSONObject, "tap_to_fade_duration_milliseconds", 500, lVar);
        this.f8111g = C2390i.m29916b(jSONObject, "fade_in_duration_milliseconds", 500, lVar);
        this.f8112h = C2390i.m29916b(jSONObject, "fade_out_duration_milliseconds", 500, lVar);
        this.f8113i = C2390i.m29931a(jSONObject, "fade_in_delay_seconds", 1.0f, lVar);
        this.f8114j = C2390i.m29931a(jSONObject, "fade_out_delay_seconds", 6.0f, lVar);
    }

    /* renamed from: a */
    public int m31055a() {
        return this.f8105a;
    }

    /* renamed from: b */
    public int m31054b() {
        return this.f8106b;
    }

    /* renamed from: c */
    public int m31053c() {
        return this.f8107c;
    }

    /* renamed from: d */
    public int m31052d() {
        return this.f8108d;
    }

    /* renamed from: e */
    public boolean m31051e() {
        return this.f8109e;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C2108p.class != obj.getClass()) {
            return false;
        }
        C2108p pVar = (C2108p) obj;
        if (this.f8105a != pVar.f8105a || this.f8106b != pVar.f8106b || this.f8107c != pVar.f8107c || this.f8108d != pVar.f8108d || this.f8109e != pVar.f8109e || this.f8110f != pVar.f8110f || this.f8111g != pVar.f8111g || this.f8112h != pVar.f8112h || Float.compare(pVar.f8113i, this.f8113i) != 0) {
            return false;
        }
        if (Float.compare(pVar.f8114j, this.f8114j) != 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public long m31050f() {
        return this.f8110f;
    }

    /* renamed from: g */
    public long m31049g() {
        return this.f8111g;
    }

    /* renamed from: h */
    public long m31048h() {
        return this.f8112h;
    }

    public int hashCode() {
        int i = this.f8105a;
        int i2 = this.f8106b;
        int i3 = this.f8107c;
        int i4 = this.f8108d;
        boolean z = this.f8109e;
        int i5 = this.f8110f;
        int i6 = this.f8111g;
        int i7 = this.f8112h;
        float f = this.f8113i;
        int i8 = 0;
        int floatToIntBits = f != 0.0f ? Float.floatToIntBits(f) : 0;
        float f2 = this.f8114j;
        if (f2 != 0.0f) {
            i8 = Float.floatToIntBits(f2);
        }
        return (((((((((((((((((i * 31) + i2) * 31) + i3) * 31) + i4) * 31) + (z ? 1 : 0)) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + floatToIntBits) * 31) + i8;
    }

    /* renamed from: i */
    public float m31047i() {
        return this.f8113i;
    }

    /* renamed from: j */
    public float m31046j() {
        return this.f8114j;
    }

    public String toString() {
        return "VideoButtonProperties{widthPercentOfScreen=" + this.f8105a + ", heightPercentOfScreen=" + this.f8106b + ", margin=" + this.f8107c + ", gravity=" + this.f8108d + ", tapToFade=" + this.f8109e + ", tapToFadeDurationMillis=" + this.f8110f + ", fadeInDurationMillis=" + this.f8111g + ", fadeOutDurationMillis=" + this.f8112h + ", fadeInDelay=" + this.f8113i + ", fadeOutDelay=" + this.f8114j + '}';
    }
}
