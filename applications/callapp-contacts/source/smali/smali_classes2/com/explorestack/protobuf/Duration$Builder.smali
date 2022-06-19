.class public final Lcom/explorestack/protobuf/Duration$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Duration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/Duration$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/DurationOrBuilder;"
    }
.end annotation


# instance fields
.field private nanos_:I

.field private seconds_:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 410
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 411
    invoke-direct {p0}, Lcom/explorestack/protobuf/Duration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/Duration$1;)V
    .locals 0

    .line 392
    invoke-direct {p0}, Lcom/explorestack/protobuf/Duration$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 416
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 417
    invoke-direct {p0}, Lcom/explorestack/protobuf/Duration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Duration$1;)V
    .locals 0

    .line 392
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Duration$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 398
    sget-object v0, Lcom/explorestack/protobuf/DurationProto;->internal_static_google_protobuf_Duration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 420
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method


# virtual methods
.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Duration$Builder;
    .locals 0

    .line 493
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Duration$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 392
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Duration$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 392
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Duration$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/explorestack/protobuf/Duration;
    .locals 2

    .line 447
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration$Builder;->buildPartial()Lcom/explorestack/protobuf/Duration;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Duration;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 449
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/Duration$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 392
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration$Builder;->build()Lcom/explorestack/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 392
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration$Builder;->build()Lcom/explorestack/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/Duration;
    .locals 3

    .line 456
    new-instance v0, Lcom/explorestack/protobuf/Duration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/Duration;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Duration$1;)V

    .line 457
    iget-wide v1, p0, Lcom/explorestack/protobuf/Duration$Builder;->seconds_:J

    invoke-static {v0, v1, v2}, Lcom/explorestack/protobuf/Duration;->access$302(Lcom/explorestack/protobuf/Duration;J)J

    .line 458
    iget v1, p0, Lcom/explorestack/protobuf/Duration$Builder;->nanos_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Duration;->access$402(Lcom/explorestack/protobuf/Duration;I)I

    .line 459
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 392
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration$Builder;->buildPartial()Lcom/explorestack/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 392
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration$Builder;->buildPartial()Lcom/explorestack/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 392
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration$Builder;->clear()Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/Duration$Builder;
    .locals 2

    .line 426
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-wide/16 v0, 0x0

    .line 427
    iput-wide v0, p0, Lcom/explorestack/protobuf/Duration$Builder;->seconds_:J

    const/4 v0, 0x0

    .line 429
    iput v0, p0, Lcom/explorestack/protobuf/Duration$Builder;->nanos_:I

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 392
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration$Builder;->clear()Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 392
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration$Builder;->clear()Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 392
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration$Builder;->clear()Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Duration$Builder;
    .locals 0

    .line 476
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Duration$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 392
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Duration$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 392
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Duration$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearNanos()Lcom/explorestack/protobuf/Duration$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 634
    iput v0, p0, Lcom/explorestack/protobuf/Duration$Builder;->nanos_:I

    .line 635
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 392
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Duration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Duration$Builder;
    .locals 0

    .line 481
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Duration$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 392
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Duration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 392
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Duration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearSeconds()Lcom/explorestack/protobuf/Duration$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 581
    iput-wide v0, p0, Lcom/explorestack/protobuf/Duration$Builder;->seconds_:J

    .line 582
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 392
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration$Builder;->clone()Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 392
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration$Builder;->clone()Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/Duration$Builder;
    .locals 1

    .line 465
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Duration$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 392
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration$Builder;->clone()Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 392
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration$Builder;->clone()Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 392
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration$Builder;->clone()Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 392
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration$Builder;->clone()Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/Duration;
    .locals 1

    .line 442
    invoke-static {}, Lcom/explorestack/protobuf/Duration;->getDefaultInstance()Lcom/explorestack/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 392
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 392
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 437
    sget-object v0, Lcom/explorestack/protobuf/DurationProto;->internal_static_google_protobuf_Duration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getNanos()I
    .locals 1

    .line 600
    iget v0, p0, Lcom/explorestack/protobuf/Duration$Builder;->nanos_:I

    return v0
.end method

.method public final getSeconds()J
    .locals 2

    .line 553
    iget-wide v0, p0, Lcom/explorestack/protobuf/Duration$Builder;->seconds_:J

    return-wide v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 404
    sget-object v0, Lcom/explorestack/protobuf/DurationProto;->internal_static_google_protobuf_Duration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Duration;

    const-class v2, Lcom/explorestack/protobuf/Duration$Builder;

    .line 405
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

    .line 392
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Duration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 392
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Duration$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Duration$Builder;

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

    .line 392
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Duration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Duration$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 530
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/Duration;->access$500()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Duration;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 536
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Duration$Builder;->mergeFrom(Lcom/explorestack/protobuf/Duration;)Lcom/explorestack/protobuf/Duration$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 532
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/Duration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
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

    .line 536
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Duration$Builder;->mergeFrom(Lcom/explorestack/protobuf/Duration;)Lcom/explorestack/protobuf/Duration$Builder;

    .line 538
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Duration;)Lcom/explorestack/protobuf/Duration$Builder;
    .locals 5

    .line 506
    invoke-static {}, Lcom/explorestack/protobuf/Duration;->getDefaultInstance()Lcom/explorestack/protobuf/Duration;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 507
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 508
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/protobuf/Duration$Builder;->setSeconds(J)Lcom/explorestack/protobuf/Duration$Builder;

    .line 510
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Duration;->getNanos()I

    move-result v0

    if-eqz v0, :cond_2

    .line 511
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Duration;->getNanos()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Duration$Builder;->setNanos(I)Lcom/explorestack/protobuf/Duration$Builder;

    .line 513
    :cond_2
    iget-object p1, p1, Lcom/explorestack/protobuf/Duration;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Duration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Duration$Builder;

    .line 514
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Duration$Builder;
    .locals 1

    .line 497
    instance-of v0, p1, Lcom/explorestack/protobuf/Duration;

    if-eqz v0, :cond_0

    .line 498
    check-cast p1, Lcom/explorestack/protobuf/Duration;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Duration$Builder;->mergeFrom(Lcom/explorestack/protobuf/Duration;)Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object p1

    return-object p1

    .line 500
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Duration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 392
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Duration$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Duration$Builder;

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

    .line 392
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Duration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 392
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Duration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Duration$Builder;
    .locals 0

    .line 647
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Duration$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 392
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Duration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 392
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Duration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Duration$Builder;
    .locals 0

    .line 471
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Duration$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 392
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Duration$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 392
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Duration$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setNanos(I)Lcom/explorestack/protobuf/Duration$Builder;
    .locals 0

    .line 616
    iput p1, p0, Lcom/explorestack/protobuf/Duration$Builder;->nanos_:I

    .line 617
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Duration$Builder;
    .locals 0

    .line 487
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Duration$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 392
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Duration$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 392
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Duration$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setSeconds(J)Lcom/explorestack/protobuf/Duration$Builder;
    .locals 0

    .line 566
    iput-wide p1, p0, Lcom/explorestack/protobuf/Duration$Builder;->seconds_:J

    .line 567
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Duration$Builder;
    .locals 0

    .line 641
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Duration$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 392
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Duration$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 392
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Duration$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object p1

    return-object p1
.end method
