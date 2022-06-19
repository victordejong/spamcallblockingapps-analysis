.class public final Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/protobuf/RegsCcpaExtensionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/RegsCcpaExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/RegsCcpaExtensionOrBuilder;"
    }
.end annotation


# instance fields
.field private usPrivacy_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 307
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 434
    iput-object v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->usPrivacy_:Ljava/lang/Object;

    .line 308
    invoke-direct {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 313
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 434
    iput-object p1, p0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->usPrivacy_:Ljava/lang/Object;

    .line 314
    invoke-direct {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/RegsCcpaExtension$1;)V
    .locals 0

    .line 289
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/RegsCcpaExtension$1;)V
    .locals 0

    .line 289
    invoke-direct {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 295
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RegsCcpaExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 318
    invoke-static {}, Lio/bidmachine/protobuf/RegsCcpaExtension;->access$200()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 0

    .line 387
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->build()Lio/bidmachine/protobuf/RegsCcpaExtension;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->build()Lio/bidmachine/protobuf/RegsCcpaExtension;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lio/bidmachine/protobuf/RegsCcpaExtension;
    .locals 2

    .line 342
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/RegsCcpaExtension;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Lio/bidmachine/protobuf/RegsCcpaExtension;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 344
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/RegsCcpaExtension;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/RegsCcpaExtension;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lio/bidmachine/protobuf/RegsCcpaExtension;
    .locals 2

    .line 351
    new-instance v0, Lio/bidmachine/protobuf/RegsCcpaExtension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/RegsCcpaExtension;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/RegsCcpaExtension$1;)V

    .line 352
    iget-object v1, p0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->usPrivacy_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RegsCcpaExtension;->access$402(Lio/bidmachine/protobuf/RegsCcpaExtension;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clear()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clear()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clear()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clear()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 1

    .line 323
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 324
    iput-object v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->usPrivacy_:Ljava/lang/Object;

    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 0

    .line 370
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 0

    .line 375
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    return-object p1
.end method

.method public final clearUsPrivacy()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 1

    .line 500
    invoke-static {}, Lio/bidmachine/protobuf/RegsCcpaExtension;->getDefaultInstance()Lio/bidmachine/protobuf/RegsCcpaExtension;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RegsCcpaExtension;->getUsPrivacy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->usPrivacy_:Ljava/lang/Object;

    .line 501
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clone()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clone()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clone()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clone()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clone()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 1

    .line 359
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clone()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RegsCcpaExtension;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RegsCcpaExtension;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lio/bidmachine/protobuf/RegsCcpaExtension;
    .locals 1

    .line 337
    invoke-static {}, Lio/bidmachine/protobuf/RegsCcpaExtension;->getDefaultInstance()Lio/bidmachine/protobuf/RegsCcpaExtension;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 332
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RegsCcpaExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getUsPrivacy()Ljava/lang/String;
    .locals 2

    .line 443
    iget-object v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->usPrivacy_:Ljava/lang/Object;

    .line 444
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 445
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 447
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 448
    iput-object v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->usPrivacy_:Ljava/lang/Object;

    return-object v0

    .line 451
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getUsPrivacyBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 463
    iget-object v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->usPrivacy_:Ljava/lang/Object;

    .line 464
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 465
    check-cast v0, Ljava/lang/String;

    .line 466
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 468
    iput-object v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->usPrivacy_:Ljava/lang/Object;

    return-object v0

    .line 471
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 301
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RegsCcpaExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/RegsCcpaExtension;

    const-class v2, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 422
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/RegsCcpaExtension;->access$600()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RegsCcpaExtension;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 428
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/RegsCcpaExtension;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 424
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/RegsCcpaExtension;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
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

    .line 428
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/RegsCcpaExtension;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    .line 430
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 1

    .line 391
    instance-of v0, p1, Lio/bidmachine/protobuf/RegsCcpaExtension;

    if-eqz v0, :cond_0

    .line 392
    check-cast p1, Lio/bidmachine/protobuf/RegsCcpaExtension;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/RegsCcpaExtension;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1

    .line 394
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lio/bidmachine/protobuf/RegsCcpaExtension;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 1

    .line 400
    invoke-static {}, Lio/bidmachine/protobuf/RegsCcpaExtension;->getDefaultInstance()Lio/bidmachine/protobuf/RegsCcpaExtension;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 401
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RegsCcpaExtension;->getUsPrivacy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    invoke-static {p1}, Lio/bidmachine/protobuf/RegsCcpaExtension;->access$400(Lio/bidmachine/protobuf/RegsCcpaExtension;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->usPrivacy_:Ljava/lang/Object;

    .line 403
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->onChanged()V

    .line 405
    :cond_1
    invoke-static {p1}, Lio/bidmachine/protobuf/RegsCcpaExtension;->access$500(Lio/bidmachine/protobuf/RegsCcpaExtension;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    .line 406
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 0

    .line 531
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 0

    .line 365
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 0

    .line 381
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 0

    .line 525
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    return-object p1
.end method

.method public final setUsPrivacy(Ljava/lang/String;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 0

    .line 484
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iput-object p1, p0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->usPrivacy_:Ljava/lang/Object;

    .line 488
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUsPrivacyBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 0

    .line 514
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    invoke-static {p1}, Lio/bidmachine/protobuf/RegsCcpaExtension;->access$700(Lcom/explorestack/protobuf/ByteString;)V

    .line 518
    iput-object p1, p0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->usPrivacy_:Ljava/lang/Object;

    .line 519
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->onChanged()V

    return-object p0
.end method
