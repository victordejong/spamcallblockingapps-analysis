.class public abstract Lkotlinx/serialization/json/JsonTransformingSerializer;
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
        "\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u001b\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0013\u0010\u000c\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0014J\u001b\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0014R\u0014\u0010\u0008\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lkotlinx/serialization/json/JsonTransformingSerializer;",
        "T",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "tSerializer",
        "transformationName",
        "",
        "(Lkotlinx/serialization/KSerializer;Ljava/lang/String;)V",
        "descriptor",
        "Lkotlinx/serialization/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/SerialDescriptor;",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/Decoder;",
        "(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;",
        "readTransform",
        "Lkotlinx/serialization/json/JsonElement;",
        "element",
        "serialize",
        "",
        "encoder",
        "Lkotlinx/serialization/Encoder;",
        "value",
        "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V",
        "writeTransform",
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
.field private final descriptor:Lkotlinx/serialization/SerialDescriptor;

.field private final tSerializer:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/serialization/KSerializer;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "tSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformationName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/JsonTransformingSerializer;->tSerializer:Lkotlinx/serialization/KSerializer;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonTransformingSerializer<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/serialization/SerialDescriptor;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 71
    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/SerialDescriptor;->b()Lkotlinx/serialization/p;

    move-result-object p1

    .line 69
    invoke-static {p2, p1}, Lkotlinx/serialization/m;->a(Ljava/lang/String;Lkotlinx/serialization/p;)Lkotlinx/serialization/SerialDescriptor;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/JsonTransformingSerializer;->descriptor:Lkotlinx/serialization/SerialDescriptor;

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

    .line 82
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementSerializerKt;->asJsonInput(Lkotlinx/serialization/Decoder;)Lkotlinx/serialization/json/JsonInput;

    move-result-object p1

    .line 83
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonInput;->decodeJson()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    .line 84
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonTransformingSerializer;->readTransform(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    .line 85
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonInput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p1

    iget-object v1, p0, Lkotlinx/serialization/json/JsonTransformingSerializer;->tSerializer:Lkotlinx/serialization/KSerializer;

    check-cast v1, Lkotlinx/serialization/d;

    invoke-virtual {p1, v1, v0}, Lkotlinx/serialization/json/Json;->fromJson(Lkotlinx/serialization/d;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/SerialDescriptor;
    .locals 1

    .line 69
    iget-object v0, p0, Lkotlinx/serialization/json/JsonTransformingSerializer;->descriptor:Lkotlinx/serialization/SerialDescriptor;

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

    .line 57
    invoke-static {p0, p1}, Lkotlinx/serialization/KSerializer$a;->a(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/Decoder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected readTransform(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
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

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementSerializerKt;->asJsonOutput(Lkotlinx/serialization/Encoder;)Lkotlinx/serialization/json/JsonOutput;

    move-result-object p1

    .line 76
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonOutput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/JsonTransformingSerializer;->tSerializer:Lkotlinx/serialization/KSerializer;

    check-cast v1, Lkotlinx/serialization/r;

    invoke-static {v0, p2, v1}, Lkotlinx/serialization/json/internal/TreeJsonOutputKt;->writeJson(Lkotlinx/serialization/json/Json;Ljava/lang/Object;Lkotlinx/serialization/r;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p2

    .line 77
    invoke-virtual {p0, p2}, Lkotlinx/serialization/json/JsonTransformingSerializer;->writeTransform(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p2

    .line 78
    invoke-interface {p1, p2}, Lkotlinx/serialization/json/JsonOutput;->encodeJson(Lkotlinx/serialization/json/JsonElement;)V

    return-void
.end method

.method protected writeTransform(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
