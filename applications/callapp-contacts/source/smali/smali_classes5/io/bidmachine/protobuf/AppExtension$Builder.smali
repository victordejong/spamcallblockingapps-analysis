.class public final Lio/bidmachine/protobuf/AppExtension$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/protobuf/AppExtensionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AppExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/AppExtension$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/AppExtensionOrBuilder;"
    }
.end annotation


# instance fields
.field private installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Timestamp;",
            "Lcom/explorestack/protobuf/Timestamp$Builder;",
            "Lcom/explorestack/protobuf/TimestampOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private installTime_:Lcom/explorestack/protobuf/Timestamp;

.field private uptime_:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 341
    invoke-direct {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 346
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 347
    invoke-direct {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/AppExtension$1;)V
    .locals 0

    .line 322
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AppExtension$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/AppExtension$1;)V
    .locals 0

    .line 322
    invoke-direct {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 328
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AppExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getInstallTimeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Timestamp;",
            "Lcom/explorestack/protobuf/Timestamp$Builder;",
            "Lcom/explorestack/protobuf/TimestampOrBuilder;",
            ">;"
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 623
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 625
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->getInstallTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 627
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 628
    iput-object v0, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 630
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 351
    invoke-static {}, Lio/bidmachine/protobuf/AppExtension;->access$200()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AppExtension$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AppExtension$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AppExtension$Builder;
    .locals 0

    .line 431
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AppExtension$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->build()Lio/bidmachine/protobuf/AppExtension;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->build()Lio/bidmachine/protobuf/AppExtension;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lio/bidmachine/protobuf/AppExtension;
    .locals 2

    .line 381
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/AppExtension;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Lio/bidmachine/protobuf/AppExtension;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 383
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/AppExtension$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/AppExtension;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/AppExtension;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lio/bidmachine/protobuf/AppExtension;
    .locals 3

    .line 390
    new-instance v0, Lio/bidmachine/protobuf/AppExtension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/AppExtension;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/AppExtension$1;)V

    .line 391
    iget-object v1, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 392
    iget-object v1, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AppExtension;->access$402(Lio/bidmachine/protobuf/AppExtension;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    goto :goto_0

    .line 394
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AppExtension;->access$402(Lio/bidmachine/protobuf/AppExtension;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    .line 396
    :goto_0
    iget-wide v1, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->uptime_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/AppExtension;->access$502(Lio/bidmachine/protobuf/AppExtension;J)J

    .line 397
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->clear()Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->clear()Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->clear()Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->clear()Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lio/bidmachine/protobuf/AppExtension$Builder;
    .locals 2

    .line 356
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 357
    iget-object v0, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 358
    iput-object v1, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_0

    .line 360
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 361
    iput-object v1, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    const-wide/16 v0, 0x0

    .line 363
    iput-wide v0, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->uptime_:J

    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AppExtension$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AppExtension$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AppExtension$Builder;
    .locals 0

    .line 414
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AppExtension$Builder;

    return-object p1
.end method

.method public final clearInstallTime()Lio/bidmachine/protobuf/AppExtension$Builder;
    .locals 2

    .line 575
    iget-object v0, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 576
    iput-object v1, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 577
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->onChanged()V

    goto :goto_0

    .line 579
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 580
    iput-object v1, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AppExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AppExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AppExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AppExtension$Builder;
    .locals 0

    .line 419
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AppExtension$Builder;

    return-object p1
.end method

.method public final clearUptime()Lio/bidmachine/protobuf/AppExtension$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 666
    iput-wide v0, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->uptime_:J

    .line 667
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->clone()Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->clone()Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->clone()Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->clone()Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->clone()Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lio/bidmachine/protobuf/AppExtension$Builder;
    .locals 1

    .line 403
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AppExtension$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 322
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->clone()Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AppExtension;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AppExtension;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lio/bidmachine/protobuf/AppExtension;
    .locals 1

    .line 376
    invoke-static {}, Lio/bidmachine/protobuf/AppExtension;->getDefaultInstance()Lio/bidmachine/protobuf/AppExtension;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 371
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AppExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getInstallTime()Lcom/explorestack/protobuf/Timestamp;
    .locals 1

    .line 501
    iget-object v0, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 502
    iget-object v0, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0

    .line 504
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp;

    return-object v0
.end method

.method public final getInstallTimeBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;
    .locals 1

    .line 594
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->onChanged()V

    .line 595
    invoke-direct {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->getInstallTimeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp$Builder;

    return-object v0
.end method

.method public final getInstallTimeOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .locals 1

    .line 605
    iget-object v0, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/TimestampOrBuilder;

    return-object v0

    .line 608
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_1

    .line 609
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getUptime()J
    .locals 2

    .line 642
    iget-wide v0, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->uptime_:J

    return-wide v0
.end method

.method public final hasInstallTime()Z
    .locals 1

    .line 491
    iget-object v0, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

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

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 334
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AppExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/AppExtension;

    const-class v2, Lio/bidmachine/protobuf/AppExtension$Builder;

    .line 335
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

    .line 322
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AppExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AppExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AppExtension$Builder;

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

    .line 322
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AppExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AppExtension$Builder;

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

    .line 322
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AppExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AppExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AppExtension$Builder;

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

    .line 322
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AppExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AppExtension$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 468
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/AppExtension;->access$700()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AppExtension;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 474
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AppExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/AppExtension;)Lio/bidmachine/protobuf/AppExtension$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 470
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/AppExtension;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
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

    .line 474
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AppExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/AppExtension;)Lio/bidmachine/protobuf/AppExtension$Builder;

    .line 476
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AppExtension$Builder;
    .locals 1

    .line 435
    instance-of v0, p1, Lio/bidmachine/protobuf/AppExtension;

    if-eqz v0, :cond_0

    .line 436
    check-cast p1, Lio/bidmachine/protobuf/AppExtension;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AppExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/AppExtension;)Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object p1

    return-object p1

    .line 438
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lio/bidmachine/protobuf/AppExtension;)Lio/bidmachine/protobuf/AppExtension$Builder;
    .locals 5

    .line 444
    invoke-static {}, Lio/bidmachine/protobuf/AppExtension;->getDefaultInstance()Lio/bidmachine/protobuf/AppExtension;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 445
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AppExtension;->hasInstallTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AppExtension;->getInstallTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AppExtension$Builder;->mergeInstallTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/AppExtension$Builder;

    .line 448
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AppExtension;->getUptime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 449
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AppExtension;->getUptime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/AppExtension$Builder;->setUptime(J)Lio/bidmachine/protobuf/AppExtension$Builder;

    .line 451
    :cond_2
    invoke-static {p1}, Lio/bidmachine/protobuf/AppExtension;->access$600(Lio/bidmachine/protobuf/AppExtension;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AppExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AppExtension$Builder;

    .line 452
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeInstallTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/AppExtension$Builder;
    .locals 1

    .line 553
    iget-object v0, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 554
    iget-object v0, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 556
    invoke-static {v0}, Lcom/explorestack/protobuf/Timestamp;->newBuilder(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_0

    .line 558
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 560
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->onChanged()V

    goto :goto_1

    .line 562
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AppExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AppExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AppExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AppExtension$Builder;
    .locals 0

    .line 679
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AppExtension$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AppExtension$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AppExtension$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AppExtension$Builder;
    .locals 0

    .line 409
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AppExtension$Builder;

    return-object p1
.end method

.method public final setInstallTime(Lcom/explorestack/protobuf/Timestamp$Builder;)Lio/bidmachine/protobuf/AppExtension$Builder;
    .locals 1

    .line 536
    iget-object v0, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 537
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 538
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->onChanged()V

    goto :goto_0

    .line 540
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setInstallTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/AppExtension$Builder;
    .locals 1

    .line 515
    iget-object v0, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 517
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    iput-object p1, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 520
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->onChanged()V

    goto :goto_0

    .line 522
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AppExtension$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AppExtension$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AppExtension$Builder;
    .locals 0

    .line 425
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AppExtension$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AppExtension$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AppExtension$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AppExtension$Builder;
    .locals 0

    .line 673
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AppExtension$Builder;

    return-object p1
.end method

.method public final setUptime(J)Lio/bidmachine/protobuf/AppExtension$Builder;
    .locals 0

    .line 653
    iput-wide p1, p0, Lio/bidmachine/protobuf/AppExtension$Builder;->uptime_:J

    .line 654
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->onChanged()V

    return-object p0
.end method
