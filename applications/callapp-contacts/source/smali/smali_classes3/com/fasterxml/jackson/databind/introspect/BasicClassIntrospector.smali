.class public Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;
.super Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final BOOLEAN_DESC:Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

.field private static final CLS_JSON_NODE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLS_OBJECT:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLS_STRING:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected static final INT_DESC:Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

.field protected static final LONG_DESC:Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

.field protected static final OBJECT_DESC:Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

.field protected static final STRING_DESC:Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 17
    const-class v0, Ljava/lang/Object;

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->CLS_OBJECT:Ljava/lang/Class;

    .line 18
    const-class v1, Ljava/lang/String;

    sput-object v1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->CLS_STRING:Ljava/lang/Class;

    .line 19
    const-class v2, Lcom/fasterxml/jackson/databind/JsonNode;

    sput-object v2, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->CLS_JSON_NODE:Ljava/lang/Class;

    .line 31
    const-class v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v2

    .line 32
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->createPrimordial(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v1

    const/4 v3, 0x0

    .line 31
    invoke-static {v3, v2, v1}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->forOtherUse(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v1

    sput-object v1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->STRING_DESC:Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    .line 36
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 37
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->createPrimordial(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v2

    .line 36
    invoke-static {v3, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->forOtherUse(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v1

    sput-object v1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->BOOLEAN_DESC:Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    .line 41
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 42
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->createPrimordial(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v2

    .line 41
    invoke-static {v3, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->forOtherUse(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v1

    sput-object v1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->INT_DESC:Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    .line 46
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 47
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->createPrimordial(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v2

    .line 46
    invoke-static {v3, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->forOtherUse(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v1

    sput-object v1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->LONG_DESC:Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    .line 51
    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v1

    .line 52
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->createPrimordial(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    .line 51
    invoke-static {v3, v1, v0}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->forOtherUse(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->OBJECT_DESC:Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;-><init>()V

    return-void
.end method


# virtual methods
.method protected _findStdJdkCollectionDesc(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;"
        }
    .end annotation

    .line 305
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_isStdJDKCollection(Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0, p1, p2, p1}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_resolveAnnotatedClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    .line 306
    invoke-static {p1, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->forOtherUse(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected _findStdTypeDesc(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;"
        }
    .end annotation

    .line 247
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    .line 250
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->INT_DESC:Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    return-object p1

    .line 252
    :cond_0
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_1

    .line 253
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->LONG_DESC:Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    return-object p1

    .line 255
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_8

    .line 256
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->BOOLEAN_DESC:Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    return-object p1

    .line 258
    :cond_2
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJDKClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 259
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->CLS_OBJECT:Ljava/lang/Class;

    if-ne v0, p1, :cond_3

    .line 260
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->OBJECT_DESC:Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    return-object p1

    .line 262
    :cond_3
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->CLS_STRING:Ljava/lang/Class;

    if-ne v0, p1, :cond_4

    .line 263
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->STRING_DESC:Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    return-object p1

    .line 265
    :cond_4
    const-class p1, Ljava/lang/Integer;

    if-ne v0, p1, :cond_5

    .line 266
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->INT_DESC:Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    return-object p1

    .line 268
    :cond_5
    const-class p1, Ljava/lang/Long;

    if-ne v0, p1, :cond_6

    .line 269
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->LONG_DESC:Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    return-object p1

    .line 271
    :cond_6
    const-class p1, Ljava/lang/Boolean;

    if-ne v0, p1, :cond_8

    .line 272
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->BOOLEAN_DESC:Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    return-object p1

    .line 274
    :cond_7
    sget-object v1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->CLS_JSON_NODE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 276
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->createPrimordial(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    .line 275
    invoke-static {p1, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->forOtherUse(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object p1

    return-object p1

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method

.method protected _isStdJDKCollection(Lcom/fasterxml/jackson/databind/JavaType;)Z
    .locals 2

    .line 288
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    .line 292
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJDKClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/util/Map;

    .line 296
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method protected _resolveAnnotatedClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;"
        }
    .end annotation

    .line 317
    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->resolve(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object p1

    return-object p1
.end method

.method protected collectProperties(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Z)Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;"
        }
    .end annotation

    .line 183
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_resolveAnnotatedClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v2

    .line 184
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isRecordType()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 185
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAccessorNaming()Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;

    move-result-object p3

    invoke-virtual {p3, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;->forRecord(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;

    move-result-object p3

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAccessorNaming()Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;

    move-result-object p3

    invoke-virtual {p3, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;->forPOJO(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;

    move-result-object p3

    :goto_0
    move-object v5, p3

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p4

    .line 187
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->constructPropertyCollector(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;

    move-result-object p1

    return-object p1
.end method

.method protected collectPropertiesWithBuilder(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;"
        }
    .end annotation

    .line 207
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_resolveAnnotatedClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v2

    .line 208
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAccessorNaming()Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;

    move-result-object p3

    .line 209
    invoke-virtual {p3, p1, v2, p4}, Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;->forBuilder(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p5

    .line 210
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->constructPropertyCollector(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;

    move-result-object p1

    return-object p1
.end method

.method protected constructPropertyCollector(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;"
        }
    .end annotation

    .line 230
    new-instance v6, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;

    move-object v0, v6

    move-object v1, p1

    move v2, p4

    move-object v3, p3

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;ZLcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;)V

    return-object v6
.end method

.method public copy()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
    .locals 1

    .line 66
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;-><init>()V

    return-object v0
.end method

.method public bridge synthetic forClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->forClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object p1

    return-object p1
.end method

.method public forClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;"
        }
    .end annotation

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_findStdTypeDesc(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_resolveAnnotatedClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object p3

    .line 153
    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->forOtherUse(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic forCreation(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->forCreation(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object p1

    return-object p1
.end method

.method public forCreation(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;
    .locals 1

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_findStdTypeDesc(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_findStdJdkCollectionDesc(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->collectProperties(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Z)Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;

    move-result-object p1

    .line 140
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->forDeserialization(Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic forDeserialization(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->forDeserialization(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object p1

    return-object p1
.end method

.method public forDeserialization(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;
    .locals 1

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_findStdTypeDesc(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_findStdJdkCollectionDesc(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->collectProperties(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Z)Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;

    move-result-object p1

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->forDeserialization(Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic forDeserializationWithBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/BeanDescription;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->forDeserializationWithBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object p1

    return-object p1
.end method

.method public forDeserializationWithBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 116
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->collectPropertiesWithBuilder(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;

    move-result-object p1

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->forDeserialization(Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic forSerialization(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->forSerialization(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object p1

    return-object p1
.end method

.method public forSerialization(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;
    .locals 1

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_findStdTypeDesc(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_findStdJdkCollectionDesc(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->collectProperties(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Z)Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;

    move-result-object p1

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->forSerialization(Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    :cond_0
    return-object v0
.end method
