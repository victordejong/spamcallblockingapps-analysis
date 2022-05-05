package com.fasterxml.jackson.annotation;

import java.io.Serializable;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Locale;
import java.util.TimeZone;
@Target({ElementType.ANNOTATION_TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/annotation/JsonFormat.class */
public @interface JsonFormat {

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/annotation/JsonFormat$Feature.class */
    public enum Feature {
        ACCEPT_SINGLE_VALUE_AS_ARRAY,
        WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS,
        WRITE_DATES_WITH_ZONE_ID,
        WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED,
        WRITE_SORTED_MAP_ENTRIES
    }

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/annotation/JsonFormat$Features.class */
    public static class Features {
        public static final Features EMPTY = new Features(0, 0);
        public final int _disabled;
        public final int _enabled;

        public Features(int i, int i2) {
            this._enabled = i;
            this._disabled = i2;
        }

        public static Features construct(JsonFormat jsonFormat) {
            return construct(jsonFormat.with(), jsonFormat.without());
        }

        public static Features construct(Feature[] featureArr, Feature[] featureArr2) {
            int i = 0;
            for (Feature feature : featureArr) {
                i |= 1 << feature.ordinal();
            }
            int i2 = 0;
            for (Feature feature2 : featureArr2) {
                i2 |= 1 << feature2.ordinal();
            }
            return new Features(i, i2);
        }

        public static Features empty() {
            return EMPTY;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (obj == null || obj.getClass() != Features.class) {
                return false;
            }
            Features features = (Features) obj;
            if (!(features._enabled == this._enabled && features._disabled == this._disabled)) {
                z = false;
            }
            return z;
        }

        public Boolean get(Feature feature) {
            int ordinal = 1 << feature.ordinal();
            if ((this._disabled & ordinal) != 0) {
                return Boolean.FALSE;
            }
            if ((ordinal & this._enabled) != 0) {
                return Boolean.TRUE;
            }
            return null;
        }

        public int hashCode() {
            return this._disabled + this._enabled;
        }

        public Features withOverrides(Features features) {
            if (features == null) {
                return this;
            }
            int i = features._disabled;
            int i2 = features._enabled;
            if (i == 0 && i2 == 0) {
                return this;
            }
            if (this._enabled == 0 && this._disabled == 0) {
                return features;
            }
            int i3 = this._enabled;
            int i4 = ((i ^ (-1)) & i3) | i2;
            int i5 = this._disabled;
            int i6 = i | ((i2 ^ (-1)) & i5);
            return (i4 == i3 && i6 == i5) ? this : new Features(i4, i6);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/annotation/JsonFormat$Shape.class */
    public enum Shape {
        ANY,
        SCALAR,
        ARRAY,
        OBJECT,
        NUMBER,
        NUMBER_FLOAT,
        NUMBER_INT,
        STRING,
        BOOLEAN;

        public boolean isNumeric() {
            return this == NUMBER || this == NUMBER_INT || this == NUMBER_FLOAT;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/annotation/JsonFormat$Value.class */
    public static class Value implements JacksonAnnotationValue<JsonFormat>, Serializable {
        public static final Value EMPTY = new Value();
        public final Features _features;
        public final Locale _locale;
        public final String _pattern;
        public final Shape _shape;
        public transient TimeZone _timezone;
        public final String _timezoneStr;

        public Value() {
            this("", Shape.ANY, "", "", Features.empty());
        }

        public Value(JsonFormat jsonFormat) {
            this(jsonFormat.pattern(), jsonFormat.shape(), jsonFormat.locale(), jsonFormat.timezone(), Features.construct(jsonFormat));
        }

        public Value(String str, Shape shape, String str2, String str3, Features features) {
            this(str, shape, (str2 == null || str2.length() == 0 || "##default".equals(str2)) ? null : new Locale(str2), (str3 == null || str3.length() == 0 || "##default".equals(str3)) ? null : str3, null, features);
        }

        public Value(String str, Shape shape, Locale locale, String str2, TimeZone timeZone, Features features) {
            this._pattern = str;
            this._shape = shape == null ? Shape.ANY : shape;
            this._locale = locale;
            this._timezone = timeZone;
            this._timezoneStr = str2;
            this._features = features == null ? Features.empty() : features;
        }

        public static <T> boolean _equal(T t, T t2) {
            boolean z = false;
            if (t == null) {
                if (t2 == null) {
                    z = true;
                }
                return z;
            } else if (t2 == null) {
                return false;
            } else {
                return t.equals(t2);
            }
        }

        public static final Value empty() {
            return EMPTY;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (obj == null || obj.getClass() != Value.class) {
                return false;
            }
            Value value = (Value) obj;
            if (this._shape != value._shape || !this._features.equals(value._features)) {
                return false;
            }
            if (!_equal(this._timezoneStr, value._timezoneStr) || !_equal(this._pattern, value._pattern) || !_equal(this._timezone, value._timezone) || !_equal(this._locale, value._locale)) {
                z = false;
            }
            return z;
        }

        public Boolean getFeature(Feature feature) {
            return this._features.get(feature);
        }

        public Locale getLocale() {
            return this._locale;
        }

        public String getPattern() {
            return this._pattern;
        }

        public Shape getShape() {
            return this._shape;
        }

        public TimeZone getTimeZone() {
            TimeZone timeZone = this._timezone;
            TimeZone timeZone2 = timeZone;
            if (timeZone == null) {
                String str = this._timezoneStr;
                if (str == null) {
                    return null;
                }
                timeZone2 = TimeZone.getTimeZone(str);
                this._timezone = timeZone2;
            }
            return timeZone2;
        }

        public boolean hasLocale() {
            return this._locale != null;
        }

        public boolean hasPattern() {
            String str = this._pattern;
            return str != null && str.length() > 0;
        }

        public int hashCode() {
            String str = this._timezoneStr;
            int hashCode = str == null ? 1 : str.hashCode();
            String str2 = this._pattern;
            int i = hashCode;
            if (str2 != null) {
                i = hashCode ^ str2.hashCode();
            }
            int hashCode2 = i + this._shape.hashCode();
            Locale locale = this._locale;
            int i2 = hashCode2;
            if (locale != null) {
                i2 = hashCode2 ^ locale.hashCode();
            }
            return i2 + this._features.hashCode();
        }

        public String toString() {
            return String.format("[pattern=%s,shape=%s,locale=%s,timezone=%s]", this._pattern, this._shape, this._locale, this._timezoneStr);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0026, code lost:
            if (r0.isEmpty() != false) goto L_0x0029;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.fasterxml.jackson.annotation.JsonFormat.Value withOverrides(com.fasterxml.jackson.annotation.JsonFormat.Value r10) {
            /*
                r9 = this;
                r0 = r10
                if (r0 == 0) goto L_0x00b6
                com.fasterxml.jackson.annotation.JsonFormat$Value r0 = com.fasterxml.jackson.annotation.JsonFormat.Value.EMPTY
                r11 = r0
                r0 = r10
                r1 = r11
                if (r0 != r1) goto L_0x0010
                goto L_0x00b6
            L_0x0010:
                r0 = r9
                r1 = r11
                if (r0 != r1) goto L_0x0017
                r0 = r10
                return r0
            L_0x0017:
                r0 = r10
                java.lang.String r0 = r0._pattern
                r12 = r0
                r0 = r12
                if (r0 == 0) goto L_0x0029
                r0 = r12
                r11 = r0
                r0 = r12
                boolean r0 = r0.isEmpty()
                if (r0 == 0) goto L_0x002e
            L_0x0029:
                r0 = r9
                java.lang.String r0 = r0._pattern
                r11 = r0
            L_0x002e:
                r0 = r10
                com.fasterxml.jackson.annotation.JsonFormat$Shape r0 = r0._shape
                r13 = r0
                r0 = r13
                r12 = r0
                r0 = r13
                com.fasterxml.jackson.annotation.JsonFormat$Shape r1 = com.fasterxml.jackson.annotation.JsonFormat.Shape.ANY
                if (r0 != r1) goto L_0x0044
                r0 = r9
                com.fasterxml.jackson.annotation.JsonFormat$Shape r0 = r0._shape
                r12 = r0
            L_0x0044:
                r0 = r10
                java.util.Locale r0 = r0._locale
                r14 = r0
                r0 = r14
                r13 = r0
                r0 = r14
                if (r0 != 0) goto L_0x0059
                r0 = r9
                java.util.Locale r0 = r0._locale
                r13 = r0
            L_0x0059:
                r0 = r9
                com.fasterxml.jackson.annotation.JsonFormat$Features r0 = r0._features
                r14 = r0
                r0 = r14
                if (r0 != 0) goto L_0x006d
                r0 = r10
                com.fasterxml.jackson.annotation.JsonFormat$Features r0 = r0._features
                r14 = r0
                goto L_0x0078
            L_0x006d:
                r0 = r14
                r1 = r10
                com.fasterxml.jackson.annotation.JsonFormat$Features r1 = r1._features
                com.fasterxml.jackson.annotation.JsonFormat$Features r0 = r0.withOverrides(r1)
                r14 = r0
            L_0x0078:
                r0 = r10
                java.lang.String r0 = r0._timezoneStr
                r15 = r0
                r0 = r15
                if (r0 == 0) goto L_0x009a
                r0 = r15
                boolean r0 = r0.isEmpty()
                if (r0 == 0) goto L_0x008e
                goto L_0x009a
            L_0x008e:
                r0 = r10
                java.util.TimeZone r0 = r0._timezone
                r16 = r0
                r0 = r15
                r10 = r0
                goto L_0x00a5
            L_0x009a:
                r0 = r9
                java.lang.String r0 = r0._timezoneStr
                r10 = r0
                r0 = r9
                java.util.TimeZone r0 = r0._timezone
                r16 = r0
            L_0x00a5:
                com.fasterxml.jackson.annotation.JsonFormat$Value r0 = new com.fasterxml.jackson.annotation.JsonFormat$Value
                r1 = r0
                r2 = r11
                r3 = r12
                r4 = r13
                r5 = r10
                r6 = r16
                r7 = r14
                r1.<init>(r2, r3, r4, r5, r6, r7)
                return r0
            L_0x00b6:
                r0 = r9
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.annotation.JsonFormat.Value.withOverrides(com.fasterxml.jackson.annotation.JsonFormat$Value):com.fasterxml.jackson.annotation.JsonFormat$Value");
        }
    }

    String locale() default "##default";

    String pattern() default "";

    Shape shape() default Shape.ANY;

    String timezone() default "##default";

    Feature[] with() default {};

    Feature[] without() default {};
}
