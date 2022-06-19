.class public final Lkotlinx/serialization/json/internal/PolymorphicKt;
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
        "\u0000F\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a*\u0010\u0004\u001a\u00020\u00012\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010\t\u001a\u00020\nH\u0002\u001a%\u0010\u000b\u001a\u0002H\u000c\"\u0004\u0008\u0000\u0010\u000c*\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u000fH\u0000\u00a2\u0006\u0002\u0010\u0010\u001a<\u0010\u0011\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u000c*\u00020\u00122\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u00132\u0006\u0010\u0014\u001a\u0002H\u000c2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0016H\u0080\u0008\u00a2\u0006\u0002\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "checkKind",
        "",
        "kind",
        "Lkotlinx/serialization/SerialKind;",
        "validateIfSealed",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
        "actualSerializer",
        "",
        "classDiscriminator",
        "",
        "decodeSerializableValuePolymorphic",
        "T",
        "Lkotlinx/serialization/json/JsonInput;",
        "deserializer",
        "Lkotlinx/serialization/DeserializationStrategy;",
        "(Lkotlinx/serialization/json/JsonInput;Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;",
        "encodePolymorphically",
        "Lkotlinx/serialization/json/JsonOutput;",
        "Lkotlinx/serialization/SerializationStrategy;",
        "value",
        "ifPolymorphic",
        "Lkotlin/Function0;",
        "(Lkotlinx/serialization/json/JsonOutput;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V",
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
.method public static final synthetic access$validateIfSealed(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/json/internal/PolymorphicKt;->validateIfSealed(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;Ljava/lang/String;)V

    return-void
.end method

.method public static final checkKind(Lkotlinx/serialization/p;)V
    .locals 1

    const-string v0, "kind"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    instance-of v0, p0, Lkotlinx/serialization/u$c;

    if-nez v0, :cond_2

    .line 46
    instance-of v0, p0, Lkotlinx/serialization/j;

    if-nez v0, :cond_1

    .line 47
    instance-of p0, p0, Lkotlinx/serialization/h;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Actual serializer for polymorphic cannot be polymorphic itself"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Primitives cannot be serialized polymorphically with \'type\' parameter. You can use \'JsonConfiguration.useArrayPolymorphism\' instead"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 45
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Enums cannot be serialized polymorphically with \'type\' parameter. You can use \'JsonConfiguration.useArrayPolymorphism\' instead"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public static final decodeSerializableValuePolymorphic(Lkotlinx/serialization/json/JsonInput;Lkotlinx/serialization/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/JsonInput;",
            "Lkotlinx/serialization/d<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "$this$decodeSerializableValuePolymorphic"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    instance-of v0, p1, Lkotlinx/serialization/b/b;

    if-eqz v0, :cond_4

    invoke-interface {p0}, Lkotlinx/serialization/json/JsonInput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    iget-object v0, v0, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getUseArrayPolymorphism$kotlinx_serialization_runtime()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 55
    :cond_0
    invoke-interface {p0}, Lkotlinx/serialization/json/JsonInput;->decodeJson()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    .line 63
    instance-of v1, v0, Lkotlinx/serialization/json/JsonObject;

    if-eqz v1, :cond_3

    .line 55
    check-cast v0, Lkotlinx/serialization/json/JsonObject;

    .line 56
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    invoke-interface {p0}, Lkotlinx/serialization/json/JsonInput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v2

    iget-object v2, v2, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonConfiguration;->getClassDiscriminator$kotlinx_serialization_runtime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/a/ai;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementsKt;->getContent(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonObject;->getContent()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/ah;->e(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p0}, Lkotlinx/serialization/json/JsonInput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v3

    iget-object v3, v3, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v3}, Lkotlinx/serialization/json/JsonConfiguration;->getClassDiscriminator$kotlinx_serialization_runtime()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    check-cast p1, Lkotlinx/serialization/b/b;

    move-object v2, p0

    check-cast v2, Lkotlinx/serialization/a;

    invoke-virtual {p1, v2, v1}, Lkotlinx/serialization/b/b;->a(Lkotlinx/serialization/a;Ljava/lang/String;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 59
    invoke-interface {p0}, Lkotlinx/serialization/json/JsonInput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    check-cast p1, Lkotlinx/serialization/d;

    invoke-static {p0, v0, p1}, Lkotlinx/serialization/json/internal/TreeJsonInputKt;->readJson(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;Lkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 65
    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.collections.MutableMap<kotlin.String, kotlinx.serialization.json.JsonElement>"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Expected "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p1, Lkotlinx/serialization/json/JsonObject;

    invoke-static {p1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but found "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 52
    :cond_4
    :goto_0
    check-cast p0, Lkotlinx/serialization/Decoder;

    invoke-interface {p1, p0}, Lkotlinx/serialization/d;->deserialize(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final encodePolymorphically(Lkotlinx/serialization/json/JsonOutput;Lkotlinx/serialization/r;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/JsonOutput;",
            "Lkotlinx/serialization/r<",
            "-TT;>;TT;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$encodePolymorphically"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ifPolymorphic"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    instance-of v0, p1, Lkotlinx/serialization/b/b;

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lkotlinx/serialization/json/JsonOutput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    iget-object v0, v0, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getUseArrayPolymorphism$kotlinx_serialization_runtime()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    move-object v0, p1

    check-cast v0, Lkotlinx/serialization/b/b;

    move-object v1, p0

    check-cast v1, Lkotlinx/serialization/Encoder;

    if-eqz p2, :cond_2

    invoke-virtual {v0, v1, p2}, Lkotlinx/serialization/b/b;->a(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 19
    check-cast p1, Lkotlinx/serialization/KSerializer;

    invoke-interface {p0}, Lkotlinx/serialization/json/JsonOutput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p0

    iget-object p0, p0, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonConfiguration;->getClassDiscriminator$kotlinx_serialization_runtime()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/json/internal/PolymorphicKt;->access$validateIfSealed(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;Ljava/lang/String;)V

    .line 20
    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/SerialDescriptor;->b()Lkotlinx/serialization/p;

    move-result-object p0

    .line 21
    invoke-static {p0}, Lkotlinx/serialization/json/internal/PolymorphicKt;->checkKind(Lkotlinx/serialization/p;)V

    .line 22
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 23
    invoke-interface {v0, v1, p2}, Lkotlinx/serialization/KSerializer;->serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V

    return-void

    .line 62
    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.Any"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_3
    :goto_0
    check-cast p0, Lkotlinx/serialization/Encoder;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/r;->serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V

    return-void
.end method

.method private static final validateIfSealed(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/KSerializer<",
            "*>;",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 31
    instance-of v0, p0, Lkotlinx/serialization/k;

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/b/bp;->a(Lkotlinx/serialization/SerialDescriptor;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 33
    :cond_1
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/SerialDescriptor;->a()Ljava/lang/String;

    move-result-object p0

    .line 34
    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/SerialDescriptor;->a()Ljava/lang/String;

    move-result-object p1

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sealed class \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' cannot be serialized as base class \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' because it has property name that conflicts with JSON class discriminator \'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'. You can either change class discriminator in JsonConfiguration, rename property with @SerialName annotation or fall back to array polymorphism"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 35
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
