.class public final Lcom/explorestack/protobuf/Option$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/OptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/Option$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/OptionOrBuilder;"
    }
.end annotation


# instance fields
.field private name_:Ljava/lang/Object;

.field private valueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Any;",
            "Lcom/explorestack/protobuf/Any$Builder;",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private value_:Lcom/explorestack/protobuf/Any;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 394
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 535
    iput-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->name_:Ljava/lang/Object;

    .line 395
    invoke-direct {p0}, Lcom/explorestack/protobuf/Option$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 400
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 535
    iput-object p1, p0, Lcom/explorestack/protobuf/Option$Builder;->name_:Ljava/lang/Object;

    .line 401
    invoke-direct {p0}, Lcom/explorestack/protobuf/Option$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Option$1;)V
    .locals 0

    .line 376
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/Option$1;)V
    .locals 0

    .line 376
    invoke-direct {p0}, Lcom/explorestack/protobuf/Option$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 382
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Option_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getValueFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Any;",
            "Lcom/explorestack/protobuf/Any$Builder;",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 808
    iget-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->valueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 809
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 811
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->getValue()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 812
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 813
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->valueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 814
    iput-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->value_:Lcom/explorestack/protobuf/Any;

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->valueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 404
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Option$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Option$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Option$Builder;
    .locals 0

    .line 485
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/Option;
    .locals 2

    .line 435
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->buildPartial()Lcom/explorestack/protobuf/Option;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Option;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 437
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/Option$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->buildPartial()Lcom/explorestack/protobuf/Option;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->buildPartial()Lcom/explorestack/protobuf/Option;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/Option;
    .locals 2

    .line 444
    new-instance v0, Lcom/explorestack/protobuf/Option;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/Option;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Option$1;)V

    .line 445
    iget-object v1, p0, Lcom/explorestack/protobuf/Option$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Option;->access$302(Lcom/explorestack/protobuf/Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v1, p0, Lcom/explorestack/protobuf/Option$Builder;->valueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/explorestack/protobuf/Option$Builder;->value_:Lcom/explorestack/protobuf/Any;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Option;->access$402(Lcom/explorestack/protobuf/Option;Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any;

    goto :goto_0

    .line 449
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Any;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Option;->access$402(Lcom/explorestack/protobuf/Option;Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any;

    .line 451
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->clear()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->clear()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->clear()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->clear()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/Option$Builder;
    .locals 2

    .line 410
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 411
    iput-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->name_:Ljava/lang/Object;

    .line 413
    iget-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->valueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 414
    iput-object v1, p0, Lcom/explorestack/protobuf/Option$Builder;->value_:Lcom/explorestack/protobuf/Any;

    goto :goto_0

    .line 416
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/Option$Builder;->value_:Lcom/explorestack/protobuf/Any;

    .line 417
    iput-object v1, p0, Lcom/explorestack/protobuf/Option$Builder;->valueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 376
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 376
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Option$Builder;
    .locals 0

    .line 468
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option$Builder;

    return-object p1
.end method

.method public final clearName()Lcom/explorestack/protobuf/Option$Builder;
    .locals 1

    .line 613
    invoke-static {}, Lcom/explorestack/protobuf/Option;->getDefaultInstance()Lcom/explorestack/protobuf/Option;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Option;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->name_:Ljava/lang/Object;

    .line 614
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 376
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 376
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 376
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Option$Builder;
    .locals 0

    .line 473
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option$Builder;

    return-object p1
.end method

.method public final clearValue()Lcom/explorestack/protobuf/Option$Builder;
    .locals 2

    .line 752
    iget-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->valueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 753
    iput-object v1, p0, Lcom/explorestack/protobuf/Option$Builder;->value_:Lcom/explorestack/protobuf/Any;

    .line 754
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->onChanged()V

    goto :goto_0

    .line 756
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/Option$Builder;->value_:Lcom/explorestack/protobuf/Any;

    .line 757
    iput-object v1, p0, Lcom/explorestack/protobuf/Option$Builder;->valueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->clone()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->clone()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->clone()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->clone()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->clone()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/Option$Builder;
    .locals 1

    .line 457
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Option$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 376
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->clone()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Option;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Option;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/Option;
    .locals 1

    .line 430
    invoke-static {}, Lcom/explorestack/protobuf/Option;->getDefaultInstance()Lcom/explorestack/protobuf/Option;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 425
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Option_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->name_:Ljava/lang/Object;

    .line 548
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 549
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 551
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 552
    iput-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 555
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->name_:Ljava/lang/Object;

    .line 571
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 572
    check-cast v0, Ljava/lang/String;

    .line 573
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 575
    iput-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 578
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getValue()Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->valueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 667
    iget-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->value_:Lcom/explorestack/protobuf/Any;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    :cond_0
    return-object v0

    .line 669
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any;

    return-object v0
.end method

.method public final getValueBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 774
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->onChanged()V

    .line 775
    invoke-direct {p0}, Lcom/explorestack/protobuf/Option$Builder;->getValueFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final getValueOrBuilder()Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->valueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 789
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object v0

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->value_:Lcom/explorestack/protobuf/Any;

    if-nez v0, :cond_1

    .line 792
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final hasValue()Z
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->valueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->value_:Lcom/explorestack/protobuf/Any;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 388
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Option_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Option;

    const-class v2, Lcom/explorestack/protobuf/Option$Builder;

    .line 389
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

    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Option$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 376
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Option$Builder;

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

    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Option$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Option$Builder;

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

    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Option$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 376
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Option$Builder;

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

    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Option$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Option$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 523
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/Option;->access$500()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 529
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->mergeFrom(Lcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Option$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 525
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/Option;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
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

    .line 529
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Option$Builder;->mergeFrom(Lcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Option$Builder;

    .line 531
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Option$Builder;
    .locals 1

    .line 489
    instance-of v0, p1, Lcom/explorestack/protobuf/Option;

    if-eqz v0, :cond_0

    .line 490
    check-cast p1, Lcom/explorestack/protobuf/Option;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->mergeFrom(Lcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1

    .line 492
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Option$Builder;
    .locals 1

    .line 498
    invoke-static {}, Lcom/explorestack/protobuf/Option;->getDefaultInstance()Lcom/explorestack/protobuf/Option;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 499
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Option;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 500
    invoke-static {p1}, Lcom/explorestack/protobuf/Option;->access$300(Lcom/explorestack/protobuf/Option;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->name_:Ljava/lang/Object;

    .line 501
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->onChanged()V

    .line 503
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Option;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 504
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Option;->getValue()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Option$Builder;->mergeValue(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Option$Builder;

    .line 506
    :cond_2
    iget-object p1, p1, Lcom/explorestack/protobuf/Option;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Option$Builder;

    .line 507
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 376
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 376
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 376
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Option$Builder;
    .locals 0

    .line 827
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option$Builder;

    return-object p1
.end method

.method public final mergeValue(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Option$Builder;
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->valueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->value_:Lcom/explorestack/protobuf/Any;

    if-eqz v0, :cond_0

    .line 730
    invoke-static {v0}, Lcom/explorestack/protobuf/Any;->newBuilder(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Any$Builder;->mergeFrom(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->buildPartial()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Option$Builder;->value_:Lcom/explorestack/protobuf/Any;

    goto :goto_0

    .line 732
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/Option$Builder;->value_:Lcom/explorestack/protobuf/Any;

    .line 734
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->onChanged()V

    goto :goto_1

    .line 736
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Option$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Option$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Option$Builder;
    .locals 0

    .line 463
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option$Builder;

    return-object p1
.end method

.method public final setName(Ljava/lang/String;)Lcom/explorestack/protobuf/Option$Builder;
    .locals 0

    .line 594
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    iput-object p1, p0, Lcom/explorestack/protobuf/Option$Builder;->name_:Ljava/lang/Object;

    .line 598
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Option$Builder;
    .locals 0

    .line 630
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    invoke-static {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 634
    iput-object p1, p0, Lcom/explorestack/protobuf/Option$Builder;->name_:Ljava/lang/Object;

    .line 635
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 376
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Option$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 376
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Option$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Option$Builder;
    .locals 0

    .line 479
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 376
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 376
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Option$Builder;
    .locals 0

    .line 821
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option$Builder;

    return-object p1
.end method

.method public final setValue(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/Option$Builder;
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->valueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 708
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Option$Builder;->value_:Lcom/explorestack/protobuf/Any;

    .line 709
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->onChanged()V

    goto :goto_0

    .line 711
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setValue(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Option$Builder;
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/explorestack/protobuf/Option$Builder;->valueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 685
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    iput-object p1, p0, Lcom/explorestack/protobuf/Option$Builder;->value_:Lcom/explorestack/protobuf/Any;

    .line 688
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option$Builder;->onChanged()V

    goto :goto_0

    .line 690
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method
