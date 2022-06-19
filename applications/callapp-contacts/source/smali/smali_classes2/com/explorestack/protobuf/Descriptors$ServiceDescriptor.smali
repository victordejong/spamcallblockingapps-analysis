.class public final Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;
.super Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceDescriptor"
.end annotation


# instance fields
.field private final file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private methods:[Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;

.field private proto:Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1950
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$1;)V

    .line 1951
    iput p3, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->index:I

    .line 1952
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    .line 1953
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, v0, p3}, Lcom/explorestack/protobuf/Descriptors;->access$1700(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->fullName:Ljava/lang/String;

    .line 1954
    iput-object p2, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 1956
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethodCount()I

    move-result p3

    new-array p3, p3, [Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;

    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->methods:[Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;

    const/4 p3, 0x0

    .line 1957
    :goto_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethodCount()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 1958
    iget-object v6, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->methods:[Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;

    new-instance v7, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;

    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethod(I)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, p2

    move-object v3, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;ILcom/explorestack/protobuf/Descriptors$1;)V

    aput-object v7, v6, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1961
    :cond_0
    invoke-static {p2}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;ILcom/explorestack/protobuf/Descriptors$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1881
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;)V
    .locals 0

    .line 1881
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->setProto(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;)V

    return-void
.end method

.method static synthetic access$900(Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1881
    invoke-direct {p0}, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->crossLink()V

    return-void
.end method

.method private crossLink()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1965
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->methods:[Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1966
    invoke-static {v3}, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->access$3000(Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setProto(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;)V
    .locals 3

    .line 1972
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    const/4 v0, 0x0

    .line 1974
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->methods:[Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1975
    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethod(I)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->access$3100(Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final findMethodByName(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;
    .locals 3

    .line 1934
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1935
    instance-of v0, p1, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;

    if-eqz v0, :cond_0

    .line 1936
    check-cast p1, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1914
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public final getFullName()Ljava/lang/String;
    .locals 1

    .line 1908
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    .line 1886
    iget v0, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->index:I

    return v0
.end method

.method public final getMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;",
            ">;"
        }
    .end annotation

    .line 1924
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->methods:[Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1898
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOptions()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1

    .line 1919
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public final toProto()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .line 1892
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method

.method public final bridge synthetic toProto()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1881
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method
