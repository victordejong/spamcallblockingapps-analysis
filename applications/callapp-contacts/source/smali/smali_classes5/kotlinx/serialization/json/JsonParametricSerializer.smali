.class public abstract Lkotlinx/serialization/json/JsonParametricSerializer;
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
        "\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0013\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010\u000b\u001a\u00028\u00002\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0018\u0010\u000f\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u00032\u0006\u0010\u0010\u001a\u00020\u0011H$J\u001b\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0017R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlinx/serialization/json/JsonParametricSerializer;",
        "T",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "baseClass",
        "Lkotlin/reflect/KClass;",
        "(Lkotlin/reflect/KClass;)V",
        "descriptor",
        "Lkotlinx/serialization/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/SerialDescriptor;",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/Decoder;",
        "(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;",
        "selectSerializer",
        "element",
        "Lkotlinx/serialization/json/JsonElement;",
        "serialize",
        "",
        "encoder",
        "Lkotlinx/serialization/Encoder;",
        "value",
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


# instance fields
.field private final baseClass:Lkotlin/reflect/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final descriptor:Lkotlinx/serialization/SerialDescriptor;


# direct methods
.method public constructor <init>(Lkotlin/reflect/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/c<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "baseClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/JsonParametricSerializer;->baseClass:Lkotlin/reflect/c;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonParametricSerializer<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/q;->b(Lkotlin/reflect/c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lkotlinx/serialization/h$a;->a:Lkotlinx/serialization/h$a;

    check-cast v0, Lkotlinx/serialization/p;

    invoke-static {p1, v0}, Lkotlinx/serialization/m;->a(Ljava/lang/String;Lkotlinx/serialization/p;)Lkotlinx/serialization/SerialDescriptor;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/JsonParametricSerializer;->descriptor:Lkotlinx/serialization/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public final deserialize(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/Decoder;",
            ")TT;"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementSerializerKt;->asJsonInput(Lkotlinx/serialization/Decoder;)Lkotlinx/serialization/json/JsonInput;

    move-result-object p1

    .line 88
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonInput;->decodeJson()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    .line 91
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonParametricSerializer;->selectSerializer(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonInput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p1

    check-cast v1, Lkotlinx/serialization/d;

    invoke-virtual {p1, v1, v0}, Lkotlinx/serialization/json/Json;->fromJson(Lkotlinx/serialization/d;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 91
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDescriptor()Lkotlinx/serialization/SerialDescriptor;
    .locals 1

    .line 73
    iget-object v0, p0, Lkotlinx/serialization/json/JsonParametricSerializer;->descriptor:Lkotlinx/serialization/SerialDescriptor;

    return-object v0
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

    .line 64
    invoke-static {p0, p1}, Lkotlinx/serialization/KSerializer$a;->a(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/Decoder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract selectSerializer(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/JsonElement;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "+TT;>;"
        }
    .end annotation
.end method

.method public final serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V
    .locals 2
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

    .line 79
    invoke-interface {p1}, Lkotlinx/serialization/Encoder;->getContext()Lkotlinx/serialization/modules/b;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/JsonParametricSerializer;->baseClass:Lkotlin/reflect/c;

    invoke-interface {v0, v1, p2}, Lkotlinx/serialization/modules/b;->a(Lkotlin/reflect/c;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/g;->b(Lkotlin/reflect/c;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    .line 83
    invoke-interface {v0, p1, p2}, Lkotlinx/serialization/KSerializer;->serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p1

    iget-object p2, p0, Lkotlinx/serialization/json/JsonParametricSerializer;->baseClass:Lkotlin/reflect/c;

    invoke-static {p1, p2}, Lkotlinx/serialization/b/c;->a(Lkotlin/reflect/c;Lkotlin/reflect/c;)Ljava/lang/Void;

    const/4 p1, 0x0

    throw p1
.end method
