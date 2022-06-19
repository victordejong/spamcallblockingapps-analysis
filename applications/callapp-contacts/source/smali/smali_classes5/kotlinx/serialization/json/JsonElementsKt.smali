.class public final Lkotlinx/serialization/json/JsonElementsKt;
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
        "\u0000D\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0004\n\u0000\u001a\u0015\u0010*\u001a\u00020+2\u0008\u0010,\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010-\u001a\u0010\u0010*\u001a\u00020+2\u0008\u0010,\u001a\u0004\u0018\u00010.\u001a\u0010\u0010*\u001a\u00020+2\u0008\u0010,\u001a\u0004\u0018\u00010\t\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\"\u0015\u0010\u0008\u001a\u00020\t*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\"\u0017\u0010\u000c\u001a\u0004\u0018\u00010\t*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000b\"\u0015\u0010\u000e\u001a\u00020\u000f*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\"\u0017\u0010\u0012\u001a\u0004\u0018\u00010\u000f*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\"\u0015\u0010\u0015\u001a\u00020\u0016*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\"\u0017\u0010\u0019\u001a\u0004\u0018\u00010\u0016*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001b\"\u0015\u0010\u001c\u001a\u00020\u001d*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001f\"\u0017\u0010 \u001a\u0004\u0018\u00010\u001d*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"\"\u0015\u0010#\u001a\u00020$*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&\"\u0017\u0010\'\u001a\u0004\u0018\u00010$*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)\u00a8\u0006/"
    }
    d2 = {
        "boolean",
        "",
        "Lkotlinx/serialization/json/JsonElement;",
        "getBoolean",
        "(Lkotlinx/serialization/json/JsonElement;)Z",
        "booleanOrNull",
        "getBooleanOrNull",
        "(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Boolean;",
        "content",
        "",
        "getContent",
        "(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/String;",
        "contentOrNull",
        "getContentOrNull",
        "double",
        "",
        "getDouble",
        "(Lkotlinx/serialization/json/JsonElement;)D",
        "doubleOrNull",
        "getDoubleOrNull",
        "(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Double;",
        "float",
        "",
        "getFloat",
        "(Lkotlinx/serialization/json/JsonElement;)F",
        "floatOrNull",
        "getFloatOrNull",
        "(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Float;",
        "int",
        "",
        "getInt",
        "(Lkotlinx/serialization/json/JsonElement;)I",
        "intOrNull",
        "getIntOrNull",
        "(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Integer;",
        "long",
        "",
        "getLong",
        "(Lkotlinx/serialization/json/JsonElement;)J",
        "longOrNull",
        "getLongOrNull",
        "(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Long;",
        "JsonPrimitive",
        "Lkotlinx/serialization/json/JsonPrimitive;",
        "value",
        "(Ljava/lang/Boolean;)Lkotlinx/serialization/json/JsonPrimitive;",
        "",
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
.method public static final JsonPrimitive(Ljava/lang/Boolean;)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 1

    if-nez p0, :cond_0

    .line 14
    sget-object p0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    check-cast p0, Lkotlinx/serialization/json/JsonPrimitive;

    return-object p0

    .line 15
    :cond_0
    new-instance v0, Lkotlinx/serialization/json/JsonLiteral;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Z)V

    check-cast v0, Lkotlinx/serialization/json/JsonPrimitive;

    return-object v0
.end method

.method public static final JsonPrimitive(Ljava/lang/Number;)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 1

    if-nez p0, :cond_0

    .line 23
    sget-object p0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    check-cast p0, Lkotlinx/serialization/json/JsonPrimitive;

    return-object p0

    .line 24
    :cond_0
    new-instance v0, Lkotlinx/serialization/json/JsonLiteral;

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/Number;)V

    check-cast v0, Lkotlinx/serialization/json/JsonPrimitive;

    return-object v0
.end method

.method public static final JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 1

    if-nez p0, :cond_0

    .line 32
    sget-object p0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    check-cast p0, Lkotlinx/serialization/json/JsonPrimitive;

    return-object p0

    .line 33
    :cond_0
    new-instance v0, Lkotlinx/serialization/json/JsonLiteral;

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlinx/serialization/json/JsonPrimitive;

    return-object v0
.end method

.method public static final getBoolean(Lkotlinx/serialization/json/JsonElement;)Z
    .locals 1

    const-string v0, "$this$boolean"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonElement;->getPrimitive()Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->getBoolean()Z

    move-result p0

    return p0
.end method

.method public static final getBooleanOrNull(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "$this$booleanOrNull"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonElement;->getPrimitive()Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->getBooleanOrNull()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final getContent(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$content"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonElement;->getPrimitive()Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getContentOrNull(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$contentOrNull"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonElement;->getPrimitive()Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->getContentOrNull()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getDouble(Lkotlinx/serialization/json/JsonElement;)D
    .locals 2

    const-string v0, "$this$double"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonElement;->getPrimitive()Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static final getDoubleOrNull(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Double;
    .locals 1

    const-string v0, "$this$doubleOrNull"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonElement;->getPrimitive()Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->getDoubleOrNull()Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static final getFloat(Lkotlinx/serialization/json/JsonElement;)F
    .locals 1

    const-string v0, "$this$float"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonElement;->getPrimitive()Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->getFloat()F

    move-result p0

    return p0
.end method

.method public static final getFloatOrNull(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Float;
    .locals 1

    const-string v0, "$this$floatOrNull"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonElement;->getPrimitive()Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->getFloatOrNull()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static final getInt(Lkotlinx/serialization/json/JsonElement;)I
    .locals 1

    const-string v0, "$this$int"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonElement;->getPrimitive()Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->getInt()I

    move-result p0

    return p0
.end method

.method public static final getIntOrNull(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "$this$intOrNull"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonElement;->getPrimitive()Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->getIntOrNull()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final getLong(Lkotlinx/serialization/json/JsonElement;)J
    .locals 2

    const-string v0, "$this$long"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonElement;->getPrimitive()Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getLongOrNull(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Long;
    .locals 1

    const-string v0, "$this$longOrNull"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonElement;->getPrimitive()Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->getLongOrNull()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
