.class public abstract Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;
.super Lcom/explorestack/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/explorestack/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;",
        "Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected extensions:Lcom/explorestack/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/FieldSet<",
            "Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 493
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite;-><init>()V

    .line 500
    invoke-static {}, Lcom/explorestack/protobuf/FieldSet;->emptySet()Lcom/explorestack/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    return-void
.end method

.method private eagerlyMergeMessageSetExtension(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/CodedInputStream;",
            "Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 755
    invoke-static {p4, v0}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move v6, p4

    .line 756
    invoke-direct/range {v1 .. v6}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->parseExtension(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;II)Z

    return-void
.end method

.method private mergeMessageSetExtensionFromBytes(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/ByteString;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            "Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 765
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    iget-object v1, p3, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/FieldSet;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/MessageLite;

    if-eqz v0, :cond_0

    .line 767
    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageLite;->toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 770
    invoke-virtual {p3}, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/explorestack/protobuf/MessageLite;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageLite;->newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;

    move-result-object v0

    .line 772
    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/MessageLite$Builder;->mergeFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;

    .line 773
    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageLite$Builder;->build()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    .line 775
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/explorestack/protobuf/FieldSet;

    move-result-object p2

    iget-object v0, p3, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 776
    invoke-virtual {p3, p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/explorestack/protobuf/FieldSet;->setField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-void
.end method

.method private mergeMessageSetExtensionFromCodedStream(Lcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/explorestack/protobuf/MessageLite;",
            ">(TMessageType;",
            "Lcom/explorestack/protobuf/CodedInputStream;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v2

    .line 704
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_4

    .line 709
    sget v5, Lcom/explorestack/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    if-ne v4, v5, :cond_1

    .line 710
    invoke-virtual {p2}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    if-eqz v1, :cond_0

    .line 712
    invoke-virtual {p3, p1, v1}, Lcom/explorestack/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/explorestack/protobuf/MessageLite;I)Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v3

    goto :goto_0

    .line 715
    :cond_1
    sget v5, Lcom/explorestack/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    if-ne v4, v5, :cond_3

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 720
    invoke-direct {p0, p2, v3, p3, v1}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->eagerlyMergeMessageSetExtension(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)V

    move-object v2, v0

    goto :goto_0

    .line 726
    :cond_2
    invoke-virtual {p2}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    goto :goto_0

    .line 729
    :cond_3
    invoke-virtual {p2, v4}, Lcom/explorestack/protobuf/CodedInputStream;->skipField(I)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 734
    :cond_4
    sget p1, Lcom/explorestack/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/CodedInputStream;->checkLastTagWas(I)V

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    if-eqz v3, :cond_5

    .line 739
    invoke-direct {p0, v2, p3, v3}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->mergeMessageSetExtensionFromBytes(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    return-void

    :cond_5
    if-eqz v2, :cond_6

    .line 742
    invoke-virtual {p0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->mergeLengthDelimitedField(ILcom/explorestack/protobuf/ByteString;)V

    :cond_6
    return-void
.end method

.method private parseExtension(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;II)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/CodedInputStream;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            "Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;II)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    invoke-static {p4}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    .line 545
    iget-object v3, p3, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 547
    invoke-virtual {v3}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object v3

    .line 546
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/explorestack/protobuf/WireFormat$FieldType;Z)I

    move-result v3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 549
    :cond_0
    iget-object v3, p3, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-boolean v3, v3, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    if-eqz v3, :cond_1

    iget-object v3, p3, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v3, v3, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 550
    invoke-virtual {v3}, Lcom/explorestack/protobuf/WireFormat$FieldType;->isPackable()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p3, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 553
    invoke-virtual {v3}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object v3

    .line 552
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/explorestack/protobuf/WireFormat$FieldType;Z)I

    move-result v3

    if-ne v0, v3, :cond_1

    const/4 v0, 0x0

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 560
    invoke-virtual {p0, p4, p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->parseUnknownField(ILcom/explorestack/protobuf/CodedInputStream;)Z

    move-result p1

    return p1

    .line 563
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/explorestack/protobuf/FieldSet;

    if-eqz v3, :cond_6

    .line 566
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p2

    .line 567
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p2

    .line 568
    iget-object p4, p3, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p4}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object p4

    sget-object p5, Lcom/explorestack/protobuf/WireFormat$FieldType;->ENUM:Lcom/explorestack/protobuf/WireFormat$FieldType;

    if-ne p4, p5, :cond_4

    .line 569
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result p4

    if-lez p4, :cond_5

    .line 570
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result p4

    .line 571
    iget-object p5, p3, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    move-result-object p5

    invoke-interface {p5, p4}, Lcom/explorestack/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;

    move-result-object p4

    if-nez p4, :cond_3

    return v2

    .line 577
    :cond_3
    iget-object p5, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    iget-object v0, p3, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 578
    invoke-virtual {p3, p4}, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    .line 577
    invoke-virtual {p5, v0, p4}, Lcom/explorestack/protobuf/FieldSet;->addRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_2

    .line 581
    :cond_4
    :goto_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result p4

    if-lez p4, :cond_5

    .line 582
    iget-object p4, p3, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 584
    invoke-virtual {p4}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object p4

    .line 583
    invoke-static {p1, p4, v1}, Lcom/explorestack/protobuf/FieldSet;->readPrimitiveField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object p4

    .line 585
    iget-object p5, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    iget-object v0, p3, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, v0, p4}, Lcom/explorestack/protobuf/FieldSet;->addRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_3

    .line 588
    :cond_5
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_6

    .line 591
    :cond_6
    sget-object p4, Lcom/explorestack/protobuf/GeneratedMessageLite$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    iget-object v0, p3, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v0

    aget p4, p4, v0

    if-eq p4, v2, :cond_9

    const/4 p2, 0x2

    if-eq p4, p2, :cond_7

    .line 623
    iget-object p2, p3, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 625
    invoke-virtual {p2}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object p2

    .line 624
    invoke-static {p1, p2, v1}, Lcom/explorestack/protobuf/FieldSet;->readPrimitiveField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object p1

    goto :goto_5

    .line 613
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 614
    iget-object p2, p3, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/explorestack/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;

    move-result-object p2

    if-nez p2, :cond_8

    .line 618
    invoke-virtual {p0, p5, p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->mergeVarintField(II)V

    return v2

    :cond_8
    move-object p1, p2

    goto :goto_5

    :cond_9
    const/4 p4, 0x0

    .line 595
    iget-object p5, p3, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result p5

    if-nez p5, :cond_a

    .line 596
    iget-object p5, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    iget-object v0, p3, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, v0}, Lcom/explorestack/protobuf/FieldSet;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/explorestack/protobuf/MessageLite;

    if-eqz p5, :cond_a

    .line 598
    invoke-interface {p5}, Lcom/explorestack/protobuf/MessageLite;->toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;

    move-result-object p4

    :cond_a
    if-nez p4, :cond_b

    .line 602
    invoke-virtual {p3}, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p4

    invoke-interface {p4}, Lcom/explorestack/protobuf/MessageLite;->newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;

    move-result-object p4

    .line 604
    :cond_b
    iget-object p5, p3, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object p5

    sget-object v0, Lcom/explorestack/protobuf/WireFormat$FieldType;->GROUP:Lcom/explorestack/protobuf/WireFormat$FieldType;

    if-ne p5, v0, :cond_c

    .line 605
    invoke-virtual {p3}, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result p5

    invoke-virtual {p1, p5, p4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readGroup(ILcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    goto :goto_4

    .line 607
    :cond_c
    invoke-virtual {p1, p4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    .line 609
    :goto_4
    invoke-interface {p4}, Lcom/explorestack/protobuf/MessageLite$Builder;->build()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    .line 629
    :goto_5
    iget-object p2, p3, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 630
    iget-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    iget-object p4, p3, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 631
    invoke-virtual {p3, p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 630
    invoke-virtual {p2, p4, p1}, Lcom/explorestack/protobuf/FieldSet;->addRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_6

    .line 633
    :cond_d
    iget-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    iget-object p4, p3, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p3, p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Lcom/explorestack/protobuf/FieldSet;->setField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    :goto_6
    return v2
.end method

.method private verifyExtensionContainingType(Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;*>;)V"
        }
    .end annotation

    .line 787
    invoke-virtual {p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->getContainingTypeDefaultInstance()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->getDefaultInstanceForType()Lcom/explorestack/protobuf/GeneratedMessageLite;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    .line 789
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method ensureExtensionsAreMutable()Lcom/explorestack/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/FieldSet<",
            "Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    .line 780
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->clone()Lcom/explorestack/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    return-object v0
.end method

.method protected extensionsAreInitialized()Z
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected extensionsSerializedSize()I
    .locals 1

    .line 896
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method protected extensionsSerializedSizeAsMessageSet()I
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->getMessageSetSerializedSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 493
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/explorestack/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public final getExtension(Lcom/explorestack/protobuf/ExtensionLite;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/ExtensionLite<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    .line 818
    invoke-static {p1}, Lcom/explorestack/protobuf/GeneratedMessageLite;->access$000(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    .line 820
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 821
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    iget-object v1, p1, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/FieldSet;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 823
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->defaultValue:Ljava/lang/Object;

    return-object p1

    .line 825
    :cond_0
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->fromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtension(Lcom/explorestack/protobuf/ExtensionLite;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    .line 834
    invoke-static {p1}, Lcom/explorestack/protobuf/GeneratedMessageLite;->access$000(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    .line 836
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 837
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    iget-object v1, p1, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 839
    invoke-virtual {v0, v1, p2}, Lcom/explorestack/protobuf/FieldSet;->getRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p2

    .line 838
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->singularFromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtensionCount(Lcom/explorestack/protobuf/ExtensionLite;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation

    .line 808
    invoke-static {p1}, Lcom/explorestack/protobuf/GeneratedMessageLite;->access$000(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    .line 810
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 811
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result p1

    return p1
.end method

.method public final hasExtension(Lcom/explorestack/protobuf/ExtensionLite;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/ExtensionLite<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    .line 798
    invoke-static {p1}, Lcom/explorestack/protobuf/GeneratedMessageLite;->access$000(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    .line 800
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 801
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->hasField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1
.end method

.method protected final mergeExtensionFields(Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->clone()Lcom/explorestack/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->mergeFrom(Lcom/explorestack/protobuf/FieldSet;)V

    return-void
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 493
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/explorestack/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newExtensionWriter()Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;TBuilderType;>.ExtensionWriter;"
        }
    .end annotation

    .line 887
    new-instance v0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;-><init>(Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;ZLcom/explorestack/protobuf/GeneratedMessageLite$1;)V

    return-object v0
.end method

.method protected newMessageSetExtensionWriter()Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;TBuilderType;>.ExtensionWriter;"
        }
    .end annotation

    .line 891
    new-instance v0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;-><init>(Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;ZLcom/explorestack/protobuf/GeneratedMessageLite$1;)V

    return-object v0
.end method

.method protected parseUnknownField(Lcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/explorestack/protobuf/MessageLite;",
            ">(TMessageType;",
            "Lcom/explorestack/protobuf/CodedInputStream;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    invoke-static {p4}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v5

    .line 528
    invoke-virtual {p3, p1, v5}, Lcom/explorestack/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/explorestack/protobuf/MessageLite;I)Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    .line 530
    invoke-direct/range {v0 .. v5}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->parseExtension(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;II)Z

    move-result p1

    return p1
.end method

.method protected parseUnknownFieldAsMessageSet(Lcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/explorestack/protobuf/MessageLite;",
            ">(TMessageType;",
            "Lcom/explorestack/protobuf/CodedInputStream;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 653
    sget v0, Lcom/explorestack/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    if-ne p4, v0, :cond_0

    .line 654
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->mergeMessageSetExtensionFromCodedStream(Lcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    const/4 p1, 0x1

    return p1

    .line 660
    :cond_0
    invoke-static {p4}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 662
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->parseUnknownField(Lcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result p1

    return p1

    .line 665
    :cond_1
    invoke-virtual {p2, p4}, Lcom/explorestack/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 493
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite;->toBuilder()Lcom/explorestack/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
