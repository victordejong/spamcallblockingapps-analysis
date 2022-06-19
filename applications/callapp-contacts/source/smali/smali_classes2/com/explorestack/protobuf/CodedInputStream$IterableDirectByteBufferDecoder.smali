.class final Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;
.super Lcom/explorestack/protobuf/CodedInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IterableDirectByteBufferDecoder"
.end annotation


# instance fields
.field private bufferSizeAfterCurrentLimit:I

.field private currentAddress:J

.field private currentByteBuffer:Ljava/nio/ByteBuffer;

.field private currentByteBufferLimit:J

.field private currentByteBufferPos:J

.field private currentByteBufferStartPos:J

.field private currentLimit:I

.field private enableAliasing:Z

.field private immutable:Z

.field private input:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private lastTag:I

.field private startOffset:I

.field private totalBufferSize:I

.field private totalBytesRead:I


# direct methods
.method private constructor <init>(Ljava/lang/Iterable;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;IZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3140
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream;-><init>(Lcom/explorestack/protobuf/CodedInputStream$1;)V

    const v0, 0x7fffffff

    .line 3113
    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    .line 3141
    iput p2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    .line 3142
    iput-object p1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->input:Ljava/lang/Iterable;

    .line 3143
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->iterator:Ljava/util/Iterator;

    .line 3144
    iput-boolean p3, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->immutable:Z

    const/4 p1, 0x0

    .line 3145
    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->startOffset:I

    if-nez p2, :cond_0

    .line 3147
    sget-object p1, Lcom/explorestack/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 p1, 0x0

    .line 3148
    iput-wide p1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3149
    iput-wide p1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    .line 3150
    iput-wide p1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    .line 3151
    iput-wide p1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    return-void

    .line 3153
    :cond_0
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->tryGetNextByteBuffer()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Iterable;IZLcom/explorestack/protobuf/CodedInputStream$1;)V
    .locals 0

    .line 3091
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;-><init>(Ljava/lang/Iterable;IZ)V

    return-void
.end method

.method private currentRemaining()J
    .locals 4

    .line 3904
    iget-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getNextByteBuffer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3159
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3162
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->tryGetNextByteBuffer()V

    return-void

    .line 3160
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private readRawBytesTo([BII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p3, :cond_2

    .line 3827
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_2

    move v0, p3

    :goto_0
    if-lez v0, :cond_1

    .line 3830
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 3831
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getNextByteBuffer()V

    .line 3833
    :cond_0
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3834
    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-int v4, p3, v0

    add-int/2addr v4, p2

    int-to-long v5, v4

    int-to-long v9, v1

    move-object v4, p1

    move-wide v7, v9

    invoke-static/range {v2 .. v8}, Lcom/explorestack/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    sub-int/2addr v0, v1

    .line 3836
    iget-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v1, v9

    iput-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    if-gtz p3, :cond_4

    if-nez p3, :cond_3

    return-void

    .line 3845
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 3848
    :cond_4
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 3

    .line 3746
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->bufferSizeAfterCurrentLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    .line 3747
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->startOffset:I

    sub-int v1, v0, v1

    .line 3748
    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 3750
    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->bufferSizeAfterCurrentLimit:I

    sub-int/2addr v0, v1

    .line 3751
    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3753
    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->bufferSizeAfterCurrentLimit:I

    return-void
.end method

.method private remaining()I
    .locals 4

    .line 3894
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    add-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method private skipRawVarint()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 3881
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3885
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private slice(II)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3908
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 3909
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 3911
    :try_start_0
    iget-object v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3912
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 3913
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3917
    iget-object p2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3918
    iget-object p2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 3915
    :catch_0
    :try_start_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3917
    :goto_0
    iget-object p2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3918
    iget-object p2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 3919
    throw p1
.end method

.method private tryGetNextByteBuffer()V
    .locals 6

    .line 3166
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    .line 3167
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    iget-wide v4, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    sub-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    .line 3168
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3169
    iput-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    .line 3170
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    .line 3171
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    .line 3172
    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3173
    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    .line 3174
    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    return-void
.end method


# virtual methods
.method public final checkLastTagWas(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3195
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->lastTag:I

    if-ne v0, p1, :cond_0

    return-void

    .line 3196
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final enableAliasing(Z)V
    .locals 0

    .line 3720
    iput-boolean p1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->enableAliasing:Z

    return-void
.end method

.method public final getBytesUntilLimit()I
    .locals 2

    .line 3765
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 3769
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getTotalBytesRead()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLastTag()I
    .locals 1

    .line 3202
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->lastTag:I

    return v0
.end method

.method public final getTotalBytesRead()I
    .locals 4

    .line 3779
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->startOffset:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final isAtEnd()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3774
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final popLimit(I)V
    .locals 0

    .line 3759
    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    .line 3760
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recomputeBufferSizeAfterLimit()V

    return-void
.end method

.method public final pushLimit(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 3733
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getTotalBytesRead()I

    move-result v0

    add-int/2addr p1, v0

    .line 3734
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    if-gt p1, v0, :cond_0

    .line 3738
    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    .line 3740
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recomputeBufferSizeAfterLimit()V

    return v0

    .line 3736
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 3731
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final readBool()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3342
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint64()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final readByteArray()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3500
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public final readByteBuffer()Ljava/nio/ByteBuffer;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3505
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_1

    int-to-long v8, v0

    .line 3506
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v1

    cmp-long v3, v8, v1

    if-gtz v3, :cond_1

    .line 3507
    iget-boolean v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->immutable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->enableAliasing:Z

    if-eqz v1, :cond_0

    .line 3508
    iget-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3509
    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    sub-long v4, v0, v2

    sub-long/2addr v4, v8

    long-to-int v5, v4

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-direct {p0, v5, v1}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->slice(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 3513
    :cond_0
    new-array v0, v0, [B

    .line 3514
    iget-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    const-wide/16 v4, 0x0

    move-object v3, v0

    move-wide v6, v8

    invoke-static/range {v1 .. v7}, Lcom/explorestack/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 3515
    iget-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v1, v8

    iput-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3516
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_1
    if-lez v0, :cond_2

    .line 3518
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 3519
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 3520
    invoke-direct {p0, v1, v2, v0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawBytesTo([BII)V

    .line 3521
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 3525
    sget-object v0, Lcom/explorestack/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    :cond_3
    if-gez v0, :cond_4

    .line 3528
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3530
    :cond_4
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final readBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3469
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_1

    int-to-long v8, v0

    .line 3470
    iget-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v3, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v1, v3

    cmp-long v5, v8, v1

    if-gtz v5, :cond_1

    .line 3471
    iget-boolean v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->immutable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->enableAliasing:Z

    if-eqz v1, :cond_0

    .line 3472
    iget-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    sub-long/2addr v3, v1

    long-to-int v1, v3

    add-int/2addr v0, v1

    .line 3473
    invoke-direct {p0, v1, v0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->slice(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3474
    iget-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v1, v8

    iput-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    return-object v0

    .line 3478
    :cond_0
    new-array v0, v0, [B

    const-wide/16 v5, 0x0

    move-wide v1, v3

    move-object v3, v0

    move-wide v4, v5

    move-wide v6, v8

    .line 3479
    invoke-static/range {v1 .. v7}, Lcom/explorestack/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 3480
    iget-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v1, v8

    iput-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3481
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->wrap([B)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :cond_1
    if-lez v0, :cond_2

    .line 3483
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 3484
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 3485
    invoke-direct {p0, v1, v2, v0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawBytesTo([BII)V

    .line 3486
    invoke-static {v1}, Lcom/explorestack/protobuf/ByteString;->wrap([B)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 3490
    sget-object v0, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    return-object v0

    :cond_3
    if-gez v0, :cond_4

    .line 3493
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3495
    :cond_4
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3307
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3540
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public final readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3337
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public final readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3332
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3312
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readGroup(ILcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/explorestack/protobuf/MessageLite;",
            ">(I",
            "Lcom/explorestack/protobuf/Parser<",
            "TT;>;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3417
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionLimit:I

    if-ge v0, v1, :cond_0

    .line 3420
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3421
    invoke-interface {p2, p0, p3}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/MessageLite;

    const/4 p3, 0x4

    .line 3422
    invoke-static {p1, p3}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkLastTagWas(I)V

    .line 3423
    iget p1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    return-object p2

    .line 3418
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final readGroup(ILcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3401
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionLimit:I

    if-ge v0, v1, :cond_0

    .line 3404
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3405
    invoke-interface {p2, p0, p3}, Lcom/explorestack/protobuf/MessageLite$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;

    const/4 p2, 0x4

    .line 3406
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkLastTagWas(I)V

    .line 3407
    iget p1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    return-void

    .line 3402
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3327
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public final readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3322
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/explorestack/protobuf/MessageLite;",
            ">(",
            "Lcom/explorestack/protobuf/Parser<",
            "TT;>;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3454
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    .line 3455
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionLimit:I

    if-ge v1, v2, :cond_0

    .line 3458
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->pushLimit(I)I

    move-result v0

    .line 3459
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3460
    invoke-interface {p1, p0, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/MessageLite;

    const/4 p2, 0x0

    .line 3461
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkLastTagWas(I)V

    .line 3462
    iget p2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3463
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->popLimit(I)V

    return-object p1

    .line 3456
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final readMessage(Lcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3438
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    .line 3439
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionLimit:I

    if-ge v1, v2, :cond_0

    .line 3442
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->pushLimit(I)I

    move-result v0

    .line 3443
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3444
    invoke-interface {p1, p0, p2}, Lcom/explorestack/protobuf/MessageLite$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;

    const/4 p1, 0x0

    .line 3445
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkLastTagWas(I)V

    .line 3446
    iget p1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3447
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->popLimit(I)V

    return-void

    .line 3440
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final readRawByte()B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3785
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3786
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getNextByteBuffer()V

    .line 3788
    :cond_0
    iget-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    return v0
.end method

.method public final readRawBytes(I)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    int-to-long v7, p1

    .line 3793
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v0

    cmp-long v2, v7, v0

    if-gtz v2, :cond_0

    .line 3794
    new-array p1, p1, [B

    .line 3795
    iget-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    const-wide/16 v3, 0x0

    move-object v2, p1

    move-wide v5, v7

    invoke-static/range {v0 .. v6}, Lcom/explorestack/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 3796
    iget-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v0, v7

    iput-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    return-object p1

    :cond_0
    if-ltz p1, :cond_1

    .line 3799
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 3800
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 3801
    invoke-direct {p0, v0, v1, p1}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawBytesTo([BII)V

    return-object v0

    :cond_1
    if-gtz p1, :cond_3

    if-nez p1, :cond_2

    .line 3807
    sget-object p1, Lcom/explorestack/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object p1

    .line 3809
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 3813
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final readRawLittleEndian32()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3680
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 3681
    iget-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v2, v0

    .line 3682
    iput-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3683
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    .line 3684
    invoke-static {v3, v4}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const-wide/16 v3, 0x2

    add-long/2addr v3, v0

    .line 3685
    invoke-static {v3, v4}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const-wide/16 v3, 0x3

    add-long/2addr v0, v3

    .line 3686
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    .line 3688
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 3689
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 3690
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 3691
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final readRawLittleEndian64()J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3696
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v0

    const/16 v2, 0x38

    const/16 v3, 0x30

    const/16 v4, 0x28

    const/16 v5, 0x20

    const/16 v6, 0x18

    const/16 v7, 0x10

    const/16 v8, 0x8

    const-wide/16 v9, 0x8

    const-wide/16 v11, 0xff

    cmp-long v13, v0, v9

    if-ltz v13, :cond_0

    .line 3697
    iget-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v9, v0

    .line 3698
    iput-wide v9, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3699
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v9

    int-to-long v9, v9

    and-long/2addr v9, v11

    const-wide/16 v13, 0x1

    add-long/2addr v13, v0

    .line 3700
    invoke-static {v13, v14}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v13

    int-to-long v13, v13

    and-long/2addr v13, v11

    shl-long/2addr v13, v8

    or-long v8, v9, v13

    const-wide/16 v13, 0x2

    add-long/2addr v13, v0

    .line 3701
    invoke-static {v13, v14}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v10

    int-to-long v13, v10

    and-long/2addr v13, v11

    shl-long/2addr v13, v7

    or-long v7, v8, v13

    const-wide/16 v9, 0x3

    add-long/2addr v9, v0

    .line 3702
    invoke-static {v9, v10}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v9

    int-to-long v9, v9

    and-long/2addr v9, v11

    shl-long/2addr v9, v6

    or-long v6, v7, v9

    const-wide/16 v8, 0x4

    add-long/2addr v8, v0

    .line 3703
    invoke-static {v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v8

    int-to-long v8, v8

    and-long/2addr v8, v11

    shl-long/2addr v8, v5

    or-long v5, v6, v8

    const-wide/16 v7, 0x5

    add-long/2addr v7, v0

    .line 3704
    invoke-static {v7, v8}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v11

    shl-long/2addr v7, v4

    or-long v4, v5, v7

    const-wide/16 v6, 0x6

    add-long/2addr v6, v0

    .line 3705
    invoke-static {v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v11

    shl-long/2addr v6, v3

    or-long v3, v4, v6

    const-wide/16 v5, 0x7

    add-long/2addr v0, v5

    .line 3706
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v11

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    return-wide v0

    .line 3708
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v11

    .line 3709
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v9

    int-to-long v9, v9

    and-long/2addr v9, v11

    shl-long v8, v9, v8

    or-long/2addr v0, v8

    .line 3710
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v8

    int-to-long v8, v8

    and-long/2addr v8, v11

    shl-long v7, v8, v7

    or-long/2addr v0, v7

    .line 3711
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v11

    shl-long v6, v7, v6

    or-long/2addr v0, v6

    .line 3712
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v11

    shl-long v5, v6, v5

    or-long/2addr v0, v5

    .line 3713
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v11

    shl-long v4, v5, v4

    or-long/2addr v0, v4

    .line 3714
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v11

    shl-long v3, v4, v3

    or-long/2addr v0, v3

    .line 3715
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v11

    shl-long v2, v3, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final readRawVarint32()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3567
    iget-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3569
    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_6

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .line 3574
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    if-ltz v0, :cond_0

    .line 3575
    iget-wide v4, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    return v0

    .line 3577
    :cond_0
    iget-wide v6, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v8, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xa

    cmp-long v1, v6, v8

    if-ltz v1, :cond_6

    add-long v6, v4, v2

    .line 3579
    invoke-static {v4, v5}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    :cond_1
    add-long v4, v6, v2

    .line 3581
    invoke-static {v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    :cond_2
    move-wide v6, v4

    goto :goto_0

    :cond_3
    add-long v6, v4, v2

    .line 3583
    invoke-static {v4, v5}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_4

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_4
    add-long v4, v6, v2

    .line 3586
    invoke-static {v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v6, v1, 0x1c

    xor-int/2addr v0, v6

    const v6, 0xfe03f80

    xor-int/2addr v0, v6

    if-gez v1, :cond_2

    add-long v6, v4, v2

    .line 3590
    invoke-static {v4, v5}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-gez v1, :cond_5

    add-long v4, v6, v2

    .line 3591
    invoke-static {v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-gez v1, :cond_2

    add-long v6, v4, v2

    .line 3592
    invoke-static {v4, v5}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-gez v1, :cond_5

    add-long v4, v6, v2

    .line 3593
    invoke-static {v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-gez v1, :cond_2

    add-long v6, v4, v2

    .line 3594
    invoke-static {v4, v5}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-ltz v1, :cond_6

    .line 3598
    :cond_5
    :goto_0
    iput-wide v6, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    return v0

    .line 3601
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public final readRawVarint64()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3608
    iget-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3610
    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_9

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .line 3616
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    if-ltz v0, :cond_0

    .line 3617
    iget-wide v4, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    int-to-long v0, v0

    return-wide v0

    .line 3619
    :cond_0
    iget-wide v6, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v8, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xa

    cmp-long v1, v6, v8

    if-ltz v1, :cond_9

    add-long v6, v4, v2

    .line 3621
    invoke-static {v4, v5}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    :goto_0
    int-to-long v0, v0

    goto/16 :goto_4

    :cond_1
    add-long v4, v6, v2

    .line 3623
    invoke-static {v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    :cond_2
    :goto_1
    move-wide v6, v4

    goto/16 :goto_4

    :cond_3
    add-long v6, v4, v2

    .line 3625
    invoke-static {v4, v5}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_4

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_4
    int-to-long v0, v0

    add-long v4, v6, v2

    .line 3627
    invoke-static {v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    const/16 v8, 0x1c

    shl-long/2addr v6, v8

    xor-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-ltz v8, :cond_5

    const-wide/32 v2, 0xfe03f80

    :goto_2
    xor-long/2addr v0, v2

    goto :goto_1

    :cond_5
    add-long v8, v4, v2

    .line 3629
    invoke-static {v4, v5}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x23

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_6

    const-wide v2, -0x7f01fc080L

    :goto_3
    xor-long/2addr v0, v2

    move-wide v6, v8

    goto :goto_4

    :cond_6
    add-long v4, v8, v2

    .line 3631
    invoke-static {v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x2a

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-ltz v8, :cond_7

    const-wide v2, 0x3f80fe03f80L

    goto :goto_2

    :cond_7
    add-long v8, v4, v2

    .line 3633
    invoke-static {v4, v5}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x31

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_8

    const-wide v2, -0x1fc07f01fc080L

    goto :goto_3

    :cond_8
    add-long v4, v8, v2

    .line 3643
    invoke-static {v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    const-wide v8, 0xfe03f80fe03f80L

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-gez v8, :cond_2

    add-long/2addr v2, v4

    .line 3654
    invoke-static {v4, v5}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    cmp-long v8, v4, v6

    if-ltz v8, :cond_9

    move-wide v6, v2

    .line 3659
    :goto_4
    iput-wide v6, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    return-wide v0

    .line 3662
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    return-wide v0
.end method

.method final readRawVarint64SlowPath()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 3669
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 3675
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3545
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public final readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3550
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3555
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public final readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3560
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_0

    int-to-long v8, v0

    .line 3348
    iget-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v3, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v1, v3

    cmp-long v5, v8, v1

    if-gtz v5, :cond_0

    .line 3349
    new-array v0, v0, [B

    const-wide/16 v5, 0x0

    move-wide v1, v3

    move-object v3, v0

    move-wide v4, v5

    move-wide v6, v8

    .line 3350
    invoke-static/range {v1 .. v7}, Lcom/explorestack/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 3351
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/explorestack/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 3352
    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    return-object v1

    :cond_0
    if-lez v0, :cond_1

    .line 3354
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 3356
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 3357
    invoke-direct {p0, v1, v2, v0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawBytesTo([BII)V

    .line 3358
    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/explorestack/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, ""

    return-object v0

    :cond_2
    if-gez v0, :cond_3

    .line 3366
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3368
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final readStringRequireUtf8()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3373
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_0

    int-to-long v1, v0

    .line 3374
    iget-wide v3, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v5, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v3, v5

    cmp-long v7, v1, v3

    if-gtz v7, :cond_0

    .line 3375
    iget-wide v3, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    sub-long/2addr v5, v3

    long-to-int v3, v5

    .line 3376
    iget-object v4, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v4, v3, v0}, Lcom/explorestack/protobuf/Utf8;->decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    .line 3377
    iget-wide v3, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    return-object v0

    :cond_0
    if-ltz v0, :cond_1

    .line 3380
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 3381
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 3382
    invoke-direct {p0, v1, v2, v0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawBytesTo([BII)V

    .line 3383
    invoke-static {v1, v2, v0}, Lcom/explorestack/protobuf/Utf8;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, ""

    return-object v0

    :cond_2
    if-gtz v0, :cond_3

    .line 3390
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3392
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final readTag()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3179
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3180
    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->lastTag:I

    return v0

    .line 3184
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->lastTag:I

    .line 3185
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3190
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->lastTag:I

    return v0

    .line 3188
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3535
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public final readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3317
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readUnknownGroup(ILcom/explorestack/protobuf/MessageLite$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3431
    invoke-static {}, Lcom/explorestack/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/explorestack/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readGroup(ILcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public final resetSizeCounter()V
    .locals 4

    .line 3725
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->startOffset:I

    return-void
.end method

.method public final skipField(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3207
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    .line 3225
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipRawBytes(I)V

    return v1

    .line 3228
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 3218
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipMessage()V

    .line 3220
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    invoke-static {p1, v3}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    .line 3219
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkLastTagWas(I)V

    return v1

    .line 3215
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipRawBytes(I)V

    return v1

    :cond_4
    const/16 p1, 0x8

    .line 3212
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipRawBytes(I)V

    return v1

    .line 3209
    :cond_5
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipRawVarint()V

    return v1
.end method

.method public final skipField(ILcom/explorestack/protobuf/CodedOutputStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3234
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 3273
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian32()I

    move-result v0

    .line 3274
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 3275
    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    return v1

    .line 3279
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 3258
    :cond_2
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 3259
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipMessage(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 3262
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    .line 3261
    invoke-static {p1, v3}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    .line 3263
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkLastTagWas(I)V

    .line 3264
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    return v1

    .line 3251
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3252
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 3253
    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/explorestack/protobuf/ByteString;)V

    return v1

    .line 3244
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian64()J

    move-result-wide v2

    .line 3245
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 3246
    invoke-virtual {p2, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    return v1

    .line 3237
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readInt64()J

    move-result-wide v2

    .line 3238
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 3239
    invoke-virtual {p2, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    return v1
.end method

.method public final skipMessage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3286
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readTag()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3287
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public final skipMessage(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3296
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readTag()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3297
    invoke-virtual {p0, v0, p1}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipField(ILcom/explorestack/protobuf/CodedOutputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public final skipRawBytes(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2

    int-to-long v0, p1

    .line 3853
    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    iget v3, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    :goto_0
    if-lez p1, :cond_1

    .line 3862
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3863
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getNextByteBuffer()V

    .line 3865
    :cond_0
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p1, v0

    .line 3867
    iget-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    if-gez p1, :cond_3

    .line 3873
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 3875
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method
