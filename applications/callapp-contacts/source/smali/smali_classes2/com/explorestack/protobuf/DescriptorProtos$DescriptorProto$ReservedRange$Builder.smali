.class public final Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRangeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private end_:I

.field private start_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6440
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 6441
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 6422
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 6446
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 6447
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 6422
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6428
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$3800()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 6450
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method


# virtual methods
.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
    .locals 0

    .line 6532
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6422
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6422
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;
    .locals 2

    .line 6477
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    move-result-object v0

    .line 6478
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6479
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 6422
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 6422
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;
    .locals 3

    .line 6486
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    .line 6487
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 6490
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->start_:I

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->access$4302(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;I)I

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 6494
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->end_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->access$4402(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;I)I

    or-int/lit8 v2, v2, 0x2

    .line 6497
    :cond_1
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->access$4502(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;I)I

    .line 6498
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 6422
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 6422
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 6422
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
    .locals 2

    .line 6456
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 6457
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->start_:I

    .line 6458
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->bitField0_:I

    .line 6459
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->end_:I

    and-int/lit8 v0, v1, -0x3

    .line 6460
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 6422
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 6422
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 6422
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearEnd()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
    .locals 1

    .line 6672
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 6673
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->end_:I

    .line 6674
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
    .locals 0

    .line 6515
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6422
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6422
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 6422
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
    .locals 0

    .line 6520
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6422
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6422
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearStart()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
    .locals 1

    .line 6624
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 6625
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->start_:I

    .line 6626
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 6422
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 6422
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
    .locals 1

    .line 6504
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 6422
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 6422
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 6422
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

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

    .line 6422
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;
    .locals 1

    .line 6472
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 6422
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 6422
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6467
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$3800()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getEnd()I
    .locals 1

    .line 6649
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->end_:I

    return v0
.end method

.method public final getStart()I
    .locals 1

    .line 6601
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->start_:I

    return v0
.end method

.method public final hasEnd()Z
    .locals 1

    .line 6639
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasStart()Z
    .locals 2

    .line 6591
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 6434
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$3900()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    .line 6435
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

    .line 6422
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 6422
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

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

    .line 6422
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6569
    :try_start_0
    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 6575
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6571
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6572
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

    .line 6575
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    .line 6577
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
    .locals 1

    .line 6545
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 6546
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6547
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->getStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->setStart(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    .line 6549
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6550
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->getEnd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->setEnd(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    .line 6552
    :cond_2
    iget-object p1, p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    .line 6553
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
    .locals 1

    .line 6536
    instance-of v0, p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    if-eqz v0, :cond_0

    .line 6537
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object p1

    return-object p1

    .line 6539
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

    .line 6422
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6422
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

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

    .line 6422
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 6422
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
    .locals 0

    .line 6686
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6422
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6422
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setEnd(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
    .locals 1

    .line 6659
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->bitField0_:I

    .line 6660
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->end_:I

    .line 6661
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->onChanged()V

    return-object p0
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
    .locals 0

    .line 6510
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6422
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6422
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
    .locals 0

    .line 6526
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6422
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6422
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setStart(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
    .locals 1

    .line 6611
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->bitField0_:I

    .line 6612
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->start_:I

    .line 6613
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
    .locals 0

    .line 6680
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6422
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6422
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;

    move-result-object p1

    return-object p1
.end method
