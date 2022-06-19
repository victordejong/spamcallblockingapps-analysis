.class public final Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
.super Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private final file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

.field private final unknownValues:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private values:[Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1736
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$1;)V

    .line 1728
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->unknownValues:Ljava/util/WeakHashMap;

    .line 1737
    iput p4, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->index:I

    .line 1738
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 1739
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/explorestack/protobuf/Descriptors;->access$1700(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->fullName:Ljava/lang/String;

    .line 1740
    iput-object p2, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 1741
    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 1743
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->getValueCount()I

    move-result p3

    if-eqz p3, :cond_1

    .line 1749
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->getValueCount()I

    move-result p3

    new-array p3, p3, [Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->values:[Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    const/4 p3, 0x0

    .line 1750
    :goto_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->getValueCount()I

    move-result p4

    if-ge p3, p4, :cond_0

    .line 1751
    iget-object p4, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->values:[Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    new-instance v6, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->getValue(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p2

    move-object v3, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;ILcom/explorestack/protobuf/Descriptors$1;)V

    aput-object v6, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1754
    :cond_0
    invoke-static {p2}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;)V

    return-void

    .line 1746
    :cond_1
    new-instance p1, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "Enums must contain at least one value."

    invoke-direct {p1, p0, p2, v0}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;ILcom/explorestack/protobuf/Descriptors$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1583
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)V
    .locals 0

    .line 1583
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->setProto(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)V

    return-void
.end method

.method private setProto(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)V
    .locals 3

    .line 1759
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v0, 0x0

    .line 1761
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->values:[Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1762
    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->getValue(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->access$2800(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final findValueByName(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .locals 3

    .line 1644
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1645
    instance-of v0, p1, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    if-eqz v0, :cond_0

    .line 1646
    check-cast p1, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final findValueByNumber(I)Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 1661
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->access$2500(Lcom/explorestack/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-direct {v1, p0, p1}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object p1
.end method

.method public final bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .locals 0

    .line 1583
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public final findValueByNumberCreatingIfUnknown(I)Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .locals 3

    .line 1669
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1674
    :cond_0
    monitor-enter p0

    .line 1704
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1705
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->unknownValues:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 1707
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    :cond_1
    if-nez v0, :cond_2

    .line 1710
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;Ljava/lang/Integer;Lcom/explorestack/protobuf/Descriptors$1;)V

    .line 1711
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->unknownValues:Ljava/util/WeakHashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1624
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1619
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public final getFullName()Ljava/lang/String;
    .locals 1

    .line 1613
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    .line 1591
    iget v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->index:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1603
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOptions()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;
    .locals 1

    .line 1629
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method final getUnknownEnumValueDescriptorCount()I
    .locals 1

    .line 1719
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->unknownValues:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    return v0
.end method

.method public final getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;",
            ">;"
        }
    .end annotation

    .line 1634
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->values:[Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final toProto()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    .line 1597
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method public final bridge synthetic toProto()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1583
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method
