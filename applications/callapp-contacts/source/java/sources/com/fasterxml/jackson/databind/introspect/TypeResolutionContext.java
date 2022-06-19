package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.lang.reflect.Type;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/TypeResolutionContext.class */
public interface TypeResolutionContext {

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/TypeResolutionContext$Basic.class */
    public static class Basic implements TypeResolutionContext {
        private final TypeBindings _bindings;
        private final TypeFactory _typeFactory;

        public Basic(TypeFactory typeFactory, TypeBindings typeBindings) {
            this._typeFactory = typeFactory;
            this._bindings = typeBindings;
        }

        @Override // com.fasterxml.jackson.databind.introspect.TypeResolutionContext
        public JavaType resolveType(Type type) {
            return this._typeFactory.resolveMemberType(type, this._bindings);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/TypeResolutionContext$Empty.class */
    public static class Empty implements TypeResolutionContext {
        private final TypeFactory _typeFactory;

        public Empty(TypeFactory typeFactory) {
            this._typeFactory = typeFactory;
        }

        @Override // com.fasterxml.jackson.databind.introspect.TypeResolutionContext
        public JavaType resolveType(Type type) {
            return this._typeFactory.constructType(type);
        }
    }

    JavaType resolveType(Type type);
}
