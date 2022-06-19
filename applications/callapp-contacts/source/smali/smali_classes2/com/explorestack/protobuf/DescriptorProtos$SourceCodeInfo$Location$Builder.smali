.class public final Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$LocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$LocationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private leadingComments_:Ljava/lang/Object;

.field private leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

.field private path_:Lcom/explorestack/protobuf/Internal$IntList;

.field private span_:Lcom/explorestack/protobuf/Internal$IntList;

.field private trailingComments_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 38783
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 38980
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 39215
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    const-string v0, ""

    .line 39338
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingComments_:Ljava/lang/Object;

    .line 39648
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->trailingComments_:Ljava/lang/Object;

    .line 39724
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    .line 38784
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 38765
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 38789
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 38980
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 39215
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    const-string p1, ""

    .line 39338
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingComments_:Ljava/lang/Object;

    .line 39648
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->trailingComments_:Ljava/lang/Object;

    .line 39724
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    .line 38790
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 38765
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureLeadingDetachedCommentsIsMutable()V
    .locals 2

    .line 39726
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 39727
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    .line 39728
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensurePathIsMutable()V
    .locals 1

    .line 38982
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 38983
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 38984
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureSpanIsMutable()V
    .locals 1

    .line 39217
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 39218
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 39219
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 38771
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$27300()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 38793
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method


# virtual methods
.method public final addAllLeadingDetachedComments(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;"
        }
    .end annotation

    .line 39788
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->ensureLeadingDetachedCommentsIsMutable()V

    .line 39789
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 39791
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllPath(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;"
        }
    .end annotation

    .line 39175
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->ensurePathIsMutable()V

    .line 39176
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 39178
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllSpan(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;"
        }
    .end annotation

    .line 39314
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->ensureSpanIsMutable()V

    .line 39315
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 39317
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    return-object p0
.end method

.method public final addLeadingDetachedComments(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 39776
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39778
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->ensureLeadingDetachedCommentsIsMutable()V

    .line 39779
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 39780
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    return-object p0
.end method

.method public final addLeadingDetachedCommentsBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 39809
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39811
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->ensureLeadingDetachedCommentsIsMutable()V

    .line 39812
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 39813
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    return-object p0
.end method

.method public final addPath(I)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 39141
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->ensurePathIsMutable()V

    .line 39142
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$IntList;->addInt(I)V

    .line 39143
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 0

    .line 38896
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 38765
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 38765
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addSpan(I)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 39296
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->ensureSpanIsMutable()V

    .line 39297
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$IntList;->addInt(I)V

    .line 39298
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    return-object p0
.end method

.method public final build()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 2

    .line 38826
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    .line 38827
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 38828
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 38765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 38765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 4

    .line 38835
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    .line 38836
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 38839
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/Internal$IntList;->makeImmutable()V

    .line 38840
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    .line 38842
    :cond_0
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$27802(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;

    .line 38843
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 38844
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/Internal$IntList;->makeImmutable()V

    .line 38845
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    .line 38847
    :cond_1
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$27902(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 38851
    :goto_0
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingComments_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$28002(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    or-int/lit8 v2, v2, 0x2

    .line 38855
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->trailingComments_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$28102(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38856
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 38857
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    .line 38858
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    .line 38860
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$28202(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 38861
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$28302(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;I)I

    .line 38862
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 38765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 38765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 38765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 2

    .line 38799
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 38800
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 38801
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    .line 38802
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 38803
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    const-string v1, ""

    .line 38804
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingComments_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x5

    .line 38805
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    .line 38806
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->trailingComments_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x9

    .line 38807
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    .line 38808
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    .line 38809
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 38765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 38765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 38765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 0

    .line 38879
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 38765
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 38765
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearLeadingComments()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 39590
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    .line 39591
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getLeadingComments()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingComments_:Ljava/lang/Object;

    .line 39592
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLeadingDetachedComments()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 39798
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    .line 39799
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    .line 39800
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 38765
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 0

    .line 38884
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 38765
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 38765
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearPath()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 39209
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 39210
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    .line 39211
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSpan()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 39332
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 39333
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    .line 39334
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearTrailingComments()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 39705
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    .line 39706
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getTrailingComments()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->trailingComments_:Ljava/lang/Object;

    .line 39707
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 38765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 38765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 38868
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 38765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 38765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 38765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

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

    .line 38765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .line 38821
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 38765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 38765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 38816
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$27300()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getLeadingComments()Ljava/lang/String;
    .locals 2

    .line 39427
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingComments_:Ljava/lang/Object;

    .line 39428
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 39429
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 39431
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 39432
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39433
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingComments_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 39437
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLeadingCommentsBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 39484
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingComments_:Ljava/lang/Object;

    .line 39485
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 39486
    check-cast v0, Ljava/lang/String;

    .line 39487
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 39489
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingComments_:Ljava/lang/Object;

    return-object v0

    .line 39492
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getLeadingDetachedComments(I)Ljava/lang/String;
    .locals 1

    .line 39748
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getLeadingDetachedCommentsBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 39755
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getLeadingDetachedCommentsCount()I
    .locals 1

    .line 39742
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getLeadingDetachedCommentsList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 39736
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getLeadingDetachedCommentsList()Ljava/util/List;
    .locals 1

    .line 38765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->getLeadingDetachedCommentsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getPath(I)I
    .locals 1

    .line 39077
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public final getPathCount()I
    .locals 1

    .line 39047
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public final getPathList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 39016
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 39017
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object v0
.end method

.method public final getSpan(I)I
    .locals 1

    .line 39264
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public final getSpanCount()I
    .locals 1

    .line 39250
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public final getSpanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 39235
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 39236
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object v0
.end method

.method public final getTrailingComments()Ljava/lang/String;
    .locals 2

    .line 39659
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->trailingComments_:Ljava/lang/Object;

    .line 39660
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 39661
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 39663
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 39664
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39665
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->trailingComments_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 39669
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getTrailingCommentsBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 39677
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->trailingComments_:Ljava/lang/Object;

    .line 39678
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 39679
    check-cast v0, Ljava/lang/String;

    .line 39680
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 39682
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->trailingComments_:Ljava/lang/Object;

    return-object v0

    .line 39685
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hasLeadingComments()Z
    .locals 1

    .line 39382
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasTrailingComments()Z
    .locals 1

    .line 39653
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 38777
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$27400()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    .line 38778
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

    .line 38765
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 38765
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

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

    .line 38765
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 38967
    :try_start_0
    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 38973
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 38969
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38970
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

    .line 38973
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    .line 38975
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 2

    .line 38909
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 38910
    :cond_0
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$27800(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/Internal$IntList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 38911
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/Internal$IntList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38912
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$27800(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 38913
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    goto :goto_0

    .line 38915
    :cond_1
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->ensurePathIsMutable()V

    .line 38916
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$27800(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/Internal$IntList;->addAll(Ljava/util/Collection;)Z

    .line 38918
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    .line 38920
    :cond_2
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$27900(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/Internal$IntList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 38921
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/Internal$IntList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38922
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$27900(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 38923
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    goto :goto_1

    .line 38925
    :cond_3
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->ensureSpanIsMutable()V

    .line 38926
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$27900(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/Internal$IntList;->addAll(Ljava/util/Collection;)Z

    .line 38928
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    .line 38930
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->hasLeadingComments()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 38931
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    .line 38932
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$28000(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingComments_:Ljava/lang/Object;

    .line 38933
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    .line 38935
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->hasTrailingComments()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 38936
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    .line 38937
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$28100(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->trailingComments_:Ljava/lang/Object;

    .line 38938
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    .line 38940
    :cond_6
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$28200(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 38941
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 38942
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$28200(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    .line 38943
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    goto :goto_2

    .line 38945
    :cond_7
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->ensureLeadingDetachedCommentsIsMutable()V

    .line 38946
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$28200(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 38948
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    .line 38950
    :cond_8
    iget-object p1, p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    .line 38951
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 38900
    instance-of v0, p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    if-eqz v0, :cond_0

    .line 38901
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1

    .line 38903
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

    .line 38765
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 38765
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

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

    .line 38765
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 38765
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 0

    .line 39825
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 38765
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 38765
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 0

    .line 38874
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 38765
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 38765
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setLeadingComments(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 39540
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39542
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    .line 39543
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingComments_:Ljava/lang/Object;

    .line 39544
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLeadingCommentsBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 39640
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39642
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    .line 39643
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingComments_:Ljava/lang/Object;

    .line 39644
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLeadingDetachedComments(ILjava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 39763
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39765
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->ensureLeadingDetachedCommentsIsMutable()V

    .line 39766
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 39767
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPath(II)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 39108
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->ensurePathIsMutable()V

    .line 39109
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/Internal$IntList;->setInt(II)I

    .line 39110
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 0

    .line 38890
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 38765
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 38765
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setSpan(II)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 39279
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->ensureSpanIsMutable()V

    .line 39280
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/Internal$IntList;->setInt(II)I

    .line 39281
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTrailingComments(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 39694
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39696
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    .line 39697
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->trailingComments_:Ljava/lang/Object;

    .line 39698
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTrailingCommentsBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 39716
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39718
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->bitField0_:I

    .line 39719
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->trailingComments_:Ljava/lang/Object;

    .line 39720
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 0

    .line 39819
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 38765
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 38765
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method
