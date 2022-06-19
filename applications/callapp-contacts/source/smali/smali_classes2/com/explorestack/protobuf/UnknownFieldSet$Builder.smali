.class public final Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MessageLite$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/UnknownFieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/UnknownFieldSet$Field;",
            ">;"
        }
    .end annotation
.end field

.field private lastField:Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

.field private lastFieldNumber:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .locals 1

    .line 308
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->create()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .locals 1

    .line 321
    new-instance v0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    invoke-direct {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;-><init>()V

    .line 322
    invoke-direct {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->reinitialize()V

    return-object v0
.end method

.method private getFieldBuilder(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastField:Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    if-eqz v0, :cond_1

    .line 331
    iget v1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastFieldNumber:I

    if-ne p1, v1, :cond_0

    return-object v0

    .line 335
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->addField(ILcom/explorestack/protobuf/UnknownFieldSet$Field;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    .line 341
    iput p1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastFieldNumber:I

    .line 342
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastField:Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    if-eqz v0, :cond_3

    .line 344
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    .line 346
    :cond_3
    iget-object p1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastField:Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    return-object p1
.end method

.method private reinitialize()V
    .locals 1

    .line 394
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    const/4 v0, 0x0

    .line 395
    iput v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastFieldNumber:I

    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastField:Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    return-void
.end method


# virtual methods
.method public final addField(ILcom/explorestack/protobuf/UnknownFieldSet$Field;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .locals 1

    if-eqz p1, :cond_2

    .line 495
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastField:Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastFieldNumber:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 497
    iput-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastField:Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    const/4 v0, 0x0

    .line 498
    iput v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastFieldNumber:I

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 493
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

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

    const/4 v0, 0x0

    .line 512
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    .line 513
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 308
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 3

    const/4 v0, 0x0

    .line 359
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    .line 361
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    goto :goto_0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    check-cast v0, Ljava/util/TreeMap;

    .line 366
    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 367
    new-instance v1, Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object v2, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/explorestack/protobuf/UnknownFieldSet;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    move-object v0, v1

    :goto_0
    const/4 v1, 0x0

    .line 369
    iput-object v1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 308
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->buildPartial()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 308
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->clear()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .locals 0

    .line 402
    invoke-direct {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->reinitialize()V

    return-object p0
.end method

.method public final clearField(I)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .locals 2

    if-eqz p1, :cond_2

    .line 411
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastField:Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastFieldNumber:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 413
    iput-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastField:Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    const/4 v0, 0x0

    .line 414
    iput v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastFieldNumber:I

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0

    .line 409
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Zero is not a valid field number."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 308
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->clone()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .locals 4

    const/4 v0, 0x0

    .line 381
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    .line 383
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    check-cast v0, Ljava/util/TreeMap;

    .line 384
    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 385
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    new-instance v2, Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object v3, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    invoke-direct {v2, v3, v0}, Lcom/explorestack/protobuf/UnknownFieldSet;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->clone()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 308
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 390
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public final hasField(I)Z
    .locals 1

    if-eqz p1, :cond_2

    .line 484
    iget v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->lastFieldNumber:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 482
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Zero is not a valid field number."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeDelimitedFrom(Ljava/io/InputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 613
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 617
    :cond_0
    invoke-static {v0, p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v0

    .line 618
    new-instance v1, Lcom/explorestack/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v1, p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 619
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    const/4 p1, 0x1

    return p1
.end method

.method public final mergeDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public final mergeField(ILcom/explorestack/protobuf/UnknownFieldSet$Field;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .locals 1

    if-eqz p1, :cond_1

    .line 443
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->hasField(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    goto :goto_0

    .line 449
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->addField(ILcom/explorestack/protobuf/UnknownFieldSet$Field;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    :goto_0
    return-object p0

    .line 441
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final mergeFieldFrom(ILcom/explorestack/protobuf/CodedInputStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 536
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    .line 554
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/explorestack/protobuf/CodedInputStream;->readFixed32()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->addFixed32(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    return v1

    .line 557
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 547
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    .line 548
    invoke-static {}, Lcom/explorestack/protobuf/ExtensionRegistry;->getEmptyRegistry()Lcom/explorestack/protobuf/ExtensionRegistry;

    move-result-object v2

    invoke-virtual {p2, v0, p1, v2}, Lcom/explorestack/protobuf/CodedInputStream;->readGroup(ILcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    .line 549
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->addGroup(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    return v1

    .line 544
    :cond_3
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->addLengthDelimited(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    return v1

    .line 541
    :cond_4
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/explorestack/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->addFixed64(J)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    return v1

    .line 538
    :cond_5
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/explorestack/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->addVarint(J)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    return v1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0

    .line 308
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom([B)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom([B)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom([BII)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom([BII)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom([BIILcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom([BIILcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 568
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->newCodedInput()Lcom/explorestack/protobuf/CodedInputStream;

    move-result-object p1

    .line 569
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    const/4 v0, 0x0

    .line 570
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 575
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 573
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 641
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    invoke-virtual {p0, v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFieldFrom(ILcom/explorestack/protobuf/CodedInputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 634
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .locals 1

    .line 682
    instance-of v0, p1, Lcom/explorestack/protobuf/UnknownFieldSet;

    if-eqz v0, :cond_0

    .line 683
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1

    .line 685
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .locals 2

    .line 427
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 428
    invoke-static {p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->access$200(Lcom/explorestack/protobuf/UnknownFieldSet;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 429
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-virtual {p0, v1, v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeField(ILcom/explorestack/protobuf/UnknownFieldSet$Field;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final mergeFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 605
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/explorestack/protobuf/CodedInputStream;

    move-result-object p1

    .line 606
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    const/4 v0, 0x0

    .line 607
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedInputStream;->checkLastTagWas(I)V

    return-object p0
.end method

.method public final mergeFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 677
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom([B)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 587
    :try_start_0
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedInputStream;->newInstance([B)Lcom/explorestack/protobuf/CodedInputStream;

    move-result-object p1

    .line 588
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    const/4 v0, 0x0

    .line 589
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 594
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 592
    throw p1
.end method

.method public final mergeFrom([BII)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 647
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/explorestack/protobuf/CodedInputStream;->newInstance([BII)Lcom/explorestack/protobuf/CodedInputStream;

    move-result-object p1

    .line 648
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    const/4 p2, 0x0

    .line 649
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 654
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 652
    throw p1
.end method

.method public final mergeFrom([BIILcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 670
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom([BII)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 663
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom([B)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeLengthDelimitedField(ILcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 475
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->addLengthDelimited(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    return-object p0

    .line 473
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final mergeVarintField(II)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 462
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p1

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->addVarint(J)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    return-object p0

    .line 460
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
