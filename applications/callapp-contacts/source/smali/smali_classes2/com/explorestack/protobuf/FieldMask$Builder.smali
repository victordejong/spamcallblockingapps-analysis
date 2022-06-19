.class public final Lcom/explorestack/protobuf/FieldMask$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/FieldMaskOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/FieldMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/FieldMask$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/FieldMaskOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private paths_:Lcom/explorestack/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 632
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 771
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->paths_:Lcom/explorestack/protobuf/LazyStringList;

    .line 633
    invoke-direct {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/FieldMask$1;)V
    .locals 0

    .line 614
    invoke-direct {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 638
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 771
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->paths_:Lcom/explorestack/protobuf/LazyStringList;

    .line 639
    invoke-direct {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/FieldMask$1;)V
    .locals 0

    .line 614
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/FieldMask$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensurePathsIsMutable()V
    .locals 2

    .line 773
    iget v0, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 774
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->paths_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->paths_:Lcom/explorestack/protobuf/LazyStringList;

    .line 775
    iget v0, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 620
    sget-object v0, Lcom/explorestack/protobuf/FieldMaskProto;->internal_static_google_protobuf_FieldMask_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 642
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method


# virtual methods
.method public final addAllPaths(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/FieldMask$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/FieldMask$Builder;"
        }
    .end annotation

    .line 863
    invoke-direct {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->ensurePathsIsMutable()V

    .line 864
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->paths_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 866
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->onChanged()V

    return-object p0
.end method

.method public final addPaths(Ljava/lang/String;)Lcom/explorestack/protobuf/FieldMask$Builder;
    .locals 1

    .line 847
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    invoke-direct {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->ensurePathsIsMutable()V

    .line 850
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->paths_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 851
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->onChanged()V

    return-object p0
.end method

.method public final addPathsBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/FieldMask$Builder;
    .locals 1

    .line 892
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    invoke-static {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 895
    invoke-direct {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->ensurePathsIsMutable()V

    .line 896
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->paths_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 897
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/FieldMask$Builder;
    .locals 0

    .line 717
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/FieldMask$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 614
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/FieldMask$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 614
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/FieldMask$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/explorestack/protobuf/FieldMask;
    .locals 2

    .line 667
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->buildPartial()Lcom/explorestack/protobuf/FieldMask;

    move-result-object v0

    .line 668
    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldMask;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 669
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/FieldMask$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 614
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->build()Lcom/explorestack/protobuf/FieldMask;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 614
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->build()Lcom/explorestack/protobuf/FieldMask;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/FieldMask;
    .locals 2

    .line 676
    new-instance v0, Lcom/explorestack/protobuf/FieldMask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/FieldMask;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/FieldMask$1;)V

    .line 678
    iget v1, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 679
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->paths_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->paths_:Lcom/explorestack/protobuf/LazyStringList;

    .line 680
    iget v1, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->bitField0_:I

    .line 682
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->paths_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/FieldMask;->access$302(Lcom/explorestack/protobuf/FieldMask;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 683
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 614
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->buildPartial()Lcom/explorestack/protobuf/FieldMask;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 614
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->buildPartial()Lcom/explorestack/protobuf/FieldMask;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 614
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->clear()Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/FieldMask$Builder;
    .locals 1

    .line 648
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 649
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->paths_:Lcom/explorestack/protobuf/LazyStringList;

    .line 650
    iget v0, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 614
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->clear()Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 614
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->clear()Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 614
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->clear()Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/FieldMask$Builder;
    .locals 0

    .line 700
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/FieldMask$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 614
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldMask$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 614
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldMask$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 614
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldMask$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/FieldMask$Builder;
    .locals 0

    .line 705
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/FieldMask$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 614
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldMask$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 614
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldMask$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearPaths()Lcom/explorestack/protobuf/FieldMask$Builder;
    .locals 1

    .line 877
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->paths_:Lcom/explorestack/protobuf/LazyStringList;

    .line 878
    iget v0, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->bitField0_:I

    .line 879
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 614
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->clone()Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 614
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->clone()Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/FieldMask$Builder;
    .locals 1

    .line 689
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/FieldMask$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 614
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->clone()Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 614
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->clone()Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 614
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->clone()Lcom/explorestack/protobuf/FieldMask$Builder;

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

    .line 614
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->clone()Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/FieldMask;
    .locals 1

    .line 662
    invoke-static {}, Lcom/explorestack/protobuf/FieldMask;->getDefaultInstance()Lcom/explorestack/protobuf/FieldMask;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 614
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/FieldMask;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 614
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/FieldMask;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 657
    sget-object v0, Lcom/explorestack/protobuf/FieldMaskProto;->internal_static_google_protobuf_FieldMask_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getPaths(I)Ljava/lang/String;
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->paths_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getPathsBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->paths_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getPathsCount()I
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->paths_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getPathsList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->paths_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getPathsList()Ljava/util/List;
    .locals 1

    .line 614
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->getPathsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 626
    sget-object v0, Lcom/explorestack/protobuf/FieldMaskProto;->internal_static_google_protobuf_FieldMask_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/FieldMask;

    const-class v2, Lcom/explorestack/protobuf/FieldMask$Builder;

    .line 627
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

    .line 614
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/FieldMask$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 614
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldMask$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/FieldMask$Builder;

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

    .line 614
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/FieldMask$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/FieldMask$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 758
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/FieldMask;->access$400()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/FieldMask;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 764
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldMask$Builder;->mergeFrom(Lcom/explorestack/protobuf/FieldMask;)Lcom/explorestack/protobuf/FieldMask$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 760
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/FieldMask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 761
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

    .line 764
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/FieldMask$Builder;->mergeFrom(Lcom/explorestack/protobuf/FieldMask;)Lcom/explorestack/protobuf/FieldMask$Builder;

    .line 766
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/FieldMask;)Lcom/explorestack/protobuf/FieldMask$Builder;
    .locals 2

    .line 730
    invoke-static {}, Lcom/explorestack/protobuf/FieldMask;->getDefaultInstance()Lcom/explorestack/protobuf/FieldMask;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 731
    :cond_0
    invoke-static {p1}, Lcom/explorestack/protobuf/FieldMask;->access$300(Lcom/explorestack/protobuf/FieldMask;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 732
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->paths_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    invoke-static {p1}, Lcom/explorestack/protobuf/FieldMask;->access$300(Lcom/explorestack/protobuf/FieldMask;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->paths_:Lcom/explorestack/protobuf/LazyStringList;

    .line 734
    iget v0, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->bitField0_:I

    goto :goto_0

    .line 736
    :cond_1
    invoke-direct {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->ensurePathsIsMutable()V

    .line 737
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->paths_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/FieldMask;->access$300(Lcom/explorestack/protobuf/FieldMask;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 739
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->onChanged()V

    .line 741
    :cond_2
    iget-object p1, p1, Lcom/explorestack/protobuf/FieldMask;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldMask$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/FieldMask$Builder;

    .line 742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/FieldMask$Builder;
    .locals 1

    .line 721
    instance-of v0, p1, Lcom/explorestack/protobuf/FieldMask;

    if-eqz v0, :cond_0

    .line 722
    check-cast p1, Lcom/explorestack/protobuf/FieldMask;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldMask$Builder;->mergeFrom(Lcom/explorestack/protobuf/FieldMask;)Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object p1

    return-object p1

    .line 724
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

    .line 614
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/FieldMask$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 614
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldMask$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/FieldMask$Builder;

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

    .line 614
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/FieldMask$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 614
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldMask$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/FieldMask$Builder;
    .locals 0

    .line 909
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/FieldMask$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 614
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldMask$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 614
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldMask$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/FieldMask$Builder;
    .locals 0

    .line 695
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/FieldMask$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 614
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/FieldMask$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 614
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/FieldMask$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setPaths(ILjava/lang/String;)Lcom/explorestack/protobuf/FieldMask$Builder;
    .locals 1

    .line 830
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    invoke-direct {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->ensurePathsIsMutable()V

    .line 833
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldMask$Builder;->paths_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 834
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldMask$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/FieldMask$Builder;
    .locals 0

    .line 711
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/FieldMask$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 614
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/FieldMask$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 614
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/FieldMask$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/FieldMask$Builder;
    .locals 0

    .line 903
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/FieldMask$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 614
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldMask$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 614
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldMask$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/FieldMask$Builder;

    move-result-object p1

    return-object p1
.end method
