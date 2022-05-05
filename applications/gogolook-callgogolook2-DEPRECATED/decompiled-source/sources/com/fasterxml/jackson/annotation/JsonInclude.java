package com.fasterxml.jackson.annotation;

import java.io.Serializable;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.ANNOTATION_TYPE, ElementType.METHOD, ElementType.FIELD, ElementType.TYPE, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/annotation/JsonInclude.class */
public @interface JsonInclude {

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/annotation/JsonInclude$Include.class */
    public enum Include {
        ALWAYS,
        NON_NULL,
        NON_ABSENT,
        NON_EMPTY,
        NON_DEFAULT,
        USE_DEFAULTS
    }

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/annotation/JsonInclude$Value.class */
    public static class Value implements JacksonAnnotationValue<JsonInclude>, Serializable {
        public static final Value EMPTY;
        public final Include _contentInclusion;
        public final Include _valueInclusion;

        static {
            Include include = Include.USE_DEFAULTS;
            EMPTY = new Value(include, include);
        }

        public Value(Include include, Include include2) {
            this._valueInclusion = include == null ? Include.USE_DEFAULTS : include;
            this._contentInclusion = include2 == null ? Include.USE_DEFAULTS : include2;
        }

        public static Value construct(Include include, Include include2) {
            return ((include == Include.USE_DEFAULTS || include == null) && (include2 == Include.USE_DEFAULTS || include2 == null)) ? EMPTY : new Value(include, include2);
        }

        public static Value empty() {
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
            if (!(value._valueInclusion == this._valueInclusion && value._contentInclusion == this._contentInclusion)) {
                z = false;
            }
            return z;
        }

        public Include getContentInclusion() {
            return this._contentInclusion;
        }

        public Include getValueInclusion() {
            return this._valueInclusion;
        }

        public int hashCode() {
            return (this._valueInclusion.hashCode() << 2) + this._contentInclusion.hashCode();
        }

        public Object readResolve() {
            Include include = this._valueInclusion;
            Include include2 = Include.USE_DEFAULTS;
            return (include == include2 && this._contentInclusion == include2) ? EMPTY : this;
        }

        public String toString() {
            return String.format("[value=%s,content=%s]", this._valueInclusion, this._contentInclusion);
        }

        public Value withOverrides(Value value) {
            if (!(value == null || value == EMPTY)) {
                Include include = value._valueInclusion;
                Include include2 = value._contentInclusion;
                boolean z = true;
                boolean z2 = (include == this._valueInclusion || include == Include.USE_DEFAULTS) ? false : true;
                if (include2 == this._contentInclusion || include2 == Include.USE_DEFAULTS) {
                    z = false;
                }
                if (z2) {
                    return z ? new Value(include, include2) : new Value(include, this._contentInclusion);
                }
                if (z) {
                    return new Value(this._valueInclusion, include2);
                }
            }
            return this;
        }
    }

    Include content() default Include.ALWAYS;

    Include value() default Include.ALWAYS;
}
