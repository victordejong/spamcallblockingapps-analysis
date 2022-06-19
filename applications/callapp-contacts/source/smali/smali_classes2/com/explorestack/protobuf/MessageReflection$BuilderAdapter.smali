.class Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;
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
    name = "BuilderAdapter"
.end annotation


# instance fields
.field private final builder:Lcom/explorestack/protobuf/Message$Builder;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/Message$Builder;)V
    .locals 0

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/explorestack/protobuf/Message$Builder;

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/MessageReflection$MergeTarget;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/explorestack/protobuf/Message$Builder;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/Message$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;

    return-object p0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/MessageReflection$MergeTarget;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/explorestack/protobuf/Message$Builder;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Message$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;

    return-object p0
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/MessageReflection$MergeTarget;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/explorestack/protobuf/Message$Builder;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Message$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;

    return-object p0
.end method

.method public findExtensionByName(Lcom/explorestack/protobuf/ExtensionRegistry;Ljava/lang/String;)Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 0

    .line 421
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/ExtensionRegistry;->findImmutableExtensionByName(Ljava/lang/String;)Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object p1

    return-object p1
.end method

.method public findExtensionByNumber(Lcom/explorestack/protobuf/ExtensionRegistry;Lcom/explorestack/protobuf/Descriptors$Descriptor;I)Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 0

    .line 427
    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/ExtensionRegistry;->findImmutableExtensionByNumber(Lcom/explorestack/protobuf/Descriptors$Descriptor;I)Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object p1

    return-object p1
.end method

.method public finish()Ljava/lang/Object;
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/explorestack/protobuf/Message$Builder;

    invoke-interface {v0}, Lcom/explorestack/protobuf/Message$Builder;->buildPartial()Lcom/explorestack/protobuf/Message;

    move-result-object v0

    return-object v0
.end method

.method public getContainerType()Lcom/explorestack/protobuf/MessageReflection$MergeTarget$ContainerType;
    .locals 1

    .line 415
    sget-object v0, Lcom/explorestack/protobuf/MessageReflection$MergeTarget$ContainerType;->MESSAGE:Lcom/explorestack/protobuf/MessageReflection$MergeTarget$ContainerType;

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/explorestack/protobuf/Message$Builder;

    invoke-interface {v0}, Lcom/explorestack/protobuf/Message$Builder;->getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/explorestack/protobuf/Message$Builder;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Message$Builder;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOneofFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/explorestack/protobuf/Message$Builder;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Message$Builder;->getOneofFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public getUtf8Validation(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/WireFormat$Utf8Validation;
    .locals 1

    .line 534
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->needsUtf8Check()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    sget-object p1, Lcom/explorestack/protobuf/WireFormat$Utf8Validation;->STRICT:Lcom/explorestack/protobuf/WireFormat$Utf8Validation;

    return-object p1

    .line 538
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/explorestack/protobuf/Message$Builder;

    instance-of p1, p1, Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    if-eqz p1, :cond_1

    .line 539
    sget-object p1, Lcom/explorestack/protobuf/WireFormat$Utf8Validation;->LAZY:Lcom/explorestack/protobuf/WireFormat$Utf8Validation;

    return-object p1

    .line 541
    :cond_1
    sget-object p1, Lcom/explorestack/protobuf/WireFormat$Utf8Validation;->LOOSE:Lcom/explorestack/protobuf/WireFormat$Utf8Validation;

    return-object p1
.end method

.method public hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/explorestack/protobuf/Message$Builder;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Message$Builder;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    move-result p1

    return p1
.end method

.method public hasOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Z
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/explorestack/protobuf/Message$Builder;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Message$Builder;->hasOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Z

    move-result p1

    return p1
.end method

.method public newEmptyTargetForField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/MessageReflection$MergeTarget;
    .locals 0

    if-eqz p2, :cond_0

    .line 525
    invoke-interface {p2}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p1

    goto :goto_0

    .line 527
    :cond_0
    iget-object p2, p0, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/explorestack/protobuf/Message$Builder;

    invoke-interface {p2, p1}, Lcom/explorestack/protobuf/Message$Builder;->newBuilderForField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p1

    .line 529
    :goto_0
    new-instance p2, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;-><init>(Lcom/explorestack/protobuf/Message$Builder;)V

    return-object p2
.end method

.method public newMergeTargetForField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/MessageReflection$MergeTarget;
    .locals 1

    if-eqz p2, :cond_0

    .line 507
    invoke-interface {p2}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p2

    goto :goto_0

    .line 509
    :cond_0
    iget-object p2, p0, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/explorestack/protobuf/Message$Builder;

    invoke-interface {p2, p1}, Lcom/explorestack/protobuf/Message$Builder;->newBuilderForField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p2

    .line 511
    :goto_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 512
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Message;

    if-eqz p1, :cond_1

    .line 514
    invoke-interface {p2, p1}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;

    .line 517
    :cond_1
    new-instance p1, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;

    invoke-direct {p1, p2}, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;-><init>(Lcom/explorestack/protobuf/Message$Builder;)V

    return-object p1
.end method

.method public parseGroup(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/Message;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 440
    invoke-interface {p4}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p4

    goto :goto_0

    .line 442
    :cond_0
    iget-object p4, p0, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/explorestack/protobuf/Message$Builder;

    invoke-interface {p4, p3}, Lcom/explorestack/protobuf/Message$Builder;->newBuilderForField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p4

    .line 444
    :goto_0
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 445
    invoke-virtual {p0, p3}, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Message;

    if-eqz v0, :cond_1

    .line 447
    invoke-interface {p4, v0}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;

    .line 450
    :cond_1
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result p3

    invoke-virtual {p1, p3, p4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readGroup(ILcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    .line 451
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

    if-eqz p4, :cond_0

    .line 464
    invoke-interface {p4}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p4

    goto :goto_0

    .line 466
    :cond_0
    iget-object p4, p0, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/explorestack/protobuf/Message$Builder;

    invoke-interface {p4, p3}, Lcom/explorestack/protobuf/Message$Builder;->newBuilderForField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p4

    .line 468
    :goto_0
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    invoke-virtual {p0, p3}, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/explorestack/protobuf/Message;

    if-eqz p3, :cond_1

    .line 471
    invoke-interface {p4, p3}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;

    .line 474
    :cond_1
    invoke-virtual {p1, p4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    .line 475
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

    if-eqz p4, :cond_0

    .line 488
    invoke-interface {p4}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p4

    goto :goto_0

    .line 490
    :cond_0
    iget-object p4, p0, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/explorestack/protobuf/Message$Builder;

    invoke-interface {p4, p3}, Lcom/explorestack/protobuf/Message$Builder;->newBuilderForField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p4

    .line 492
    :goto_0
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    invoke-virtual {p0, p3}, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/explorestack/protobuf/Message;

    if-eqz p3, :cond_1

    .line 495
    invoke-interface {p4, p3}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;

    .line 498
    :cond_1
    invoke-interface {p4, p1, p2}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message$Builder;

    .line 499
    invoke-interface {p4}, Lcom/explorestack/protobuf/Message$Builder;->buildPartial()Lcom/explorestack/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/MessageReflection$MergeTarget;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/explorestack/protobuf/Message$Builder;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/Message$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;

    return-object p0
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/MessageReflection$MergeTarget;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/explorestack/protobuf/Message$Builder;

    invoke-interface {v0, p1, p2, p3}, Lcom/explorestack/protobuf/Message$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;

    return-object p0
.end method
