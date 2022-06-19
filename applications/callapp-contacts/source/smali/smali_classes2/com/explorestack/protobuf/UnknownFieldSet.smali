.class public final Lcom/explorestack/protobuf/UnknownFieldSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MessageLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/UnknownFieldSet$Parser;,
        Lcom/explorestack/protobuf/UnknownFieldSet$Field;,
        Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    }
.end annotation


# static fields
.field private static final PARSER:Lcom/explorestack/protobuf/UnknownFieldSet$Parser;

.field private static final defaultInstance:Lcom/explorestack/protobuf/UnknownFieldSet;


# instance fields
.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/UnknownFieldSet$Field;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldsDescending:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/UnknownFieldSet$Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 85
    new-instance v0, Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/UnknownFieldSet;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    sput-object v0, Lcom/explorestack/protobuf/UnknownFieldSet;->defaultInstance:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 1072
    new-instance v0, Lcom/explorestack/protobuf/UnknownFieldSet$Parser;

    invoke-direct {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Parser;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/UnknownFieldSet;->PARSER:Lcom/explorestack/protobuf/UnknownFieldSet$Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    .line 62
    iput-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fieldsDescending:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/UnknownFieldSet$Field;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/UnknownFieldSet$Field;",
            ">;)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    .line 94
    iput-object p2, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fieldsDescending:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$200(Lcom/explorestack/protobuf/UnknownFieldSet;)Ljava/util/Map;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 77
    sget-object v0, Lcom/explorestack/protobuf/UnknownFieldSet;->defaultInstance:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .locals 1

    .line 67
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->access$000()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .locals 1

    .line 72
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 274
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 279
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom([B)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final asMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/UnknownFieldSet$Field;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 108
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/UnknownFieldSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getDefaultInstanceForType()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 82
    sget-object v0, Lcom/explorestack/protobuf/UnknownFieldSet;->defaultInstance:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getField(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    if-nez p1, :cond_0

    .line 129
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final bridge synthetic getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getParserForType()Lcom/explorestack/protobuf/UnknownFieldSet$Parser;

    move-result-object v0

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/UnknownFieldSet$Parser;
    .locals 1

    .line 1076
    sget-object v0, Lcom/explorestack/protobuf/UnknownFieldSet;->PARSER:Lcom/explorestack/protobuf/UnknownFieldSet$Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 208
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getSerializedSize(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final getSerializedSizeAsMessageSet()I
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 254
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getSerializedSizeAsMessageSetExtension(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final hasField(I)Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilderForType()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .locals 1

    .line 289
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet;->toBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .locals 1

    .line 294
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toByteArray()[B
    .locals 3

    .line 173
    :try_start_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 174
    invoke-static {v0}, Lcom/explorestack/protobuf/CodedOutputStream;->newInstance([B)Lcom/explorestack/protobuf/CodedOutputStream;

    move-result-object v1

    .line 175
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 176
    invoke-virtual {v1}, Lcom/explorestack/protobuf/CodedOutputStream;->checkNoSpaceLeft()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 179
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toByteString()Lcom/explorestack/protobuf/ByteString;
    .locals 3

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->newCodedBuilder(I)Lcom/explorestack/protobuf/ByteString$CodedBuilder;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString$CodedBuilder;->getCodedOutput()Lcom/explorestack/protobuf/CodedOutputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 159
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString$CodedBuilder;->build()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 161
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a ByteString threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 147
    invoke-static {}, Lcom/explorestack/protobuf/TextFormat;->printer()Lcom/explorestack/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/TextFormat$Printer;->printToString(Lcom/explorestack/protobuf/UnknownFieldSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeAsMessageSetTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 216
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->writeAsMessageSetExtensionTo(ILcom/explorestack/protobuf/CodedOutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final writeAsMessageSetTo(Lcom/explorestack/protobuf/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-interface {p1}, Lcom/explorestack/protobuf/Writer;->fieldOrder()Lcom/explorestack/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/explorestack/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_1

    .line 239
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fieldsDescending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$100(Lcom/explorestack/protobuf/UnknownFieldSet$Field;ILcom/explorestack/protobuf/Writer;)V

    goto :goto_0

    :cond_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 245
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->access$100(Lcom/explorestack/protobuf/UnknownFieldSet$Field;ILcom/explorestack/protobuf/Writer;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final writeDelimitedTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/explorestack/protobuf/CodedOutputStream;

    move-result-object p1

    .line 198
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 199
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 200
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->flush()V

    return-void
.end method

.method public final writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 136
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    .line 137
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->writeTo(ILcom/explorestack/protobuf/CodedOutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final writeTo(Lcom/explorestack/protobuf/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    invoke-interface {p1}, Lcom/explorestack/protobuf/Writer;->fieldOrder()Lcom/explorestack/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/explorestack/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_1

    .line 224
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fieldsDescending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 225
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->writeTo(ILcom/explorestack/protobuf/Writer;)V

    goto :goto_0

    :cond_0
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 230
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->writeTo(ILcom/explorestack/protobuf/Writer;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/explorestack/protobuf/CodedOutputStream;

    move-result-object p1

    .line 191
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 192
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->flush()V

    return-void
.end method
