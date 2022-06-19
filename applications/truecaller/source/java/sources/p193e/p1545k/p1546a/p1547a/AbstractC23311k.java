package p193e.p1545k.p1546a.p1547a;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Locale;
import java.util.Objects;
import java.util.TimeZone;
@Target({ElementType.ANNOTATION_TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: e.k.a.a.k */
/* loaded from: classes2-dex2jar.jar:e/k/a/a/k.class */
public @interface AbstractC23311k {

    /* renamed from: e.k.a.a.k$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/a/k$a.class */
    public enum EnumC23312a {
        ACCEPT_SINGLE_VALUE_AS_ARRAY,
        ACCEPT_CASE_INSENSITIVE_PROPERTIES,
        ACCEPT_CASE_INSENSITIVE_VALUES,
        WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS,
        WRITE_DATES_WITH_ZONE_ID,
        WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED,
        WRITE_SORTED_MAP_ENTRIES,
        ADJUST_DATES_TO_CONTEXT_TIME_ZONE
    }

    /* renamed from: e.k.a.a.k$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/a/k$b.class */
    public static class C23313b {

        /* renamed from: c */
        public static final C23313b f64482c = new C23313b(0, 0);

        /* renamed from: a */
        public final int f64483a;

        /* renamed from: b */
        public final int f64484b;

        public C23313b(int i, int i2) {
            this.f64483a = i;
            this.f64484b = i2;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (obj == null || obj.getClass() != C23313b.class) {
                return false;
            }
            C23313b c23313b = (C23313b) obj;
            if (c23313b.f64483a != this.f64483a || c23313b.f64484b != this.f64484b) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return this.f64484b + this.f64483a;
        }

        public String toString() {
            return this == f64482c ? "EMPTY" : String.format("(enabled=0x%x,disabled=0x%x)", Integer.valueOf(this.f64483a), Integer.valueOf(this.f64484b));
        }
    }

    /* renamed from: e.k.a.a.k$c */
    /* loaded from: classes2-dex2jar.jar:e/k/a/a/k$c.class */
    public enum EnumC23314c {
        ANY,
        NATURAL,
        SCALAR,
        ARRAY,
        OBJECT,
        NUMBER,
        NUMBER_FLOAT,
        NUMBER_INT,
        STRING,
        BOOLEAN,
        BINARY;

        /* renamed from: a */
        public boolean m7288a() {
            return this == NUMBER || this == NUMBER_INT || this == NUMBER_FLOAT;
        }
    }

    /* renamed from: e.k.a.a.k$d */
    /* loaded from: classes2-dex2jar.jar:e/k/a/a/k$d.class */
    public static class C23315d implements Object<AbstractC23311k> {

        /* renamed from: h */
        public static final C23315d f64497h = new C23315d("", EnumC23314c.ANY, "", "", C23313b.f64482c, null);

        /* renamed from: a */
        public final String f64498a;

        /* renamed from: b */
        public final EnumC23314c f64499b;

        /* renamed from: c */
        public final Locale f64500c;

        /* renamed from: d */
        public final String f64501d;

        /* renamed from: e */
        public final Boolean f64502e;

        /* renamed from: f */
        public final C23313b f64503f;

        /* renamed from: g */
        public transient TimeZone f64504g;

        public C23315d() {
            this("", EnumC23314c.ANY, "", "", C23313b.f64482c, null);
        }

        public C23315d(String str, EnumC23314c enumC23314c, String str2, String str3, C23313b c23313b, Boolean bool) {
            this(str, enumC23314c, (str2 == null || str2.length() == 0 || "##default".equals(str2)) ? null : new Locale(str2), (str3 == null || str3.length() == 0 || "##default".equals(str3)) ? null : str3, null, c23313b, bool);
        }

        public C23315d(String str, EnumC23314c enumC23314c, Locale locale, String str2, TimeZone timeZone, C23313b c23313b, Boolean bool) {
            this.f64498a = str == null ? "" : str;
            this.f64499b = enumC23314c == null ? EnumC23314c.ANY : enumC23314c;
            this.f64500c = locale;
            this.f64504g = timeZone;
            this.f64501d = str2;
            this.f64503f = c23313b == null ? C23313b.f64482c : c23313b;
            this.f64502e = bool;
        }

        /* renamed from: a */
        public static <T> boolean m7287a(T t, T t2) {
            boolean z = false;
            if (t == null) {
                if (t2 == null) {
                    z = true;
                }
                return z;
            } else if (t2 != null) {
                return t.equals(t2);
            } else {
                return false;
            }
        }

        /* renamed from: b */
        public Boolean m7286b(EnumC23312a enumC23312a) {
            C23313b c23313b = this.f64503f;
            Objects.requireNonNull(c23313b);
            int ordinal = 1 << enumC23312a.ordinal();
            return (c23313b.f64484b & ordinal) != 0 ? Boolean.FALSE : (ordinal & c23313b.f64483a) != 0 ? Boolean.TRUE : null;
        }

        /* renamed from: c */
        public TimeZone m7285c() {
            TimeZone timeZone = this.f64504g;
            TimeZone timeZone2 = timeZone;
            if (timeZone == null) {
                String str = this.f64501d;
                if (str == null) {
                    return null;
                }
                timeZone2 = TimeZone.getTimeZone(str);
                this.f64504g = timeZone2;
            }
            return timeZone2;
        }

        /* renamed from: d */
        public boolean m7284d() {
            return this.f64500c != null;
        }

        /* renamed from: e */
        public boolean m7283e() {
            String str;
            return this.f64504g != null || ((str = this.f64501d) != null && !str.isEmpty());
        }

        @Override // java.lang.Object
        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (obj == null || obj.getClass() != C23315d.class) {
                return false;
            }
            C23315d c23315d = (C23315d) obj;
            if (this.f64499b != c23315d.f64499b || !this.f64503f.equals(c23315d.f64503f)) {
                return false;
            }
            if (!m7287a(this.f64502e, c23315d.f64502e) || !m7287a(this.f64501d, c23315d.f64501d) || !m7287a(this.f64498a, c23315d.f64498a) || !m7287a(this.f64504g, c23315d.f64504g) || !m7287a(this.f64500c, c23315d.f64500c)) {
                z = false;
            }
            return z;
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x002b, code lost:
            if (r0.isEmpty() != false) goto L16;
         */
        /* renamed from: f */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final p193e.p1545k.p1546a.p1547a.AbstractC23311k.C23315d m7282f(p193e.p1545k.p1546a.p1547a.AbstractC23311k.C23315d r11) {
            /*
                Method dump skipped, instructions count: 318
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1547a.AbstractC23311k.C23315d.m7282f(e.k.a.a.k$d):e.k.a.a.k$d");
        }

        @Override // java.lang.Object
        public int hashCode() {
            String str = this.f64501d;
            int hashCode = str == null ? 1 : str.hashCode();
            String str2 = this.f64498a;
            int i = hashCode;
            if (str2 != null) {
                i = hashCode ^ str2.hashCode();
            }
            int hashCode2 = this.f64499b.hashCode() + i;
            Boolean bool = this.f64502e;
            int i2 = hashCode2;
            if (bool != null) {
                i2 = hashCode2 ^ bool.hashCode();
            }
            Locale locale = this.f64500c;
            int i3 = i2;
            if (locale != null) {
                i3 = i2 + locale.hashCode();
            }
            return this.f64503f.hashCode() ^ i3;
        }

        @Override // java.lang.Object
        public String toString() {
            return String.format("JsonFormat.Value(pattern=%s,shape=%s,lenient=%s,locale=%s,timezone=%s,features=%s)", this.f64498a, this.f64499b, this.f64502e, this.f64500c, this.f64501d, this.f64503f);
        }
    }

    EnumC23325o0 lenient() default EnumC23325o0.DEFAULT;

    String locale() default "##default";

    String pattern() default "";

    EnumC23314c shape() default EnumC23314c.ANY;

    String timezone() default "##default";

    EnumC23312a[] with() default {};

    EnumC23312a[] without() default {};
}
