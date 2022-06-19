.class public final Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;
.super Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodDescriptor"
.end annotation


# instance fields
.field private final file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private inputType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private outputType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private proto:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

.field private final service:Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2064
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$1;)V

    .line 2065
    iput p4, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->index:I

    .line 2066
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 2067
    iput-object p2, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2068
    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->service:Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;

    .line 2070
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->getFullName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->fullName:Ljava/lang/String;

    .line 2072
    invoke-static {p2}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;ILcom/explorestack/protobuf/Descriptors$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1983
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1983
    invoke-direct {p0}, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->crossLink()V

    return-void
.end method

.method static synthetic access$3100(Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;)V
    .locals 0

    .line 1983
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->setProto(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    return-void
.end method

.method private crossLink()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 2076
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2077
    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 2078
    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;->TYPES_ONLY:Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    .line 2077
    invoke-virtual {v0, v1, p0, v2}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->lookupSymbol(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 2079
    instance-of v1, v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x0

    const-string v3, "\" is not a message type."

    const-string v4, "\""

    if-eqz v1, :cond_1

    .line 2083
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->inputType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2085
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2086
    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 2087
    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;->TYPES_ONLY:Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    .line 2086
    invoke-virtual {v0, v1, p0, v5}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->lookupSymbol(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 2088
    instance-of v1, v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-eqz v1, :cond_0

    .line 2092
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->outputType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-void

    .line 2089
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 2090
    invoke-virtual {v4}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    .line 2080
    :cond_1
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 2081
    invoke-virtual {v4}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0
.end method

.method private setProto(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;)V
    .locals 0

    .line 2097
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-void
.end method


# virtual methods
.method public final getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 2016
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public final getFullName()Ljava/lang/String;
    .locals 1

    .line 2010
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    .line 1988
    iget v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->index:I

    return v0
.end method

.method public final getInputType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2026
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->inputType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 2000
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .line 2046
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getOutputType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2031
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->outputType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getService()Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;
    .locals 1

    .line 2021
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->service:Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;

    return-object v0
.end method

.method public final isClientStreaming()Z
    .locals 1

    .line 2036
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getClientStreaming()Z

    move-result v0

    return v0
.end method

.method public final isServerStreaming()Z
    .locals 1

    .line 2041
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getServerStreaming()Z

    move-result v0

    return v0
.end method

.method public final toProto()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1

    .line 1994
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method public final bridge synthetic toProto()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1983
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method
