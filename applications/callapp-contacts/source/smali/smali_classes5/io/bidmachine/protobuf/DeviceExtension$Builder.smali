.class public final Lio/bidmachine/protobuf/DeviceExtension$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/protobuf/DeviceExtensionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/DeviceExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/DeviceExtension$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/DeviceExtensionOrBuilder;"
    }
.end annotation


# instance fields
.field private battery_:I

.field private rooted_:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 307
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 308
    invoke-direct {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 313
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 314
    invoke-direct {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/DeviceExtension$1;)V
    .locals 0

    .line 289
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/DeviceExtension$1;)V
    .locals 0

    .line 289
    invoke-direct {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 295
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_DeviceExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 318
    invoke-static {}, Lio/bidmachine/protobuf/DeviceExtension;->access$200()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .locals 0

    .line 390
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/DeviceExtension$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->build()Lio/bidmachine/protobuf/DeviceExtension;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->build()Lio/bidmachine/protobuf/DeviceExtension;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lio/bidmachine/protobuf/DeviceExtension;
    .locals 2

    .line 344
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/DeviceExtension;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Lio/bidmachine/protobuf/DeviceExtension;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 346
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/DeviceExtension;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/DeviceExtension;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lio/bidmachine/protobuf/DeviceExtension;
    .locals 2

    .line 353
    new-instance v0, Lio/bidmachine/protobuf/DeviceExtension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/DeviceExtension;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/DeviceExtension$1;)V

    .line 354
    iget v1, p0, Lio/bidmachine/protobuf/DeviceExtension$Builder;->battery_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/DeviceExtension;->access$402(Lio/bidmachine/protobuf/DeviceExtension;I)I

    .line 355
    iget-boolean v1, p0, Lio/bidmachine/protobuf/DeviceExtension$Builder;->rooted_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/DeviceExtension;->access$502(Lio/bidmachine/protobuf/DeviceExtension;Z)Z

    .line 356
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clear()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clear()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clear()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clear()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .locals 1

    .line 323
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 324
    iput v0, p0, Lio/bidmachine/protobuf/DeviceExtension$Builder;->battery_:I

    .line 326
    iput-boolean v0, p0, Lio/bidmachine/protobuf/DeviceExtension$Builder;->rooted_:Z

    return-object p0
.end method

.method public final clearBattery()Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 472
    iput v0, p0, Lio/bidmachine/protobuf/DeviceExtension$Builder;->battery_:I

    .line 473
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .locals 0

    .line 373
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/DeviceExtension$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .locals 0

    .line 378
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/DeviceExtension$Builder;

    return-object p1
.end method

.method public final clearRooted()Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 510
    iput-boolean v0, p0, Lio/bidmachine/protobuf/DeviceExtension$Builder;->rooted_:Z

    .line 511
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clone()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clone()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clone()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clone()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clone()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .locals 1

    .line 362
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/DeviceExtension$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->clone()Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getBattery()I
    .locals 1

    .line 448
    iget v0, p0, Lio/bidmachine/protobuf/DeviceExtension$Builder;->battery_:I

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/DeviceExtension;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/DeviceExtension;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lio/bidmachine/protobuf/DeviceExtension;
    .locals 1

    .line 339
    invoke-static {}, Lio/bidmachine/protobuf/DeviceExtension;->getDefaultInstance()Lio/bidmachine/protobuf/DeviceExtension;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 334
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_DeviceExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getRooted()Z
    .locals 1

    .line 486
    iget-boolean v0, p0, Lio/bidmachine/protobuf/DeviceExtension$Builder;->rooted_:Z

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 301
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_DeviceExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/DeviceExtension;

    const-class v2, Lio/bidmachine/protobuf/DeviceExtension$Builder;

    .line 302
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

    .line 289
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

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

    .line 289
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

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

    .line 289
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

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

    .line 289
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 427
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/DeviceExtension;->access$700()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/DeviceExtension;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 433
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/DeviceExtension;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 429
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/DeviceExtension;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
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

    .line 433
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/DeviceExtension;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    .line 435
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .locals 1

    .line 394
    instance-of v0, p1, Lio/bidmachine/protobuf/DeviceExtension;

    if-eqz v0, :cond_0

    .line 395
    check-cast p1, Lio/bidmachine/protobuf/DeviceExtension;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/DeviceExtension;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1

    .line 397
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lio/bidmachine/protobuf/DeviceExtension;)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .locals 1

    .line 403
    invoke-static {}, Lio/bidmachine/protobuf/DeviceExtension;->getDefaultInstance()Lio/bidmachine/protobuf/DeviceExtension;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 404
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/DeviceExtension;->getBattery()I

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    invoke-virtual {p1}, Lio/bidmachine/protobuf/DeviceExtension;->getBattery()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->setBattery(I)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    .line 407
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/DeviceExtension;->getRooted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    invoke-virtual {p1}, Lio/bidmachine/protobuf/DeviceExtension;->getRooted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->setRooted(Z)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    .line 410
    :cond_2
    invoke-static {p1}, Lio/bidmachine/protobuf/DeviceExtension;->access$600(Lio/bidmachine/protobuf/DeviceExtension;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    .line 411
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .locals 0

    .line 523
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/DeviceExtension$Builder;

    return-object p1
.end method

.method public final setBattery(I)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .locals 0

    .line 459
    iput p1, p0, Lio/bidmachine/protobuf/DeviceExtension$Builder;->battery_:I

    .line 460
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .locals 0

    .line 368
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/DeviceExtension$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .locals 0

    .line 384
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/DeviceExtension$Builder;

    return-object p1
.end method

.method public final setRooted(Z)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .locals 0

    .line 497
    iput-boolean p1, p0, Lio/bidmachine/protobuf/DeviceExtension$Builder;->rooted_:Z

    .line 498
    invoke-virtual {p0}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/DeviceExtension$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/DeviceExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/DeviceExtension$Builder;
    .locals 0

    .line 517
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/DeviceExtension$Builder;

    return-object p1
.end method
