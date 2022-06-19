package com.fasterxml.jackson.annotation;

import java.io.Serializable;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.ANNOTATION_TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/JsonSetter.class */
public @interface JsonSetter {

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/JsonSetter$Value.class */
    public static class Value implements Serializable {
        protected static final Value EMPTY;
        private static final long serialVersionUID = 1;
        private final Nulls _contentNulls;
        private final Nulls _nulls;

        static {
            Nulls nulls = Nulls.DEFAULT;
            EMPTY = new Value(nulls, nulls);
        }

        protected Value(Nulls nulls, Nulls nulls2) {
            this._nulls = nulls;
            this._contentNulls = nulls2;
        }

        private static boolean _empty(Nulls nulls, Nulls nulls2) {
            return nulls == Nulls.DEFAULT && nulls2 == Nulls.DEFAULT;
        }

        public static Value construct(Nulls nulls, Nulls nulls2) {
            Nulls nulls3 = nulls;
            if (nulls == null) {
                nulls3 = Nulls.DEFAULT;
            }
            Nulls nulls4 = nulls2;
            if (nulls2 == null) {
                nulls4 = Nulls.DEFAULT;
            }
            return _empty(nulls3, nulls4) ? EMPTY : new Value(nulls3, nulls4);
        }

        public static Value empty() {
            return EMPTY;
        }

        public static Value forContentNulls(Nulls nulls) {
            return construct(Nulls.DEFAULT, nulls);
        }

        public static Value forValueNulls(Nulls nulls) {
            return construct(nulls, Nulls.DEFAULT);
        }

        public static Value forValueNulls(Nulls nulls, Nulls nulls2) {
            return construct(nulls, nulls2);
        }

        public static Value from(JsonSetter jsonSetter) {
            return jsonSetter == null ? EMPTY : construct(jsonSetter.nulls(), jsonSetter.contentNulls());
        }

        public static Value merge(Value value, Value value2) {
            return value == null ? value2 : value.withOverrides(value2);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj == null || obj.getClass() != getClass()) {
                return false;
            }
            Value value = (Value) obj;
            return value._nulls == this._nulls && value._contentNulls == this._contentNulls;
        }

        public Nulls getContentNulls() {
            return this._contentNulls;
        }

        public Nulls getValueNulls() {
            return this._nulls;
        }

        public int hashCode() {
            return this._nulls.ordinal() + (this._contentNulls.ordinal() << 2);
        }

        public Nulls nonDefaultContentNulls() {
            if (this._contentNulls == Nulls.DEFAULT) {
                return null;
            }
            return this._contentNulls;
        }

        public Nulls nonDefaultValueNulls() {
            if (this._nulls == Nulls.DEFAULT) {
                return null;
            }
            return this._nulls;
        }

        protected Object readResolve() {
            return _empty(this._nulls, this._contentNulls) ? EMPTY : this;
        }

        public String toString() {
            return String.format("JsonSetter.Value(valueNulls=%s,contentNulls=%s)", this._nulls, this._contentNulls);
        }

        public Class<JsonSetter> valueFor() {
            return JsonSetter.class;
        }

        public Value withContentNulls(Nulls nulls) {
            Nulls nulls2 = nulls;
            if (nulls == null) {
                nulls2 = Nulls.DEFAULT;
            }
            return nulls2 == this._contentNulls ? this : construct(this._nulls, nulls2);
        }

        public Value withOverrides(Value value) {
            if (value == null || value == EMPTY) {
                return this;
            }
            Nulls nulls = value._nulls;
            Nulls nulls2 = value._contentNulls;
            Nulls nulls3 = nulls;
            if (nulls == Nulls.DEFAULT) {
                nulls3 = this._nulls;
            }
            Nulls nulls4 = nulls2;
            if (nulls2 == Nulls.DEFAULT) {
                nulls4 = this._contentNulls;
            }
            return (nulls3 == this._nulls && nulls4 == this._contentNulls) ? this : construct(nulls3, nulls4);
        }

        public Value withValueNulls(Nulls nulls) {
            Nulls nulls2 = nulls;
            if (nulls == null) {
                nulls2 = Nulls.DEFAULT;
            }
            return nulls2 == this._nulls ? this : construct(nulls2, this._contentNulls);
        }

        public Value withValueNulls(Nulls nulls, Nulls nulls2) {
            Nulls nulls3 = nulls;
            if (nulls == null) {
                nulls3 = Nulls.DEFAULT;
            }
            Nulls nulls4 = nulls2;
            if (nulls2 == null) {
                nulls4 = Nulls.DEFAULT;
            }
            return (nulls3 == this._nulls && nulls4 == this._contentNulls) ? this : construct(nulls3, nulls4);
        }
    }

    Nulls contentNulls() default Nulls.DEFAULT;

    Nulls nulls() default Nulls.DEFAULT;

    String value() default "";
}
