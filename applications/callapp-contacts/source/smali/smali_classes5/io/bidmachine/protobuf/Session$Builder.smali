.class public final Lio/bidmachine/protobuf/Session$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/protobuf/SessionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/Session$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/SessionOrBuilder;"
    }
.end annotation


# instance fields
.field private id_:Ljava/lang/Object;

.field private uptime_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 345
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 478
    iput-object v0, p0, Lio/bidmachine/protobuf/Session$Builder;->id_:Ljava/lang/Object;

    .line 346
    invoke-direct {p0}, Lio/bidmachine/protobuf/Session$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 351
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 478
    iput-object p1, p0, Lio/bidmachine/protobuf/Session$Builder;->id_:Ljava/lang/Object;

    .line 352
    invoke-direct {p0}, Lio/bidmachine/protobuf/Session$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/Session$1;)V
    .locals 0

    .line 327
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/Session$1;)V
    .locals 0

    .line 327
    invoke-direct {p0}, Lio/bidmachine/protobuf/Session$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 333
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_Session_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 356
    invoke-static {}, Lio/bidmachine/protobuf/Session;->access$200()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 327
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Session$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 327
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Session$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 0

    .line 428
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Session$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 327
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->build()Lio/bidmachine/protobuf/Session;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 327
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->build()Lio/bidmachine/protobuf/Session;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lio/bidmachine/protobuf/Session;
    .locals 2

    .line 382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->buildPartial()Lio/bidmachine/protobuf/Session;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Lio/bidmachine/protobuf/Session;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 384
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/Session$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 327
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->buildPartial()Lio/bidmachine/protobuf/Session;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 327
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->buildPartial()Lio/bidmachine/protobuf/Session;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lio/bidmachine/protobuf/Session;
    .locals 3

    .line 391
    new-instance v0, Lio/bidmachine/protobuf/Session;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/Session;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/Session$1;)V

    .line 392
    iget-object v1, p0, Lio/bidmachine/protobuf/Session$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/Session;->access$402(Lio/bidmachine/protobuf/Session;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-wide v1, p0, Lio/bidmachine/protobuf/Session$Builder;->uptime_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/Session;->access$502(Lio/bidmachine/protobuf/Session;J)J

    .line 394
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 327
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->clear()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 327
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->clear()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 327
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->clear()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 327
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->clear()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lio/bidmachine/protobuf/Session$Builder;
    .locals 2

    .line 361
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 362
    iput-object v0, p0, Lio/bidmachine/protobuf/Session$Builder;->id_:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 364
    iput-wide v0, p0, Lio/bidmachine/protobuf/Session$Builder;->uptime_:J

    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 327
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 327
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 0

    .line 411
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Session$Builder;

    return-object p1
.end method

.method public final clearId()Lio/bidmachine/protobuf/Session$Builder;
    .locals 1

    .line 544
    invoke-static {}, Lio/bidmachine/protobuf/Session;->getDefaultInstance()Lio/bidmachine/protobuf/Session;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/Session;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/Session$Builder;->id_:Ljava/lang/Object;

    .line 545
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 327
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 327
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 327
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 0

    .line 416
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Session$Builder;

    return-object p1
.end method

.method public final clearUptime()Lio/bidmachine/protobuf/Session$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 600
    iput-wide v0, p0, Lio/bidmachine/protobuf/Session$Builder;->uptime_:J

    .line 601
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 327
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->clone()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 327
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->clone()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 327
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->clone()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 327
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->clone()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 327
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->clone()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lio/bidmachine/protobuf/Session$Builder;
    .locals 1

    .line 400
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/Session$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 327
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->clone()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 327
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/Session;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 327
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/Session;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lio/bidmachine/protobuf/Session;
    .locals 1

    .line 377
    invoke-static {}, Lio/bidmachine/protobuf/Session;->getDefaultInstance()Lio/bidmachine/protobuf/Session;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 372
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_Session_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 487
    iget-object v0, p0, Lio/bidmachine/protobuf/Session$Builder;->id_:Ljava/lang/Object;

    .line 488
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 489
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 491
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 492
    iput-object v0, p0, Lio/bidmachine/protobuf/Session$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 495
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 507
    iget-object v0, p0, Lio/bidmachine/protobuf/Session$Builder;->id_:Ljava/lang/Object;

    .line 508
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 509
    check-cast v0, Ljava/lang/String;

    .line 510
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 512
    iput-object v0, p0, Lio/bidmachine/protobuf/Session$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 515
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUptime()J
    .locals 2

    .line 576
    iget-wide v0, p0, Lio/bidmachine/protobuf/Session$Builder;->uptime_:J

    return-wide v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 339
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_Session_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/Session;

    const-class v2, Lio/bidmachine/protobuf/Session$Builder;

    .line 340
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

    .line 327
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Session$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 327
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/Session$Builder;

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

    .line 327
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Session$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Session$Builder;

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

    .line 327
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Session$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 327
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/Session$Builder;

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

    .line 327
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Session$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 466
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/Session;->access$700()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Session;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 472
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->mergeFrom(Lio/bidmachine/protobuf/Session;)Lio/bidmachine/protobuf/Session$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 468
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/Session;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
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

    .line 472
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/Session$Builder;->mergeFrom(Lio/bidmachine/protobuf/Session;)Lio/bidmachine/protobuf/Session$Builder;

    .line 474
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 1

    .line 432
    instance-of v0, p1, Lio/bidmachine/protobuf/Session;

    if-eqz v0, :cond_0

    .line 433
    check-cast p1, Lio/bidmachine/protobuf/Session;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->mergeFrom(Lio/bidmachine/protobuf/Session;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1

    .line 435
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lio/bidmachine/protobuf/Session;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 5

    .line 441
    invoke-static {}, Lio/bidmachine/protobuf/Session;->getDefaultInstance()Lio/bidmachine/protobuf/Session;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 442
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Session;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 443
    invoke-static {p1}, Lio/bidmachine/protobuf/Session;->access$400(Lio/bidmachine/protobuf/Session;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/Session$Builder;->id_:Ljava/lang/Object;

    .line 444
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->onChanged()V

    .line 446
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Session;->getUptime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 447
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Session;->getUptime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/Session$Builder;->setUptime(J)Lio/bidmachine/protobuf/Session$Builder;

    .line 449
    :cond_2
    invoke-static {p1}, Lio/bidmachine/protobuf/Session;->access$600(Lio/bidmachine/protobuf/Session;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/Session$Builder;

    .line 450
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 327
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 327
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 327
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 0

    .line 613
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Session$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 327
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Session$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 327
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Session$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 0

    .line 406
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Session$Builder;

    return-object p1
.end method

.method public final setId(Ljava/lang/String;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 0

    .line 528
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    iput-object p1, p0, Lio/bidmachine/protobuf/Session$Builder;->id_:Ljava/lang/Object;

    .line 532
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIdBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 0

    .line 558
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    invoke-static {p1}, Lio/bidmachine/protobuf/Session;->access$800(Lcom/explorestack/protobuf/ByteString;)V

    .line 562
    iput-object p1, p0, Lio/bidmachine/protobuf/Session$Builder;->id_:Ljava/lang/Object;

    .line 563
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 327
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/Session$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 327
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/Session$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 0

    .line 422
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Session$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 327
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 327
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 0

    .line 607
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Session$Builder;

    return-object p1
.end method

.method public final setUptime(J)Lio/bidmachine/protobuf/Session$Builder;
    .locals 0

    .line 587
    iput-wide p1, p0, Lio/bidmachine/protobuf/Session$Builder;->uptime_:J

    .line 588
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->onChanged()V

    return-object p0
.end method
