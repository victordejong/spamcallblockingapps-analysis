.class public abstract Lkotlinx/serialization/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0007\u0008\u0000\u00a2\u0006\u0002\u0010\u0004J\u0015\u0010\t\u001a\u00028\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0002\u00a2\u0006\u0002\u0010\u000cJ\u0013\u0010\r\u001a\u00028\u00002\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J \u0010\u0011\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u00032\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J%\u0010\u0011\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u00032\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0017J\u001b\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u001aR\u0018\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u001b"
    }
    d2 = {
        "Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;",
        "T",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "()V",
        "baseClass",
        "Lkotlin/reflect/KClass;",
        "getBaseClass",
        "()Lkotlin/reflect/KClass;",
        "decodeSequentially",
        "compositeDecoder",
        "Lkotlinx/serialization/CompositeDecoder;",
        "(Lkotlinx/serialization/CompositeDecoder;)Ljava/lang/Object;",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/Decoder;",
        "(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;",
        "findPolymorphicSerializer",
        "klassName",
        "",
        "encoder",
        "Lkotlinx/serialization/Encoder;",
        "value",
        "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;",
        "serialize",
        "",
        "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V",
        "kotlinx-serialization-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lkotlin/reflect/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/c<",
            "TT;>;"
        }
    .end annotation
.end method

.method public a(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/Encoder;",
            "TT;)",
            "Lkotlinx/serialization/KSerializer<",
            "+TT;>;"
        }
    .end annotation

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-interface {p1}, Lkotlinx/serialization/Encoder;->getContext()Lkotlinx/serialization/modules/b;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/serialization/b/b;->a()Lkotlin/reflect/c;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lkotlinx/serialization/modules/b;->a(Lkotlin/reflect/c;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/serialization/b/b;->a()Lkotlin/reflect/c;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlinx/serialization/b/c;->a(Lkotlin/reflect/c;Lkotlin/reflect/c;)Ljava/lang/Void;

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Lkotlinx/serialization/a;Ljava/lang/String;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/a;",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "+TT;>;"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "klassName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-interface {p1}, Lkotlinx/serialization/a;->getContext()Lkotlinx/serialization/modules/b;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/serialization/b/b;->a()Lkotlin/reflect/c;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lkotlinx/serialization/modules/b;->a(Lkotlin/reflect/c;Ljava/lang/String;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 84
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/b/b;->a()Lkotlin/reflect/c;

    move-result-object p1

    .line 2001
    invoke-static {p2, p1}, Lkotlinx/serialization/b/c;->a(Ljava/lang/String;Lkotlin/reflect/c;)Ljava/lang/Void;

    const/4 p1, 0x0

    .line 84
    throw p1
.end method

.method public final deserialize(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/Decoder;",
            ")TT;"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lkotlinx/serialization/b/b;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lkotlinx/serialization/KSerializer;

    .line 110
    invoke-interface {p1, v0, v2}, Lkotlinx/serialization/Decoder;->beginStructure(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/a;

    move-result-object p1

    .line 39
    invoke-interface {p1}, Lkotlinx/serialization/a;->decodeSequentially()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1068
    invoke-virtual {p0}, Lkotlinx/serialization/b/b;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Lkotlinx/serialization/a;->decodeStringElement(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v1

    .line 1069
    invoke-virtual {p0, p1, v1}, Lkotlinx/serialization/b/b;->a(Lkotlinx/serialization/a;Ljava/lang/String;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    .line 1070
    invoke-virtual {p0}, Lkotlinx/serialization/b/b;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v2

    check-cast v1, Lkotlinx/serialization/d;

    invoke-interface {p1, v2, v3, v1}, Lkotlinx/serialization/a;->decodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object v1

    .line 1071
    invoke-virtual {p0}, Lkotlinx/serialization/b/b;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v2

    invoke-interface {p1, v2}, Lkotlinx/serialization/a;->endStructure(Lkotlinx/serialization/SerialDescriptor;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    move-object v4, v2

    .line 44
    :goto_0
    invoke-virtual {p0}, Lkotlinx/serialization/b/b;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v5

    invoke-interface {p1, v5}, Lkotlinx/serialization/a;->decodeElementIndex(Lkotlinx/serialization/SerialDescriptor;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    if-nez v5, :cond_1

    .line 49
    invoke-virtual {p0}, Lkotlinx/serialization/b/b;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v4

    invoke-interface {p1, v4, v5}, Lkotlinx/serialization/a;->decodeStringElement(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    if-ne v5, v3, :cond_3

    if-eqz v4, :cond_2

    .line 53
    invoke-virtual {p0, p1, v4}, Lkotlinx/serialization/b/b;->a(Lkotlinx/serialization/a;Ljava/lang/String;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    .line 54
    invoke-virtual {p0}, Lkotlinx/serialization/b/b;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v6

    check-cast v2, Lkotlinx/serialization/d;

    invoke-interface {p1, v6, v5, v2}, Lkotlinx/serialization/a;->decodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot read polymorphic value before its type token"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 56
    :cond_3
    new-instance p1, Lkotlinx/serialization/SerializationException;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid index in polymorphic deserialization of "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v4, :cond_4

    const-string v4, "unknown class"

    .line 58
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n Expected 0, 1 or READ_DONE(-1), but found "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 56
    invoke-direct {p1, v0, v1, v2, v1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_5
    if-eqz v2, :cond_6

    move-object v1, v2

    .line 112
    :goto_1
    invoke-interface {p1, v0}, Lkotlinx/serialization/a;->endStructure(Lkotlinx/serialization/SerialDescriptor;)V

    return-object v1

    .line 64
    :cond_6
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Polymorphic value has not been read for class "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public patch(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/Decoder;",
            "TT;)TT;"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "old"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p0, p1}, Lkotlinx/serialization/KSerializer$a;->a(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/Decoder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/Encoder;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/b;->a(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lkotlinx/serialization/b/b;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lkotlinx/serialization/KSerializer;

    .line 105
    invoke-interface {p1, v1, v3}, Lkotlinx/serialization/Encoder;->beginStructure(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;

    move-result-object p1

    .line 31
    invoke-virtual {p0}, Lkotlinx/serialization/b/b;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v3

    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/serialization/SerialDescriptor;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v2, v4}, Lkotlinx/serialization/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/SerialDescriptor;ILjava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lkotlinx/serialization/b/b;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v2

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    .line 107
    check-cast v0, Lkotlinx/serialization/r;

    .line 32
    invoke-interface {p1, v2, v3, v0, p2}, Lkotlinx/serialization/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    .line 108
    invoke-interface {p1, v1}, Lkotlinx/serialization/CompositeEncoder;->endStructure(Lkotlinx/serialization/SerialDescriptor;)V

    return-void

    .line 107
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
