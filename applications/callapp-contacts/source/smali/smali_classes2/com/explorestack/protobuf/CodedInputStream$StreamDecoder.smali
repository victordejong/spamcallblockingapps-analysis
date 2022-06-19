.class final Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;
.super Lcom/explorestack/protobuf/CodedInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StreamDecoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder$RefillCallback;,
        Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;
    }
.end annotation


# instance fields
.field private final buffer:[B

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private final input:Ljava/io/InputStream;

.field private lastTag:I

.field private pos:I

.field private refillCallback:Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

.field private totalBytesRetired:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    const/4 v0, 0x0

    .line 2046
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream;-><init>(Lcom/explorestack/protobuf/CodedInputStream$1;)V

    const v1, 0x7fffffff

    .line 2044
    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2718
    iput-object v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    const-string v0, "input"

    .line 2047
    invoke-static {p1, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2048
    iput-object p1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    .line 2049
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    const/4 p1, 0x0

    .line 2050
    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2051
    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2052
    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;ILcom/explorestack/protobuf/CodedInputStream$1;)V
    .locals 0

    .line 2025
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;)I
    .locals 0

    .line 2025
    iget p0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    return p0
.end method

.method static synthetic access$600(Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;)[B
    .locals 0

    .line 2025
    iget-object p0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    return-object p0
.end method

.method private readBytesSlowPath(I)Lcom/explorestack/protobuf/ByteString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2972
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathOneChunk(I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2976
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFrom([B)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1

    .line 2979
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2980
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int v2, v1, v0

    .line 2983
    iget v3, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    const/4 v1, 0x0

    .line 2984
    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2985
    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int v3, p1, v2

    .line 2992
    invoke-direct {p0, v3}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathRemainingChunks(I)Ljava/util/List;

    move-result-object v3

    .line 2995
    new-array p1, p1, [B

    .line 2998
    iget-object v4, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    invoke-static {v4, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3002
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 3003
    array-length v4, v3

    invoke-static {v3, v1, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3004
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 3007
    :cond_1
    invoke-static {p1}, Lcom/explorestack/protobuf/ByteString;->wrap([B)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method private readRawBytesSlowPath(IZ)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2837
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathOneChunk(I)[B

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 2839
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    :cond_0
    return-object v0

    .line 2842
    :cond_1
    iget p2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2843
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int v1, v0, p2

    .line 2846
    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    const/4 v0, 0x0

    .line 2847
    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2848
    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int v2, p1, v1

    .line 2855
    invoke-direct {p0, v2}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathRemainingChunks(I)Ljava/util/List;

    move-result-object v2

    .line 2858
    new-array p1, p1, [B

    .line 2861
    iget-object v3, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    invoke-static {v3, p2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2865
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 2866
    array-length v3, v2

    invoke-static {v2, v0, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2867
    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private readRawBytesSlowPathOneChunk(I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2882
    sget-object p1, Lcom/explorestack/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object p1

    :cond_0
    if-ltz p1, :cond_7

    .line 2889
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 2890
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_6

    .line 2895
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-gt v0, v1, :cond_5

    .line 2901
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    sub-int v1, p1, v0

    const/16 v2, 0x1000

    if-lt v1, v2, :cond_2

    .line 2905
    iget-object v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 2908
    :cond_2
    :goto_0
    new-array v1, p1, [B

    .line 2911
    iget-object v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v3, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2912
    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v3, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2913
    iput v4, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2914
    iput v4, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    :goto_1
    if-ge v0, p1, :cond_4

    .line 2919
    iget-object v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    sub-int v3, p1, v0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 2923
    iget v3, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v0, v2

    goto :goto_1

    .line 2921
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_4
    return-object v1

    .line 2897
    :cond_5
    iget p1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v1, p1

    iget p1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 2898
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2891
    :cond_6
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2885
    :cond_7
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private readRawBytesSlowPathRemainingChunks(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2946
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-lez p1, :cond_2

    const/16 v1, 0x1000

    .line 2950
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 2953
    iget-object v4, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    sub-int v5, v1, v3

    invoke-virtual {v4, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 2957
    iget v5, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v3, v4

    goto :goto_1

    .line 2955
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    sub-int/2addr p1, v1

    .line 2961
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 3

    .line 2677
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2678
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v1, v0

    .line 2679
    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 2681
    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    sub-int/2addr v0, v1

    .line 2682
    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2684
    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    return-void
.end method

.method private refillBuffer(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2729
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->tryRefillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2732
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 2733
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2735
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    return-void
.end method

.method private skipRawBytesSlowPath(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_6

    .line 3029
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-gt v2, v3, :cond_5

    .line 3037
    iget-object v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    add-int/2addr v0, v1

    .line 3039
    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3040
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v0, v1

    .line 3041
    iput v3, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 3042
    iput v3, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    move v3, v0

    :goto_0
    if-ge v3, p1, :cond_1

    sub-int v0, p1, v3

    .line 3047
    :try_start_0
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v2, v0, v6

    if-ltz v2, :cond_0

    cmp-long v6, v0, v4

    if-gtz v6, :cond_0

    if-eqz v2, :cond_1

    long-to-int v1, v0

    add-int/2addr v3, v1

    goto :goto_0

    .line 3049
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    .line 3050
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "#skip returned invalid result: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 3064
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3065
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 3066
    throw p1

    .line 3064
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3065
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    :cond_2
    if-ge v3, p1, :cond_4

    .line 3070
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int v1, v0, v1

    .line 3071
    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    const/4 v0, 0x1

    .line 3075
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    :goto_1
    sub-int v2, p1, v1

    .line 3076
    iget v3, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-le v2, v3, :cond_3

    add-int/2addr v1, v3

    .line 3078
    iput v3, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3079
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    goto :goto_1

    .line 3082
    :cond_3
    iput v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    :cond_4
    return-void

    :cond_5
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 3031
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 3033
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 3026
    :cond_6
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private skipRawVarint()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2498
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 2499
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->skipRawVarintFastPath()V

    return-void

    .line 2501
    :cond_0
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->skipRawVarintSlowPath()V

    return-void
.end method

.method private skipRawVarintFastPath()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 2507
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2511
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private skipRawVarintSlowPath()V
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

    .line 2516
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2520
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private tryRefillBuffer(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2749
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-le v0, v1, :cond_8

    .line 2757
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    if-le p1, v0, :cond_1

    return v3

    :cond_1
    add-int/2addr v1, v2

    add-int/2addr v1, p1

    .line 2762
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-le v1, v0, :cond_2

    return v3

    .line 2767
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    if-eqz v0, :cond_3

    .line 2768
    invoke-interface {v0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder$RefillCallback;->onRefill()V

    .line 2771
    :cond_3
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    if-lez v0, :cond_5

    .line 2773
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-le v1, v0, :cond_4

    .line 2774
    iget-object v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2776
    :cond_4
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2777
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2778
    iput v3, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2782
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    array-length v4, v1

    sub-int/2addr v4, v2

    iget v5, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    iget v6, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v5, v6

    .line 2786
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2783
    invoke-virtual {v0, v1, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, -0x1

    if-lt v0, v1, :cond_7

    .line 2791
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    array-length v1, v1

    if-gt v0, v1, :cond_7

    if-lez v0, :cond_6

    .line 2799
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2800
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 2801
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_6
    return v3

    .line 2792
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    .line 2793
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "#read(byte[]) returned invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2750
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refillBuffer() called when "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes were already available in buffer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final checkLastTagWas(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2073
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2074
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final enableAliasing(Z)V
    .locals 0

    return-void
.end method

.method public final getBytesUntilLimit()I
    .locals 3

    .line 2696
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2700
    :cond_0
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLastTag()I
    .locals 1

    .line 2080
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    return v0
.end method

.method public final getTotalBytesRead()I
    .locals 2

    .line 2711
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isAtEnd()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2706
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->tryRefillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final popLimit(I)V
    .locals 0

    .line 2690
    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2691
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    return-void
.end method

.method public final pushLimit(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 2664
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 2665
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-gt p1, v0, :cond_0

    .line 2669
    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2671
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    return v0

    .line 2667
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2662
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

    .line 2246
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2389
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2390
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 2393
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    add-int v3, v2, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 2394
    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 2399
    invoke-direct {p0, v0, v1}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v0

    return-object v0
.end method

.method public final readByteBuffer()Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2405
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2406
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 2408
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    add-int v3, v2, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2409
    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 2413
    sget-object v0, Lcom/explorestack/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    :cond_1
    const/4 v1, 0x1

    .line 2419
    invoke-direct {p0, v0, v1}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final readBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2373
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2374
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 2377
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    invoke-static {v1, v2, v0}, Lcom/explorestack/protobuf/ByteString;->copyFrom([BII)Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    .line 2378
    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 2382
    sget-object v0, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    return-object v0

    .line 2384
    :cond_1
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readBytesSlowPath(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2211
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

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

    .line 2429
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

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

    .line 2241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

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

    .line 2236
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

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

    .line 2216
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

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

    .line 2321
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recursionLimit:I

    if-ge v0, v1, :cond_0

    .line 2324
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2325
    invoke-interface {p2, p0, p3}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/MessageLite;

    const/4 p3, 0x4

    .line 2326
    invoke-static {p1, p3}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2327
    iget p1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    return-object p2

    .line 2322
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

    .line 2305
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recursionLimit:I

    if-ge v0, v1, :cond_0

    .line 2308
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2309
    invoke-interface {p2, p0, p3}, Lcom/explorestack/protobuf/MessageLite$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;

    const/4 p2, 0x4

    .line 2310
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2311
    iget p1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    return-void

    .line 2306
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

    .line 2231
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

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

    .line 2226
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

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

    .line 2358
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2359
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recursionLimit:I

    if-ge v1, v2, :cond_0

    .line 2362
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pushLimit(I)I

    move-result v0

    .line 2363
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2364
    invoke-interface {p1, p0, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/MessageLite;

    const/4 p2, 0x0

    .line 2365
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2366
    iget p2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2367
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->popLimit(I)V

    return-object p1

    .line 2360
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

    .line 2342
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2343
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recursionLimit:I

    if-ge v1, v2, :cond_0

    .line 2346
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pushLimit(I)I

    move-result v0

    .line 2347
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2348
    invoke-interface {p1, p0, p2}, Lcom/explorestack/protobuf/MessageLite$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;

    const/4 p1, 0x0

    .line 2349
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2350
    iget p1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2351
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->popLimit(I)V

    return-void

    .line 2344
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final readRawByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2809
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2810
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2812
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public final readRawBytes(I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2817
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2818
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    if-lez p1, :cond_0

    add-int/2addr p1, v0

    .line 2819
    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2820
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    invoke-static {v1, v0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 2823
    invoke-direct {p0, p1, v0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object p1

    return-object p1
.end method

.method public final readRawLittleEndian32()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2611
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2613
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 2614
    invoke-direct {p0, v2}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2615
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2618
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    add-int/lit8 v2, v0, 0x4

    .line 2619
    iput v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2620
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method public final readRawLittleEndian64()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2628
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2630
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 2631
    invoke-direct {p0, v2}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2632
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2635
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    add-int/lit8 v3, v0, 0x8

    .line 2636
    iput v3, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2637
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final readRawVarint32()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2459
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2461
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-eq v1, v0, :cond_6

    .line 2465
    iget-object v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    .line 2467
    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    .line 2468
    iput v3, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    return v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_6

    add-int/lit8 v1, v3, 0x1

    .line 2472
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, 0x1

    .line 2474
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v3, 0x1

    .line 2476
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_4

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v1, 0x1

    .line 2479
    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    .line 2482
    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-ltz v2, :cond_6

    .line 2491
    :cond_5
    :goto_0
    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    return v0

    .line 2494
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64SlowPath()J

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

    .line 2538
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2540
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-eq v1, v0, :cond_9

    .line 2544
    iget-object v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    .line 2547
    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    .line 2548
    iput v3, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_9

    add-int/lit8 v1, v3, 0x1

    .line 2552
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    :goto_0
    int-to-long v2, v0

    goto/16 :goto_4

    :cond_1
    add-int/lit8 v3, v1, 0x1

    .line 2554
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_2

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 2556
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_3

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_3
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    .line 2558
    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    const-wide/32 v1, 0xfe03f80

    :goto_1
    xor-long v2, v3, v1

    move v1, v0

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v0, 0x1

    .line 2560
    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_5

    const-wide v5, -0x7f01fc080L

    :goto_2
    xor-long v2, v3, v5

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v1, 0x1

    .line 2562
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_6

    const-wide v1, 0x3f80fe03f80L

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v0, 0x1

    .line 2564
    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_7

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v1, 0x1

    .line 2574
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_8

    add-int/lit8 v1, v0, 0x1

    .line 2585
    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-ltz v0, :cond_9

    goto :goto_3

    :cond_8
    move v1, v0

    :goto_3
    move-wide v2, v3

    .line 2590
    :goto_4
    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    return-wide v2

    .line 2593
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64SlowPath()J

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

    .line 2600
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawByte()B

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

    .line 2606
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

    .line 2434
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

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

    .line 2439
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

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

    .line 2444
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->decodeZigZag32(I)I

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

    .line 2449
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2251
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_0

    .line 2252
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 2255
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v3, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sget-object v4, Lcom/explorestack/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2256
    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    .line 2262
    :cond_1
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-gt v0, v1, :cond_2

    .line 2263
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2264
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v3, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sget-object v4, Lcom/explorestack/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2265
    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    return-object v1

    .line 2269
    :cond_2
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v0

    sget-object v2, Lcom/explorestack/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public final readStringRequireUtf8()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2274
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2276
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2278
    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int v3, v2, v1

    const/4 v4, 0x0

    if-gt v0, v3, :cond_0

    if-lez v0, :cond_0

    .line 2281
    iget-object v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    add-int v3, v1, v0

    .line 2282
    iput v3, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gt v0, v2, :cond_2

    .line 2287
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2288
    iget-object v2, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    add-int/lit8 v1, v0, 0x0

    .line 2290
    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    goto :goto_0

    .line 2293
    :cond_2
    invoke-direct {p0, v0, v4}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v2

    :goto_0
    const/4 v1, 0x0

    .line 2296
    :goto_1
    invoke-static {v2, v1, v0}, Lcom/explorestack/protobuf/Utf8;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readTag()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2057
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2058
    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    return v0

    .line 2062
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    .line 2063
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2068
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    return v0

    .line 2066
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

    .line 2424
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

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

    .line 2221
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

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

    .line 2335
    invoke-static {}, Lcom/explorestack/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/explorestack/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readGroup(ILcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public final resetSizeCounter()V
    .locals 1

    .line 2656
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    neg-int v0, v0

    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    return-void
.end method

.method public final skipField(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2085
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

    .line 2103
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    return v1

    .line 2106
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 2096
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->skipMessage()V

    .line 2098
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    invoke-static {p1, v3}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    .line 2097
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    return v1

    .line 2093
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    return v1

    :cond_4
    const/16 p1, 0x8

    .line 2090
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    return v1

    .line 2087
    :cond_5
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->skipRawVarint()V

    return v1
.end method

.method public final skipField(ILcom/explorestack/protobuf/CodedOutputStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2112
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

    .line 2151
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

    move-result v0

    .line 2152
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 2153
    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    return v1

    .line 2157
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 2136
    :cond_2
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 2137
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->skipMessage(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 2140
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    .line 2139
    invoke-static {p1, v3}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    .line 2141
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2142
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    return v1

    .line 2129
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2130
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 2131
    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/explorestack/protobuf/ByteString;)V

    return v1

    .line 2122
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

    move-result-wide v2

    .line 2123
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 2124
    invoke-virtual {p2, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    return v1

    .line 2115
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readInt64()J

    move-result-wide v2

    .line 2116
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 2117
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

    .line 2164
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2165
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->skipField(I)Z

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

    .line 2174
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2175
    invoke-virtual {p0, v0, p1}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->skipField(ILcom/explorestack/protobuf/CodedOutputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public final skipRawBytes(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3012
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    .line 3014
    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->pos:I

    return-void

    .line 3016
    :cond_0
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$StreamDecoder;->skipRawBytesSlowPath(I)V

    return-void
.end method
