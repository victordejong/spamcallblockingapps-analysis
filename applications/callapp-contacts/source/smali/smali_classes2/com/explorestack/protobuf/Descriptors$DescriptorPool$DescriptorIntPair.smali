.class final Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors$DescriptorPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DescriptorIntPair"
.end annotation


# instance fields
.field private final descriptor:Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

.field private final number:I


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;I)V
    .locals 0

    .line 2510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2511
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;->descriptor:Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    .line 2512
    iput p2, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;->number:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 2522
    instance-of v0, p1, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2525
    :cond_0
    check-cast p1, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    .line 2526
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;->descriptor:Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    iget-object v2, p1, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;->descriptor:Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;->number:I

    iget p1, p1, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;->number:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 2517
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;->descriptor:Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xffff

    mul-int v0, v0, v1

    iget v1, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;->number:I

    add-int/2addr v0, v1

    return v0
.end method
