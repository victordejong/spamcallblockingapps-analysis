.class public abstract Lkotlinx/serialization/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/CompositeEncoder;
.implements Lkotlinx/serialization/Encoder;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\n\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J1\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u001a\u0010\u000b\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\r0\u000c\"\u0006\u0012\u0002\u0008\u00030\rH\u0016\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0012J\u0010\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0017H\u0016J\u001e\u0010\u0018\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0017J\u0010\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u001aH\u0016J\u001e\u0010\u001b\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u001aJ\u0010\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u001dH\u0016J\u001e\u0010\u001e\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u001dJ\u0018\u0010\u001f\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0018\u0010 \u001a\u00020\u00102\u0006\u0010!\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\"\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020#H\u0016J\u001e\u0010$\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020#J\u0010\u0010%\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0015H\u0016J\u001e\u0010&\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0015J\u0010\u0010\'\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020(H\u0016J\u001e\u0010)\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020(J\u0008\u0010*\u001a\u00020\u0010H\u0016J=\u0010+\u001a\u00020\u0010\"\u0008\u0008\u0000\u0010,*\u00020-2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u0002H,0/2\u0008\u0010\u0011\u001a\u0004\u0018\u0001H,\u00a2\u0006\u0002\u00100J7\u00101\u001a\u00020\u0010\"\u0004\u0008\u0000\u0010,2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u0002H,0/2\u0006\u0010\u0011\u001a\u0002H,\u00a2\u0006\u0002\u00100J\u0010\u00102\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u000203H\u0016J\u001e\u00104\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u000203J\u0010\u00105\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u000206H\u0016J\u001e\u00107\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u000206J\u0008\u00108\u001a\u00020\u0010H\u0016J\u0016\u00109\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0015J\u0010\u0010:\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020-H\u0016R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006;"
    }
    d2 = {
        "Lkotlinx/serialization/builtins/AbstractEncoder;",
        "Lkotlinx/serialization/Encoder;",
        "Lkotlinx/serialization/CompositeEncoder;",
        "()V",
        "context",
        "Lkotlinx/serialization/modules/SerialModule;",
        "getContext",
        "()Lkotlinx/serialization/modules/SerialModule;",
        "beginStructure",
        "descriptor",
        "Lkotlinx/serialization/SerialDescriptor;",
        "typeSerializers",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;",
        "encodeBoolean",
        "",
        "value",
        "",
        "encodeBooleanElement",
        "index",
        "",
        "encodeByte",
        "",
        "encodeByteElement",
        "encodeChar",
        "",
        "encodeCharElement",
        "encodeDouble",
        "",
        "encodeDoubleElement",
        "encodeElement",
        "encodeEnum",
        "enumDescriptor",
        "encodeFloat",
        "",
        "encodeFloatElement",
        "encodeInt",
        "encodeIntElement",
        "encodeLong",
        "",
        "encodeLongElement",
        "encodeNull",
        "encodeNullableSerializableElement",
        "T",
        "",
        "serializer",
        "Lkotlinx/serialization/SerializationStrategy;",
        "(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V",
        "encodeSerializableElement",
        "encodeShort",
        "",
        "encodeShortElement",
        "encodeString",
        "",
        "encodeStringElement",
        "encodeUnit",
        "encodeUnitElement",
        "encodeValue",
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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs beginCollection(Lkotlinx/serialization/SerialDescriptor;I[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/SerialDescriptor;",
            "I[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;)",
            "Lkotlinx/serialization/CompositeEncoder;"
        }
    .end annotation

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "typeSerializers"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {p0, p1, p3}, Lkotlinx/serialization/Encoder$a;->a(Lkotlinx/serialization/Encoder;Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;

    move-result-object p1

    return-object p1
.end method

.method public varargs beginStructure(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/SerialDescriptor;",
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;)",
            "Lkotlinx/serialization/CompositeEncoder;"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "typeSerializers"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    move-object p1, p0

    check-cast p1, Lkotlinx/serialization/CompositeEncoder;

    return-object p1
.end method

.method public encodeBoolean(Z)V
    .locals 0

    .line 47
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/a/b;->encodeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final encodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;IZ)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/a/b;->encodeElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Lkotlinx/serialization/a/b;->encodeBoolean(Z)V

    :cond_0
    return-void
.end method

.method public encodeByte(B)V
    .locals 0

    .line 48
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/a/b;->encodeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final encodeByteElement(Lkotlinx/serialization/SerialDescriptor;IB)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/a/b;->encodeElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Lkotlinx/serialization/a/b;->encodeByte(B)V

    :cond_0
    return-void
.end method

.method public encodeChar(C)V
    .locals 0

    .line 54
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/a/b;->encodeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final encodeCharElement(Lkotlinx/serialization/SerialDescriptor;IC)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/a/b;->encodeElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Lkotlinx/serialization/a/b;->encodeChar(C)V

    :cond_0
    return-void
.end method

.method public encodeDouble(D)V
    .locals 0

    .line 53
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/a/b;->encodeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final encodeDoubleElement(Lkotlinx/serialization/SerialDescriptor;ID)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/a/b;->encodeElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3, p4}, Lkotlinx/serialization/a/b;->encodeDouble(D)V

    :cond_0
    return-void
.end method

.method public encodeElement(Lkotlinx/serialization/SerialDescriptor;I)Z
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public encodeEnum(Lkotlinx/serialization/SerialDescriptor;I)V
    .locals 1

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/a/b;->encodeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public encodeFloat(F)V
    .locals 0

    .line 52
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/a/b;->encodeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final encodeFloatElement(Lkotlinx/serialization/SerialDescriptor;IF)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/a/b;->encodeElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Lkotlinx/serialization/a/b;->encodeFloat(F)V

    :cond_0
    return-void
.end method

.method public encodeInt(I)V
    .locals 0

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/a/b;->encodeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final encodeIntElement(Lkotlinx/serialization/SerialDescriptor;II)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/a/b;->encodeElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Lkotlinx/serialization/a/b;->encodeInt(I)V

    :cond_0
    return-void
.end method

.method public encodeLong(J)V
    .locals 0

    .line 51
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/a/b;->encodeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final encodeLongElement(Lkotlinx/serialization/SerialDescriptor;IJ)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/a/b;->encodeElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3, p4}, Lkotlinx/serialization/a/b;->encodeLong(J)V

    :cond_0
    return-void
.end method

.method public encodeNonSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILjava/lang/Object;)V
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "value"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {p1, p3}, Lkotlinx/serialization/CompositeEncoder$a;->a(Lkotlinx/serialization/SerialDescriptor;Ljava/lang/Object;)V

    return-void
.end method

.method public encodeNotNullMark()V
    .locals 0

    return-void
.end method

.method public encodeNull()V
    .locals 4

    .line 40
    new-instance v0, Lkotlinx/serialization/SerializationException;

    const-string v1, "\'null\' is not supported by default"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final encodeNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/SerialDescriptor;",
            "I",
            "Lkotlinx/serialization/r<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/a/b;->encodeElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0, p3, p4}, Lkotlinx/serialization/a/b;->encodeNullableSerializableValue(Lkotlinx/serialization/r;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public encodeNullableSerializableValue(Lkotlinx/serialization/r;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/r<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/Encoder$a;->b(Lkotlinx/serialization/Encoder;Lkotlinx/serialization/r;Ljava/lang/Object;)V

    return-void
.end method

.method public final encodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/SerialDescriptor;",
            "I",
            "Lkotlinx/serialization/r<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/a/b;->encodeElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0, p3, p4}, Lkotlinx/serialization/a/b;->encodeSerializableValue(Lkotlinx/serialization/r;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public encodeSerializableValue(Lkotlinx/serialization/r;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/r<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/Encoder$a;->a(Lkotlinx/serialization/Encoder;Lkotlinx/serialization/r;Ljava/lang/Object;)V

    return-void
.end method

.method public encodeShort(S)V
    .locals 0

    .line 49
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/a/b;->encodeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final encodeShortElement(Lkotlinx/serialization/SerialDescriptor;IS)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/a/b;->encodeElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Lkotlinx/serialization/a/b;->encodeShort(S)V

    :cond_0
    return-void
.end method

.method public encodeString(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p1}, Lkotlinx/serialization/a/b;->encodeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final encodeStringElement(Lkotlinx/serialization/SerialDescriptor;ILjava/lang/String;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/a/b;->encodeElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Lkotlinx/serialization/a/b;->encodeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public encodeUnit()V
    .locals 3

    .line 1104
    sget-object v0, Lkotlinx/serialization/b/bo;->a:Lkotlinx/serialization/b/bo;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 44
    move-object v1, p0

    check-cast v1, Lkotlinx/serialization/Encoder;

    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/KSerializer;->serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V

    return-void
.end method

.method public final encodeUnitElement(Lkotlinx/serialization/SerialDescriptor;I)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/a/b;->encodeElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/a/b;->encodeUnit()V

    :cond_0
    return-void
.end method

.method public encodeValue(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lkotlinx/serialization/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-serializable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported by "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " encoder"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public getContext()Lkotlinx/serialization/modules/b;
    .locals 1

    .line 18
    sget-object v0, Lkotlinx/serialization/modules/a;->a:Lkotlinx/serialization/modules/a;

    check-cast v0, Lkotlinx/serialization/modules/b;

    return-object v0
.end method

.method public shouldEncodeElementDefault(Lkotlinx/serialization/SerialDescriptor;I)Z
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
