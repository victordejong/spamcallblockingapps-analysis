.class public abstract Lkotlinx/serialization/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/Decoder;
.implements Lkotlinx/serialization/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0001\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\n\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J1\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000e2\u001a\u0010\u000f\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u00110\u0010\"\u0006\u0012\u0002\u0008\u00030\u0011H\u0016\u00a2\u0006\u0002\u0010\u0012J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0016\u0010\u0015\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0016\u0010\u001a\u001a\u00020\u00192\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0016\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\u0016\u0010 \u001a\u00020\u001f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017J\u0010\u0010!\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020\u000eH\u0016J\u0008\u0010#\u001a\u00020$H\u0016J\u0016\u0010%\u001a\u00020$2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017J\u0008\u0010&\u001a\u00020\u0017H\u0016J\u0016\u0010\'\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017J\u0008\u0010(\u001a\u00020)H\u0016J\u0016\u0010*\u001a\u00020)2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017J\u0008\u0010+\u001a\u00020\u0014H\u0016J\n\u0010,\u001a\u0004\u0018\u00010-H\u0016J7\u0010.\u001a\u0004\u0018\u0001H/\"\u0008\u0008\u0000\u0010/*\u0002002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u00172\u000e\u00101\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H/02\u00a2\u0006\u0002\u00103J/\u00104\u001a\u0002H/\"\u0004\u0008\u0000\u0010/2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u00172\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u0002H/02\u00a2\u0006\u0002\u00103J\u0008\u00105\u001a\u000206H\u0016J\u0016\u00107\u001a\u0002062\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017J\u0008\u00108\u001a\u000209H\u0016J\u0016\u0010:\u001a\u0002092\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017J\u0008\u0010;\u001a\u00020<H\u0016J\u0016\u0010=\u001a\u00020<2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017J\u0008\u0010>\u001a\u000200H\u0016J\u0010\u0010?\u001a\u00020<2\u0006\u0010\r\u001a\u00020\u000eH\u0016JA\u0010@\u001a\u0004\u0018\u0001H/\"\u0008\u0008\u0000\u0010/*\u0002002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u00172\u000e\u00101\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H/022\u0008\u0010A\u001a\u0004\u0018\u0001H/\u00a2\u0006\u0002\u0010BJ7\u0010C\u001a\u0002H/\"\u0004\u0008\u0000\u0010/2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u00172\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u0002H/022\u0006\u0010A\u001a\u0002H/\u00a2\u0006\u0002\u0010BR\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006D"
    }
    d2 = {
        "Lkotlinx/serialization/builtins/AbstractDecoder;",
        "Lkotlinx/serialization/Decoder;",
        "Lkotlinx/serialization/CompositeDecoder;",
        "()V",
        "context",
        "Lkotlinx/serialization/modules/SerialModule;",
        "getContext",
        "()Lkotlinx/serialization/modules/SerialModule;",
        "updateMode",
        "Lkotlinx/serialization/UpdateMode;",
        "getUpdateMode",
        "()Lkotlinx/serialization/UpdateMode;",
        "beginStructure",
        "descriptor",
        "Lkotlinx/serialization/SerialDescriptor;",
        "typeParams",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeDecoder;",
        "decodeBoolean",
        "",
        "decodeBooleanElement",
        "index",
        "",
        "decodeByte",
        "",
        "decodeByteElement",
        "decodeChar",
        "",
        "decodeCharElement",
        "decodeDouble",
        "",
        "decodeDoubleElement",
        "decodeEnum",
        "enumDescriptor",
        "decodeFloat",
        "",
        "decodeFloatElement",
        "decodeInt",
        "decodeIntElement",
        "decodeLong",
        "",
        "decodeLongElement",
        "decodeNotNullMark",
        "decodeNull",
        "",
        "decodeNullableSerializableElement",
        "T",
        "",
        "deserializer",
        "Lkotlinx/serialization/DeserializationStrategy;",
        "(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;",
        "decodeSerializableElement",
        "decodeShort",
        "",
        "decodeShortElement",
        "decodeString",
        "",
        "decodeStringElement",
        "decodeUnit",
        "",
        "decodeUnitElement",
        "decodeValue",
        "endStructure",
        "updateNullableSerializableElement",
        "old",
        "(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;",
        "updateSerializableElement",
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
.field private final updateMode:Lkotlinx/serialization/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lkotlinx/serialization/v;->UPDATE:Lkotlinx/serialization/v;

    iput-object v0, p0, Lkotlinx/serialization/a/a;->updateMode:Lkotlinx/serialization/v;

    return-void
.end method


# virtual methods
.method public varargs beginStructure(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/SerialDescriptor;",
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;)",
            "Lkotlinx/serialization/a;"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "typeParams"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    move-object p1, p0

    check-cast p1, Lkotlinx/serialization/a;

    return-object p1
.end method

.method public decodeBoolean()Z
    .locals 2

    .line 31
    invoke-virtual {p0}, Lkotlinx/serialization/a/a;->decodeValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final decodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;I)Z
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lkotlinx/serialization/a/a;->decodeBoolean()Z

    move-result p1

    return p1
.end method

.method public decodeByte()B
    .locals 2

    .line 32
    invoke-virtual {p0}, Lkotlinx/serialization/a/a;->decodeValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Byte"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final decodeByteElement(Lkotlinx/serialization/SerialDescriptor;I)B
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lkotlinx/serialization/a/a;->decodeByte()B

    move-result p1

    return p1
.end method

.method public decodeChar()C
    .locals 2

    .line 38
    invoke-virtual {p0}, Lkotlinx/serialization/a/a;->decodeValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Char"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final decodeCharElement(Lkotlinx/serialization/SerialDescriptor;I)C
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lkotlinx/serialization/a/a;->decodeChar()C

    move-result p1

    return p1
.end method

.method public decodeCollectionSize(Lkotlinx/serialization/SerialDescriptor;)I
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public decodeDouble()D
    .locals 2

    .line 37
    invoke-virtual {p0}, Lkotlinx/serialization/a/a;->decodeValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Double"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final decodeDoubleElement(Lkotlinx/serialization/SerialDescriptor;I)D
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lkotlinx/serialization/a/a;->decodeDouble()D

    move-result-wide p1

    return-wide p1
.end method

.method public decodeEnum(Lkotlinx/serialization/SerialDescriptor;)I
    .locals 1

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lkotlinx/serialization/a/a;->decodeValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decodeFloat()F
    .locals 2

    .line 36
    invoke-virtual {p0}, Lkotlinx/serialization/a/a;->decodeValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final decodeFloatElement(Lkotlinx/serialization/SerialDescriptor;I)F
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lkotlinx/serialization/a/a;->decodeFloat()F

    move-result p1

    return p1
.end method

.method public decodeInt()I
    .locals 2

    .line 34
    invoke-virtual {p0}, Lkotlinx/serialization/a/a;->decodeValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final decodeIntElement(Lkotlinx/serialization/SerialDescriptor;I)I
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lkotlinx/serialization/a/a;->decodeInt()I

    move-result p1

    return p1
.end method

.method public decodeLong()J
    .locals 2

    .line 35
    invoke-virtual {p0}, Lkotlinx/serialization/a/a;->decodeValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Long"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final decodeLongElement(Lkotlinx/serialization/SerialDescriptor;I)J
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lkotlinx/serialization/a/a;->decodeLong()J

    move-result-wide p1

    return-wide p1
.end method

.method public decodeNotNullMark()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public decodeNull()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final decodeNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/SerialDescriptor;",
            "I",
            "Lkotlinx/serialization/d<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "deserializer"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p3}, Lkotlinx/serialization/a/a;->decodeNullableSerializableValue(Lkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public decodeNullableSerializableValue(Lkotlinx/serialization/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/d<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {p0, p1}, Lkotlinx/serialization/Decoder$a;->b(Lkotlinx/serialization/Decoder;Lkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public decodeSequentially()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final decodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/SerialDescriptor;",
            "I",
            "Lkotlinx/serialization/d<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "deserializer"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p3}, Lkotlinx/serialization/a/a;->decodeSerializableValue(Lkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public decodeSerializableValue(Lkotlinx/serialization/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/d<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {p0, p1}, Lkotlinx/serialization/Decoder$a;->a(Lkotlinx/serialization/Decoder;Lkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public decodeShort()S
    .locals 2

    .line 33
    invoke-virtual {p0}, Lkotlinx/serialization/a/a;->decodeValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Short"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final decodeShortElement(Lkotlinx/serialization/SerialDescriptor;I)S
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lkotlinx/serialization/a/a;->decodeShort()S

    move-result p1

    return p1
.end method

.method public decodeString()Ljava/lang/String;
    .locals 2

    .line 39
    invoke-virtual {p0}, Lkotlinx/serialization/a/a;->decodeValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final decodeStringElement(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lkotlinx/serialization/a/a;->decodeString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decodeUnit()V
    .locals 2

    .line 1104
    sget-object v0, Lkotlinx/serialization/b/bo;->a:Lkotlinx/serialization/b/bo;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 29
    move-object v1, p0

    check-cast v1, Lkotlinx/serialization/Decoder;

    invoke-interface {v0, v1}, Lkotlinx/serialization/KSerializer;->deserialize(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;

    return-void
.end method

.method public final decodeUnitElement(Lkotlinx/serialization/SerialDescriptor;I)V
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lkotlinx/serialization/a/a;->decodeUnit()V

    return-void
.end method

.method public decodeValue()Ljava/lang/Object;
    .locals 4

    .line 25
    new-instance v0, Lkotlinx/serialization/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " can\'t retrieve untyped values"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public endStructure(Lkotlinx/serialization/SerialDescriptor;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getContext()Lkotlinx/serialization/modules/b;
    .locals 1

    .line 18
    sget-object v0, Lkotlinx/serialization/modules/a;->a:Lkotlinx/serialization/modules/a;

    check-cast v0, Lkotlinx/serialization/modules/b;

    return-object v0
.end method

.method public getUpdateMode()Lkotlinx/serialization/v;
    .locals 1

    .line 20
    iget-object v0, p0, Lkotlinx/serialization/a/a;->updateMode:Lkotlinx/serialization/v;

    return-object v0
.end method

.method public final updateNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/SerialDescriptor;",
            "I",
            "Lkotlinx/serialization/d<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "deserializer"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p3, p4}, Lkotlinx/serialization/a/a;->updateNullableSerializableValue(Lkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateNullableSerializableValue(Lkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/d<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/Decoder$a;->b(Lkotlinx/serialization/Decoder;Lkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final updateSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/SerialDescriptor;",
            "I",
            "Lkotlinx/serialization/d<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "deserializer"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p3, p4}, Lkotlinx/serialization/a/a;->updateSerializableValue(Lkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateSerializableValue(Lkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/d<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/Decoder$a;->a(Lkotlinx/serialization/Decoder;Lkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
