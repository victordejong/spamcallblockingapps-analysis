.class public final Lkotlinx/serialization/json/JsonPrimitiveSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lkotlinx/serialization/json/JsonPrimitive;",
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
        "Lkotlinx/serialization/json/JsonPrimitiveSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lkotlinx/serialization/json/JsonPrimitive;",
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
.field public static final INSTANCE:Lkotlinx/serialization/json/JsonPrimitiveSerializer;

.field private static final descriptor:Lkotlinx/serialization/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Lkotlinx/serialization/json/JsonPrimitiveSerializer;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonPrimitiveSerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/JsonPrimitiveSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonPrimitiveSerializer;

    .line 57
    sget-object v0, Lkotlinx/serialization/j$i;->a:Lkotlinx/serialization/j$i;

    check-cast v0, Lkotlinx/serialization/p;

    const-string v1, "kotlinx.serialization.json.JsonPrimitive"

    invoke-static {v1, v0}, Lkotlinx/serialization/m;->a(Ljava/lang/String;Lkotlinx/serialization/p;)Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/json/JsonPrimitiveSerializer;->descriptor:Lkotlinx/serialization/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic deserialize(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/JsonPrimitiveSerializer;->deserialize(Lkotlinx/serialization/Decoder;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    return-object p1
.end method

.method public final deserialize(Lkotlinx/serialization/Decoder;)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 3

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementSerializerKt;->asJsonInput(Lkotlinx/serialization/Decoder;)Lkotlinx/serialization/json/JsonInput;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/json/JsonInput;->decodeJson()Lkotlinx/serialization/json/JsonElement;

    move-result-object p1

    .line 70
    instance-of v0, p1, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v0, :cond_0

    .line 71
    check-cast p1, Lkotlinx/serialization/json/JsonPrimitive;

    return-object p1

    :cond_0
    const/4 v0, -0x1

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected JSON element, expected JsonPrimitive, had "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lkotlinx/serialization/json/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonDecodingException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/SerialDescriptor;
    .locals 1

    .line 56
    sget-object v0, Lkotlinx/serialization/json/JsonPrimitiveSerializer;->descriptor:Lkotlinx/serialization/SerialDescriptor;

    return-object v0
.end method

.method public final bridge synthetic patch(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p2, Lkotlinx/serialization/json/JsonPrimitive;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/JsonPrimitiveSerializer;->patch(Lkotlinx/serialization/Decoder;Lkotlinx/serialization/json/JsonPrimitive;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    return-object p1
.end method

.method public final patch(Lkotlinx/serialization/Decoder;Lkotlinx/serialization/json/JsonPrimitive;)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "old"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1}, Lkotlinx/serialization/KSerializer$a;->a(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/Decoder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/JsonPrimitive;

    return-object p1
.end method

.method public final bridge synthetic serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p2, Lkotlinx/serialization/json/JsonPrimitive;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/JsonPrimitiveSerializer;->serialize(Lkotlinx/serialization/Encoder;Lkotlinx/serialization/json/JsonPrimitive;)V

    return-void
.end method

.method public final serialize(Lkotlinx/serialization/Encoder;Lkotlinx/serialization/json/JsonPrimitive;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementSerializerKt;->access$verify(Lkotlinx/serialization/Encoder;)V

    .line 61
    instance-of v0, p2, Lkotlinx/serialization/json/JsonNull;

    if-eqz v0, :cond_0

    .line 62
    sget-object p2, Lkotlinx/serialization/json/JsonNullSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonNullSerializer;

    check-cast p2, Lkotlinx/serialization/r;

    sget-object v0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/Encoder;->encodeSerializableValue(Lkotlinx/serialization/r;Ljava/lang/Object;)V

    return-void

    .line 64
    :cond_0
    sget-object v0, Lkotlinx/serialization/json/JsonLiteralSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonLiteralSerializer;

    check-cast v0, Lkotlinx/serialization/r;

    check-cast p2, Lkotlinx/serialization/json/JsonLiteral;

    invoke-interface {p1, v0, p2}, Lkotlinx/serialization/Encoder;->encodeSerializableValue(Lkotlinx/serialization/r;Ljava/lang/Object;)V

    return-void
.end method
