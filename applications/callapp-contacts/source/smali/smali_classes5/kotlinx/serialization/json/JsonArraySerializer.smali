.class public final Lkotlinx/serialization/json/JsonArraySerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lkotlinx/serialization/json/JsonArray;",
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
        "Lkotlinx/serialization/json/JsonArraySerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lkotlinx/serialization/json/JsonArray;",
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
.field public static final INSTANCE:Lkotlinx/serialization/json/JsonArraySerializer;

.field private static final descriptor:Lkotlinx/serialization/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 166
    new-instance v0, Lkotlinx/serialization/json/JsonArraySerializer;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonArraySerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/JsonArraySerializer;->INSTANCE:Lkotlinx/serialization/json/JsonArraySerializer;

    .line 168
    new-instance v0, Lkotlinx/serialization/b/ar;

    .line 170
    sget-object v1, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonElementSerializer;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v1

    const-string v2, "kotlinx.serialization.json.JsonArray"

    .line 168
    invoke-direct {v0, v2, v1}, Lkotlinx/serialization/b/ar;-><init>(Ljava/lang/String;Lkotlinx/serialization/SerialDescriptor;)V

    check-cast v0, Lkotlinx/serialization/SerialDescriptor;

    sput-object v0, Lkotlinx/serialization/json/JsonArraySerializer;->descriptor:Lkotlinx/serialization/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic deserialize(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 166
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/JsonArraySerializer;->deserialize(Lkotlinx/serialization/Decoder;)Lkotlinx/serialization/json/JsonArray;

    move-result-object p1

    return-object p1
.end method

.method public final deserialize(Lkotlinx/serialization/Decoder;)Lkotlinx/serialization/json/JsonArray;
    .locals 2

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementSerializerKt;->access$verify(Lkotlinx/serialization/Decoder;)V

    .line 180
    new-instance v0, Lkotlinx/serialization/json/JsonArray;

    sget-object v1, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-static {v1}, Lkotlinx/serialization/a/d;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-interface {v1, p1}, Lkotlinx/serialization/KSerializer;->deserialize(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {v0, p1}, Lkotlinx/serialization/json/JsonArray;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getDescriptor()Lkotlinx/serialization/SerialDescriptor;
    .locals 1

    .line 168
    sget-object v0, Lkotlinx/serialization/json/JsonArraySerializer;->descriptor:Lkotlinx/serialization/SerialDescriptor;

    return-object v0
.end method

.method public final bridge synthetic patch(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    check-cast p2, Lkotlinx/serialization/json/JsonArray;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/JsonArraySerializer;->patch(Lkotlinx/serialization/Decoder;Lkotlinx/serialization/json/JsonArray;)Lkotlinx/serialization/json/JsonArray;

    move-result-object p1

    return-object p1
.end method

.method public final patch(Lkotlinx/serialization/Decoder;Lkotlinx/serialization/json/JsonArray;)Lkotlinx/serialization/json/JsonArray;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "old"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-static {p0, p1}, Lkotlinx/serialization/KSerializer$a;->a(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/Decoder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/JsonArray;

    return-object p1
.end method

.method public final bridge synthetic serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 166
    check-cast p2, Lkotlinx/serialization/json/JsonArray;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/JsonArraySerializer;->serialize(Lkotlinx/serialization/Encoder;Lkotlinx/serialization/json/JsonArray;)V

    return-void
.end method

.method public final serialize(Lkotlinx/serialization/Encoder;Lkotlinx/serialization/json/JsonArray;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementSerializerKt;->access$verify(Lkotlinx/serialization/Encoder;)V

    .line 175
    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/a/d;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lkotlinx/serialization/KSerializer;->serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V

    return-void
.end method
