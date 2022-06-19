package p193e.p1545k.p1546a.p1548b;

import com.razorpay.AnalyticsConstants;
/* renamed from: e.k.a.b.m */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/m.class */
public enum EnumC23381m {
    NOT_AVAILABLE(null, -1),
    START_OBJECT("{", 1),
    END_OBJECT("}", 2),
    START_ARRAY("[", 3),
    END_ARRAY("]", 4),
    FIELD_NAME(null, 5),
    VALUE_EMBEDDED_OBJECT(null, 12),
    VALUE_STRING(null, 6),
    VALUE_NUMBER_INT(null, 7),
    VALUE_NUMBER_FLOAT(null, 8),
    VALUE_TRUE("true", 9),
    VALUE_FALSE("false", 10),
    VALUE_NULL(AnalyticsConstants.NULL, 11);
    

    /* renamed from: a */
    public final String f64704a;

    /* renamed from: b */
    public final char[] f64705b;

    /* renamed from: c */
    public final byte[] f64706c;

    /* renamed from: d */
    public final int f64707d;

    /* renamed from: e */
    public final boolean f64708e;

    /* renamed from: f */
    public final boolean f64709f;

    /* renamed from: g */
    public final boolean f64710g;

    /* renamed from: h */
    public final boolean f64711h;

    EnumC23381m(String str, int i) {
        if (str == null) {
            this.f64704a = null;
            this.f64705b = null;
            this.f64706c = null;
        } else {
            this.f64704a = str;
            char[] charArray = str.toCharArray();
            this.f64705b = charArray;
            int length = charArray.length;
            this.f64706c = new byte[length];
            for (int i2 = 0; i2 < length; i2++) {
                this.f64706c[i2] = (byte) this.f64705b[i2];
            }
        }
        this.f64707d = i;
        this.f64710g = i == 7 || i == 8;
        boolean z = i == 1 || i == 3;
        this.f64708e = z;
        boolean z2 = i == 2 || i == 4;
        this.f64709f = z2;
        boolean z3 = false;
        if (!z) {
            z3 = false;
            if (!z2) {
                z3 = false;
                if (i != 5) {
                    z3 = false;
                    if (i != -1) {
                        z3 = true;
                    }
                }
            }
        }
        this.f64711h = z3;
    }
}
