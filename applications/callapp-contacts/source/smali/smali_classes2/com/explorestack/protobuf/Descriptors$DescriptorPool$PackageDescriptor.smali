.class final Lcom/explorestack/protobuf/Descriptors$DescriptorPool$PackageDescriptor;
.super Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors$DescriptorPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PackageDescriptor"
.end annotation


# instance fields
.field private final file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)V
    .locals 1

    const/4 v0, 0x0

    .line 2461
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$1;)V

    .line 2462
    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2463
    iput-object p2, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->fullName:Ljava/lang/String;

    .line 2464
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 2458
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public final getFullName()Ljava/lang/String;
    .locals 1

    .line 2453
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 2448
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final toProto()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 2443
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method
