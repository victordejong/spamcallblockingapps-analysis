.class public final Lkotlinx/serialization/json/JsonLiteralSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lkotlinx/serialization/json/JsonLiteral;",
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
        "Lkotlinx/serialization/json/JsonLiteralSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lkotlinx/serialization/json/JsonLiteral;",
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
.field public static final INSTANCE:Lkotlinx/serialization/json/JsonLiteralSerializer;

.field private static final descriptor:Lkotlinx/serialization/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 102
    new-instance v0, Lkotlinx/serialization/json/JsonLiteralSerializer;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonLiteralSerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/JsonLiteralSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonLiteralSerializer;

    .line 105
    sget-object v0, Lkotlinx/serialization/j$i;->a:Lkotlinx/serialization/j$i;

    check-cast v0, Lkotlinx/serialization/j;

    const-string v1, "kotlinx.serialization.json.JsonLiteral"

    invoke-static {v1, v0}, Lkotlinx/serialization/m;->a(Ljava/lang/String;Lkotlinx/serialization/j;)Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/json/JsonLiteralSerializer;->descriptor:Lkotlinx/serialization/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic deserialize(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/JsonLiteralSerializer;->deserialize(Lkotlinx/serialization/Decoder;)Lkotlinx/serialization/json/JsonLiteral;

    move-result-object p1

    return-object p1
.end method

.method public final deserialize(Lkotlinx/serialization/Decoder;)Lkotlinx/serialization/json/JsonLiteral;
    .locals 3

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementSerializerKt;->asJsonInput(Lkotlinx/serialization/Decoder;)Lkotlinx/serialization/json/JsonInput;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/json/JsonInput;->decodeJson()Lkotlinx/serialization/json/JsonElement;

    move-result-object p1

    .line 132
    instance-of v0, p1, Lkotlinx/serialization/json/JsonLiteral;

    if-eqz v0, :cond_0

    .line 133
    check-cast p1, Lkotlinx/serialization/json/JsonLiteral;

    return-object p1

    :cond_0
    const/4 v0, -0x1

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected JSON element, expected JsonLiteral, had "

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

    .line 104
    sget-object v0, Lkotlinx/serialization/json/JsonLiteralSerializer;->descriptor:Lkotlinx/serialization/SerialDescriptor;

    return-object v0
.end method

.method public final bridge synthetic patch(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 102
    check-cast p2, Lkotlinx/serialization/json/JsonLiteral;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/JsonLiteralSerializer;->patch(Lkotlinx/serialization/Decoder;Lkotlinx/serialization/json/JsonLiteral;)Lkotlinx/serialization/json/JsonLiteral;

    move-result-object p1

    return-object p1
.end method

.method public final patch(Lkotlinx/serialization/Decoder;Lkotlinx/serialization/json/JsonLiteral;)Lkotlinx/serialization/json/JsonLiteral;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "old"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-static {p0, p1}, Lkotlinx/serialization/KSerializer$a;->a(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/Decoder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/JsonLiteral;

    return-object p1
.end method

.method public final bridge synthetic serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 102
    check-cast p2, Lkotlinx/serialization/json/JsonLiteral;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/JsonLiteralSerializer;->serialize(Lkotlinx/serialization/Encoder;Lkotlinx/serialization/json/JsonLiteral;)V

    return-void
.end method

.method public final serialize(Lkotlinx/serialization/Encoder;Lkotlinx/serialization/json/JsonLiteral;)V
    .locals 2

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementSerializerKt;->access$verify(Lkotlinx/serialization/Encoder;)V

    .line 109
    invoke-virtual {p2}, Lkotlinx/serialization/json/JsonLiteral;->isString()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p2}, Lkotlinx/serialization/json/JsonLiteral;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/serialization/Encoder;->encodeString(Ljava/lang/String;)V

    return-void

    .line 113
    :cond_0
    invoke-virtual {p2}, Lkotlinx/serialization/json/JsonLiteral;->getLongOrNull()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lkotlinx/serialization/Encoder;->encodeLong(J)V

    return-void

    .line 118
    :cond_1
    invoke-virtual {p2}, Lkotlinx/serialization/json/JsonLiteral;->getDoubleOrNull()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lkotlinx/serialization/Encoder;->encodeDouble(D)V

    return-void

    .line 123
    :cond_2
    invoke-virtual {p2}, Lkotlinx/serialization/json/JsonLiteral;->getBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lkotlinx/serialization/Encoder;->encodeBoolean(Z)V

    return-void

    .line 127
    :cond_3
    invoke-virtual {p2}, Lkotlinx/serialization/json/JsonLiteral;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/serialization/Encoder;->encodeString(Ljava/lang/String;)V

    return-void
.end method
