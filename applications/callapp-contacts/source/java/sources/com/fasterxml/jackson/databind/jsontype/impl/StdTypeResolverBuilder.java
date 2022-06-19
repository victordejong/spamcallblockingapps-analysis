package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.PolymorphicTypeValidator;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.util.Collection;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder.class */
public class StdTypeResolverBuilder implements TypeResolverBuilder<StdTypeResolverBuilder> {
    protected TypeIdResolver _customIdResolver;
    protected Class<?> _defaultImpl;
    protected JsonTypeInfo.EnumC10518Id _idType;
    protected JsonTypeInfo.EnumC10517As _includeAs;
    protected boolean _typeIdVisible = false;
    protected String _typeProperty;

    /* renamed from: com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder$1 */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder$1.class */
    public static /* synthetic */ class C105521 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As;
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x008d -> B:57:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0091 -> B:51:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0095 -> B:45:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0099 -> B:39:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x009d -> B:55:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a1 -> B:14:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a5 -> B:43:0x0060). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00a9 -> B:37:0x006b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00ad -> B:53:0x0076). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b1 -> B:47:0x0081). Please submit an issue!!! */
        static {
            int[] iArr = new int[JsonTypeInfo.EnumC10518Id.values().length];
            $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id = iArr;
            try {
                iArr[JsonTypeInfo.EnumC10518Id.DEDUCTION.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id[JsonTypeInfo.EnumC10518Id.CLASS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id[JsonTypeInfo.EnumC10518Id.MINIMAL_CLASS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id[JsonTypeInfo.EnumC10518Id.NAME.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id[JsonTypeInfo.EnumC10518Id.NONE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id[JsonTypeInfo.EnumC10518Id.CUSTOM.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            int[] iArr2 = new int[JsonTypeInfo.EnumC10517As.values().length];
            $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As = iArr2;
            try {
                iArr2[JsonTypeInfo.EnumC10517As.WRAPPER_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[JsonTypeInfo.EnumC10517As.PROPERTY.ordinal()] = 2;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[JsonTypeInfo.EnumC10517As.WRAPPER_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[JsonTypeInfo.EnumC10517As.EXTERNAL_PROPERTY.ordinal()] = 4;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[JsonTypeInfo.EnumC10517As.EXISTING_PROPERTY.ordinal()] = 5;
            } catch (NoSuchFieldError e11) {
            }
        }
    }

    public StdTypeResolverBuilder() {
    }

    protected StdTypeResolverBuilder(JsonTypeInfo.EnumC10518Id enumC10518Id, JsonTypeInfo.EnumC10517As enumC10517As, String str) {
        this._idType = enumC10518Id;
        this._includeAs = enumC10517As;
        this._typeProperty = str;
    }

    public static StdTypeResolverBuilder noTypeInfoBuilder() {
        return new StdTypeResolverBuilder().init(JsonTypeInfo.EnumC10518Id.NONE, (TypeIdResolver) null);
    }

    protected boolean allowPrimitiveTypes(MapperConfig<?> mapperConfig, JavaType javaType) {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder
    public TypeDeserializer buildTypeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType, Collection<NamedType> collection) {
        if (this._idType == JsonTypeInfo.EnumC10518Id.NONE) {
            return null;
        }
        if (javaType.isPrimitive() && !allowPrimitiveTypes(deserializationConfig, javaType)) {
            return null;
        }
        TypeIdResolver idResolver = idResolver(deserializationConfig, javaType, verifyBaseTypeValidity(deserializationConfig, javaType), collection, false, true);
        JavaType defineDefaultImpl = defineDefaultImpl(deserializationConfig, javaType);
        if (this._idType == JsonTypeInfo.EnumC10518Id.DEDUCTION) {
            return new AsDeductionTypeDeserializer(javaType, idResolver, defineDefaultImpl, deserializationConfig, collection);
        }
        int i = C105521.$SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[this._includeAs.ordinal()];
        if (i == 1) {
            return new AsArrayTypeDeserializer(javaType, idResolver, this._typeProperty, this._typeIdVisible, defineDefaultImpl);
        }
        if (i != 2) {
            if (i == 3) {
                return new AsWrapperTypeDeserializer(javaType, idResolver, this._typeProperty, this._typeIdVisible, defineDefaultImpl);
            }
            if (i == 4) {
                return new AsExternalTypeDeserializer(javaType, idResolver, this._typeProperty, this._typeIdVisible, defineDefaultImpl);
            }
            if (i != 5) {
                throw new IllegalStateException("Do not know how to construct standard type serializer for inclusion type: " + this._includeAs);
            }
        }
        return new AsPropertyTypeDeserializer(javaType, idResolver, this._typeProperty, this._typeIdVisible, defineDefaultImpl, this._includeAs);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder
    public TypeSerializer buildTypeSerializer(SerializationConfig serializationConfig, JavaType javaType, Collection<NamedType> collection) {
        if (this._idType == JsonTypeInfo.EnumC10518Id.NONE) {
            return null;
        }
        if (javaType.isPrimitive() && !allowPrimitiveTypes(serializationConfig, javaType)) {
            return null;
        }
        TypeIdResolver idResolver = idResolver(serializationConfig, javaType, subTypeValidator(serializationConfig), collection, true, false);
        if (this._idType == JsonTypeInfo.EnumC10518Id.DEDUCTION) {
            return new AsExistingPropertyTypeSerializer(idResolver, null, this._typeProperty);
        }
        int i = C105521.$SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[this._includeAs.ordinal()];
        if (i == 1) {
            return new AsArrayTypeSerializer(idResolver, null);
        }
        if (i == 2) {
            return new AsPropertyTypeSerializer(idResolver, null, this._typeProperty);
        }
        if (i == 3) {
            return new AsWrapperTypeSerializer(idResolver, null);
        }
        if (i == 4) {
            return new AsExternalTypeSerializer(idResolver, null, this._typeProperty);
        }
        if (i == 5) {
            return new AsExistingPropertyTypeSerializer(idResolver, null, this._typeProperty);
        }
        throw new IllegalStateException("Do not know how to construct standard type serializer for inclusion type: " + this._includeAs);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder
    /* renamed from: defaultImpl */
    public StdTypeResolverBuilder defaultImpl2(Class<?> cls) {
        this._defaultImpl = cls;
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0017, code lost:
        if (r6.isAbstract() == false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected com.fasterxml.jackson.databind.JavaType defineDefaultImpl(com.fasterxml.jackson.databind.DeserializationConfig r5, com.fasterxml.jackson.databind.JavaType r6) {
        /*
            r4 = this;
            r0 = r4
            java.lang.Class<?> r0 = r0._defaultImpl
            r7 = r0
            r0 = r7
            if (r0 != 0) goto L22
            r0 = r5
            com.fasterxml.jackson.databind.MapperFeature r1 = com.fasterxml.jackson.databind.MapperFeature.USE_BASE_TYPE_AS_DEFAULT_IMPL
            boolean r0 = r0.isEnabled(r1)
            if (r0 == 0) goto L1d
            r0 = r6
            boolean r0 = r0.isAbstract()
            if (r0 != 0) goto L1d
            goto L63
        L1d:
            r0 = 0
            r6 = r0
            goto L63
        L22:
            r0 = r7
            java.lang.Class<java.lang.Void> r1 = java.lang.Void.class
            if (r0 == r1) goto L57
            r0 = r7
            java.lang.Class<com.fasterxml.jackson.databind.annotation.NoClass> r1 = com.fasterxml.jackson.databind.annotation.NoClass.class
            if (r0 != r1) goto L31
            goto L57
        L31:
            r0 = r6
            r1 = r7
            boolean r0 = r0.hasRawClass(r1)
            if (r0 == 0) goto L3c
            goto L63
        L3c:
            r0 = r6
            r1 = r4
            java.lang.Class<?> r1 = r1._defaultImpl
            boolean r0 = r0.isTypeOrSuperTypeOf(r1)
            if (r0 == 0) goto L1d
            r0 = r5
            com.fasterxml.jackson.databind.type.TypeFactory r0 = r0.getTypeFactory()
            r1 = r6
            r2 = r4
            java.lang.Class<?> r2 = r2._defaultImpl
            com.fasterxml.jackson.databind.JavaType r0 = r0.constructSpecializedType(r1, r2)
            r6 = r0
            goto L63
        L57:
            r0 = r5
            com.fasterxml.jackson.databind.type.TypeFactory r0 = r0.getTypeFactory()
            r1 = r4
            java.lang.Class<?> r1 = r1._defaultImpl
            com.fasterxml.jackson.databind.JavaType r0 = r0.constructType(r1)
            r6 = r0
        L63:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder.defineDefaultImpl(com.fasterxml.jackson.databind.DeserializationConfig, com.fasterxml.jackson.databind.JavaType):com.fasterxml.jackson.databind.JavaType");
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder
    public Class<?> getDefaultImpl() {
        return this._defaultImpl;
    }

    public String getTypeProperty() {
        return this._typeProperty;
    }

    protected TypeIdResolver idResolver(MapperConfig<?> mapperConfig, JavaType javaType, PolymorphicTypeValidator polymorphicTypeValidator, Collection<NamedType> collection, boolean z, boolean z2) {
        TypeIdResolver typeIdResolver = this._customIdResolver;
        if (typeIdResolver != null) {
            return typeIdResolver;
        }
        if (this._idType == null) {
            throw new IllegalStateException("Cannot build, 'init()' not yet called");
        }
        int i = C105521.$SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id[this._idType.ordinal()];
        if (i == 1 || i == 2) {
            return ClassNameIdResolver.construct(javaType, mapperConfig, polymorphicTypeValidator);
        }
        if (i == 3) {
            return MinimalClassNameIdResolver.construct(javaType, mapperConfig, polymorphicTypeValidator);
        }
        if (i == 4) {
            return TypeNameIdResolver.construct(mapperConfig, javaType, collection, z, z2);
        }
        if (i == 5) {
            return null;
        }
        throw new IllegalStateException("Do not know how to construct standard type id resolver for idType: " + this._idType);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder
    public StdTypeResolverBuilder inclusion(JsonTypeInfo.EnumC10517As enumC10517As) {
        if (enumC10517As != null) {
            this._includeAs = enumC10517As;
            return this;
        }
        throw new IllegalArgumentException("includeAs cannot be null");
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder
    public StdTypeResolverBuilder init(JsonTypeInfo.EnumC10518Id enumC10518Id, TypeIdResolver typeIdResolver) {
        if (enumC10518Id != null) {
            this._idType = enumC10518Id;
            this._customIdResolver = typeIdResolver;
            this._typeProperty = enumC10518Id.getDefaultPropertyName();
            return this;
        }
        throw new IllegalArgumentException("idType cannot be null");
    }

    public boolean isTypeIdVisible() {
        return this._typeIdVisible;
    }

    protected PolymorphicTypeValidator reportInvalidBaseType(MapperConfig<?> mapperConfig, JavaType javaType, PolymorphicTypeValidator polymorphicTypeValidator) {
        throw new IllegalArgumentException(String.format("Configured `PolymorphicTypeValidator` (of type %s) denied resolution of all subtypes of base type %s", ClassUtil.classNameOf(polymorphicTypeValidator), ClassUtil.classNameOf(javaType.getRawClass())));
    }

    public PolymorphicTypeValidator subTypeValidator(MapperConfig<?> mapperConfig) {
        return mapperConfig.getPolymorphicTypeValidator();
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder
    public StdTypeResolverBuilder typeIdVisibility(boolean z) {
        this._typeIdVisible = z;
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000a, code lost:
        if (r4.isEmpty() != false) goto L6;
     */
    @Override // com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder typeProperty(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r4
            if (r0 == 0) goto Ld
            r0 = r4
            r5 = r0
            r0 = r4
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L15
        Ld:
            r0 = r3
            com.fasterxml.jackson.annotation.JsonTypeInfo$Id r0 = r0._idType
            java.lang.String r0 = r0.getDefaultPropertyName()
            r5 = r0
        L15:
            r0 = r3
            r1 = r5
            r0._typeProperty = r1
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder.typeProperty(java.lang.String):com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder");
    }

    protected PolymorphicTypeValidator verifyBaseTypeValidity(MapperConfig<?> mapperConfig, JavaType javaType) {
        PolymorphicTypeValidator subTypeValidator = subTypeValidator(mapperConfig);
        if (this._idType == JsonTypeInfo.EnumC10518Id.CLASS || this._idType == JsonTypeInfo.EnumC10518Id.MINIMAL_CLASS) {
            PolymorphicTypeValidator.Validity validateBaseType = subTypeValidator.validateBaseType(mapperConfig, javaType);
            if (validateBaseType == PolymorphicTypeValidator.Validity.DENIED) {
                return reportInvalidBaseType(mapperConfig, javaType, subTypeValidator);
            }
            if (validateBaseType == PolymorphicTypeValidator.Validity.ALLOWED) {
                return LaissezFaireSubTypeValidator.instance;
            }
        }
        return subTypeValidator;
    }
}
