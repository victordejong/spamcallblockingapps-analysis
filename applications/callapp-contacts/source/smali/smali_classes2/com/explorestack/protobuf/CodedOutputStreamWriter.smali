.class final Lcom/explorestack/protobuf/CodedOutputStreamWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/Writer;


# instance fields
.field private final output:Lcom/explorestack/protobuf/CodedOutputStream;


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    .line 54
    invoke-static {p1, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/CodedOutputStream;

    iput-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    .line 55
    iput-object p0, p1, Lcom/explorestack/protobuf/CodedOutputStream;->wrapper:Lcom/explorestack/protobuf/CodedOutputStreamWriter;

    return-void
.end method

.method public static forCodedOutput(Lcom/explorestack/protobuf/CodedOutputStream;)Lcom/explorestack/protobuf/CodedOutputStreamWriter;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStream;->wrapper:Lcom/explorestack/protobuf/CodedOutputStreamWriter;

    if-eqz v0, :cond_0

    .line 48
    iget-object p0, p0, Lcom/explorestack/protobuf/CodedOutputStream;->wrapper:Lcom/explorestack/protobuf/CodedOutputStreamWriter;

    return-object p0

    .line 50
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/CodedOutputStreamWriter;-><init>(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-object v0
.end method

.method private writeDeterministicBooleanMapEntry(IZLjava/lang/Object;Lcom/explorestack/protobuf/MapEntryLite$Metadata;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(IZTV;",
            "Lcom/explorestack/protobuf/MapEntryLite$Metadata<",
            "Ljava/lang/Boolean;",
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 636
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    .line 637
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p4, v0, p3}, Lcom/explorestack/protobuf/MapEntryLite;->computeSerializedSize(Lcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 638
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p4, p2, p3}, Lcom/explorestack/protobuf/MapEntryLite;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private writeDeterministicIntegerMap(ILcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/explorestack/protobuf/MapEntryLite$Metadata<",
            "Ljava/lang/Integer;",
            "TV;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 644
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 646
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    .line 647
    aput v5, v1, v4

    move v4, v6

    goto :goto_0

    .line 649
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    :goto_1
    if-ge v3, v0, :cond_1

    .line 650
    aget v2, v1, v3

    .line 651
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 652
    iget-object v5, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    const/4 v6, 0x2

    invoke-virtual {v5, p1, v6}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    .line 653
    iget-object v5, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2, v6, v4}, Lcom/explorestack/protobuf/MapEntryLite;->computeSerializedSize(Lcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 654
    iget-object v5, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5, p2, v2, v4}, Lcom/explorestack/protobuf/MapEntryLite;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private writeDeterministicLongMap(ILcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/explorestack/protobuf/MapEntryLite$Metadata<",
            "Ljava/lang/Long;",
            "TV;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 661
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [J

    .line 663
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-int/lit8 v7, v4, 0x1

    .line 664
    aput-wide v5, v1, v4

    move v4, v7

    goto :goto_0

    .line 666
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    :goto_1
    if-ge v3, v0, :cond_1

    .line 667
    aget-wide v4, v1, v3

    .line 668
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 669
    iget-object v6, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    const/4 v7, 0x2

    invoke-virtual {v6, p1, v7}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    .line 670
    iget-object v6, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {p2, v7, v2}, Lcom/explorestack/protobuf/MapEntryLite;->computeSerializedSize(Lcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 671
    iget-object v6, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v6, p2, v4, v2}, Lcom/explorestack/protobuf/MapEntryLite;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private writeDeterministicMap(ILcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/explorestack/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 596
    sget-object v0, Lcom/explorestack/protobuf/CodedOutputStreamWriter$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    iget-object v1, p2, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->keyType:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 629
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "does not support key type: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->keyType:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 625
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->writeDeterministicStringMap(ILcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    return-void

    .line 621
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->writeDeterministicLongMap(ILcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    return-void

    .line 613
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->writeDeterministicIntegerMap(ILcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    return-void

    .line 599
    :pswitch_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 600
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->writeDeterministicBooleanMapEntry(IZLjava/lang/Object;Lcom/explorestack/protobuf/MapEntryLite$Metadata;)V

    .line 603
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    .line 604
    invoke-direct {p0, p1, v0, p3, p2}, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->writeDeterministicBooleanMapEntry(IZLjava/lang/Object;Lcom/explorestack/protobuf/MapEntryLite$Metadata;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeDeterministicStringMap(ILcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/explorestack/protobuf/MapEntryLite$Metadata<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 678
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 680
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v6, v4, 0x1

    .line 681
    aput-object v5, v1, v4

    move v4, v6

    goto :goto_0

    .line 683
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :goto_1
    if-ge v3, v0, :cond_1

    .line 684
    aget-object v2, v1, v3

    .line 685
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 686
    iget-object v5, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    const/4 v6, 0x2

    invoke-virtual {v5, p1, v6}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    .line 687
    iget-object v5, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-static {p2, v2, v4}, Lcom/explorestack/protobuf/MapEntryLite;->computeSerializedSize(Lcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 688
    iget-object v5, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-static {v5, p2, v2, v4}, Lcom/explorestack/protobuf/MapEntryLite;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private writeLazyString(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    check-cast p2, Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBytes(ILcom/explorestack/protobuf/ByteString;)V

    return-void
.end method


# virtual methods
.method public final fieldOrder()Lcom/explorestack/protobuf/Writer$FieldOrder;
    .locals 1

    .line 60
    sget-object v0, Lcom/explorestack/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/explorestack/protobuf/Writer$FieldOrder;

    return-object v0
.end method

.method public final getTotalBytesWritten()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    return v0
.end method

.method public final writeBool(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    return-void
.end method

.method public final writeBoolList(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 381
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 385
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 386
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 388
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 391
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 392
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBoolNoTag(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 395
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 396
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final writeBytes(ILcom/explorestack/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBytes(ILcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public final writeBytesList(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 425
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v1, p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBytes(ILcom/explorestack/protobuf/ByteString;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeDouble(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeDouble(ID)V

    return-void
.end method

.method public final writeDoubleList(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 333
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 337
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 338
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 340
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 343
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 344
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeDoubleNoTag(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 347
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 348
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeDouble(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final writeEndGroup(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    return-void
.end method

.method public final writeEnum(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    return-void
.end method

.method public final writeEnumList(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 357
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 361
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 362
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 364
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 367
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 368
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 371
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 372
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final writeFixed32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFixed32(II)V

    return-void
.end method

.method public final writeFixed32List(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 214
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 218
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 219
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 221
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 224
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 225
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 228
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 229
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFixed32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final writeFixed64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    return-void
.end method

.method public final writeFixed64List(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 285
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 289
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 290
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 292
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 295
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 296
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 299
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 300
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final writeFloat(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    return-void
.end method

.method public final writeFloatList(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 309
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 313
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 314
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 316
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 319
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 320
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloatNoTag(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 323
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 324
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final writeGroup(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    check-cast p2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeGroup(ILcom/explorestack/protobuf/MessageLite;)V

    return-void
.end method

.method public final writeGroup(ILjava/lang/Object;Lcom/explorestack/protobuf/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    check-cast p2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {v0, p1, p2, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeGroup(ILcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/Schema;)V

    return-void
.end method

.method public final writeGroupList(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 566
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 567
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->writeGroup(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeGroupList(ILjava/util/List;Lcom/explorestack/protobuf/Schema;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/explorestack/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 573
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 574
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->writeGroup(ILjava/lang/Object;Lcom/explorestack/protobuf/Schema;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    return-void
.end method

.method public final writeInt32List(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 190
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 194
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 195
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 200
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 201
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 204
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 205
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final writeInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt64(IJ)V

    return-void
.end method

.method public final writeInt64List(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 237
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 241
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 242
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 244
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 247
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 248
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 251
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 252
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt64(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final writeMap(ILcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/explorestack/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/CodedOutputStream;->isSerializationDeterministic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->writeDeterministicMap(ILcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    return-void

    .line 585
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 586
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    .line 587
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    .line 588
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/explorestack/protobuf/MapEntryLite;->computeSerializedSize(Lcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 587
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 589
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p2, v2, v0}, Lcom/explorestack/protobuf/MapEntryLite;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final writeMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    check-cast p2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    return-void
.end method

.method public final writeMessage(ILjava/lang/Object;Lcom/explorestack/protobuf/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    check-cast p2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {v0, p1, p2, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/Schema;)V

    return-void
.end method

.method public final writeMessageList(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 552
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 553
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->writeMessage(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeMessageList(ILjava/util/List;Lcom/explorestack/protobuf/Schema;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/explorestack/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 559
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 560
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->writeMessage(ILjava/lang/Object;Lcom/explorestack/protobuf/Schema;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeMessageSetItem(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    instance-of v0, p2, Lcom/explorestack/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    check-cast p2, Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawMessageSetExtension(ILcom/explorestack/protobuf/ByteString;)V

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    check-cast p2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessageSetExtension(ILcom/explorestack/protobuf/MessageLite;)V

    return-void
.end method

.method public final writeSFixed32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeSFixed32(II)V

    return-void
.end method

.method public final writeSFixed32List(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 458
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 462
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 463
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 465
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 468
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 469
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeSFixed32NoTag(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 472
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 473
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeSFixed32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final writeSFixed64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeSFixed64(IJ)V

    return-void
.end method

.method public final writeSFixed64List(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 482
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 486
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 487
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 489
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 492
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 493
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeSFixed64NoTag(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 496
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 497
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeSFixed64(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final writeSInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeSInt32(II)V

    return-void
.end method

.method public final writeSInt32List(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 506
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 510
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 511
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 513
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 516
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 517
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeSInt32NoTag(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 520
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 521
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeSInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final writeSInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeSInt64(IJ)V

    return-void
.end method

.method public final writeSInt64List(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 530
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 534
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 535
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 537
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 540
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 541
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeSInt64NoTag(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 544
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 545
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeSInt64(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final writeStartGroup(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    return-void
.end method

.method public final writeString(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    return-void
.end method

.method public final writeStringList(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    instance-of v0, p2, Lcom/explorestack/protobuf/LazyStringList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 404
    move-object v0, p2

    check-cast v0, Lcom/explorestack/protobuf/LazyStringList;

    .line 405
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 406
    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->writeLazyString(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 409
    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final writeUInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    return-void
.end method

.method public final writeUInt32List(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 434
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 438
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 439
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 441
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 444
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 445
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 448
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 449
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final writeUInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    return-void
.end method

.method public final writeUInt64List(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 261
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 265
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 266
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 271
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 272
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 275
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 276
    iget-object p3, p0, Lcom/explorestack/protobuf/CodedOutputStreamWriter;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
