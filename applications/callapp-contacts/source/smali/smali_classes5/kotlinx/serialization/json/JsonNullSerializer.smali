.class public final Lkotlinx/serialization/json/JsonNullSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lkotlinx/serialization/json/JsonNull;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlinx/serialization/json/JsonNullSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lkotlinx/serialization/json/JsonNull;",
        "()V",
        "descriptor",
        "Lkotlinx/serialization/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/SerialDescriptor;",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/Decoder;",
        "serialize",
        "",
        "encoder",
        "Lkotlinx/serialization/Encoder;",
        "value",
        "kotlinx-serialization-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/json/JsonNullSerializer;

.field private static final descriptor:Lkotlinx/serialization/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 80
    new-instance v0, Lkotlinx/serialization/json/JsonNullSerializer;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonNullSerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/JsonNullSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonNullSerializer;

    .line 83
    sget-object v0, Lkotlinx/serialization/u$c;->b:Lkotlinx/serialization/u$c;

    check-cast v0, Lkotlinx/serialization/p;

    const-string v1, "kotlinx.serialization.json.JsonNull"

    invoke-static {v1, v0}, Lkotlinx/serialization/m;->a(Ljava/lang/String;Lkotlinx/serialization/p;)Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/json/JsonNullSerializer;->descriptor:Lkotlinx/serialization/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic deserialize(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/JsonNullSerializer;->deserialize(Lkotlinx/serialization/Decoder;)Lkotlinx/serialization/json/JsonNull;

    move-result-object p1

    return-object p1
.end method

.method public final deserialize(Lkotlinx/serialization/Decoder;)Lkotlinx/serialization/json/JsonNull;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementSerializerKt;->access$verify(Lkotlinx/serialization/Decoder;)V

    .line 92
    invoke-interface {p1}, Lkotlinx/serialization/Decoder;->decodeNull()Ljava/lang/Void;

    .line 93
    sget-object p1, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/SerialDescriptor;
    .locals 1

    .line 82
    sget-object v0, Lkotlinx/serialization/json/JsonNullSerializer;->descriptor:Lkotlinx/serialization/SerialDescriptor;

    return-object v0
.end method

.method public final bridge synthetic patch(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 80
    check-cast p2, Lkotlinx/serialization/json/JsonNull;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/JsonNullSerializer;->patch(Lkotlinx/serialization/Decoder;Lkotlinx/serialization/json/JsonNull;)Lkotlinx/serialization/json/JsonNull;

    move-result-object p1

    return-object p1
.end method

.method public final patch(Lkotlinx/serialization/Decoder;Lkotlinx/serialization/json/JsonNull;)Lkotlinx/serialization/json/JsonNull;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "old"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-static {p0, p1}, Lkotlinx/serialization/KSerializer$a;->a(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/Decoder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/JsonNull;

    return-object p1
.end method

.method public final bridge synthetic serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 80
    check-cast p2, Lkotlinx/serialization/json/JsonNull;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/JsonNullSerializer;->serialize(Lkotlinx/serialization/Encoder;Lkotlinx/serialization/json/JsonNull;)V

    return-void
.end method

.method public final serialize(Lkotlinx/serialization/Encoder;Lkotlinx/serialization/json/JsonNull;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementSerializerKt;->access$verify(Lkotlinx/serialization/Encoder;)V

    .line 87
    invoke-interface {p1}, Lkotlinx/serialization/Encoder;->encodeNull()V

    return-void
.end method
