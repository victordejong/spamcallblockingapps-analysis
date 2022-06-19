.class public final Lkotlinx/serialization/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0011\u0010\u0005\u001a\u00020\u0004\"\u0006\u0008\u0000\u0010\u0006\u0018\u0001H\u0087\u0008\u00a8\u0006\u0007"
    }
    d2 = {
        "serializerByTypeToken",
        "Lkotlinx/serialization/KSerializer;",
        "",
        "type",
        "Ljava/lang/reflect/Type;",
        "typeTokenOf",
        "T",
        "kotlinx-serialization-runtime"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final a(Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    :goto_0
    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    const-string v1, "null cannot be cast to non-null type java.lang.Class<*>"

    const-string v2, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>"

    if-eqz v0, :cond_5

    .line 41
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 43
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "it.upperBounds"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/a/i;->c([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    :cond_0
    const-string v0, "eType"

    .line 47
    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlinx/serialization/f;->a(Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    .line 49
    instance-of v3, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_2

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lkotlin/jvm/a;->a(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 50
    :cond_2
    instance-of v1, p0, Lkotlin/reflect/c;

    if-eqz v1, :cond_4

    check-cast p0, Lkotlin/reflect/c;

    :goto_1
    if-eqz p0, :cond_3

    .line 53
    invoke-static {p0, v0}, Lkotlinx/serialization/a/e;->a(Lkotlin/reflect/c;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    .line 48
    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported type in GenericArray: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 55
    :cond_5
    instance-of v0, p0, Ljava/lang/Class;

    const-string v3, "Required value was null."

    if-eqz v0, :cond_a

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_8

    .line 56
    invoke-static {p0}, Lkotlin/jvm/a;->a(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-static {p0}, Lkotlinx/serialization/g;->a(Lkotlin/reflect/c;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    if-eqz p0, :cond_6

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_7
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "type.componentType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-static {v0}, Lkotlinx/serialization/f;->a(Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    .line 60
    invoke-static {p0}, Lkotlin/jvm/a;->a(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-static {p0, v0}, Lkotlinx/serialization/a/e;->a(Lkotlin/reflect/c;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_a
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_17

    .line 64
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_16

    check-cast v0, Ljava/lang/Class;

    .line 65
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 67
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v4, "args[0]"

    const/4 v5, 0x0

    if-eqz v1, :cond_b

    aget-object p0, p0, v5

    invoke-static {p0, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlinx/serialization/f;->a(Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/serialization/a/d;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    .line 68
    :cond_b
    const-class v1, Ljava/util/Set;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    aget-object p0, p0, v5

    invoke-static {p0, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlinx/serialization/f;->a(Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/serialization/a/d;->b(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    .line 69
    :cond_c
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v6, "args[1]"

    const/4 v7, 0x1

    if-eqz v1, :cond_d

    .line 70
    aget-object v0, p0, v5

    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlinx/serialization/f;->a(Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    .line 71
    aget-object p0, p0, v7

    invoke-static {p0, v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlinx/serialization/f;->a(Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    .line 69
    invoke-static {v0, p0}, Lkotlinx/serialization/a/d;->a(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    .line 73
    :cond_d
    const-class v1, Ljava/util/Map$Entry;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 74
    aget-object v0, p0, v5

    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlinx/serialization/f;->a(Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    .line 75
    aget-object p0, p0, v7

    invoke-static {p0, v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlinx/serialization/f;->a(Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    .line 73
    invoke-static {v0, p0}, Lkotlinx/serialization/a/c;->a(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :cond_e
    const-string v1, "args"

    .line 81
    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    array-length v4, p0

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 92
    array-length v4, p0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_10

    aget-object v7, p0, v6

    const-string v8, "it"

    .line 81
    invoke-static {v7, v8}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v7}, Lkotlinx/serialization/f;->a(Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_f

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_f
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<kotlin.Any?>"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :cond_10
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    new-array p0, v5, [Lkotlinx/serialization/KSerializer;

    .line 96
    invoke-interface {v1, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 81
    check-cast p0, [Lkotlinx/serialization/KSerializer;

    .line 82
    invoke-static {v0}, Lkotlin/jvm/a;->a(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    array-length v4, p0

    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkotlinx/serialization/KSerializer;

    invoke-static {v1, p0}, Lkotlinx/serialization/q;->a(Lkotlin/reflect/c;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    instance-of v1, p0, Lkotlinx/serialization/KSerializer;

    if-nez v1, :cond_11

    const/4 p0, 0x0

    :cond_11
    if-nez p0, :cond_14

    .line 83
    invoke-static {v0}, Lkotlin/jvm/a;->a(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-static {p0}, Lkotlinx/serialization/g;->a(Lkotlin/reflect/c;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    if-eqz p0, :cond_12

    goto :goto_3

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_13
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    :goto_3
    return-object p0

    .line 96
    :cond_15
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 64
    :cond_16
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 87
    :cond_17
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_18

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "type.upperBounds"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/a/i;->c([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "type.upperBounds.first()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/reflect/Type;

    goto/16 :goto_0

    .line 88
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "typeToken should be an instance of Class<?>, GenericArray, ParametrizedType or WildcardType, but actual type is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :catchall_0
    move-exception p0

    .line 81
    throw p0
.end method
