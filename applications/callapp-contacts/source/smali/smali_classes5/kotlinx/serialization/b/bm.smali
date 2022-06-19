.class public abstract Lkotlinx/serialization/b/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/CompositeEncoder;
.implements Lkotlinx/serialization/Encoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Tag:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/CompositeEncoder;",
        "Lkotlinx/serialization/Encoder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\n\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008*\u0008\'\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u00022\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J1\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00132\u001a\u0010\u0014\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u00160\u0015\"\u0006\u0012\u0002\u0008\u00030\u0016H\u0016\u00a2\u0006\u0002\u0010\u0017J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u001e\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020 J\u001e\u0010!\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u00020 J\u000e\u0010\"\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020#J\u001e\u0010$\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u00020#J\u000e\u0010%\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020&J\u001e\u0010\'\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u00020&J\u0016\u0010(\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001eJ\u0016\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010,\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020-J\u001e\u0010.\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u00020-J\u000e\u0010/\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001eJ\u001e\u00100\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u00020\u001eJ\u000e\u00101\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u000202J\u001e\u00103\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u000202J\u0006\u00104\u001a\u00020\u0019J\u0006\u00105\u001a\u00020\u0019J=\u00106\u001a\u00020\u0019\"\u0008\u0008\u0001\u00107*\u0002082\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u0002H70:2\u0008\u0010\u001a\u001a\u0004\u0018\u0001H7\u00a2\u0006\u0002\u0010;J7\u0010<\u001a\u00020\u0019\"\u0004\u0008\u0001\u001072\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u0002H70:2\u0006\u0010\u001a\u001a\u0002H7\u00a2\u0006\u0002\u0010;J\u000e\u0010=\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020>J\u001e\u0010?\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u00020>J\u000e\u0010@\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020AJ\u001e\u0010B\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u00020AJ\u001d\u0010C\u001a\u00020\u00192\u0006\u0010D\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00020\u001bH\u0016\u00a2\u0006\u0002\u0010EJ\u001d\u0010F\u001a\u00020\u00192\u0006\u0010D\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00020 H\u0016\u00a2\u0006\u0002\u0010GJ\u001d\u0010H\u001a\u00020\u00192\u0006\u0010D\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00020#H\u0016\u00a2\u0006\u0002\u0010IJ\u001d\u0010J\u001a\u00020\u00192\u0006\u0010D\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00020&H\u0016\u00a2\u0006\u0002\u0010KJ%\u0010L\u001a\u00020\u00192\u0006\u0010D\u001a\u00028\u00002\u0006\u0010M\u001a\u00020\u00132\u0006\u0010N\u001a\u00020\u001eH\u0016\u00a2\u0006\u0002\u0010OJ\u001d\u0010P\u001a\u00020\u00192\u0006\u0010D\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00020-H\u0016\u00a2\u0006\u0002\u0010QJ\u001d\u0010R\u001a\u00020\u00192\u0006\u0010D\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00020\u001eH\u0016\u00a2\u0006\u0002\u0010SJ\u001d\u0010T\u001a\u00020\u00192\u0006\u0010D\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u000202H\u0016\u00a2\u0006\u0002\u0010UJ\u0015\u0010V\u001a\u00020\u00192\u0006\u0010D\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010WJ\u0015\u0010X\u001a\u00020\u00192\u0006\u0010D\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010WJ\u001d\u0010Y\u001a\u00020\u00192\u0006\u0010D\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00020>H\u0016\u00a2\u0006\u0002\u0010ZJ\u001d\u0010[\u001a\u00020\u00192\u0006\u0010D\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00020AH\u0016\u00a2\u0006\u0002\u0010\\J\u0015\u0010]\u001a\u00020\u00192\u0006\u0010D\u001a\u00028\u0000H\u0017\u00a2\u0006\u0002\u0010WJ\u001d\u0010^\u001a\u00020\u00192\u0006\u0010D\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u000208H\u0016\u00a2\u0006\u0002\u0010_J\u0006\u0010`\u001a\u00020\u0019J\u0016\u0010a\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001eJ\u0010\u0010b\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u000e\u0010c\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u0013J\r\u0010d\u001a\u00028\u0000H\u0004\u00a2\u0006\u0002\u0010\u000bJ\u0015\u0010e\u001a\u00020\u00192\u0006\u0010f\u001a\u00028\u0000H\u0004\u00a2\u0006\u0002\u0010WJ%\u0010g\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020\u00132\u0006\u0010D\u001a\u00028\u00002\u0006\u0010\u001d\u001a\u00020\u001eH\u0016\u00a2\u0006\u0002\u0010hJ\u0019\u0010i\u001a\u00028\u0000*\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001eH$\u00a2\u0006\u0002\u0010jR\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00028\u00008DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u000c\u001a\u0004\u0018\u00018\u00008DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000bR\u001e\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\u0008\u0012\u0004\u0012\u00028\u0000`\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006k"
    }
    d2 = {
        "Lkotlinx/serialization/internal/TaggedEncoder;",
        "Tag",
        "Lkotlinx/serialization/Encoder;",
        "Lkotlinx/serialization/CompositeEncoder;",
        "()V",
        "context",
        "Lkotlinx/serialization/modules/SerialModule;",
        "getContext",
        "()Lkotlinx/serialization/modules/SerialModule;",
        "currentTag",
        "getCurrentTag",
        "()Ljava/lang/Object;",
        "currentTagOrNull",
        "getCurrentTagOrNull",
        "tagStack",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
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
        "desc",
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
        "encodeNotNullMark",
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
        "encodeTaggedBoolean",
        "tag",
        "(Ljava/lang/Object;Z)V",
        "encodeTaggedByte",
        "(Ljava/lang/Object;B)V",
        "encodeTaggedChar",
        "(Ljava/lang/Object;C)V",
        "encodeTaggedDouble",
        "(Ljava/lang/Object;D)V",
        "encodeTaggedEnum",
        "enumDescription",
        "ordinal",
        "(Ljava/lang/Object;Lkotlinx/serialization/SerialDescriptor;I)V",
        "encodeTaggedFloat",
        "(Ljava/lang/Object;F)V",
        "encodeTaggedInt",
        "(Ljava/lang/Object;I)V",
        "encodeTaggedLong",
        "(Ljava/lang/Object;J)V",
        "encodeTaggedNotNullMark",
        "(Ljava/lang/Object;)V",
        "encodeTaggedNull",
        "encodeTaggedShort",
        "(Ljava/lang/Object;S)V",
        "encodeTaggedString",
        "(Ljava/lang/Object;Ljava/lang/String;)V",
        "encodeTaggedUnit",
        "encodeTaggedValue",
        "(Ljava/lang/Object;Ljava/lang/Object;)V",
        "encodeUnit",
        "encodeUnitElement",
        "endEncode",
        "endStructure",
        "popTag",
        "pushTag",
        "name",
        "shouldWriteElement",
        "(Lkotlinx/serialization/SerialDescriptor;Ljava/lang/Object;I)Z",
        "getTag",
        "(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;",
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
.field private final tagStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TTag;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/b/bm;->tagStack:Ljava/util/ArrayList;

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

    .line 22
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

    .line 90
    move-object p1, p0

    check-cast p1, Lkotlinx/serialization/CompositeEncoder;

    return-object p1
.end method

.method public final encodeBoolean(Z)V
    .locals 1

    .line 74
    invoke-virtual {p0}, Lkotlinx/serialization/b/bm;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/b/bm;->encodeTaggedBoolean(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final encodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;IZ)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bm;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lkotlinx/serialization/b/bm;->encodeTaggedBoolean(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final encodeByte(B)V
    .locals 1

    .line 75
    invoke-virtual {p0}, Lkotlinx/serialization/b/bm;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/b/bm;->encodeTaggedByte(Ljava/lang/Object;B)V

    return-void
.end method

.method public final encodeByteElement(Lkotlinx/serialization/SerialDescriptor;IB)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bm;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lkotlinx/serialization/b/bm;->encodeTaggedByte(Ljava/lang/Object;B)V

    return-void
.end method

.method public final encodeChar(C)V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lkotlinx/serialization/b/bm;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/b/bm;->encodeTaggedChar(Ljava/lang/Object;C)V

    return-void
.end method

.method public final encodeCharElement(Lkotlinx/serialization/SerialDescriptor;IC)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bm;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lkotlinx/serialization/b/bm;->encodeTaggedChar(Ljava/lang/Object;C)V

    return-void
.end method

.method public final encodeDouble(D)V
    .locals 1

    .line 80
    invoke-virtual {p0}, Lkotlinx/serialization/b/bm;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lkotlinx/serialization/b/bm;->encodeTaggedDouble(Ljava/lang/Object;D)V

    return-void
.end method

.method public final encodeDoubleElement(Lkotlinx/serialization/SerialDescriptor;ID)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bm;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lkotlinx/serialization/b/bm;->encodeTaggedDouble(Ljava/lang/Object;D)V

    return-void
.end method

.method public final encodeElement(Lkotlinx/serialization/SerialDescriptor;I)Z
    .locals 1

    const-string v0, "desc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bm;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    .line 60
    invoke-virtual {p0, p1, v0, p2}, Lkotlinx/serialization/b/bm;->shouldWriteElement(Lkotlinx/serialization/SerialDescriptor;Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0, v0}, Lkotlinx/serialization/b/bm;->pushTag(Ljava/lang/Object;)V

    :cond_0
    return p1
.end method

.method public final encodeEnum(Lkotlinx/serialization/SerialDescriptor;I)V
    .locals 1

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lkotlinx/serialization/b/bm;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lkotlinx/serialization/b/bm;->encodeTaggedEnum(Ljava/lang/Object;Lkotlinx/serialization/SerialDescriptor;I)V

    return-void
.end method

.method public final encodeFloat(F)V
    .locals 1

    .line 79
    invoke-virtual {p0}, Lkotlinx/serialization/b/bm;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/b/bm;->encodeTaggedFloat(Ljava/lang/Object;F)V

    return-void
.end method

.method public final encodeFloatElement(Lkotlinx/serialization/SerialDescriptor;IF)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bm;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lkotlinx/serialization/b/bm;->encodeTaggedFloat(Ljava/lang/Object;F)V

    return-void
.end method

.method public final encodeInt(I)V
    .locals 1

    .line 77
    invoke-virtual {p0}, Lkotlinx/serialization/b/bm;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/b/bm;->encodeTaggedInt(Ljava/lang/Object;I)V

    return-void
.end method

.method public final encodeIntElement(Lkotlinx/serialization/SerialDescriptor;II)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bm;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lkotlinx/serialization/b/bm;->encodeTaggedInt(Ljava/lang/Object;I)V

    return-void
.end method

.method public final encodeLong(J)V
    .locals 1

    .line 78
    invoke-virtual {p0}, Lkotlinx/serialization/b/bm;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lkotlinx/serialization/b/bm;->encodeTaggedLong(Ljava/lang/Object;J)V

    return-void
.end method

.method public final encodeLongElement(Lkotlinx/serialization/SerialDescriptor;IJ)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bm;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lkotlinx/serialization/b/bm;->encodeTaggedLong(Ljava/lang/Object;J)V

    return-void
.end method

.method public encodeNonSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILjava/lang/Object;)V
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "value"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {p1, p3}, Lkotlinx/serialization/CompositeEncoder$a;->a(Lkotlinx/serialization/SerialDescriptor;Ljava/lang/Object;)V

    return-void
.end method

.method public final encodeNotNullMark()V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lkotlinx/serialization/b/bm;->getCurrentTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/b/bm;->encodeTaggedNotNullMark(Ljava/lang/Object;)V

    return-void
.end method

.method public final encodeNull()V
    .locals 1

    .line 71
    invoke-virtual {p0}, Lkotlinx/serialization/b/bm;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/b/bm;->encodeTaggedNull(Ljava/lang/Object;)V

    return-void
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

    .line 123
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bm;->encodeElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p0, p3, p4}, Lkotlinx/serialization/b/bm;->encodeNullableSerializableValue(Lkotlinx/serialization/r;Ljava/lang/Object;)V

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

    .line 22
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

    .line 118
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bm;->encodeElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0, p3, p4}, Lkotlinx/serialization/b/bm;->encodeSerializableValue(Lkotlinx/serialization/r;Ljava/lang/Object;)V

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

    .line 22
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/Encoder$a;->a(Lkotlinx/serialization/Encoder;Lkotlinx/serialization/r;Ljava/lang/Object;)V

    return-void
.end method

.method public final encodeShort(S)V
    .locals 1

    .line 76
    invoke-virtual {p0}, Lkotlinx/serialization/b/bm;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/b/bm;->encodeTaggedShort(Ljava/lang/Object;S)V

    return-void
.end method

.method public final encodeShortElement(Lkotlinx/serialization/SerialDescriptor;IS)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bm;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lkotlinx/serialization/b/bm;->encodeTaggedShort(Ljava/lang/Object;S)V

    return-void
.end method

.method public final encodeString(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lkotlinx/serialization/b/bm;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/b/bm;->encodeTaggedString(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final encodeStringElement(Lkotlinx/serialization/SerialDescriptor;ILjava/lang/String;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bm;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lkotlinx/serialization/b/bm;->encodeTaggedString(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public encodeTaggedBoolean(Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;Z)V"
        }
    .end annotation

    .line 46
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bm;->encodeTaggedValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public encodeTaggedByte(Ljava/lang/Object;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;B)V"
        }
    .end annotation

    .line 41
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bm;->encodeTaggedValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public encodeTaggedChar(Ljava/lang/Object;C)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;C)V"
        }
    .end annotation

    .line 47
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bm;->encodeTaggedValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public encodeTaggedDouble(Ljava/lang/Object;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;D)V"
        }
    .end annotation

    .line 45
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bm;->encodeTaggedValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public encodeTaggedEnum(Ljava/lang/Object;Lkotlinx/serialization/SerialDescriptor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;",
            "Lkotlinx/serialization/SerialDescriptor;",
            "I)V"
        }
    .end annotation

    const-string v0, "enumDescription"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bm;->encodeTaggedValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public encodeTaggedFloat(Ljava/lang/Object;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;F)V"
        }
    .end annotation

    .line 44
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bm;->encodeTaggedValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public encodeTaggedInt(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;I)V"
        }
    .end annotation

    .line 40
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bm;->encodeTaggedValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public encodeTaggedLong(Ljava/lang/Object;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;J)V"
        }
    .end annotation

    .line 43
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bm;->encodeTaggedValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public encodeTaggedNotNullMark(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)V"
        }
    .end annotation

    return-void
.end method

.method public encodeTaggedNull(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)V"
        }
    .end annotation

    .line 37
    new-instance p1, Lkotlinx/serialization/SerializationException;

    const-string v0, "null is not supported"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2, v1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public encodeTaggedShort(Ljava/lang/Object;S)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;S)V"
        }
    .end annotation

    .line 42
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bm;->encodeTaggedValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public encodeTaggedString(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bm;->encodeTaggedValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public encodeTaggedUnit(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)V"
        }
    .end annotation

    .line 39
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/b/bm;->encodeTaggedValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public encodeTaggedValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance p1, Lkotlinx/serialization/SerializationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Non-serializable "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not supported by "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " encoder"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p1, p2, v0, v1, v0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final encodeUnit()V
    .locals 3

    .line 73
    sget-object v0, Lkotlinx/serialization/b/bo;->a:Lkotlinx/serialization/b/bo;

    move-object v1, p0

    check-cast v1, Lkotlinx/serialization/Encoder;

    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/b/bo;->a(Lkotlinx/serialization/Encoder;Lkotlin/v;)V

    return-void
.end method

.method public final encodeUnitElement(Lkotlinx/serialization/SerialDescriptor;I)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bm;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bm;->encodeTaggedUnit(Ljava/lang/Object;)V

    return-void
.end method

.method public endEncode(Lkotlinx/serialization/SerialDescriptor;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final endStructure(Lkotlinx/serialization/SerialDescriptor;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lkotlinx/serialization/b/bm;->tagStack:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/b/bm;->popTag()Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bm;->endEncode(Lkotlinx/serialization/SerialDescriptor;)V

    return-void
.end method

.method public getContext()Lkotlinx/serialization/modules/b;
    .locals 1

    .line 31
    sget-object v0, Lkotlinx/serialization/modules/a;->a:Lkotlinx/serialization/modules/a;

    check-cast v0, Lkotlinx/serialization/modules/b;

    return-object v0
.end method

.method public final getCurrentTag()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTag;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lkotlinx/serialization/b/bm;->tagStack:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/a/n;->g(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final getCurrentTagOrNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTag;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lkotlinx/serialization/b/bm;->tagStack:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/a/n;->h(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/SerialDescriptor;",
            "I)TTag;"
        }
    .end annotation
.end method

.method protected final popTag()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTag;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lkotlinx/serialization/b/bm;->tagStack:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lkotlinx/serialization/b/bm;->tagStack:Ljava/util/ArrayList;

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/a/n;->a(Ljava/util/List;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 141
    :cond_0
    new-instance v0, Lkotlinx/serialization/SerializationException;

    const/4 v1, 0x2

    const-string v2, "No tag in stack for requested element"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method protected final pushTag(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lkotlinx/serialization/b/bm;->tagStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public shouldEncodeElementDefault(Lkotlinx/serialization/SerialDescriptor;I)Z
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldWriteElement(Lkotlinx/serialization/SerialDescriptor;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/SerialDescriptor;",
            "TTag;I)Z"
        }
    .end annotation

    const-string p2, "desc"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
