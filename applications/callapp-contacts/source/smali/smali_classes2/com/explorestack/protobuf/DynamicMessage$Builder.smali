.class public final Lcom/explorestack/protobuf/DynamicMessage$Builder;
.super Lcom/explorestack/protobuf/AbstractMessage$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DynamicMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractMessage$Builder<",
        "Lcom/explorestack/protobuf/DynamicMessage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private fields:Lcom/explorestack/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/FieldSet<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

.field private final type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;)V
    .locals 1

    .line 326
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;-><init>()V

    .line 327
    iput-object p1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 328
    invoke-static {}, Lcom/explorestack/protobuf/FieldSet;->newFieldSet()Lcom/explorestack/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    .line 329
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 330
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result v0

    new-array v0, v0, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    iput-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 332
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getMapEntry()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 333
    invoke-direct {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->populateMapEntry()V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/DynamicMessage$1;)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;)V

    return-void
.end method

.method static synthetic access$000(Lcom/explorestack/protobuf/DynamicMessage$Builder;)Lcom/explorestack/protobuf/DynamicMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 319
    invoke-direct {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->buildParsed()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method private buildParsed()Lcom/explorestack/protobuf/DynamicMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 412
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0

    .line 413
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/DynamicMessage;

    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    iget-object v2, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    iget-object v3, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    array-length v4, v3

    .line 417
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    iget-object v4, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/DynamicMessage;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/FieldSet;[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/UnknownFieldSet;)V

    .line 413
    invoke-static {v0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private ensureEnumValueDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V
    .locals 1

    .line 650
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 652
    invoke-direct {p0, p1, v0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->ensureSingularEnumValueDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    .line 655
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->ensureSingularEnumValueDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    return-void
.end method

.method private ensureIsMutable()V
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->clone()Lcom/explorestack/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    :cond_0
    return-void
.end method

.method private ensureSingularEnumValueDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V
    .locals 0

    .line 632
    invoke-static {p2}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    instance-of p1, p2, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    if-eqz p1, :cond_0

    return-void

    .line 634
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DynamicMessage should use EnumValueDescriptor to set Enum Value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private populateMapEntry()V
    .locals 4

    .line 338
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 339
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_0

    .line 340
    iget-object v2, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v3

    invoke-static {v3}, Lcom/explorestack/protobuf/DynamicMessage;->getDefaultInstance(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/explorestack/protobuf/FieldSet;->setField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_0

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/explorestack/protobuf/FieldSet;->setField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V
    .locals 1

    .line 618
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p1

    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-ne p1, v0, :cond_0

    return-void

    .line 619
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyOneofContainingType(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)V
    .locals 1

    .line 625
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p1

    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-ne p1, v0, :cond_0

    return-void

    .line 626
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OneofDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .locals 1

    .line 592
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 593
    invoke-direct {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->ensureIsMutable()V

    .line 594
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/FieldSet;->addRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 319
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/explorestack/protobuf/DynamicMessage;
    .locals 5

    .line 396
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0

    .line 397
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/DynamicMessage;

    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    iget-object v2, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    iget-object v3, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    array-length v4, v3

    .line 401
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    iget-object v4, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/DynamicMessage;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/FieldSet;[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/UnknownFieldSet;)V

    .line 397
    invoke-static {v0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->build()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->build()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/DynamicMessage;
    .locals 5

    .line 426
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->makeImmutable()V

    .line 427
    new-instance v0, Lcom/explorestack/protobuf/DynamicMessage;

    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    iget-object v2, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    iget-object v3, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    array-length v4, v3

    .line 429
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    iget-object v4, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/DynamicMessage;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/FieldSet;[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/UnknownFieldSet;)V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->clear()Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-static {}, Lcom/explorestack/protobuf/FieldSet;->newFieldSet()Lcom/explorestack/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    goto :goto_0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->clear()V

    .line 358
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getMapEntry()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    invoke-direct {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->populateMapEntry()V

    .line 361
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->clear()Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->clear()Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .locals 3

    .line 557
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 558
    invoke-direct {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->ensureIsMutable()V

    .line 559
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getIndex()I

    move-result v0

    .line 562
    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    const/4 v2, 0x0

    .line 563
    aput-object v2, v1, v0

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->clearField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)V

    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 319
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 319
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .locals 1

    .line 492
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->verifyOneofContainingType(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)V

    .line 493
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getIndex()I

    move-result p1

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    .line 495
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    :cond_0
    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 319
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->clone()Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->clone()Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .locals 5

    .line 435
    new-instance v0, Lcom/explorestack/protobuf/DynamicMessage$Builder;

    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;)V

    .line 436
    iget-object v1, v0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    iget-object v2, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/FieldSet;->mergeFrom(Lcom/explorestack/protobuf/FieldSet;)V

    .line 437
    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    .line 438
    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    iget-object v2, v0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->clone()Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->clone()Lcom/explorestack/protobuf/DynamicMessage$Builder;

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

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->clone()Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getAllFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->getAllFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DynamicMessage;
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/explorestack/protobuf/DynamicMessage;->getDefaultInstance(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 2

    .line 508
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 509
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 511
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 513
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_1

    .line 514
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-static {p1}, Lcom/explorestack/protobuf/DynamicMessage;->getDefaultInstance(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v0

    goto :goto_0

    .line 516
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final getFieldBuilder(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 668
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getFieldBuilder() called on a dynamic message type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getOneofFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    .line 486
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->verifyOneofContainingType(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)V

    .line 487
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getIndex()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1

    .line 578
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 579
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/FieldSet;->getRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getRepeatedFieldBuilder(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 675
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getRepeatedFieldBuilder() called on a dynamic message type."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getRepeatedFieldCount(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1

    .line 572
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 573
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result p1

    return p1
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 502
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 503
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->hasField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1
.end method

.method public final hasOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Z
    .locals 1

    .line 476
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->verifyOneofContainingType(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)V

    .line 477
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getIndex()I

    move-result p1

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final isInitialized()Z
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DynamicMessage;->isInitialized(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/FieldSet;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 319
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .locals 3

    .line 367
    instance-of v0, p1, Lcom/explorestack/protobuf/DynamicMessage;

    if-eqz v0, :cond_4

    .line 369
    check-cast p1, Lcom/explorestack/protobuf/DynamicMessage;

    .line 370
    invoke-static {p1}, Lcom/explorestack/protobuf/DynamicMessage;->access$200(Lcom/explorestack/protobuf/DynamicMessage;)Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_3

    .line 374
    invoke-direct {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->ensureIsMutable()V

    .line 375
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-static {p1}, Lcom/explorestack/protobuf/DynamicMessage;->access$300(Lcom/explorestack/protobuf/DynamicMessage;)Lcom/explorestack/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/FieldSet;->mergeFrom(Lcom/explorestack/protobuf/FieldSet;)V

    .line 376
    invoke-static {p1}, Lcom/explorestack/protobuf/DynamicMessage;->access$400(Lcom/explorestack/protobuf/DynamicMessage;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    const/4 v0, 0x0

    .line 377
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 378
    aget-object v2, v1, v0

    if-nez v2, :cond_0

    .line 379
    invoke-static {p1}, Lcom/explorestack/protobuf/DynamicMessage;->access$500(Lcom/explorestack/protobuf/DynamicMessage;)[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    goto :goto_1

    .line 381
    :cond_0
    invoke-static {p1}, Lcom/explorestack/protobuf/DynamicMessage;->access$500(Lcom/explorestack/protobuf/DynamicMessage;)[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    aget-object v1, v1, v0

    .line 382
    invoke-static {p1}, Lcom/explorestack/protobuf/DynamicMessage;->access$500(Lcom/explorestack/protobuf/DynamicMessage;)[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_1

    .line 383
    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    iget-object v2, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/FieldSet;->clearField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 384
    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-static {p1}, Lcom/explorestack/protobuf/DynamicMessage;->access$500(Lcom/explorestack/protobuf/DynamicMessage;)[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    .line 371
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 390
    :cond_4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DynamicMessage$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 319
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 319
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 612
    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 319
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final newBuilderForField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .locals 2

    .line 464
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 466
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    .line 471
    new-instance v0, Lcom/explorestack/protobuf/DynamicMessage$Builder;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;)V

    return-object v0

    .line 467
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newBuilderForField is only valid for fields with message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic newBuilderForField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 319
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->newBuilderForField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .locals 3

    .line 524
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 525
    invoke-direct {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->ensureIsMutable()V

    .line 531
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_0

    .line 532
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->ensureEnumValueDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    .line 534
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 536
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getIndex()I

    move-result v0

    .line 537
    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    if-eq v1, p1, :cond_1

    .line 539
    iget-object v2, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v2, v1}, Lcom/explorestack/protobuf/FieldSet;->clearField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 541
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    aput-object p1, v1, v0

    goto :goto_0

    .line 542
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getSyntax()Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO3:Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne v0, v1, :cond_3

    .line 543
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 544
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_3

    .line 545
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 547
    iget-object p2, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/FieldSet;->clearField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)V

    return-object p0

    .line 551
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/FieldSet;->setField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 319
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .locals 1

    .line 584
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 585
    invoke-direct {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->ensureIsMutable()V

    .line 586
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/explorestack/protobuf/FieldSet;->setRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 319
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 319
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method
