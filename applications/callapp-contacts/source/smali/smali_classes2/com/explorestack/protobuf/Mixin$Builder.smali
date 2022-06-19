.class public final Lcom/explorestack/protobuf/Mixin$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MixinOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Mixin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/Mixin$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/MixinOrBuilder;"
    }
.end annotation


# instance fields
.field private name_:Ljava/lang/Object;

.field private root_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 498
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 632
    iput-object v0, p0, Lcom/explorestack/protobuf/Mixin$Builder;->name_:Ljava/lang/Object;

    .line 721
    iput-object v0, p0, Lcom/explorestack/protobuf/Mixin$Builder;->root_:Ljava/lang/Object;

    .line 499
    invoke-direct {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 504
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 632
    iput-object p1, p0, Lcom/explorestack/protobuf/Mixin$Builder;->name_:Ljava/lang/Object;

    .line 721
    iput-object p1, p0, Lcom/explorestack/protobuf/Mixin$Builder;->root_:Ljava/lang/Object;

    .line 505
    invoke-direct {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Mixin$1;)V
    .locals 0

    .line 480
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Mixin$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/Mixin$1;)V
    .locals 0

    .line 480
    invoke-direct {p0}, Lcom/explorestack/protobuf/Mixin$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 486
    sget-object v0, Lcom/explorestack/protobuf/ApiProto;->internal_static_google_protobuf_Mixin_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 508
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 480
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Mixin$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 480
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Mixin$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 0

    .line 581
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Mixin$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 480
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->build()Lcom/explorestack/protobuf/Mixin;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 480
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->build()Lcom/explorestack/protobuf/Mixin;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/Mixin;
    .locals 2

    .line 535
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->buildPartial()Lcom/explorestack/protobuf/Mixin;

    move-result-object v0

    .line 536
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Mixin;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 537
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/Mixin$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 480
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->buildPartial()Lcom/explorestack/protobuf/Mixin;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 480
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->buildPartial()Lcom/explorestack/protobuf/Mixin;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/Mixin;
    .locals 2

    .line 544
    new-instance v0, Lcom/explorestack/protobuf/Mixin;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/Mixin;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Mixin$1;)V

    .line 545
    iget-object v1, p0, Lcom/explorestack/protobuf/Mixin$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Mixin;->access$302(Lcom/explorestack/protobuf/Mixin;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    iget-object v1, p0, Lcom/explorestack/protobuf/Mixin$Builder;->root_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Mixin;->access$402(Lcom/explorestack/protobuf/Mixin;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 480
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->clear()Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 480
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->clear()Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 480
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->clear()Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 480
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->clear()Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 1

    .line 514
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 515
    iput-object v0, p0, Lcom/explorestack/protobuf/Mixin$Builder;->name_:Ljava/lang/Object;

    .line 517
    iput-object v0, p0, Lcom/explorestack/protobuf/Mixin$Builder;->root_:Ljava/lang/Object;

    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 480
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Mixin$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 480
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Mixin$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 0

    .line 564
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Mixin$Builder;

    return-object p1
.end method

.method public final clearName()Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 1

    .line 698
    invoke-static {}, Lcom/explorestack/protobuf/Mixin;->getDefaultInstance()Lcom/explorestack/protobuf/Mixin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Mixin;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Mixin$Builder;->name_:Ljava/lang/Object;

    .line 699
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 480
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Mixin$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 480
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Mixin$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 480
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Mixin$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 0

    .line 569
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Mixin$Builder;

    return-object p1
.end method

.method public final clearRoot()Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 1

    .line 791
    invoke-static {}, Lcom/explorestack/protobuf/Mixin;->getDefaultInstance()Lcom/explorestack/protobuf/Mixin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Mixin;->getRoot()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Mixin$Builder;->root_:Ljava/lang/Object;

    .line 792
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 480
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->clone()Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 480
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->clone()Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 480
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->clone()Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 480
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->clone()Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 480
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->clone()Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 1

    .line 553
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Mixin$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 480
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->clone()Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 480
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Mixin;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 480
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Mixin;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/Mixin;
    .locals 1

    .line 530
    invoke-static {}, Lcom/explorestack/protobuf/Mixin;->getDefaultInstance()Lcom/explorestack/protobuf/Mixin;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 525
    sget-object v0, Lcom/explorestack/protobuf/ApiProto;->internal_static_google_protobuf_Mixin_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/explorestack/protobuf/Mixin$Builder;->name_:Ljava/lang/Object;

    .line 642
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 643
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 645
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 646
    iput-object v0, p0, Lcom/explorestack/protobuf/Mixin$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 649
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/explorestack/protobuf/Mixin$Builder;->name_:Ljava/lang/Object;

    .line 662
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 663
    check-cast v0, Ljava/lang/String;

    .line 664
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 666
    iput-object v0, p0, Lcom/explorestack/protobuf/Mixin$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 669
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getRoot()Ljava/lang/String;
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/explorestack/protobuf/Mixin$Builder;->root_:Ljava/lang/Object;

    .line 732
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 733
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 735
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 736
    iput-object v0, p0, Lcom/explorestack/protobuf/Mixin$Builder;->root_:Ljava/lang/Object;

    return-object v0

    .line 739
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRootBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 752
    iget-object v0, p0, Lcom/explorestack/protobuf/Mixin$Builder;->root_:Ljava/lang/Object;

    .line 753
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 754
    check-cast v0, Ljava/lang/String;

    .line 755
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 757
    iput-object v0, p0, Lcom/explorestack/protobuf/Mixin$Builder;->root_:Ljava/lang/Object;

    return-object v0

    .line 760
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 492
    sget-object v0, Lcom/explorestack/protobuf/ApiProto;->internal_static_google_protobuf_Mixin_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Mixin;

    const-class v2, Lcom/explorestack/protobuf/Mixin$Builder;

    .line 493
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Mixin$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 480
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Mixin$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Mixin$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Mixin$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 480
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Mixin$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Mixin$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 620
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/Mixin;->access$500()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Mixin;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 626
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Mixin$Builder;->mergeFrom(Lcom/explorestack/protobuf/Mixin;)Lcom/explorestack/protobuf/Mixin$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 622
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/Mixin;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    :try_start_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 626
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Mixin$Builder;->mergeFrom(Lcom/explorestack/protobuf/Mixin;)Lcom/explorestack/protobuf/Mixin$Builder;

    .line 628
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 1

    .line 585
    instance-of v0, p1, Lcom/explorestack/protobuf/Mixin;

    if-eqz v0, :cond_0

    .line 586
    check-cast p1, Lcom/explorestack/protobuf/Mixin;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Mixin$Builder;->mergeFrom(Lcom/explorestack/protobuf/Mixin;)Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object p1

    return-object p1

    .line 588
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Mixin;)Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 1

    .line 594
    invoke-static {}, Lcom/explorestack/protobuf/Mixin;->getDefaultInstance()Lcom/explorestack/protobuf/Mixin;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 595
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Mixin;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 596
    invoke-static {p1}, Lcom/explorestack/protobuf/Mixin;->access$300(Lcom/explorestack/protobuf/Mixin;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Mixin$Builder;->name_:Ljava/lang/Object;

    .line 597
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->onChanged()V

    .line 599
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Mixin;->getRoot()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 600
    invoke-static {p1}, Lcom/explorestack/protobuf/Mixin;->access$400(Lcom/explorestack/protobuf/Mixin;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Mixin$Builder;->root_:Ljava/lang/Object;

    .line 601
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->onChanged()V

    .line 603
    :cond_2
    iget-object p1, p1, Lcom/explorestack/protobuf/Mixin;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Mixin$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Mixin$Builder;

    .line 604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 480
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Mixin$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 480
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Mixin$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 480
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Mixin$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 0

    .line 823
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Mixin$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 480
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Mixin$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 480
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Mixin$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 0

    .line 559
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Mixin$Builder;

    return-object p1
.end method

.method public final setName(Ljava/lang/String;)Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 0

    .line 682
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iput-object p1, p0, Lcom/explorestack/protobuf/Mixin$Builder;->name_:Ljava/lang/Object;

    .line 686
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 0

    .line 712
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    invoke-static {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 716
    iput-object p1, p0, Lcom/explorestack/protobuf/Mixin$Builder;->name_:Ljava/lang/Object;

    .line 717
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 480
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Mixin$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 480
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Mixin$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 0

    .line 575
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Mixin$Builder;

    return-object p1
.end method

.method public final setRoot(Ljava/lang/String;)Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 0

    .line 774
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    iput-object p1, p0, Lcom/explorestack/protobuf/Mixin$Builder;->root_:Ljava/lang/Object;

    .line 778
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRootBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 0

    .line 806
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    invoke-static {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 810
    iput-object p1, p0, Lcom/explorestack/protobuf/Mixin$Builder;->root_:Ljava/lang/Object;

    .line 811
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 480
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Mixin$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 480
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Mixin$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 0

    .line 817
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Mixin$Builder;

    return-object p1
.end method
