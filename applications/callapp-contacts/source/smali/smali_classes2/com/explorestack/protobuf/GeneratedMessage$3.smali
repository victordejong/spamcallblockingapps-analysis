.class final Lcom/explorestack/protobuf/GeneratedMessage$3;
.super Lcom/explorestack/protobuf/GeneratedMessage$CachedDescriptorRetriever;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/protobuf/GeneratedMessage;->newMessageScopedGeneratedExtension(Lcom/explorestack/protobuf/Message;Ljava/lang/String;Ljava/lang/Class;Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$scope:Lcom/explorestack/protobuf/Message;


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/Message;Ljava/lang/String;)V
    .locals 0

    .line 1684
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessage$3;->val$scope:Lcom/explorestack/protobuf/Message;

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessage$3;->val$name:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$CachedDescriptorRetriever;-><init>(Lcom/explorestack/protobuf/GeneratedMessage$1;)V

    return-void
.end method


# virtual methods
.method protected final loadDescriptor()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 2

    .line 1687
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$3;->val$scope:Lcom/explorestack/protobuf/Message;

    invoke-interface {v0}, Lcom/explorestack/protobuf/Message;->getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessage$3;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->findFieldByName(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    return-object v0
.end method
