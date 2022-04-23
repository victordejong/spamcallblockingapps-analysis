package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/VisibilityChecker.class */
public interface VisibilityChecker<T extends VisibilityChecker<T>> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.fasterxml.jackson.databind.introspect.VisibilityChecker$1  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/VisibilityChecker$1.class */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[PropertyAccessor.values().length];
            $SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor = iArr;
            try {
                iArr[PropertyAccessor.GETTER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor[PropertyAccessor.SETTER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor[PropertyAccessor.CREATOR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor[PropertyAccessor.FIELD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor[PropertyAccessor.IS_GETTER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor[PropertyAccessor.ALL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/VisibilityChecker$Std.class */
    public static class Std implements VisibilityChecker<Std>, Serializable {
        protected static final Std DEFAULT;
        protected final JsonAutoDetect.Visibility _creatorMinLevel;
        protected final JsonAutoDetect.Visibility _fieldMinLevel;
        protected final JsonAutoDetect.Visibility _getterMinLevel;
        protected final JsonAutoDetect.Visibility _isGetterMinLevel;
        protected final JsonAutoDetect.Visibility _setterMinLevel;

        static {
            JsonAutoDetect.Visibility visibility = JsonAutoDetect.Visibility.PUBLIC_ONLY;
            JsonAutoDetect.Visibility visibility2 = JsonAutoDetect.Visibility.ANY;
            DEFAULT = new Std(visibility, visibility, visibility2, visibility2, JsonAutoDetect.Visibility.PUBLIC_ONLY);
        }

        public Std(JsonAutoDetect.Visibility visibility) {
            if (visibility == JsonAutoDetect.Visibility.DEFAULT) {
                Std std = DEFAULT;
                this._getterMinLevel = std._getterMinLevel;
                this._isGetterMinLevel = std._isGetterMinLevel;
                this._setterMinLevel = std._setterMinLevel;
                this._creatorMinLevel = std._creatorMinLevel;
                this._fieldMinLevel = std._fieldMinLevel;
                return;
            }
            this._getterMinLevel = visibility;
            this._isGetterMinLevel = visibility;
            this._setterMinLevel = visibility;
            this._creatorMinLevel = visibility;
            this._fieldMinLevel = visibility;
        }

        public Std(JsonAutoDetect.Visibility visibility, JsonAutoDetect.Visibility visibility2, JsonAutoDetect.Visibility visibility3, JsonAutoDetect.Visibility visibility4, JsonAutoDetect.Visibility visibility5) {
            this._getterMinLevel = visibility;
            this._isGetterMinLevel = visibility2;
            this._setterMinLevel = visibility3;
            this._creatorMinLevel = visibility4;
            this._fieldMinLevel = visibility5;
        }

        public Std(JsonAutoDetect jsonAutoDetect) {
            this._getterMinLevel = jsonAutoDetect.getterVisibility();
            this._isGetterMinLevel = jsonAutoDetect.isGetterVisibility();
            this._setterMinLevel = jsonAutoDetect.setterVisibility();
            this._creatorMinLevel = jsonAutoDetect.creatorVisibility();
            this._fieldMinLevel = jsonAutoDetect.fieldVisibility();
        }

        private JsonAutoDetect.Visibility _defaultOrOverride(JsonAutoDetect.Visibility visibility, JsonAutoDetect.Visibility visibility2) {
            return visibility2 == JsonAutoDetect.Visibility.DEFAULT ? visibility : visibility2;
        }

        public static Std construct(JsonAutoDetect.Value value) {
            return DEFAULT.withOverrides(value);
        }

        public static Std defaultInstance() {
            return DEFAULT;
        }

        protected Std _with(JsonAutoDetect.Visibility visibility, JsonAutoDetect.Visibility visibility2, JsonAutoDetect.Visibility visibility3, JsonAutoDetect.Visibility visibility4, JsonAutoDetect.Visibility visibility5) {
            return (visibility == this._getterMinLevel && visibility2 == this._isGetterMinLevel && visibility3 == this._setterMinLevel && visibility4 == this._creatorMinLevel && visibility5 == this._fieldMinLevel) ? this : new Std(visibility, visibility2, visibility3, visibility4, visibility5);
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isCreatorVisible(AnnotatedMember annotatedMember) {
            return isCreatorVisible(annotatedMember.getMember());
        }

        public boolean isCreatorVisible(Member member) {
            return this._creatorMinLevel.isVisible(member);
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isFieldVisible(AnnotatedField annotatedField) {
            return isFieldVisible(annotatedField.getAnnotated());
        }

        public boolean isFieldVisible(Field field) {
            return this._fieldMinLevel.isVisible(field);
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isGetterVisible(AnnotatedMethod annotatedMethod) {
            return isGetterVisible(annotatedMethod.getAnnotated());
        }

        public boolean isGetterVisible(Method method) {
            return this._getterMinLevel.isVisible(method);
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isIsGetterVisible(AnnotatedMethod annotatedMethod) {
            return isIsGetterVisible(annotatedMethod.getAnnotated());
        }

        public boolean isIsGetterVisible(Method method) {
            return this._isGetterMinLevel.isVisible(method);
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isSetterVisible(AnnotatedMethod annotatedMethod) {
            return isSetterVisible(annotatedMethod.getAnnotated());
        }

        public boolean isSetterVisible(Method method) {
            return this._setterMinLevel.isVisible(method);
        }

        public String toString() {
            return String.format("[Visibility: getter=%s,isGetter=%s,setter=%s,creator=%s,field=%s]", this._getterMinLevel, this._isGetterMinLevel, this._setterMinLevel, this._creatorMinLevel, this._fieldMinLevel);
        }

        public Std with(JsonAutoDetect.Visibility visibility) {
            return visibility == JsonAutoDetect.Visibility.DEFAULT ? DEFAULT : new Std(visibility);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public Std with(JsonAutoDetect jsonAutoDetect) {
            return jsonAutoDetect != null ? _with(_defaultOrOverride(this._getterMinLevel, jsonAutoDetect.getterVisibility()), _defaultOrOverride(this._isGetterMinLevel, jsonAutoDetect.isGetterVisibility()), _defaultOrOverride(this._setterMinLevel, jsonAutoDetect.setterVisibility()), _defaultOrOverride(this._creatorMinLevel, jsonAutoDetect.creatorVisibility()), _defaultOrOverride(this._fieldMinLevel, jsonAutoDetect.fieldVisibility())) : this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public Std withCreatorVisibility(JsonAutoDetect.Visibility visibility) {
            JsonAutoDetect.Visibility visibility2 = visibility;
            if (visibility == JsonAutoDetect.Visibility.DEFAULT) {
                visibility2 = DEFAULT._creatorMinLevel;
            }
            return this._creatorMinLevel == visibility2 ? this : new Std(this._getterMinLevel, this._isGetterMinLevel, this._setterMinLevel, visibility2, this._fieldMinLevel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public Std withFieldVisibility(JsonAutoDetect.Visibility visibility) {
            JsonAutoDetect.Visibility visibility2 = visibility;
            if (visibility == JsonAutoDetect.Visibility.DEFAULT) {
                visibility2 = DEFAULT._fieldMinLevel;
            }
            return this._fieldMinLevel == visibility2 ? this : new Std(this._getterMinLevel, this._isGetterMinLevel, this._setterMinLevel, this._creatorMinLevel, visibility2);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public Std withGetterVisibility(JsonAutoDetect.Visibility visibility) {
            JsonAutoDetect.Visibility visibility2 = visibility;
            if (visibility == JsonAutoDetect.Visibility.DEFAULT) {
                visibility2 = DEFAULT._getterMinLevel;
            }
            return this._getterMinLevel == visibility2 ? this : new Std(visibility2, this._isGetterMinLevel, this._setterMinLevel, this._creatorMinLevel, this._fieldMinLevel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public Std withIsGetterVisibility(JsonAutoDetect.Visibility visibility) {
            JsonAutoDetect.Visibility visibility2 = visibility;
            if (visibility == JsonAutoDetect.Visibility.DEFAULT) {
                visibility2 = DEFAULT._isGetterMinLevel;
            }
            return this._isGetterMinLevel == visibility2 ? this : new Std(this._getterMinLevel, visibility2, this._setterMinLevel, this._creatorMinLevel, this._fieldMinLevel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public Std withOverrides(JsonAutoDetect.Value value) {
            return value != null ? _with(_defaultOrOverride(this._getterMinLevel, value.getGetterVisibility()), _defaultOrOverride(this._isGetterMinLevel, value.getIsGetterVisibility()), _defaultOrOverride(this._setterMinLevel, value.getSetterVisibility()), _defaultOrOverride(this._creatorMinLevel, value.getCreatorVisibility()), _defaultOrOverride(this._fieldMinLevel, value.getFieldVisibility())) : this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public Std withSetterVisibility(JsonAutoDetect.Visibility visibility) {
            JsonAutoDetect.Visibility visibility2 = visibility;
            if (visibility == JsonAutoDetect.Visibility.DEFAULT) {
                visibility2 = DEFAULT._setterMinLevel;
            }
            return this._setterMinLevel == visibility2 ? this : new Std(this._getterMinLevel, this._isGetterMinLevel, visibility2, this._creatorMinLevel, this._fieldMinLevel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public Std withVisibility(PropertyAccessor propertyAccessor, JsonAutoDetect.Visibility visibility) {
            switch (AnonymousClass1.$SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor[propertyAccessor.ordinal()]) {
                case 1:
                    return withGetterVisibility(visibility);
                case 2:
                    return withSetterVisibility(visibility);
                case 3:
                    return withCreatorVisibility(visibility);
                case 4:
                    return withFieldVisibility(visibility);
                case 5:
                    return withIsGetterVisibility(visibility);
                case 6:
                    return with(visibility);
                default:
                    return this;
            }
        }
    }

    boolean isCreatorVisible(AnnotatedMember annotatedMember);

    boolean isFieldVisible(AnnotatedField annotatedField);

    boolean isGetterVisible(AnnotatedMethod annotatedMethod);

    boolean isIsGetterVisible(AnnotatedMethod annotatedMethod);

    boolean isSetterVisible(AnnotatedMethod annotatedMethod);

    T with(JsonAutoDetect jsonAutoDetect);

    T withCreatorVisibility(JsonAutoDetect.Visibility visibility);

    T withFieldVisibility(JsonAutoDetect.Visibility visibility);

    T withGetterVisibility(JsonAutoDetect.Visibility visibility);

    T withIsGetterVisibility(JsonAutoDetect.Visibility visibility);

    T withOverrides(JsonAutoDetect.Value value);

    T withSetterVisibility(JsonAutoDetect.Visibility visibility);

    T withVisibility(PropertyAccessor propertyAccessor, JsonAutoDetect.Visibility visibility);
}
