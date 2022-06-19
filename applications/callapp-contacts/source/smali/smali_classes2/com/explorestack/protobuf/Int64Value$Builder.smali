.class public final Lcom/explorestack/protobuf/Int64Value$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/Int64ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Int64Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/Int64Value$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/Int64ValueOrBuilder;"
    }
.end annotation


# instance fields
.field private value_:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 288
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 289
    invoke-direct {p0}, Lcom/explorestack/protobuf/Int64Value$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 294
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 295
    invoke-direct {p0}, Lcom/explorestack/protobuf/Int64Value$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Int64Value$1;)V
    .locals 0

    .line 270
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Int64Value$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/Int64Value$1;)V
    .locals 0

    .line 270
    invoke-direct {p0}, Lcom/explorestack/protobuf/Int64Value$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 276
    sget-object v0, Lcom/explorestack/protobuf/WrappersProto;->internal_static_google_protobuf_Int64Value_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 298
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Int64Value$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Int64Value$Builder;
    .locals 0

    .line 368
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Int64Value$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Int64Value$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/explorestack/protobuf/Int64Value;
    .locals 2

    .line 323
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Int64Value$Builder;->buildPartial()Lcom/explorestack/protobuf/Int64Value;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Int64Value;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 325
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/Int64Value$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Int64Value$Builder;->build()Lcom/explorestack/protobuf/Int64Value;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Int64Value$Builder;->build()Lcom/explorestack/protobuf/Int64Value;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/Int64Value;
    .locals 3

    .line 332
    new-instance v0, Lcom/explorestack/protobuf/Int64Value;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/Int64Value;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Int64Value$1;)V

    .line 333
    iget-wide v1, p0, Lcom/explorestack/protobuf/Int64Value$Builder;->value_:J

    invoke-static {v0, v1, v2}, Lcom/explorestack/protobuf/Int64Value;->access$302(Lcom/explorestack/protobuf/Int64Value;J)J

    .line 334
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Int64Value$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Int64Value$Builder;->buildPartial()Lcom/explorestack/protobuf/Int64Value;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Int64Value$Builder;->buildPartial()Lcom/explorestack/protobuf/Int64Value;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Int64Value$Builder;->clear()Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Int64Value$Builder;->clear()Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/Int64Value$Builder;
    .locals 2

    .line 304
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-wide/16 v0, 0x0

    .line 305
    iput-wide v0, p0, Lcom/explorestack/protobuf/Int64Value$Builder;->value_:J

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Int64Value$Builder;->clear()Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Int64Value$Builder;->clear()Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 270
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Int64Value$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Int64Value$Builder;
    .locals 0

    .line 351
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Int64Value$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 270
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Int64Value$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 270
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Int64Value$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 270
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Int64Value$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Int64Value$Builder;
    .locals 0

    .line 356
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Int64Value$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 270
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Int64Value$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearValue()Lcom/explorestack/protobuf/Int64Value$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 447
    iput-wide v0, p0, Lcom/explorestack/protobuf/Int64Value$Builder;->value_:J

    .line 448
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Int64Value$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Int64Value$Builder;->clone()Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Int64Value$Builder;->clone()Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Int64Value$Builder;->clone()Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/Int64Value$Builder;
    .locals 1

    .line 340
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Int64Value$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Int64Value$Builder;->clone()Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Int64Value$Builder;->clone()Lcom/explorestack/protobuf/Int64Value$Builder;

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

    .line 270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Int64Value$Builder;->clone()Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/Int64Value;
    .locals 1

    .line 318
    invoke-static {}, Lcom/explorestack/protobuf/Int64Value;->getDefaultInstance()Lcom/explorestack/protobuf/Int64Value;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Int64Value$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Int64Value;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Int64Value$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Int64Value;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 313
    sget-object v0, Lcom/explorestack/protobuf/WrappersProto;->internal_static_google_protobuf_Int64Value_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getValue()J
    .locals 2

    .line 423
    iget-wide v0, p0, Lcom/explorestack/protobuf/Int64Value$Builder;->value_:J

    return-wide v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 282
    sget-object v0, Lcom/explorestack/protobuf/WrappersProto;->internal_static_google_protobuf_Int64Value_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Int64Value;

    const-class v2, Lcom/explorestack/protobuf/Int64Value$Builder;

    .line 283
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

    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Int64Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 270
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Int64Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Int64Value$Builder;

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

    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Int64Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Int64Value$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 402
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/Int64Value;->access$400()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Int64Value;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 408
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Int64Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/Int64Value;)Lcom/explorestack/protobuf/Int64Value$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 404
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/Int64Value;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
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

    .line 408
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Int64Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/Int64Value;)Lcom/explorestack/protobuf/Int64Value$Builder;

    .line 410
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Int64Value;)Lcom/explorestack/protobuf/Int64Value$Builder;
    .locals 5

    .line 381
    invoke-static {}, Lcom/explorestack/protobuf/Int64Value;->getDefaultInstance()Lcom/explorestack/protobuf/Int64Value;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 382
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Int64Value;->getValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 383
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Int64Value;->getValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/protobuf/Int64Value$Builder;->setValue(J)Lcom/explorestack/protobuf/Int64Value$Builder;

    .line 385
    :cond_1
    iget-object p1, p1, Lcom/explorestack/protobuf/Int64Value;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Int64Value$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Int64Value$Builder;

    .line 386
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Int64Value$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Int64Value$Builder;
    .locals 1

    .line 372
    instance-of v0, p1, Lcom/explorestack/protobuf/Int64Value;

    if-eqz v0, :cond_0

    .line 373
    check-cast p1, Lcom/explorestack/protobuf/Int64Value;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Int64Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/Int64Value;)Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1

    .line 375
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

    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Int64Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 270
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Int64Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Int64Value$Builder;

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

    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Int64Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 270
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Int64Value$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 270
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Int64Value$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Int64Value$Builder;
    .locals 0

    .line 460
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Int64Value$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 270
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Int64Value$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Int64Value$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Int64Value$Builder;
    .locals 0

    .line 346
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Int64Value$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Int64Value$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 270
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Int64Value$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Int64Value$Builder;
    .locals 0

    .line 362
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Int64Value$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 270
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Int64Value$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 270
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Int64Value$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Int64Value$Builder;
    .locals 0

    .line 454
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Int64Value$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 270
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Int64Value$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setValue(J)Lcom/explorestack/protobuf/Int64Value$Builder;
    .locals 0

    .line 434
    iput-wide p1, p0, Lcom/explorestack/protobuf/Int64Value$Builder;->value_:J

    .line 435
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Int64Value$Builder;->onChanged()V

    return-object p0
.end method
