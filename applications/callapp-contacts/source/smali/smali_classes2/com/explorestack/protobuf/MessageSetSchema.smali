.class final Lcom/explorestack/protobuf/MessageSetSchema;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/Schema;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Schema<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final defaultInstance:Lcom/explorestack/protobuf/MessageLite;

.field private final extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation
.end field

.field private final hasExtensions:Z

.field private final unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Lcom/explorestack/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/explorestack/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/explorestack/protobuf/MessageLite;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/explorestack/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;

    .line 49
    invoke-virtual {p2, p3}, Lcom/explorestack/protobuf/ExtensionSchema;->hasExtensions(Lcom/explorestack/protobuf/MessageLite;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/explorestack/protobuf/MessageSetSchema;->hasExtensions:Z

    .line 50
    iput-object p2, p0, Lcom/explorestack/protobuf/MessageSetSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    .line 51
    iput-object p3, p0, Lcom/explorestack/protobuf/MessageSetSchema;->defaultInstance:Lcom/explorestack/protobuf/MessageLite;

    return-void
.end method

.method private getUnknownFieldsSerializedSize(Lcom/explorestack/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 389
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 390
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSchema;->getSerializedSizeAsMessageSet(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private mergeFromHelper(Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/explorestack/protobuf/Reader;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;",
            "Lcom/explorestack/protobuf/ExtensionSchema<",
            "TET;>;TT;",
            "Lcom/explorestack/protobuf/Reader;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 243
    invoke-virtual {p2, p3}, Lcom/explorestack/protobuf/ExtensionSchema;->getMutableExtensions(Ljava/lang/Object;)Lcom/explorestack/protobuf/FieldSet;

    move-result-object v8

    .line 246
    :cond_0
    :try_start_0
    invoke-interface {p4}, Lcom/explorestack/protobuf/Reader;->getFieldNumber()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 263
    invoke-virtual {p1, p3, v7}, Lcom/explorestack/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p2

    move-object v4, v8

    move-object v5, p1

    move-object v6, v7

    .line 250
    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/explorestack/protobuf/MessageSetSchema;->parseMessageSetItemOrUnknownField(Lcom/explorestack/protobuf/Reader;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/ExtensionSchema;Lcom/explorestack/protobuf/FieldSet;Lcom/explorestack/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 263
    invoke-virtual {p1, p3, v7}, Lcom/explorestack/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1, p3, v7}, Lcom/explorestack/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    throw p2
.end method

.method static newSchema(Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageSetSchema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/explorestack/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/explorestack/protobuf/MessageLite;",
            ")",
            "Lcom/explorestack/protobuf/MessageSetSchema<",
            "TT;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/explorestack/protobuf/MessageSetSchema;

    invoke-direct {v0, p0, p1, p2}, Lcom/explorestack/protobuf/MessageSetSchema;-><init>(Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Lcom/explorestack/protobuf/MessageLite;)V

    return-object v0
.end method

.method private parseMessageSetItemOrUnknownField(Lcom/explorestack/protobuf/Reader;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/ExtensionSchema;Lcom/explorestack/protobuf/FieldSet;Lcom/explorestack/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Lcom/explorestack/protobuf/Reader;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            "Lcom/explorestack/protobuf/ExtensionSchema<",
            "TET;>;",
            "Lcom/explorestack/protobuf/FieldSet<",
            "TET;>;",
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TUB;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    invoke-interface {p1}, Lcom/explorestack/protobuf/Reader;->getTag()I

    move-result v0

    .line 283
    sget v1, Lcom/explorestack/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    .line 284
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 285
    iget-object v1, p0, Lcom/explorestack/protobuf/MessageSetSchema;->defaultInstance:Lcom/explorestack/protobuf/MessageLite;

    .line 287
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 286
    invoke-virtual {p3, p2, v1, v0}, Lcom/explorestack/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p3, p1, v0, p2, p4}, Lcom/explorestack/protobuf/ExtensionSchema;->parseLengthPrefixedMessageSetItem(Lcom/explorestack/protobuf/Reader;Ljava/lang/Object;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/FieldSet;)V

    return v2

    .line 293
    :cond_0
    invoke-virtual {p5, p6, p1}, Lcom/explorestack/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/explorestack/protobuf/Reader;)Z

    move-result p1

    return p1

    .line 296
    :cond_1
    invoke-interface {p1}, Lcom/explorestack/protobuf/Reader;->skipField()Z

    move-result p1

    return p1

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v1

    .line 324
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/explorestack/protobuf/Reader;->getFieldNumber()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_7

    .line 329
    invoke-interface {p1}, Lcom/explorestack/protobuf/Reader;->getTag()I

    move-result v4

    .line 330
    sget v5, Lcom/explorestack/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    if-ne v4, v5, :cond_4

    .line 331
    invoke-interface {p1}, Lcom/explorestack/protobuf/Reader;->readUInt32()I

    move-result v0

    .line 332
    iget-object v1, p0, Lcom/explorestack/protobuf/MessageSetSchema;->defaultInstance:Lcom/explorestack/protobuf/MessageLite;

    .line 333
    invoke-virtual {p3, p2, v1, v0}, Lcom/explorestack/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 335
    :cond_4
    sget v5, Lcom/explorestack/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    if-ne v4, v5, :cond_6

    if-eqz v1, :cond_5

    .line 337
    invoke-virtual {p3, p1, v1, p2, p4}, Lcom/explorestack/protobuf/ExtensionSchema;->parseLengthPrefixedMessageSetItem(Lcom/explorestack/protobuf/Reader;Ljava/lang/Object;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/FieldSet;)V

    goto :goto_0

    .line 342
    :cond_5
    invoke-interface {p1}, Lcom/explorestack/protobuf/Reader;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v3

    goto :goto_0

    .line 345
    :cond_6
    invoke-interface {p1}, Lcom/explorestack/protobuf/Reader;->skipField()Z

    move-result v4

    if-nez v4, :cond_3

    .line 351
    :cond_7
    invoke-interface {p1}, Lcom/explorestack/protobuf/Reader;->getTag()I

    move-result p1

    sget v4, Lcom/explorestack/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    if-ne p1, v4, :cond_a

    if-eqz v3, :cond_9

    if-eqz v1, :cond_8

    .line 360
    invoke-virtual {p3, v3, v1, p2, p4}, Lcom/explorestack/protobuf/ExtensionSchema;->parseMessageSetItem(Lcom/explorestack/protobuf/ByteString;Ljava/lang/Object;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/FieldSet;)V

    goto :goto_1

    .line 362
    :cond_8
    invoke-virtual {p5, p6, v0, v3}, Lcom/explorestack/protobuf/UnknownFieldSchema;->addLengthDelimited(Ljava/lang/Object;ILcom/explorestack/protobuf/ByteString;)V

    :cond_9
    :goto_1
    return v2

    .line 352
    :cond_a
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private writeUnknownFieldsHelper(Lcom/explorestack/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;",
            "Lcom/explorestack/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/UnknownFieldSchema;->writeAsMessageSetTo(Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/explorestack/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;

    invoke-virtual {v1, p2}, Lcom/explorestack/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 74
    :cond_0
    iget-boolean v0, p0, Lcom/explorestack/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSetSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/explorestack/protobuf/FieldSet;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSetSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-virtual {v0, p2}, Lcom/explorestack/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/explorestack/protobuf/FieldSet;

    move-result-object p2

    .line 77
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final getSerializedSize(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v0, p1}, Lcom/explorestack/protobuf/MessageSetSchema;->getUnknownFieldsSerializedSize(Lcom/explorestack/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 380
    iget-boolean v1, p0, Lcom/explorestack/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/explorestack/protobuf/MessageSetSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/explorestack/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/FieldSet;->getMessageSetSerializedSize()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 85
    iget-boolean v1, p0, Lcom/explorestack/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/explorestack/protobuf/MessageSetSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/explorestack/protobuf/FieldSet;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 87
    invoke-virtual {p1}, Lcom/explorestack/protobuf/FieldSet;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSetSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/explorestack/protobuf/FieldSet;

    move-result-object p1

    .line 371
    invoke-virtual {p1}, Lcom/explorestack/protobuf/FieldSet;->isInitialized()Z

    move-result p1

    return p1
.end method

.method public final makeImmutable(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSchema;->makeImmutable(Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSetSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ExtensionSchema;->makeImmutable(Ljava/lang/Object;)V

    return-void
.end method

.method public final mergeFrom(Ljava/lang/Object;Lcom/explorestack/protobuf/Reader;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/explorestack/protobuf/Reader;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    iget-object v1, p0, Lcom/explorestack/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;

    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSetSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/explorestack/protobuf/MessageSetSchema;->mergeFromHelper(Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/explorestack/protobuf/Reader;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public final mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;

    invoke-static {v0, p1, p2}, Lcom/explorestack/protobuf/SchemaUtil;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    iget-boolean v0, p0, Lcom/explorestack/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSetSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-static {v0, p1, p2}, Lcom/explorestack/protobuf/SchemaUtil;->mergeExtensions(Lcom/explorestack/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final mergeFrom(Ljava/lang/Object;[BIILcom/explorestack/protobuf/ArrayDecoders$Registers;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/explorestack/protobuf/ArrayDecoders$Registers;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    move-object v0, p1

    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessageLite;

    iget-object v1, v0, Lcom/explorestack/protobuf/GeneratedMessageLite;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSetLite;

    .line 136
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSetLite;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 137
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->newInstance()Lcom/explorestack/protobuf/UnknownFieldSetLite;

    move-result-object v1

    .line 138
    iput-object v1, v0, Lcom/explorestack/protobuf/GeneratedMessageLite;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSetLite;

    .line 140
    :cond_0
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 141
    invoke-virtual {p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/explorestack/protobuf/FieldSet;

    move-result-object p1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    if-ge p3, p4, :cond_a

    .line 144
    invoke-static {p2, p3, p5}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint32([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    .line 145
    iget p3, p5, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->int1:I

    .line 146
    sget v3, Lcom/explorestack/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    const/4 v5, 0x2

    if-eq p3, v3, :cond_3

    .line 147
    invoke-static {p3}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 148
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSetSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    iget-object v3, p5, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->extensionRegistry:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    iget-object v5, p0, Lcom/explorestack/protobuf/MessageSetSchema;->defaultInstance:Lcom/explorestack/protobuf/MessageLite;

    .line 151
    invoke-static {p3}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v6

    .line 149
    invoke-virtual {v2, v3, v5, v6}, Lcom/explorestack/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;

    if-eqz v8, :cond_1

    .line 155
    invoke-static {}, Lcom/explorestack/protobuf/Protobuf;->getInstance()Lcom/explorestack/protobuf/Protobuf;

    move-result-object p3

    .line 156
    invoke-virtual {v8}, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 155
    invoke-virtual {p3, v2}, Lcom/explorestack/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/explorestack/protobuf/Schema;

    move-result-object p3

    .line 154
    invoke-static {p3, p2, v4, p4, p5}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeMessageField(Lcom/explorestack/protobuf/Schema;[BIILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    .line 158
    iget-object v2, v8, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v3, p5, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/FieldSet;->setField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move v2, p3

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    .line 161
    invoke-static/range {v2 .. v7}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/explorestack/protobuf/UnknownFieldSetLite;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    :goto_1
    move-object v2, v8

    goto :goto_0

    .line 165
    :cond_2
    invoke-static {p3, p2, v4, p4, p5}, Lcom/explorestack/protobuf/ArrayDecoders;->skipField(I[BIILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    move-object v3, v0

    :goto_2
    if-ge v4, p4, :cond_8

    .line 174
    invoke-static {p2, v4, p5}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint32([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    .line 175
    iget v6, p5, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->int1:I

    .line 176
    invoke-static {v6}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v7

    .line 177
    invoke-static {v6}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v8

    if-eq v7, v5, :cond_6

    const/4 v9, 0x3

    if-eq v7, v9, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    .line 192
    invoke-static {}, Lcom/explorestack/protobuf/Protobuf;->getInstance()Lcom/explorestack/protobuf/Protobuf;

    move-result-object v6

    .line 193
    invoke-virtual {v2}, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/explorestack/protobuf/MessageLite;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 192
    invoke-virtual {v6, v7}, Lcom/explorestack/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/explorestack/protobuf/Schema;

    move-result-object v6

    .line 191
    invoke-static {v6, p2, v4, p4, p5}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeMessageField(Lcom/explorestack/protobuf/Schema;[BIILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    .line 195
    iget-object v6, v2, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v7, p5, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {p1, v6, v7}, Lcom/explorestack/protobuf/FieldSet;->setField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-ne v8, v5, :cond_7

    .line 199
    invoke-static {p2, v4, p5}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeBytes([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    .line 200
    iget-object v3, p5, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    check-cast v3, Lcom/explorestack/protobuf/ByteString;

    goto :goto_2

    :cond_6
    if-nez v8, :cond_7

    .line 181
    invoke-static {p2, v4, p5}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint32([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    .line 182
    iget p3, p5, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->int1:I

    .line 183
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSetSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    iget-object v6, p5, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->extensionRegistry:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    iget-object v7, p0, Lcom/explorestack/protobuf/MessageSetSchema;->defaultInstance:Lcom/explorestack/protobuf/MessageLite;

    .line 185
    invoke-virtual {v2, v6, v7, p3}, Lcom/explorestack/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;

    goto :goto_2

    .line 208
    :cond_7
    :goto_3
    sget v7, Lcom/explorestack/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    if-eq v6, v7, :cond_8

    .line 211
    invoke-static {v6, p2, v4, p4, p5}, Lcom/explorestack/protobuf/ArrayDecoders;->skipField(I[BIILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    .line 216
    invoke-static {p3, v5}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result p3

    .line 215
    invoke-virtual {v1, p3, v3}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    :cond_9
    move p3, v4

    goto/16 :goto_0

    :cond_a
    if-ne p3, p4, :cond_b

    return-void

    .line 220
    :cond_b
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final newInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSetSchema;->defaultInstance:Lcom/explorestack/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageLite;->newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageLite$Builder;->buildPartial()Lcom/explorestack/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/explorestack/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSetSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/explorestack/protobuf/FieldSet;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 105
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 107
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    .line 108
    invoke-interface {v2}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    move-result-object v3

    sget-object v4, Lcom/explorestack/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$JavaType;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 111
    instance-of v3, v1, Lcom/explorestack/protobuf/LazyField$LazyEntry;

    if-eqz v3, :cond_0

    .line 113
    invoke-interface {v2}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    check-cast v1, Lcom/explorestack/protobuf/LazyField$LazyEntry;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/LazyField$LazyEntry;->getField()Lcom/explorestack/protobuf/LazyField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/LazyField;->toByteString()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    .line 112
    invoke-interface {p2, v2, v1}, Lcom/explorestack/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-interface {v2}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/explorestack/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v0, p1, p2}, Lcom/explorestack/protobuf/MessageSetSchema;->writeUnknownFieldsHelper(Lcom/explorestack/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V

    return-void
.end method
