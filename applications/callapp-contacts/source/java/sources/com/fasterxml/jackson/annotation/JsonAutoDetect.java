package com.fasterxml.jackson.annotation;

import java.io.Serializable;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/JsonAutoDetect.class */
public @interface JsonAutoDetect {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.fasterxml.jackson.annotation.JsonAutoDetect$1 */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/JsonAutoDetect$1.class */
    public static /* synthetic */ class C105161 {

        /* renamed from: $SwitchMap$com$fasterxml$jackson$annotation$JsonAutoDetect$Visibility */
        static final /* synthetic */ int[] f34281x23d16a11;
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0099 -> B:44:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009d -> B:62:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a1 -> B:56:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a5 -> B:48:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a9 -> B:42:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ad -> B:60:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b1 -> B:16:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b5 -> B:46:0x006c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b9 -> B:40:0x0077). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00bd -> B:58:0x0082). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c1 -> B:52:0x008d). Please submit an issue!!! */
        static {
            int[] iArr = new int[PropertyAccessor.values().length];
            $SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor = iArr;
            try {
                iArr[PropertyAccessor.CREATOR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor[PropertyAccessor.FIELD.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor[PropertyAccessor.GETTER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor[PropertyAccessor.IS_GETTER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor[PropertyAccessor.NONE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor[PropertyAccessor.SETTER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor[PropertyAccessor.ALL.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            int[] iArr2 = new int[Visibility.values().length];
            f34281x23d16a11 = iArr2;
            try {
                iArr2[Visibility.ANY.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f34281x23d16a11[Visibility.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f34281x23d16a11[Visibility.NON_PRIVATE.ordinal()] = 3;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f34281x23d16a11[Visibility.PROTECTED_AND_PUBLIC.ordinal()] = 4;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f34281x23d16a11[Visibility.PUBLIC_ONLY.ordinal()] = 5;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/JsonAutoDetect$Value.class */
    public static class Value implements Serializable {
        protected static final Value DEFAULT;
        private static final Visibility DEFAULT_FIELD_VISIBILITY;
        protected static final Value NO_OVERRIDES;
        private static final long serialVersionUID = 1;
        protected final Visibility _creatorVisibility;
        protected final Visibility _fieldVisibility;
        protected final Visibility _getterVisibility;
        protected final Visibility _isGetterVisibility;
        protected final Visibility _setterVisibility;

        static {
            Visibility visibility = Visibility.PUBLIC_ONLY;
            DEFAULT_FIELD_VISIBILITY = visibility;
            Visibility visibility2 = Visibility.PUBLIC_ONLY;
            DEFAULT = new Value(visibility, visibility2, visibility2, Visibility.ANY, Visibility.PUBLIC_ONLY);
            Visibility visibility3 = Visibility.DEFAULT;
            Visibility visibility4 = Visibility.DEFAULT;
            NO_OVERRIDES = new Value(visibility3, visibility3, visibility4, visibility4, Visibility.DEFAULT);
        }

        private Value(Visibility visibility, Visibility visibility2, Visibility visibility3, Visibility visibility4, Visibility visibility5) {
            this._fieldVisibility = visibility;
            this._getterVisibility = visibility2;
            this._isGetterVisibility = visibility3;
            this._setterVisibility = visibility4;
            this._creatorVisibility = visibility5;
        }

        private static boolean _equals(Value value, Value value2) {
            return value._fieldVisibility == value2._fieldVisibility && value._getterVisibility == value2._getterVisibility && value._isGetterVisibility == value2._isGetterVisibility && value._setterVisibility == value2._setterVisibility && value._creatorVisibility == value2._creatorVisibility;
        }

        private static Value _predefined(Visibility visibility, Visibility visibility2, Visibility visibility3, Visibility visibility4, Visibility visibility5) {
            if (visibility == DEFAULT_FIELD_VISIBILITY) {
                Value value = DEFAULT;
                if (visibility2 != value._getterVisibility || visibility3 != value._isGetterVisibility || visibility4 != value._setterVisibility || visibility5 != value._creatorVisibility) {
                    return null;
                }
                return value;
            } else if (visibility != Visibility.DEFAULT || visibility2 != Visibility.DEFAULT || visibility3 != Visibility.DEFAULT || visibility4 != Visibility.DEFAULT || visibility5 != Visibility.DEFAULT) {
                return null;
            } else {
                return NO_OVERRIDES;
            }
        }

        public static Value construct(Visibility visibility, Visibility visibility2, Visibility visibility3, Visibility visibility4, Visibility visibility5) {
            Value _predefined = _predefined(visibility, visibility2, visibility3, visibility4, visibility5);
            Value value = _predefined;
            if (_predefined == null) {
                value = new Value(visibility, visibility2, visibility3, visibility4, visibility5);
            }
            return value;
        }

        public static Value construct(PropertyAccessor propertyAccessor, Visibility visibility) {
            Visibility visibility2;
            Visibility visibility3;
            Visibility visibility4;
            Visibility visibility5;
            Visibility visibility6;
            Visibility visibility7 = Visibility.DEFAULT;
            Visibility visibility8 = Visibility.DEFAULT;
            Visibility visibility9 = Visibility.DEFAULT;
            Visibility visibility10 = Visibility.DEFAULT;
            Visibility visibility11 = Visibility.DEFAULT;
            int i = C105161.$SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor[propertyAccessor.ordinal()];
            if (i != 1) {
                visibility6 = visibility8;
                visibility5 = visibility9;
                visibility4 = visibility10;
                visibility3 = visibility11;
                visibility2 = visibility;
                if (i != 2) {
                    if (i == 3) {
                        visibility6 = visibility;
                        visibility5 = visibility9;
                        visibility4 = visibility10;
                        visibility = visibility11;
                    } else if (i == 4) {
                        visibility6 = visibility8;
                        visibility5 = visibility;
                        visibility4 = visibility10;
                        visibility = visibility11;
                    } else if (i == 6) {
                        visibility6 = visibility8;
                        visibility5 = visibility9;
                        visibility4 = visibility;
                        visibility = visibility11;
                    } else if (i != 7) {
                        visibility = visibility11;
                        visibility4 = visibility10;
                        visibility5 = visibility9;
                        visibility6 = visibility8;
                    } else {
                        visibility6 = visibility;
                        visibility5 = visibility6;
                        visibility4 = visibility5;
                        visibility3 = visibility4;
                        visibility2 = visibility;
                    }
                }
                return construct(visibility2, visibility6, visibility5, visibility4, visibility3);
            }
            visibility6 = visibility8;
            visibility5 = visibility9;
            visibility4 = visibility10;
            visibility2 = visibility7;
            visibility3 = visibility;
            return construct(visibility2, visibility6, visibility5, visibility4, visibility3);
        }

        public static Value defaultVisibility() {
            return DEFAULT;
        }

        public static Value from(JsonAutoDetect jsonAutoDetect) {
            return construct(jsonAutoDetect.fieldVisibility(), jsonAutoDetect.getterVisibility(), jsonAutoDetect.isGetterVisibility(), jsonAutoDetect.setterVisibility(), jsonAutoDetect.creatorVisibility());
        }

        public static Value merge(Value value, Value value2) {
            return value == null ? value2 : value.withOverrides(value2);
        }

        public static Value noOverrides() {
            return NO_OVERRIDES;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return obj != null && obj.getClass() == getClass() && _equals(this, (Value) obj);
        }

        public Visibility getCreatorVisibility() {
            return this._creatorVisibility;
        }

        public Visibility getFieldVisibility() {
            return this._fieldVisibility;
        }

        public Visibility getGetterVisibility() {
            return this._getterVisibility;
        }

        public Visibility getIsGetterVisibility() {
            return this._isGetterVisibility;
        }

        public Visibility getSetterVisibility() {
            return this._setterVisibility;
        }

        public int hashCode() {
            return ((this._fieldVisibility.ordinal() + 1) ^ (((this._getterVisibility.ordinal() * 3) - (this._isGetterVisibility.ordinal() * 7)) + (this._setterVisibility.ordinal() * 11))) ^ (this._creatorVisibility.ordinal() * 13);
        }

        protected Object readResolve() {
            Value _predefined = _predefined(this._fieldVisibility, this._getterVisibility, this._isGetterVisibility, this._setterVisibility, this._creatorVisibility);
            return _predefined == null ? this : _predefined;
        }

        public String toString() {
            return String.format("JsonAutoDetect.Value(fields=%s,getters=%s,isGetters=%s,setters=%s,creators=%s)", this._fieldVisibility, this._getterVisibility, this._isGetterVisibility, this._setterVisibility, this._creatorVisibility);
        }

        public Class<JsonAutoDetect> valueFor() {
            return JsonAutoDetect.class;
        }

        public Value withCreatorVisibility(Visibility visibility) {
            return construct(this._fieldVisibility, this._getterVisibility, this._isGetterVisibility, this._setterVisibility, visibility);
        }

        public Value withFieldVisibility(Visibility visibility) {
            return construct(visibility, this._getterVisibility, this._isGetterVisibility, this._setterVisibility, this._creatorVisibility);
        }

        public Value withGetterVisibility(Visibility visibility) {
            return construct(this._fieldVisibility, visibility, this._isGetterVisibility, this._setterVisibility, this._creatorVisibility);
        }

        public Value withIsGetterVisibility(Visibility visibility) {
            return construct(this._fieldVisibility, this._getterVisibility, visibility, this._setterVisibility, this._creatorVisibility);
        }

        public Value withOverrides(Value value) {
            if (value == null || value == NO_OVERRIDES || value == this) {
                return this;
            }
            if (_equals(this, value)) {
                return this;
            }
            Visibility visibility = value._fieldVisibility;
            Visibility visibility2 = visibility;
            if (visibility == Visibility.DEFAULT) {
                visibility2 = this._fieldVisibility;
            }
            Visibility visibility3 = value._getterVisibility;
            Visibility visibility4 = visibility3;
            if (visibility3 == Visibility.DEFAULT) {
                visibility4 = this._getterVisibility;
            }
            Visibility visibility5 = value._isGetterVisibility;
            Visibility visibility6 = visibility5;
            if (visibility5 == Visibility.DEFAULT) {
                visibility6 = this._isGetterVisibility;
            }
            Visibility visibility7 = value._setterVisibility;
            Visibility visibility8 = visibility7;
            if (visibility7 == Visibility.DEFAULT) {
                visibility8 = this._setterVisibility;
            }
            Visibility visibility9 = value._creatorVisibility;
            Visibility visibility10 = visibility9;
            if (visibility9 == Visibility.DEFAULT) {
                visibility10 = this._creatorVisibility;
            }
            return construct(visibility2, visibility4, visibility6, visibility8, visibility10);
        }

        public Value withSetterVisibility(Visibility visibility) {
            return construct(this._fieldVisibility, this._getterVisibility, this._isGetterVisibility, visibility, this._creatorVisibility);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/JsonAutoDetect$Visibility.class */
    public enum Visibility {
        ANY,
        NON_PRIVATE,
        PROTECTED_AND_PUBLIC,
        PUBLIC_ONLY,
        NONE,
        DEFAULT;

        public final boolean isVisible(Member member) {
            int i = C105161.f34281x23d16a11[ordinal()];
            if (i != 1) {
                if (i == 3) {
                    return !Modifier.isPrivate(member.getModifiers());
                }
                if (i != 4) {
                    if (i != 5) {
                        return false;
                    }
                } else if (Modifier.isProtected(member.getModifiers())) {
                    return true;
                }
                return Modifier.isPublic(member.getModifiers());
            }
            return true;
        }
    }

    Visibility creatorVisibility() default Visibility.DEFAULT;

    Visibility fieldVisibility() default Visibility.DEFAULT;

    Visibility getterVisibility() default Visibility.DEFAULT;

    Visibility isGetterVisibility() default Visibility.DEFAULT;

    Visibility setterVisibility() default Visibility.DEFAULT;
}
