package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.util.Collection;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder.class */
public class StdTypeResolverBuilder implements TypeResolverBuilder<StdTypeResolverBuilder> {
    public TypeIdResolver _customIdResolver;
    public Class<?> _defaultImpl;
    public JsonTypeInfo.EnumC2724Id _idType;
    public JsonTypeInfo.EnumC2723As _includeAs;
    public boolean _typeIdVisible = false;
    public String _typeProperty;

    /* renamed from: com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder$1 */
    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder$1.class */
    public static /* synthetic */ class C27421 {
        public static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As;
        public static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id = new int[JsonTypeInfo.EnumC2724Id.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0081 -> B:46:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0085 -> B:40:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0089 -> B:36:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x008d -> B:50:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0091 -> B:12:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0095 -> B:38:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0099 -> B:34:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x009d -> B:48:0x006a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a1 -> B:42:0x0075). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id[JsonTypeInfo.EnumC2724Id.CLASS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id[JsonTypeInfo.EnumC2724Id.MINIMAL_CLASS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id[JsonTypeInfo.EnumC2724Id.NAME.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id[JsonTypeInfo.EnumC2724Id.NONE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id[JsonTypeInfo.EnumC2724Id.CUSTOM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As = new int[JsonTypeInfo.EnumC2723As.values().length];
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[JsonTypeInfo.EnumC2723As.WRAPPER_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[JsonTypeInfo.EnumC2723As.PROPERTY.ordinal()] = 2;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[JsonTypeInfo.EnumC2723As.WRAPPER_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[JsonTypeInfo.EnumC2723As.EXTERNAL_PROPERTY.ordinal()] = 4;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[JsonTypeInfo.EnumC2723As.EXISTING_PROPERTY.ordinal()] = 5;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    public static StdTypeResolverBuilder noTypeInfoBuilder() {
        StdTypeResolverBuilder stdTypeResolverBuilder = new StdTypeResolverBuilder();
        stdTypeResolverBuilder.init2(JsonTypeInfo.EnumC2724Id.NONE, (TypeIdResolver) null);
        return stdTypeResolverBuilder;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder
    public TypeDeserializer buildTypeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType, Collection<NamedType> collection) {
        if (this._idType == JsonTypeInfo.EnumC2724Id.NONE) {
            return null;
        }
        TypeIdResolver idResolver = idResolver(deserializationConfig, javaType, collection, false, true);
        int i = C27421.$SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[this._includeAs.ordinal()];
        if (i == 1) {
            return new AsArrayTypeDeserializer(javaType, idResolver, this._typeProperty, this._typeIdVisible, this._defaultImpl);
        }
        if (i != 2) {
            if (i == 3) {
                return new AsWrapperTypeDeserializer(javaType, idResolver, this._typeProperty, this._typeIdVisible, this._defaultImpl);
            }
            if (i == 4) {
                return new AsExternalTypeDeserializer(javaType, idResolver, this._typeProperty, this._typeIdVisible, this._defaultImpl);
            }
            if (i != 5) {
                throw new IllegalStateException("Do not know how to construct standard type serializer for inclusion type: " + this._includeAs);
            }
        }
        return new AsPropertyTypeDeserializer(javaType, idResolver, this._typeProperty, this._typeIdVisible, this._defaultImpl, this._includeAs);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder
    public TypeSerializer buildTypeSerializer(SerializationConfig serializationConfig, JavaType javaType, Collection<NamedType> collection) {
        if (this._idType == JsonTypeInfo.EnumC2724Id.NONE) {
            return null;
        }
        TypeIdResolver idResolver = idResolver(serializationConfig, javaType, collection, true, false);
        int i = C27421.$SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[this._includeAs.ordinal()];
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
    /* renamed from: defaultImpl  reason: avoid collision after fix types in other method */
    public StdTypeResolverBuilder defaultImpl2(Class<?> cls) {
        this._defaultImpl = cls;
        return this;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder
    public Class<?> getDefaultImpl() {
        return this._defaultImpl;
    }

    public TypeIdResolver idResolver(MapperConfig<?> mapperConfig, JavaType javaType, Collection<NamedType> collection, boolean z, boolean z2) {
        TypeIdResolver typeIdResolver = this._customIdResolver;
        if (typeIdResolver != null) {
            return typeIdResolver;
        }
        JsonTypeInfo.EnumC2724Id id = this._idType;
        if (id != null) {
            int i = C27421.$SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id[id.ordinal()];
            if (i == 1) {
                return new ClassNameIdResolver(javaType, mapperConfig.getTypeFactory());
            }
            if (i == 2) {
                return new MinimalClassNameIdResolver(javaType, mapperConfig.getTypeFactory());
            }
            if (i == 3) {
                return TypeNameIdResolver.construct(mapperConfig, javaType, collection, z, z2);
            }
            if (i == 4) {
                return null;
            }
            throw new IllegalStateException("Do not know how to construct standard type id resolver for idType: " + this._idType);
        }
        throw new IllegalStateException("Can not build, 'init()' not yet called");
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder
    /* renamed from: inclusion  reason: avoid collision after fix types in other method */
    public StdTypeResolverBuilder inclusion2(JsonTypeInfo.EnumC2723As as) {
        if (as != null) {
            this._includeAs = as;
            return this;
        }
        throw new IllegalArgumentException("includeAs can not be null");
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder
    /* renamed from: init  reason: avoid collision after fix types in other method */
    public StdTypeResolverBuilder init2(JsonTypeInfo.EnumC2724Id id, TypeIdResolver typeIdResolver) {
        if (id != null) {
            this._idType = id;
            this._customIdResolver = typeIdResolver;
            this._typeProperty = id.getDefaultPropertyName();
            return this;
        }
        throw new IllegalArgumentException("idType can not be null");
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder
    /* renamed from: typeIdVisibility  reason: avoid collision after fix types in other method */
    public StdTypeResolverBuilder typeIdVisibility2(boolean z) {
        this._typeIdVisible = z;
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000a, code lost:
        if (r4.length() == 0) goto L_0x000d;
     */
    @Override // com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder
    /* renamed from: typeProperty  reason: avoid collision after fix types in other method */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder typeProperty2(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r4
            if (r0 == 0) goto L_0x000d
            r0 = r4
            r5 = r0
            r0 = r4
            int r0 = r0.length()
            if (r0 != 0) goto L_0x0015
        L_0x000d:
            r0 = r3
            com.fasterxml.jackson.annotation.JsonTypeInfo$Id r0 = r0._idType
            java.lang.String r0 = r0.getDefaultPropertyName()
            r5 = r0
        L_0x0015:
            r0 = r3
            r1 = r5
            r0._typeProperty = r1
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder.typeProperty2(java.lang.String):com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder");
    }
}
