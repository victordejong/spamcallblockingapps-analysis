.class public final Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/compiler/PluginProtos$VersionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/compiler/PluginProtos$Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/compiler/PluginProtos$VersionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private major_:I

.field private minor_:I

.field private patch_:I

.field private suffix_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 516
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 774
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->suffix_:Ljava/lang/Object;

    .line 517
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 522
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 774
    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->suffix_:Ljava/lang/Object;

    .line 523
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/compiler/PluginProtos$1;)V
    .locals 0

    .line 498
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/compiler/PluginProtos$1;)V
    .locals 0

    .line 498
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 504
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos;->access$000()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 527
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->access$400()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 498
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 498
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;
    .locals 0

    .line 620
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->build()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->build()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;
    .locals 2

    .line 557
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->buildPartial()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object v0

    .line 558
    invoke-virtual {v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 559
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->buildPartial()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->buildPartial()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;
    .locals 4

    .line 566
    new-instance v0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/compiler/PluginProtos$1;)V

    .line 567
    iget v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 570
    iget v2, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->major_:I

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->access$602(Lcom/explorestack/protobuf/compiler/PluginProtos$Version;I)I

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 574
    iget v3, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->minor_:I

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->access$702(Lcom/explorestack/protobuf/compiler/PluginProtos$Version;I)I

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    .line 578
    iget v3, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->patch_:I

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->access$802(Lcom/explorestack/protobuf/compiler/PluginProtos$Version;I)I

    or-int/lit8 v2, v2, 0x4

    :cond_2
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    or-int/lit8 v2, v2, 0x8

    .line 584
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->suffix_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->access$902(Lcom/explorestack/protobuf/compiler/PluginProtos$Version;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->access$1002(Lcom/explorestack/protobuf/compiler/PluginProtos$Version;I)I

    .line 586
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->clear()Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->clear()Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->clear()Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->clear()Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;
    .locals 2

    .line 532
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 533
    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->major_:I

    .line 534
    iget v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    .line 535
    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->minor_:I

    and-int/lit8 v1, v1, -0x3

    .line 536
    iput v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    .line 537
    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->patch_:I

    and-int/lit8 v0, v1, -0x5

    .line 538
    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    const-string v1, ""

    .line 539
    iput-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->suffix_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x9

    .line 540
    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 498
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 498
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;
    .locals 0

    .line 603
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    return-object p1
.end method

.method public final clearMajor()Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;
    .locals 1

    .line 704
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 705
    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->major_:I

    .line 706
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearMinor()Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;
    .locals 1

    .line 736
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 737
    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->minor_:I

    .line 738
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 498
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 498
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 498
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;
    .locals 0

    .line 608
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    return-object p1
.end method

.method public final clearPatch()Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;
    .locals 1

    .line 768
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 769
    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->patch_:I

    .line 770
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSuffix()Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;
    .locals 1

    .line 856
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    .line 857
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->getDefaultInstance()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->getSuffix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->suffix_:Ljava/lang/Object;

    .line 858
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->clone()Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->clone()Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->clone()Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->clone()Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->clone()Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;
    .locals 1

    .line 592
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 498
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->clone()Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;
    .locals 1

    .line 552
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->getDefaultInstance()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 547
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos;->access$000()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getMajor()I
    .locals 1

    .line 689
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->major_:I

    return v0
.end method

.method public final getMinor()I
    .locals 1

    .line 721
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->minor_:I

    return v0
.end method

.method public final getPatch()I
    .locals 1

    .line 753
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->patch_:I

    return v0
.end method

.method public final getSuffix()Ljava/lang/String;
    .locals 2

    .line 795
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->suffix_:Ljava/lang/Object;

    .line 796
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 797
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 799
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 800
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    iput-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->suffix_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 805
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSuffixBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 818
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->suffix_:Ljava/lang/Object;

    .line 819
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 820
    check-cast v0, Ljava/lang/String;

    .line 821
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 823
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->suffix_:Ljava/lang/Object;

    return-object v0

    .line 826
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hasMajor()Z
    .locals 2

    .line 683
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasMinor()Z
    .locals 1

    .line 715
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPatch()Z
    .locals 1

    .line 747
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasSuffix()Z
    .locals 1

    .line 784
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 510
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos;->access$100()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    const-class v2, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    .line 511
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

    .line 498
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 498
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

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

    .line 498
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

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

    .line 498
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 498
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

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

    .line 498
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 665
    :try_start_0
    sget-object v1, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 671
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->mergeFrom(Lcom/explorestack/protobuf/compiler/PluginProtos$Version;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 667
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 668
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

    .line 671
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->mergeFrom(Lcom/explorestack/protobuf/compiler/PluginProtos$Version;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    .line 673
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;
    .locals 1

    .line 624
    instance-of v0, p1, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    if-eqz v0, :cond_0

    .line 625
    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->mergeFrom(Lcom/explorestack/protobuf/compiler/PluginProtos$Version;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object p1

    return-object p1

    .line 627
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/compiler/PluginProtos$Version;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;
    .locals 1

    .line 633
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->getDefaultInstance()Lcom/explorestack/protobuf/compiler/PluginProtos$Version;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 634
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->hasMajor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->getMajor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->setMajor(I)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    .line 637
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->hasMinor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 638
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->getMinor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->setMinor(I)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    .line 640
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->hasPatch()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 641
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->getPatch()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->setPatch(I)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    .line 643
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->hasSuffix()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 644
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    .line 645
    invoke-static {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->access$900(Lcom/explorestack/protobuf/compiler/PluginProtos$Version;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->suffix_:Ljava/lang/Object;

    .line 646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->onChanged()V

    .line 648
    :cond_4
    invoke-static {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version;->access$1100(Lcom/explorestack/protobuf/compiler/PluginProtos$Version;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    .line 649
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 498
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 498
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 498
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;
    .locals 0

    .line 888
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 498
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 498
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;
    .locals 0

    .line 598
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    return-object p1
.end method

.method public final setMajor(I)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;
    .locals 1

    .line 695
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    .line 696
    iput p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->major_:I

    .line 697
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMinor(I)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;
    .locals 1

    .line 727
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    .line 728
    iput p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->minor_:I

    .line 729
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPatch(I)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;
    .locals 1

    .line 759
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    .line 760
    iput p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->patch_:I

    .line 761
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 498
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 498
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;
    .locals 0

    .line 614
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    return-object p1
.end method

.method public final setSuffix(Ljava/lang/String;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;
    .locals 1

    .line 840
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    .line 843
    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->suffix_:Ljava/lang/Object;

    .line 844
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSuffixBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;
    .locals 1

    .line 872
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->bitField0_:I

    .line 875
    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->suffix_:Ljava/lang/Object;

    .line 876
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 498
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 498
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;
    .locals 0

    .line 882
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$Version$Builder;

    return-object p1
.end method
