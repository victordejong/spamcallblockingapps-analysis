.class final Lcom/explorestack/protobuf/GeneratedMessage$2;
.super Lcom/explorestack/protobuf/GeneratedMessage$CachedDescriptorRetriever;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/protobuf/GeneratedMessage;->newMessageScopedGeneratedExtension(Lcom/explorestack/protobuf/Message;ILjava/lang/Class;Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$descriptorIndex:I

.field final synthetic val$scope:Lcom/explorestack/protobuf/Message;


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/Message;I)V
    .locals 0

    .line 1624
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessage$2;->val$scope:Lcom/explorestack/protobuf/Message;

    iput p2, p0, Lcom/explorestack/protobuf/GeneratedMessage$2;->val$descriptorIndex:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$CachedDescriptorRetriever;-><init>(Lcom/explorestack/protobuf/GeneratedMessage$1;)V

    return-void
.end method


# virtual methods
.method public final loadDescriptor()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 2

    .line 1627
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$2;->val$scope:Lcom/explorestack/protobuf/Message;

    invoke-interface {v0}, Lcom/explorestack/protobuf/Message;->getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getExtensions()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/explorestack/protobuf/GeneratedMessage$2;->val$descriptorIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    return-object v0
.end method
