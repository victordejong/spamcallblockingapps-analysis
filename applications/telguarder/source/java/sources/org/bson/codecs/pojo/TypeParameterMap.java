package org.bson.codecs.pojo;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/TypeParameterMap.class */
public final class TypeParameterMap {
    private final Map<Integer, Integer> propertyToClassParamIndexMap;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/TypeParameterMap$Builder.class */
    public static final class Builder {
        private final Map<Integer, Integer> propertyToClassParamIndexMap;

        private Builder() {
            this.propertyToClassParamIndexMap = new HashMap();
        }

        public Builder addIndex(int i) {
            this.propertyToClassParamIndexMap.put(-1, Integer.valueOf(i));
            return this;
        }

        public Builder addIndex(int i, int i2) {
            this.propertyToClassParamIndexMap.put(Integer.valueOf(i), Integer.valueOf(i2));
            return this;
        }

        public TypeParameterMap build() {
            if (this.propertyToClassParamIndexMap.size() <= 1 || !this.propertyToClassParamIndexMap.containsKey(-1)) {
                return new TypeParameterMap(this.propertyToClassParamIndexMap);
            }
            throw new IllegalStateException("You cannot have a generic field that also has type parameters.");
        }
    }

    private TypeParameterMap(Map<Integer, Integer> map) {
        this.propertyToClassParamIndexMap = Collections.unmodifiableMap(map);
    }

    public static Builder builder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && getPropertyToClassParamIndexMap().equals(((TypeParameterMap) obj).getPropertyToClassParamIndexMap());
    }

    public Map<Integer, Integer> getPropertyToClassParamIndexMap() {
        return this.propertyToClassParamIndexMap;
    }

    public boolean hasTypeParameters() {
        return !this.propertyToClassParamIndexMap.isEmpty();
    }

    public int hashCode() {
        return getPropertyToClassParamIndexMap().hashCode();
    }

    public String toString() {
        return "TypeParameterMap{fieldToClassParamIndexMap=" + this.propertyToClassParamIndexMap + "}";
    }
}
