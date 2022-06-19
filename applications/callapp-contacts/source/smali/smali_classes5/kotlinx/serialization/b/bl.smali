.class public abstract Lkotlinx/serialization/b/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/Decoder;
.implements Lkotlinx/serialization/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Tag:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/Decoder;",
        "Lkotlinx/serialization/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0001\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\n\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\'\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\'\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u00022\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J1\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00192\u001a\u0010\u001a\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u001c0\u001b\"\u0006\u0012\u0002\u0008\u00030\u001cH\u0016\u00a2\u0006\u0002\u0010\u001dJ\u0016\u0010\u001e\u001a\u00020\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0004J\u0006\u0010!\u001a\u00020\u000fJ\u0016\u0010\"\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$J\u0006\u0010%\u001a\u00020&J\u0016\u0010\'\u001a\u00020&2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$J\u0006\u0010(\u001a\u00020)J\u0016\u0010*\u001a\u00020)2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$J\u0006\u0010+\u001a\u00020,J\u0016\u0010-\u001a\u00020,2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$J\u000e\u0010.\u001a\u00020$2\u0006\u0010/\u001a\u00020\u0019J\u0006\u00100\u001a\u000201J\u0016\u00102\u001a\u0002012\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$J\u0006\u00103\u001a\u00020$J\u0016\u00104\u001a\u00020$2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$J\u0006\u00105\u001a\u000206J\u0016\u00107\u001a\u0002062\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$J\u0006\u00108\u001a\u00020\u000fJ\u0008\u00109\u001a\u0004\u0018\u00010:J7\u0010;\u001a\u0004\u0018\u0001H<\"\u0008\u0008\u0001\u0010<*\u00020=2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$2\u000e\u0010>\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H<0?\u00a2\u0006\u0002\u0010@J/\u0010A\u001a\u0002H<\"\u0004\u0008\u0001\u0010<2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$2\u000c\u0010>\u001a\u0008\u0012\u0004\u0012\u0002H<0?\u00a2\u0006\u0002\u0010@J\u0006\u0010B\u001a\u00020CJ\u0016\u0010D\u001a\u00020C2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$J\u0006\u0010E\u001a\u00020FJ\u0016\u0010G\u001a\u00020F2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$J\u0015\u0010H\u001a\u00020\u000f2\u0006\u0010I\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010JJ\u0015\u0010K\u001a\u00020&2\u0006\u0010I\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010LJ\u0015\u0010M\u001a\u00020)2\u0006\u0010I\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010NJ\u0015\u0010O\u001a\u00020,2\u0006\u0010I\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010PJ\u001d\u0010Q\u001a\u00020$2\u0006\u0010I\u001a\u00028\u00002\u0006\u0010R\u001a\u00020\u0019H\u0016\u00a2\u0006\u0002\u0010SJ\u0015\u0010T\u001a\u0002012\u0006\u0010I\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010UJ\u0015\u0010V\u001a\u00020$2\u0006\u0010I\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010WJ\u0015\u0010X\u001a\u0002062\u0006\u0010I\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010YJ\u0015\u0010Z\u001a\u00020\u000f2\u0006\u0010I\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010JJ\u0017\u0010[\u001a\u0004\u0018\u00010:2\u0006\u0010I\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\\J\u0015\u0010]\u001a\u00020C2\u0006\u0010I\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010^J\u0015\u0010_\u001a\u00020F2\u0006\u0010I\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010`J\u0015\u0010a\u001a\u00020\u001f2\u0006\u0010I\u001a\u00028\u0000H\u0017\u00a2\u0006\u0002\u0010bJ\u0015\u0010c\u001a\u00020=2\u0006\u0010I\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010dJ\u0008\u0010e\u001a\u00020\u001fH\u0007J\u0018\u0010f\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$H\u0007J\u0010\u0010g\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\r\u0010h\u001a\u00028\u0000H\u0004\u00a2\u0006\u0002\u0010\u000bJ\u0015\u0010i\u001a\u00020\u001f2\u0006\u0010j\u001a\u00028\u0000H\u0004\u00a2\u0006\u0002\u0010bJ)\u0010k\u001a\u0002Hl\"\u0004\u0008\u0001\u0010l2\u0006\u0010I\u001a\u00028\u00002\u000c\u0010m\u001a\u0008\u0012\u0004\u0012\u0002Hl0nH\u0002\u00a2\u0006\u0002\u0010oJC\u0010p\u001a\u0004\u0018\u0001H<\"\u0008\u0008\u0001\u0010<*\u00020=2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$2\u000e\u0010>\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H<0?2\u0008\u0010q\u001a\u0004\u0018\u0001H<H\u0016\u00a2\u0006\u0002\u0010rJ9\u0010s\u001a\u0002H<\"\u0004\u0008\u0001\u0010<2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$2\u000c\u0010>\u001a\u0008\u0012\u0004\u0012\u0002H<0?2\u0006\u0010q\u001a\u0002H<H\u0016\u00a2\u0006\u0002\u0010rJ\u0019\u0010t\u001a\u00028\u0000*\u00020\u00192\u0006\u0010#\u001a\u00020$H$\u00a2\u0006\u0002\u0010uR\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00028\u00008DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u000c\u001a\u0004\u0018\u00018\u00008DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000bR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0011j\u0008\u0012\u0004\u0012\u00028\u0000`\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u0014X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006v"
    }
    d2 = {
        "Lkotlinx/serialization/internal/TaggedDecoder;",
        "Tag",
        "Lkotlinx/serialization/Decoder;",
        "Lkotlinx/serialization/CompositeDecoder;",
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
        "flag",
        "",
        "tagStack",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
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
        "copyTagsTo",
        "",
        "other",
        "decodeBoolean",
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
        "decodeTaggedBoolean",
        "tag",
        "(Ljava/lang/Object;)Z",
        "decodeTaggedByte",
        "(Ljava/lang/Object;)B",
        "decodeTaggedChar",
        "(Ljava/lang/Object;)C",
        "decodeTaggedDouble",
        "(Ljava/lang/Object;)D",
        "decodeTaggedEnum",
        "enumDescription",
        "(Ljava/lang/Object;Lkotlinx/serialization/SerialDescriptor;)I",
        "decodeTaggedFloat",
        "(Ljava/lang/Object;)F",
        "decodeTaggedInt",
        "(Ljava/lang/Object;)I",
        "decodeTaggedLong",
        "(Ljava/lang/Object;)J",
        "decodeTaggedNotNullMark",
        "decodeTaggedNull",
        "(Ljava/lang/Object;)Ljava/lang/Void;",
        "decodeTaggedShort",
        "(Ljava/lang/Object;)S",
        "decodeTaggedString",
        "(Ljava/lang/Object;)Ljava/lang/String;",
        "decodeTaggedUnit",
        "(Ljava/lang/Object;)V",
        "decodeTaggedValue",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "decodeUnit",
        "decodeUnitElement",
        "endStructure",
        "popTag",
        "pushTag",
        "name",
        "tagBlock",
        "E",
        "block",
        "Lkotlin/Function0;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "updateNullableSerializableElement",
        "old",
        "(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;",
        "updateSerializableElement",
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
.field private flag:Z

.field private final tagStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TTag;>;"
        }
    .end annotation
.end field

.field private final updateMode:Lkotlinx/serialization/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    sget-object v0, Lkotlinx/serialization/v;->UPDATE:Lkotlinx/serialization/v;

    iput-object v0, p0, Lkotlinx/serialization/b/bl;->updateMode:Lkotlinx/serialization/v;

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/b/bl;->tagStack:Ljava/util/ArrayList;

    return-void
.end method

.method private final tagBlock(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TTag;",
            "Lkotlin/jvm/functions/Function0<",
            "+TE;>;)TE;"
        }
    .end annotation

    .line 242
    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bl;->pushTag(Ljava/lang/Object;)V

    .line 243
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    .line 244
    iget-boolean p2, p0, Lkotlinx/serialization/b/bl;->flag:Z

    if-nez p2, :cond_0

    .line 245
    invoke-virtual {p0}, Lkotlinx/serialization/b/bl;->popTag()Ljava/lang/Object;

    :cond_0
    const/4 p2, 0x0

    .line 247
    iput-boolean p2, p0, Lkotlinx/serialization/b/bl;->flag:Z

    return-object p1
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

    .line 206
    move-object p1, p0

    check-cast p1, Lkotlinx/serialization/a;

    return-object p1
.end method

.method protected final copyTagsTo(Lkotlinx/serialization/b/bl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/b/bl<",
            "TTag;>;)V"
        }
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    iget-object p1, p1, Lkotlinx/serialization/b/bl;->tagStack:Ljava/util/ArrayList;

    iget-object v0, p0, Lkotlinx/serialization/b/bl;->tagStack:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final decodeBoolean()Z
    .locals 1

    .line 193
    invoke-virtual {p0}, Lkotlinx/serialization/b/bl;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/b/bl;->decodeTaggedBoolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final decodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;I)Z
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bl;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bl;->decodeTaggedBoolean(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final decodeByte()B
    .locals 1

    .line 194
    invoke-virtual {p0}, Lkotlinx/serialization/b/bl;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/b/bl;->decodeTaggedByte(Ljava/lang/Object;)B

    move-result v0

    return v0
.end method

.method public final decodeByteElement(Lkotlinx/serialization/SerialDescriptor;I)B
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bl;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bl;->decodeTaggedByte(Ljava/lang/Object;)B

    move-result p1

    return p1
.end method

.method public final decodeChar()C
    .locals 1

    .line 200
    invoke-virtual {p0}, Lkotlinx/serialization/b/bl;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/b/bl;->decodeTaggedChar(Ljava/lang/Object;)C

    move-result v0

    return v0
.end method

.method public final decodeCharElement(Lkotlinx/serialization/SerialDescriptor;I)C
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bl;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bl;->decodeTaggedChar(Ljava/lang/Object;)C

    move-result p1

    return p1
.end method

.method public decodeCollectionSize(Lkotlinx/serialization/SerialDescriptor;)I
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public final decodeDouble()D
    .locals 2

    .line 199
    invoke-virtual {p0}, Lkotlinx/serialization/b/bl;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/b/bl;->decodeTaggedDouble(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final decodeDoubleElement(Lkotlinx/serialization/SerialDescriptor;I)D
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bl;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bl;->decodeTaggedDouble(Ljava/lang/Object;)D

    move-result-wide p1

    return-wide p1
.end method

.method public final decodeEnum(Lkotlinx/serialization/SerialDescriptor;)I
    .locals 1

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lkotlinx/serialization/b/bl;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/b/bl;->decodeTaggedEnum(Ljava/lang/Object;Lkotlinx/serialization/SerialDescriptor;)I

    move-result p1

    return p1
.end method

.method public final decodeFloat()F
    .locals 1

    .line 198
    invoke-virtual {p0}, Lkotlinx/serialization/b/bl;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/b/bl;->decodeTaggedFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public final decodeFloatElement(Lkotlinx/serialization/SerialDescriptor;I)F
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bl;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bl;->decodeTaggedFloat(Ljava/lang/Object;)F

    move-result p1

    return p1
.end method

.method public final decodeInt()I
    .locals 1

    .line 196
    invoke-virtual {p0}, Lkotlinx/serialization/b/bl;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/b/bl;->decodeTaggedInt(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final decodeIntElement(Lkotlinx/serialization/SerialDescriptor;I)I
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bl;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bl;->decodeTaggedInt(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final decodeLong()J
    .locals 2

    .line 197
    invoke-virtual {p0}, Lkotlinx/serialization/b/bl;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/b/bl;->decodeTaggedLong(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final decodeLongElement(Lkotlinx/serialization/SerialDescriptor;I)J
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bl;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bl;->decodeTaggedLong(Ljava/lang/Object;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final decodeNotNullMark()Z
    .locals 1

    .line 187
    invoke-virtual {p0}, Lkotlinx/serialization/b/bl;->getCurrentTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/b/bl;->decodeTaggedNotNullMark(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final decodeNull()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final decodeNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;)Ljava/lang/Object;
    .locals 1
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

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bl;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Lkotlinx/serialization/b/bl$a;

    invoke-direct {p2, p0, p3}, Lkotlinx/serialization/b/bl$a;-><init>(Lkotlinx/serialization/b/bl;Lkotlinx/serialization/d;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/b/bl;->tagBlock(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

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

    .line 153
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
    .locals 1
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

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bl;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Lkotlinx/serialization/b/bl$b;

    invoke-direct {p2, p0, p3}, Lkotlinx/serialization/b/bl$b;-><init>(Lkotlinx/serialization/b/bl;Lkotlinx/serialization/d;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/b/bl;->tagBlock(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

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

    .line 153
    invoke-static {p0, p1}, Lkotlinx/serialization/Decoder$a;->a(Lkotlinx/serialization/Decoder;Lkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final decodeShort()S
    .locals 1

    .line 195
    invoke-virtual {p0}, Lkotlinx/serialization/b/bl;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/b/bl;->decodeTaggedShort(Ljava/lang/Object;)S

    move-result v0

    return v0
.end method

.method public final decodeShortElement(Lkotlinx/serialization/SerialDescriptor;I)S
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bl;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bl;->decodeTaggedShort(Ljava/lang/Object;)S

    move-result p1

    return p1
.end method

.method public final decodeString()Ljava/lang/String;
    .locals 1

    .line 201
    invoke-virtual {p0}, Lkotlinx/serialization/b/bl;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/b/bl;->decodeTaggedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final decodeStringElement(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bl;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bl;->decodeTaggedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decodeTaggedBoolean(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)Z"
        }
    .end annotation

    .line 173
    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bl;->decodeTaggedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decodeTaggedByte(Ljava/lang/Object;)B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)B"
        }
    .end annotation

    .line 174
    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bl;->decodeTaggedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Byte"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decodeTaggedChar(Ljava/lang/Object;)C
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)C"
        }
    .end annotation

    .line 180
    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bl;->decodeTaggedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Char"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decodeTaggedDouble(Ljava/lang/Object;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)D"
        }
    .end annotation

    .line 179
    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bl;->decodeTaggedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Double"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decodeTaggedEnum(Ljava/lang/Object;Lkotlinx/serialization/SerialDescriptor;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;",
            "Lkotlinx/serialization/SerialDescriptor;",
            ")I"
        }
    .end annotation

    const-string v0, "enumDescription"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bl;->decodeTaggedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decodeTaggedFloat(Ljava/lang/Object;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)F"
        }
    .end annotation

    .line 178
    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bl;->decodeTaggedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decodeTaggedInt(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)I"
        }
    .end annotation

    .line 176
    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bl;->decodeTaggedValue(Ljava/lang/Object;)Ljava/lang/Object;

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

.method public decodeTaggedLong(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)J"
        }
    .end annotation

    .line 177
    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bl;->decodeTaggedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Long"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decodeTaggedNotNullMark(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public decodeTaggedNull(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public decodeTaggedShort(Ljava/lang/Object;)S
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)S"
        }
    .end annotation

    .line 175
    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bl;->decodeTaggedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Short"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decodeTaggedString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 181
    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bl;->decodeTaggedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decodeTaggedUnit(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)V"
        }
    .end annotation

    .line 172
    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bl;->decodeTaggedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Unit"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decodeTaggedValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 166
    new-instance p1, Lkotlinx/serialization/SerializationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " can\'t retrieve untyped values"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2, v1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final decodeUnit()V
    .locals 2

    .line 192
    sget-object v0, Lkotlinx/serialization/b/bo;->a:Lkotlinx/serialization/b/bo;

    move-object v1, p0

    check-cast v1, Lkotlinx/serialization/Decoder;

    invoke-virtual {v0, v1}, Lkotlinx/serialization/b/bo;->a(Lkotlinx/serialization/Decoder;)V

    return-void
.end method

.method public final decodeUnitElement(Lkotlinx/serialization/SerialDescriptor;I)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bl;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bl;->decodeTaggedUnit(Ljava/lang/Object;)V

    return-void
.end method

.method public endStructure(Lkotlinx/serialization/SerialDescriptor;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getContext()Lkotlinx/serialization/modules/b;
    .locals 1

    .line 156
    sget-object v0, Lkotlinx/serialization/modules/a;->a:Lkotlinx/serialization/modules/a;

    check-cast v0, Lkotlinx/serialization/modules/b;

    return-object v0
.end method

.method protected final getCurrentTag()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTag;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lkotlinx/serialization/b/bl;->tagStack:Ljava/util/ArrayList;

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

    .line 255
    iget-object v0, p0, Lkotlinx/serialization/b/bl;->tagStack:Ljava/util/ArrayList;

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

.method public getUpdateMode()Lkotlinx/serialization/v;
    .locals 1

    .line 158
    iget-object v0, p0, Lkotlinx/serialization/b/bl;->updateMode:Lkotlinx/serialization/v;

    return-object v0
.end method

.method protected final popTag()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTag;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lkotlinx/serialization/b/bl;->tagStack:Ljava/util/ArrayList;

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/a/n;->a(Ljava/util/List;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 269
    iput-boolean v1, p0, Lkotlinx/serialization/b/bl;->flag:Z

    return-object v0
.end method

.method protected final pushTag(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)V"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lkotlinx/serialization/b/bl;->tagStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bl;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Lkotlinx/serialization/b/bl$c;

    invoke-direct {p2, p0, p3, p4}, Lkotlinx/serialization/b/bl$c;-><init>(Lkotlinx/serialization/b/bl;Lkotlinx/serialization/d;Ljava/lang/Object;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/b/bl;->tagBlock(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

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

    .line 153
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/Decoder$a;->b(Lkotlinx/serialization/Decoder;Lkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bl;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Lkotlinx/serialization/b/bl$d;

    invoke-direct {p2, p0, p3, p4}, Lkotlinx/serialization/b/bl$d;-><init>(Lkotlinx/serialization/b/bl;Lkotlinx/serialization/d;Ljava/lang/Object;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/b/bl;->tagBlock(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

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

    .line 153
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/Decoder$a;->a(Lkotlinx/serialization/Decoder;Lkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
