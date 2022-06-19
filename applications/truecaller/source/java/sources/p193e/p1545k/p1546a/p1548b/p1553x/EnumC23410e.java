package p193e.p1545k.p1546a.p1548b.p1553x;

import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
/* renamed from: e.k.a.b.x.e */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/x/e.class */
public enum EnumC23410e implements Object {
    ALLOW_JAVA_COMMENTS(false, AbstractC23376j.EnumC23377a.ALLOW_COMMENTS),
    ALLOW_YAML_COMMENTS(false, AbstractC23376j.EnumC23377a.ALLOW_YAML_COMMENTS),
    ALLOW_SINGLE_QUOTES(false, AbstractC23376j.EnumC23377a.ALLOW_SINGLE_QUOTES),
    ALLOW_UNQUOTED_FIELD_NAMES(false, AbstractC23376j.EnumC23377a.ALLOW_UNQUOTED_FIELD_NAMES),
    ALLOW_UNESCAPED_CONTROL_CHARS(false, AbstractC23376j.EnumC23377a.ALLOW_UNQUOTED_CONTROL_CHARS),
    ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER(false, AbstractC23376j.EnumC23377a.ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER),
    ALLOW_LEADING_ZEROS_FOR_NUMBERS(false, AbstractC23376j.EnumC23377a.ALLOW_NUMERIC_LEADING_ZEROS),
    ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS(false, AbstractC23376j.EnumC23377a.ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS),
    ALLOW_NON_NUMERIC_NUMBERS(false, AbstractC23376j.EnumC23377a.ALLOW_NON_NUMERIC_NUMBERS),
    ALLOW_MISSING_VALUES(false, AbstractC23376j.EnumC23377a.ALLOW_MISSING_VALUES),
    ALLOW_TRAILING_COMMA(false, AbstractC23376j.EnumC23377a.ALLOW_TRAILING_COMMA);
    

    /* renamed from: a */
    public final boolean f64864a;

    /* renamed from: b */
    public final int f64865b = 1 << ordinal();

    /* renamed from: c */
    public final AbstractC23376j.EnumC23377a f64866c;

    EnumC23410e(boolean z, AbstractC23376j.EnumC23377a enumC23377a) {
        this.f64864a = z;
        this.f64866c = enumC23377a;
    }

    /* renamed from: a */
    public int m7071a() {
        return this.f64865b;
    }

    /* renamed from: c */
    public boolean m7070c() {
        return this.f64864a;
    }
}
