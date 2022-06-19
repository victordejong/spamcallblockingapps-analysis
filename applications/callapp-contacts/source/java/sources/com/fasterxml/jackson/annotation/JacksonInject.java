package com.fasterxml.jackson.annotation;

import java.io.Serializable;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.ANNOTATION_TYPE, ElementType.METHOD, ElementType.FIELD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/JacksonInject.class */
public @interface JacksonInject {

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/JacksonInject$Value.class */
    public static class Value implements Serializable {
        protected static final Value EMPTY = new Value(null, null);
        protected final Object _id;
        protected final Boolean _useInput;

        protected Value(Object obj, Boolean bool) {
            this._id = obj;
            this._useInput = bool;
        }

        private static boolean _empty(Object obj, Boolean bool) {
            return obj == null && bool == null;
        }

        public static Value construct(Object obj, Boolean bool) {
            Object obj2 = obj;
            if ("".equals(obj)) {
                obj2 = null;
            }
            return _empty(obj2, bool) ? EMPTY : new Value(obj2, bool);
        }

        public static Value forId(Object obj) {
            return construct(obj, null);
        }

        public static Value from(JacksonInject jacksonInject) {
            return jacksonInject == null ? EMPTY : construct(jacksonInject.value(), jacksonInject.useInput().asBoolean());
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj == null || obj.getClass() != getClass()) {
                return false;
            }
            Value value = (Value) obj;
            if (!OptBoolean.equals(this._useInput, value._useInput)) {
                return false;
            }
            Object obj2 = this._id;
            return obj2 == null ? value._id == null : obj2.equals(value._id);
        }

        public Object getId() {
            return this._id;
        }

        public boolean hasId() {
            return this._id != null;
        }

        public int hashCode() {
            Object obj = this._id;
            int i = 1;
            if (obj != null) {
                i = 1 + obj.hashCode();
            }
            Boolean bool = this._useInput;
            int i2 = i;
            if (bool != null) {
                i2 = i + bool.hashCode();
            }
            return i2;
        }

        public String toString() {
            return String.format("JacksonInject.Value(id=%s,useInput=%s)", this._id, this._useInput);
        }

        public boolean willUseInput(boolean z) {
            Boolean bool = this._useInput;
            return bool == null ? z : bool.booleanValue();
        }

        public Value withId(Object obj) {
            if (obj == null) {
                if (this._id == null) {
                    return this;
                }
            } else if (obj.equals(this._id)) {
                return this;
            }
            return new Value(obj, this._useInput);
        }
    }

    OptBoolean useInput() default OptBoolean.DEFAULT;

    String value() default "";
}
