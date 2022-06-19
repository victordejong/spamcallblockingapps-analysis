.class public final Lcom/explorestack/protobuf/SourceContext$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/SourceContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/SourceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/SourceContext$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/SourceContextOrBuilder;"
    }
.end annotation


# instance fields
.field private fileName_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 319
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 446
    iput-object v0, p0, Lcom/explorestack/protobuf/SourceContext$Builder;->fileName_:Ljava/lang/Object;

    .line 320
    invoke-direct {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 325
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 446
    iput-object p1, p0, Lcom/explorestack/protobuf/SourceContext$Builder;->fileName_:Ljava/lang/Object;

    .line 326
    invoke-direct {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/SourceContext$1;)V
    .locals 0

    .line 301
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/SourceContext$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/SourceContext$1;)V
    .locals 0

    .line 301
    invoke-direct {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 307
    sget-object v0, Lcom/explorestack/protobuf/SourceContextProto;->internal_static_google_protobuf_SourceContext_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 329
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/SourceContext$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/SourceContext$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/SourceContext$Builder;
    .locals 0

    .line 399
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/SourceContext$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;->build()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;->build()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/SourceContext;
    .locals 2

    .line 354
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;->buildPartial()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SourceContext;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 356
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/SourceContext$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;->buildPartial()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;->buildPartial()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/SourceContext;
    .locals 2

    .line 363
    new-instance v0, Lcom/explorestack/protobuf/SourceContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/SourceContext;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/SourceContext$1;)V

    .line 364
    iget-object v1, p0, Lcom/explorestack/protobuf/SourceContext$Builder;->fileName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/SourceContext;->access$302(Lcom/explorestack/protobuf/SourceContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;->clear()Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;->clear()Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;->clear()Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;->clear()Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/SourceContext$Builder;
    .locals 1

    .line 335
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 336
    iput-object v0, p0, Lcom/explorestack/protobuf/SourceContext$Builder;->fileName_:Ljava/lang/Object;

    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/SourceContext$Builder;
    .locals 0

    .line 382
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/SourceContext$Builder;

    return-object p1
.end method

.method public final clearFileName()Lcom/explorestack/protobuf/SourceContext$Builder;
    .locals 1

    .line 516
    invoke-static {}, Lcom/explorestack/protobuf/SourceContext;->getDefaultInstance()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SourceContext;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/SourceContext$Builder;->fileName_:Ljava/lang/Object;

    .line 517
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/SourceContext$Builder;
    .locals 0

    .line 387
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/SourceContext$Builder;

    return-object p1
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;->clone()Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;->clone()Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;->clone()Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;->clone()Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;->clone()Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/SourceContext$Builder;
    .locals 1

    .line 371
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/SourceContext$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;->clone()Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/SourceContext;
    .locals 1

    .line 349
    invoke-static {}, Lcom/explorestack/protobuf/SourceContext;->getDefaultInstance()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 344
    sget-object v0, Lcom/explorestack/protobuf/SourceContextProto;->internal_static_google_protobuf_SourceContext_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/explorestack/protobuf/SourceContext$Builder;->fileName_:Ljava/lang/Object;

    .line 457
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 458
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 460
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 461
    iput-object v0, p0, Lcom/explorestack/protobuf/SourceContext$Builder;->fileName_:Ljava/lang/Object;

    return-object v0

    .line 464
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getFileNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/explorestack/protobuf/SourceContext$Builder;->fileName_:Ljava/lang/Object;

    .line 478
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 479
    check-cast v0, Ljava/lang/String;

    .line 480
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 482
    iput-object v0, p0, Lcom/explorestack/protobuf/SourceContext$Builder;->fileName_:Ljava/lang/Object;

    return-object v0

    .line 485
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 313
    sget-object v0, Lcom/explorestack/protobuf/SourceContextProto;->internal_static_google_protobuf_SourceContext_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/SourceContext;

    const-class v2, Lcom/explorestack/protobuf/SourceContext$Builder;

    .line 314
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

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/SourceContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/SourceContext$Builder;

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

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/SourceContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/SourceContext$Builder;

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

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/SourceContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/SourceContext$Builder;

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

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/SourceContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/SourceContext$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 434
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/SourceContext;->access$400()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/SourceContext;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 440
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/SourceContext$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 436
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/SourceContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
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

    .line 440
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/SourceContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/SourceContext$Builder;

    .line 442
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/SourceContext$Builder;
    .locals 1

    .line 403
    instance-of v0, p1, Lcom/explorestack/protobuf/SourceContext;

    if-eqz v0, :cond_0

    .line 404
    check-cast p1, Lcom/explorestack/protobuf/SourceContext;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1

    .line 406
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/SourceContext$Builder;
    .locals 1

    .line 412
    invoke-static {}, Lcom/explorestack/protobuf/SourceContext;->getDefaultInstance()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 413
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/SourceContext;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    invoke-static {p1}, Lcom/explorestack/protobuf/SourceContext;->access$300(Lcom/explorestack/protobuf/SourceContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/SourceContext$Builder;->fileName_:Ljava/lang/Object;

    .line 415
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;->onChanged()V

    .line 417
    :cond_1
    iget-object p1, p1, Lcom/explorestack/protobuf/SourceContext;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/SourceContext$Builder;

    .line 418
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/SourceContext$Builder;
    .locals 0

    .line 548
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/SourceContext$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/SourceContext$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/SourceContext$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/SourceContext$Builder;
    .locals 0

    .line 377
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/SourceContext$Builder;

    return-object p1
.end method

.method public final setFileName(Ljava/lang/String;)Lcom/explorestack/protobuf/SourceContext$Builder;
    .locals 0

    .line 499
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iput-object p1, p0, Lcom/explorestack/protobuf/SourceContext$Builder;->fileName_:Ljava/lang/Object;

    .line 503
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;->onChanged()V

    return-object p0
.end method

.method public final setFileNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/SourceContext$Builder;
    .locals 0

    .line 531
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    invoke-static {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 535
    iput-object p1, p0, Lcom/explorestack/protobuf/SourceContext$Builder;->fileName_:Ljava/lang/Object;

    .line 536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SourceContext$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/SourceContext$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/SourceContext$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/SourceContext$Builder;
    .locals 0

    .line 393
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/SourceContext$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/SourceContext$Builder;
    .locals 0

    .line 542
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/SourceContext$Builder;

    return-object p1
.end method
