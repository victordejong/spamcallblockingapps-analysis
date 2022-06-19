.class Lcom/explorestack/protobuf/MessageReflection$ExtensionAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MessageReflection$MergeTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/MessageReflection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExtensionAdapter"
.end annotation


# instance fields
.field private final extensions:Lcom/explorestack/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/FieldSet<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/FieldSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/FieldSet<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    iput-object p1, p0, Lcom/explorestack/protobuf/MessageReflection$ExtensionAdapter;->extensions:Lcom/explorestack/protobuf/FieldSet;

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/MessageReflection$MergeTarget;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$ExtensionAdapter;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/FieldSet;->addRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/MessageReflection$MergeTarget;
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$ExtensionAdapter;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->clearField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)V

    return-object p0
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/MessageReflection$MergeTarget;
    .locals 0

    return-object p0
.end method

.method public findExtensionByName(Lcom/explorestack/protobuf/ExtensionRegistry;Ljava/lang/String;)Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 0

    .line 623
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/ExtensionRegistry;->findImmutableExtensionByName(Ljava/lang/String;)Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object p1

    return-object p1
.end method

.method public findExtensionByNumber(Lcom/explorestack/protobuf/ExtensionRegistry;Lcom/explorestack/protobuf/Descriptors$Descriptor;I)Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 0

    .line 629
    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/ExtensionRegistry;->findImmutableExtensionByNumber(Lcom/explorestack/protobuf/Descriptors$Descriptor;I)Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object p1

    return-object p1
.end method

.method public finish()Ljava/lang/Object;
    .locals 2

    .line 709
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "finish() called on FieldSet object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContainerType()Lcom/explorestack/protobuf/MessageReflection$MergeTarget$ContainerType;
    .locals 1

    .line 617
    sget-object v0, Lcom/explorestack/protobuf/MessageReflection$MergeTarget$ContainerType;->EXTENSION_SET:Lcom/explorestack/protobuf/MessageReflection$MergeTarget$ContainerType;

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 2

    .line 561
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getDescriptorForType() called on FieldSet object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$ExtensionAdapter;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOneofFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getUtf8Validation(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/WireFormat$Utf8Validation;
    .locals 0

    .line 700
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->needsUtf8Check()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 701
    sget-object p1, Lcom/explorestack/protobuf/WireFormat$Utf8Validation;->STRICT:Lcom/explorestack/protobuf/WireFormat$Utf8Validation;

    return-object p1

    .line 704
    :cond_0
    sget-object p1, Lcom/explorestack/protobuf/WireFormat$Utf8Validation;->LOOSE:Lcom/explorestack/protobuf/WireFormat$Utf8Validation;

    return-object p1
.end method

.method public hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$ExtensionAdapter;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->hasField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1
.end method

.method public hasOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public newEmptyTargetForField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/MessageReflection$MergeTarget;
    .locals 0

    .line 695
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "newEmptyTargetForField() called on FieldSet object"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newMergeTargetForField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/MessageReflection$MergeTarget;
    .locals 0

    .line 689
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "newMergeTargetForField() called on FieldSet object"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parseGroup(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/Message;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 639
    invoke-interface {p4}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p4

    .line 640
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    invoke-virtual {p0, p3}, Lcom/explorestack/protobuf/MessageReflection$ExtensionAdapter;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Message;

    if-eqz v0, :cond_0

    .line 643
    invoke-interface {p4, v0}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;

    .line 646
    :cond_0
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result p3

    invoke-virtual {p1, p3, p4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readGroup(ILcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    .line 647
    invoke-interface {p4}, Lcom/explorestack/protobuf/Message$Builder;->buildPartial()Lcom/explorestack/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method public parseMessage(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/Message;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 657
    invoke-interface {p4}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p4

    .line 658
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    invoke-virtual {p0, p3}, Lcom/explorestack/protobuf/MessageReflection$ExtensionAdapter;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/explorestack/protobuf/Message;

    if-eqz p3, :cond_0

    .line 661
    invoke-interface {p4, p3}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;

    .line 664
    :cond_0
    invoke-virtual {p1, p4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    .line 665
    invoke-interface {p4}, Lcom/explorestack/protobuf/Message$Builder;->buildPartial()Lcom/explorestack/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method public parseMessageFromBytes(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/Message;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 675
    invoke-interface {p4}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p4

    .line 676
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 677
    invoke-virtual {p0, p3}, Lcom/explorestack/protobuf/MessageReflection$ExtensionAdapter;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/explorestack/protobuf/Message;

    if-eqz p3, :cond_0

    .line 679
    invoke-interface {p4, p3}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;

    .line 682
    :cond_0
    invoke-interface {p4, p1, p2}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message$Builder;

    .line 683
    invoke-interface {p4}, Lcom/explorestack/protobuf/Message$Builder;->buildPartial()Lcom/explorestack/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/MessageReflection$MergeTarget;
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$ExtensionAdapter;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/FieldSet;->setField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/MessageReflection$MergeTarget;
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$ExtensionAdapter;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/explorestack/protobuf/FieldSet;->setRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    return-object p0
.end method
