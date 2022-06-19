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
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/JsonFormat.class */
public @interface JsonFormat {
    public static final String DEFAULT_LOCALE = "##default";
    public static final String DEFAULT_TIMEZONE = "##default";

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/JsonFormat$Feature.class */
    public enum Feature {
        ACCEPT_SINGLE_VALUE_AS_ARRAY,
        ACCEPT_CASE_INSENSITIVE_PROPERTIES,
        ACCEPT_CASE_INSENSITIVE_VALUES,
        WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS,
        WRITE_DATES_WITH_ZONE_ID,
        WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED,
        WRITE_SORTED_MAP_ENTRIES,
        ADJUST_DATES_TO_CONTEXT_TIME_ZONE
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/JsonFormat$Features.class */
    public static class Features {
        private static final Features EMPTY = new Features(0, 0);
        private final int _disabled;
        private final int _enabled;

        private Features(int i, int i2) {
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
            if (obj == this) {
                return true;
            }
            if (obj == null || obj.getClass() != getClass()) {
                return false;
            }
            Features features = (Features) obj;
            return features._enabled == this._enabled && features._disabled == this._disabled;
        }

        public Boolean get(Feature feature) {
            int ordinal = 1 << feature.ordinal();
            if ((this._disabled & ordinal) != 0) {
                return Boolean.FALSE;
            }
            if ((ordinal & this._enabled) == 0) {
                return null;
            }
            return Boolean.TRUE;
        }

        public int hashCode() {
            return this._disabled + this._enabled;
        }

        public String toString() {
            return this == EMPTY ? "EMPTY" : String.format("(enabled=0x%x,disabled=0x%x)", Integer.valueOf(this._enabled), Integer.valueOf(this._disabled));
        }

        public Features with(Feature... featureArr) {
            int i = this._enabled;
            for (Feature feature : featureArr) {
                i |= 1 << feature.ordinal();
            }
            return i == this._enabled ? this : new Features(i, this._disabled);
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
            int i3 = this._enabled;
            if (i3 == 0 && this._disabled == 0) {
                return features;
            }
            int i4 = ((i ^ (-1)) & i3) | i2;
            int i5 = this._disabled;
            int i6 = i | ((i2 ^ (-1)) & i5);
            return (i4 == i3 && i6 == i5) ? this : new Features(i4, i6);
        }

        public Features without(Feature... featureArr) {
            int i = this._disabled;
            for (Feature feature : featureArr) {
                i |= 1 << feature.ordinal();
            }
            return i == this._disabled ? this : new Features(this._enabled, i);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/JsonFormat$Shape.class */
    public enum Shape {
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

        public final boolean isNumeric() {
            return this == NUMBER || this == NUMBER_INT || this == NUMBER_FLOAT;
        }

        public final boolean isStructured() {
            return this == OBJECT || this == ARRAY;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/JsonFormat$Value.class */
    public static class Value implements Serializable {
        private static final Value EMPTY = new Value();
        private static final long serialVersionUID = 1;
        private final Features _features;
        private final Boolean _lenient;
        private final Locale _locale;
        private final String _pattern;
        private final Shape _shape;
        private transient TimeZone _timezone;
        private final String _timezoneStr;

        public Value() {
            this("", Shape.ANY, "", "", Features.empty(), (Boolean) null);
        }

        public Value(JsonFormat jsonFormat) {
            this(jsonFormat.pattern(), jsonFormat.shape(), jsonFormat.locale(), jsonFormat.timezone(), Features.construct(jsonFormat), jsonFormat.lenient().asBoolean());
        }

        @Deprecated
        public Value(String str, Shape shape, String str2, String str3, Features features) {
            this(str, shape, str2, str3, features, (Boolean) null);
        }

        public Value(String str, Shape shape, String str2, String str3, Features features, Boolean bool) {
            this(str, shape, (str2 == null || str2.length() == 0 || "##default".equals(str2)) ? null : new Locale(str2), (str3 == null || str3.length() == 0 || "##default".equals(str3)) ? null : str3, null, features, bool);
        }

        @Deprecated
        public Value(String str, Shape shape, Locale locale, String str2, TimeZone timeZone, Features features) {
            this(str, shape, locale, str2, timeZone, features, null);
        }

        public Value(String str, Shape shape, Locale locale, String str2, TimeZone timeZone, Features features, Boolean bool) {
            this._pattern = str == null ? "" : str;
            this._shape = shape == null ? Shape.ANY : shape;
            this._locale = locale;
            this._timezone = timeZone;
            this._timezoneStr = str2;
            this._features = features == null ? Features.empty() : features;
            this._lenient = bool;
        }

        @Deprecated
        public Value(String str, Shape shape, Locale locale, TimeZone timeZone, Features features) {
            this(str, shape, locale, timeZone, features, (Boolean) null);
        }

        public Value(String str, Shape shape, Locale locale, TimeZone timeZone, Features features, Boolean bool) {
            this._pattern = str == null ? "" : str;
            this._shape = shape == null ? Shape.ANY : shape;
            this._locale = locale;
            this._timezone = timeZone;
            this._timezoneStr = null;
            this._features = features == null ? Features.empty() : features;
            this._lenient = bool;
        }

        private static <T> boolean _equal(T t, T t2) {
            if (t == null) {
                return t2 == null;
            } else if (t2 != null) {
                return t.equals(t2);
            } else {
                return false;
            }
        }

        public static final Value empty() {
            return EMPTY;
        }

        public static Value forLeniency(boolean z) {
            return new Value("", null, null, null, null, Features.empty(), Boolean.valueOf(z));
        }

        public static Value forPattern(String str) {
            return new Value(str, null, null, null, null, Features.empty(), null);
        }

        public static Value forShape(Shape shape) {
            return new Value("", shape, null, null, null, Features.empty(), null);
        }

        public static final Value from(JsonFormat jsonFormat) {
            return jsonFormat == null ? EMPTY : new Value(jsonFormat);
        }

        public static Value merge(Value value, Value value2) {
            return value == null ? value2 : value.withOverrides(value2);
        }

        public static Value mergeAll(Value... valueArr) {
            int length = valueArr.length;
            Value value = null;
            int i = 0;
            while (i < length) {
                Value value2 = valueArr[i];
                Value value3 = value;
                if (value2 != null) {
                    value3 = value == null ? value2 : value.withOverrides(value2);
                }
                i++;
                value = value3;
            }
            return value;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj == null || obj.getClass() != getClass()) {
                return false;
            }
            Value value = (Value) obj;
            return this._shape == value._shape && this._features.equals(value._features) && _equal(this._lenient, value._lenient) && _equal(this._timezoneStr, value._timezoneStr) && _equal(this._pattern, value._pattern) && _equal(this._timezone, value._timezone) && _equal(this._locale, value._locale);
        }

        public Boolean getFeature(Feature feature) {
            return this._features.get(feature);
        }

        public Features getFeatures() {
            return this._features;
        }

        public Boolean getLenient() {
            return this._lenient;
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

        public boolean hasLenient() {
            return this._lenient != null;
        }

        public boolean hasLocale() {
            return this._locale != null;
        }

        public boolean hasPattern() {
            String str = this._pattern;
            return str != null && str.length() > 0;
        }

        public boolean hasShape() {
            return this._shape != Shape.ANY;
        }

        public boolean hasTimeZone() {
            if (this._timezone == null) {
                String str = this._timezoneStr;
                return str != null && !str.isEmpty();
            }
            return true;
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
            Boolean bool = this._lenient;
            int i2 = hashCode2;
            if (bool != null) {
                i2 = hashCode2 ^ bool.hashCode();
            }
            Locale locale = this._locale;
            int i3 = i2;
            if (locale != null) {
                i3 = i2 + locale.hashCode();
            }
            return i3 ^ this._features.hashCode();
        }

        public boolean isLenient() {
            return Boolean.TRUE.equals(this._lenient);
        }

        public String timeZoneAsString() {
            TimeZone timeZone = this._timezone;
            return timeZone != null ? timeZone.getID() : this._timezoneStr;
        }

        public String toString() {
            return String.format("JsonFormat.Value(pattern=%s,shape=%s,lenient=%s,locale=%s,timezone=%s,features=%s)", this._pattern, this._shape, this._lenient, this._locale, this._timezoneStr, this._features);
        }

        public Class<JsonFormat> valueFor() {
            return JsonFormat.class;
        }

        public Value withFeature(Feature feature) {
            Features with = this._features.with(feature);
            return with == this._features ? this : new Value(this._pattern, this._shape, this._locale, this._timezoneStr, this._timezone, with, this._lenient);
        }

        public Value withLenient(Boolean bool) {
            return bool == this._lenient ? this : new Value(this._pattern, this._shape, this._locale, this._timezoneStr, this._timezone, this._features, bool);
        }

        public Value withLocale(Locale locale) {
            return new Value(this._pattern, this._shape, locale, this._timezoneStr, this._timezone, this._features, this._lenient);
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x002b, code lost:
            if (r0.isEmpty() != false) goto L16;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.fasterxml.jackson.annotation.JsonFormat.Value withOverrides(com.fasterxml.jackson.annotation.JsonFormat.Value r11) {
            /*
                Method dump skipped, instructions count: 212
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.annotation.JsonFormat.Value.withOverrides(com.fasterxml.jackson.annotation.JsonFormat$Value):com.fasterxml.jackson.annotation.JsonFormat$Value");
        }

        public Value withPattern(String str) {
            return new Value(str, this._shape, this._locale, this._timezoneStr, this._timezone, this._features, this._lenient);
        }

        public Value withShape(Shape shape) {
            return shape == this._shape ? this : new Value(this._pattern, shape, this._locale, this._timezoneStr, this._timezone, this._features, this._lenient);
        }

        public Value withTimeZone(TimeZone timeZone) {
            return new Value(this._pattern, this._shape, this._locale, null, timeZone, this._features, this._lenient);
        }

        public Value withoutFeature(Feature feature) {
            Features without = this._features.without(feature);
            return without == this._features ? this : new Value(this._pattern, this._shape, this._locale, this._timezoneStr, this._timezone, without, this._lenient);
        }
    }

    OptBoolean lenient() default OptBoolean.DEFAULT;

    String locale() default "##default";

    String pattern() default "";

    Shape shape() default Shape.ANY;

    String timezone() default "##default";

    Feature[] with() default {};

    Feature[] without() default {};
}
