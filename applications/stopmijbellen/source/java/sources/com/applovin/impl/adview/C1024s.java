package com.applovin.impl.adview;

import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.utils.JsonUtils;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.adview.s */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/s.class */
public class C1024s {

    /* renamed from: a */
    private final int f3704a;

    /* renamed from: b */
    private final int f3705b;

    /* renamed from: c */
    private final int f3706c;

    /* renamed from: d */
    private final int f3707d;

    /* renamed from: e */
    private final boolean f3708e;

    /* renamed from: f */
    private final int f3709f;

    /* renamed from: g */
    private final int f3710g;

    /* renamed from: h */
    private final int f3711h;

    /* renamed from: i */
    private final float f3712i;

    /* renamed from: j */
    private final float f3713j;

    public C1024s(JSONObject jSONObject, C1408l c1408l) {
        C1479t m5542A = c1408l.m5542A();
        StringBuilder m8752j = C0082b.m8752j("Updating video button properties with JSON = ");
        m8752j.append(JsonUtils.maybeConvertToIndentedString(jSONObject));
        m5542A.m5114c("VideoButtonProperties", m8752j.toString());
        this.f3704a = JsonUtils.getInt(jSONObject, "width", 64);
        this.f3705b = JsonUtils.getInt(jSONObject, "height", 7);
        this.f3706c = JsonUtils.getInt(jSONObject, "margin", 20);
        this.f3707d = JsonUtils.getInt(jSONObject, "gravity", 85);
        this.f3708e = JsonUtils.getBoolean(jSONObject, "tap_to_fade", Boolean.FALSE).booleanValue();
        this.f3709f = JsonUtils.getInt(jSONObject, "tap_to_fade_duration_milliseconds", 500);
        this.f3710g = JsonUtils.getInt(jSONObject, "fade_in_duration_milliseconds", 500);
        this.f3711h = JsonUtils.getInt(jSONObject, "fade_out_duration_milliseconds", 500);
        this.f3712i = JsonUtils.getFloat(jSONObject, "fade_in_delay_seconds", 1.0f);
        this.f3713j = JsonUtils.getFloat(jSONObject, "fade_out_delay_seconds", 6.0f);
    }

    /* renamed from: a */
    public int m6793a() {
        return this.f3704a;
    }

    /* renamed from: b */
    public int m6792b() {
        return this.f3705b;
    }

    /* renamed from: c */
    public int m6791c() {
        return this.f3706c;
    }

    /* renamed from: d */
    public int m6790d() {
        return this.f3707d;
    }

    /* renamed from: e */
    public boolean m6789e() {
        return this.f3708e;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1024s c1024s = (C1024s) obj;
        if (this.f3704a != c1024s.f3704a || this.f3705b != c1024s.f3705b || this.f3706c != c1024s.f3706c || this.f3707d != c1024s.f3707d || this.f3708e != c1024s.f3708e || this.f3709f != c1024s.f3709f || this.f3710g != c1024s.f3710g || this.f3711h != c1024s.f3711h || Float.compare(c1024s.f3712i, this.f3712i) != 0) {
            return false;
        }
        if (Float.compare(c1024s.f3713j, this.f3713j) != 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public long m6788f() {
        return this.f3709f;
    }

    /* renamed from: g */
    public long m6787g() {
        return this.f3710g;
    }

    /* renamed from: h */
    public long m6786h() {
        return this.f3711h;
    }

    public int hashCode() {
        int i = this.f3704a;
        int i2 = this.f3705b;
        int i3 = this.f3706c;
        int i4 = this.f3707d;
        boolean z = this.f3708e;
        int i5 = this.f3709f;
        int i6 = this.f3710g;
        int i7 = this.f3711h;
        float f = this.f3712i;
        int i8 = 0;
        int floatToIntBits = f != 0.0f ? Float.floatToIntBits(f) : 0;
        float f2 = this.f3713j;
        if (f2 != 0.0f) {
            i8 = Float.floatToIntBits(f2);
        }
        return (((((((((((((((((i * 31) + i2) * 31) + i3) * 31) + i4) * 31) + (z ? 1 : 0)) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + floatToIntBits) * 31) + i8;
    }

    /* renamed from: i */
    public float m6785i() {
        return this.f3712i;
    }

    /* renamed from: j */
    public float m6784j() {
        return this.f3713j;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("VideoButtonProperties{widthPercentOfScreen=");
        m8752j.append(this.f3704a);
        m8752j.append(", heightPercentOfScreen=");
        m8752j.append(this.f3705b);
        m8752j.append(", margin=");
        m8752j.append(this.f3706c);
        m8752j.append(", gravity=");
        m8752j.append(this.f3707d);
        m8752j.append(", tapToFade=");
        m8752j.append(this.f3708e);
        m8752j.append(", tapToFadeDurationMillis=");
        m8752j.append(this.f3709f);
        m8752j.append(", fadeInDurationMillis=");
        m8752j.append(this.f3710g);
        m8752j.append(", fadeOutDurationMillis=");
        m8752j.append(this.f3711h);
        m8752j.append(", fadeInDelay=");
        m8752j.append(this.f3712i);
        m8752j.append(", fadeOutDelay=");
        m8752j.append(this.f3713j);
        m8752j.append('}');
        return m8752j.toString();
    }
}
