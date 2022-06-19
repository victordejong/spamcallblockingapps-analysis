.class public final Lcom/explorestack/protobuf/Any$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/AnyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Any;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/Any$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/AnyOrBuilder;"
    }
.end annotation


# instance fields
.field private typeUrl_:Ljava/lang/Object;

.field private value_:Lcom/explorestack/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 583
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 716
    iput-object v0, p0, Lcom/explorestack/protobuf/Any$Builder;->typeUrl_:Ljava/lang/Object;

    .line 915
    sget-object v0, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    iput-object v0, p0, Lcom/explorestack/protobuf/Any$Builder;->value_:Lcom/explorestack/protobuf/ByteString;

    .line 584
    invoke-direct {p0}, Lcom/explorestack/protobuf/Any$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/Any$1;)V
    .locals 0

    .line 565
    invoke-direct {p0}, Lcom/explorestack/protobuf/Any$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 589
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 716
    iput-object p1, p0, Lcom/explorestack/protobuf/Any$Builder;->typeUrl_:Ljava/lang/Object;

    .line 915
    sget-object p1, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    iput-object p1, p0, Lcom/explorestack/protobuf/Any$Builder;->value_:Lcom/explorestack/protobuf/ByteString;

    .line 590
    invoke-direct {p0}, Lcom/explorestack/protobuf/Any$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Any$1;)V
    .locals 0

    .line 565
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Any$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 571
    sget-object v0, Lcom/explorestack/protobuf/AnyProto;->internal_static_google_protobuf_Any_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 593
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method


# virtual methods
.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Any$Builder;
    .locals 0

    .line 666
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 565
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Any$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 565
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Any$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/explorestack/protobuf/Any;
    .locals 2

    .line 620
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->buildPartial()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    .line 621
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Any;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 622
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/Any$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/Any;
    .locals 2

    .line 629
    new-instance v0, Lcom/explorestack/protobuf/Any;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/Any;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Any$1;)V

    .line 630
    iget-object v1, p0, Lcom/explorestack/protobuf/Any$Builder;->typeUrl_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Any;->access$302(Lcom/explorestack/protobuf/Any;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    iget-object v1, p0, Lcom/explorestack/protobuf/Any$Builder;->value_:Lcom/explorestack/protobuf/ByteString;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Any;->access$402(Lcom/explorestack/protobuf/Any;Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/ByteString;

    .line 632
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->buildPartial()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->buildPartial()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->clear()Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 599
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 600
    iput-object v0, p0, Lcom/explorestack/protobuf/Any$Builder;->typeUrl_:Ljava/lang/Object;

    .line 602
    sget-object v0, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    iput-object v0, p0, Lcom/explorestack/protobuf/Any$Builder;->value_:Lcom/explorestack/protobuf/ByteString;

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->clear()Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->clear()Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->clear()Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Any$Builder;
    .locals 0

    .line 649
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 565
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Any$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 565
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Any$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 565
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Any$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Any$Builder;
    .locals 0

    .line 654
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 565
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Any$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 565
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Any$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearTypeUrl()Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 870
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Any;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Any$Builder;->typeUrl_:Ljava/lang/Object;

    .line 871
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearValue()Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 951
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Any;->getValue()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Any$Builder;->value_:Lcom/explorestack/protobuf/ByteString;

    .line 952
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->clone()Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->clone()Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 638
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->clone()Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->clone()Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->clone()Lcom/explorestack/protobuf/Any$Builder;

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

    .line 565
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->clone()Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 615
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 610
    sget-object v0, Lcom/explorestack/protobuf/AnyProto;->internal_static_google_protobuf_Any_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getTypeUrl()Ljava/lang/String;
    .locals 2

    .line 747
    iget-object v0, p0, Lcom/explorestack/protobuf/Any$Builder;->typeUrl_:Ljava/lang/Object;

    .line 748
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 749
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 751
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 752
    iput-object v0, p0, Lcom/explorestack/protobuf/Any$Builder;->typeUrl_:Ljava/lang/Object;

    return-object v0

    .line 755
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getTypeUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 789
    iget-object v0, p0, Lcom/explorestack/protobuf/Any$Builder;->typeUrl_:Ljava/lang/Object;

    .line 790
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 791
    check-cast v0, Ljava/lang/String;

    .line 792
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 794
    iput-object v0, p0, Lcom/explorestack/protobuf/Any$Builder;->typeUrl_:Ljava/lang/Object;

    return-object v0

    .line 797
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getValue()Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/explorestack/protobuf/Any$Builder;->value_:Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 577
    sget-object v0, Lcom/explorestack/protobuf/AnyProto;->internal_static_google_protobuf_Any_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Any;

    const-class v2, Lcom/explorestack/protobuf/Any$Builder;

    .line 578
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

    .line 565
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Any$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 565
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Any$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any$Builder;

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

    .line 565
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Any$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 679
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 680
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 681
    invoke-static {p1}, Lcom/explorestack/protobuf/Any;->access$300(Lcom/explorestack/protobuf/Any;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Any$Builder;->typeUrl_:Ljava/lang/Object;

    .line 682
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->onChanged()V

    .line 684
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any;->getValue()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    if-eq v0, v1, :cond_2

    .line 685
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any;->getValue()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Any$Builder;->setValue(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Any$Builder;

    .line 687
    :cond_2
    iget-object p1, p1, Lcom/explorestack/protobuf/Any;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Any$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Any$Builder;

    .line 688
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 704
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/Any;->access$500()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 710
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Any$Builder;->mergeFrom(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 706
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/Any;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 707
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

    .line 710
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Any$Builder;->mergeFrom(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;

    .line 712
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 670
    instance-of v0, p1, Lcom/explorestack/protobuf/Any;

    if-eqz v0, :cond_0

    .line 671
    check-cast p1, Lcom/explorestack/protobuf/Any;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Any$Builder;->mergeFrom(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    return-object p1

    .line 673
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

    .line 565
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Any$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 565
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Any$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any$Builder;

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

    .line 565
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Any$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 565
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Any$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Any$Builder;
    .locals 0

    .line 964
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 565
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Any$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 565
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Any$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Any$Builder;
    .locals 0

    .line 644
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 565
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Any$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 565
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Any$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Any$Builder;
    .locals 0

    .line 660
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 565
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Any$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 565
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Any$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setTypeUrl(Ljava/lang/String;)Lcom/explorestack/protobuf/Any$Builder;
    .locals 0

    .line 832
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    iput-object p1, p0, Lcom/explorestack/protobuf/Any$Builder;->typeUrl_:Ljava/lang/Object;

    .line 836
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTypeUrlBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Any$Builder;
    .locals 0

    .line 906
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    invoke-static {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 910
    iput-object p1, p0, Lcom/explorestack/protobuf/Any$Builder;->typeUrl_:Ljava/lang/Object;

    .line 911
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Any$Builder;
    .locals 0

    .line 958
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 565
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Any$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 565
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Any$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setValue(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Any$Builder;
    .locals 0

    .line 935
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    iput-object p1, p0, Lcom/explorestack/protobuf/Any$Builder;->value_:Lcom/explorestack/protobuf/ByteString;

    .line 939
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->onChanged()V

    return-object p0
.end method
