.class final Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;
.super Lcom/explorestack/protobuf/CodedInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnsafeDirectNioDecoder"
.end annotation


# instance fields
.field private final address:J

.field private final buffer:Ljava/nio/ByteBuffer;

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private enableAliasing:Z

.field private final immutable:Z

.field private lastTag:I

.field private limit:J

.field private pos:J

.field private startPos:J


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 4

    const/4 v0, 0x0

    .line 1319
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream;-><init>(Lcom/explorestack/protobuf/CodedInputStream$1;)V

    const v0, 0x7fffffff

    .line 1313
    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    .line 1320
    iput-object p1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    .line 1321
    invoke-static {p1}, Lcom/explorestack/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->address:J

    .line 1322
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    .line 1323
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1324
    iput-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    .line 1325
    iput-boolean p2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->immutable:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;ZLcom/explorestack/protobuf/CodedInputStream$1;)V
    .locals 0

    .line 1278
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;-><init>(Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method private bufferPos(J)I
    .locals 2

    .line 2003
    iget-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->address:J

    sub-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method static isSupported()Z
    .locals 1

    .line 1316
    invoke-static {}, Lcom/explorestack/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    return v0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 4

    .line 1987
    iget-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferSizeAfterLimit:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    .line 1988
    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    sub-long v2, v0, v2

    long-to-int v3, v2

    .line 1989
    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    if-le v3, v2, :cond_0

    sub-int/2addr v3, v2

    .line 1991
    iput v3, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferSizeAfterLimit:I

    int-to-long v2, v3

    sub-long/2addr v0, v2

    .line 1992
    iput-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1994
    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferSizeAfterLimit:I

    return-void
.end method

.method private remaining()I
    .locals 4

    .line 1999
    iget-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    sub-long/2addr v0, v2

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

    .line 1748
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 1749
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawVarintFastPath()V

    return-void

    .line 1751
    :cond_0
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawVarintSlowPath()V

    return-void
.end method

.method private skipRawVarintFastPath()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1757
    iget-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-ltz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1761
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

    .line 1766
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1770
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private slice(JJ)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2007
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 2008
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 2010
    :try_start_0
    iget-object v2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferPos(J)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2011
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p3, p4}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferPos(J)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2012
    iget-object p1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2016
    iget-object p2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2017
    iget-object p2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 2014
    :catch_0
    :try_start_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2016
    :goto_0
    iget-object p2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2017
    iget-object p2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2018
    throw p1
.end method


# virtual methods
.method public final checkLastTagWas(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1346
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1347
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final enableAliasing(Z)V
    .locals 0

    .line 1894
    iput-boolean p1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->enableAliasing:Z

    return-void
.end method

.method public final getBytesUntilLimit()I
    .locals 2

    .line 1927
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1931
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->getTotalBytesRead()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLastTag()I
    .locals 1

    .line 1353
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    return v0
.end method

.method public final getTotalBytesRead()I
    .locals 4

    .line 1941
    iget-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

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

    .line 1936
    iget-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

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

    .line 1921
    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    .line 1922
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recomputeBufferSizeAfterLimit()V

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

    .line 1907
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->getTotalBytesRead()I

    move-result v0

    add-int/2addr p1, v0

    .line 1908
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    if-gt p1, v0, :cond_0

    .line 1912
    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    .line 1914
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recomputeBufferSizeAfterLimit()V

    return v0

    .line 1910
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1905
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

    .line 1494
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

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

    .line 1640
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public final readByteBuffer()Ljava/nio/ByteBuffer;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1645
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_1

    .line 1646
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 1650
    iget-boolean v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->immutable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->enableAliasing:Z

    if-eqz v1, :cond_0

    .line 1651
    iget-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v3, v0

    add-long v5, v1, v3

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->slice(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1652
    iget-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    return-object v0

    .line 1656
    :cond_0
    new-array v1, v0, [B

    .line 1657
    iget-wide v3, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v6, 0x0

    int-to-long v10, v0

    move-object v5, v1

    move-wide v8, v10

    invoke-static/range {v3 .. v9}, Lcom/explorestack/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 1658
    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    add-long/2addr v2, v10

    iput-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1659
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 1665
    sget-object v0, Lcom/explorestack/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    :cond_2
    if-gez v0, :cond_3

    .line 1668
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1670
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final readBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1614
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_1

    .line 1615
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 1616
    iget-boolean v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->immutable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->enableAliasing:Z

    if-eqz v1, :cond_0

    .line 1617
    iget-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v3, v0

    add-long v5, v1, v3

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->slice(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1618
    iget-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1619
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    return-object v0

    .line 1622
    :cond_0
    new-array v8, v0, [B

    .line 1623
    iget-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v4, 0x0

    int-to-long v9, v0

    move-object v3, v8

    move-wide v6, v9

    invoke-static/range {v1 .. v7}, Lcom/explorestack/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 1624
    iget-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    add-long/2addr v0, v9

    iput-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1625
    invoke-static {v8}, Lcom/explorestack/protobuf/ByteString;->wrap([B)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 1630
    sget-object v0, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    return-object v0

    :cond_2
    if-gez v0, :cond_3

    .line 1633
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1635
    :cond_3
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

    .line 1459
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

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

    .line 1680
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

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

    .line 1489
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

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

    .line 1484
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

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

    .line 1464
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

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

    .line 1562
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionLimit:I

    if-ge v0, v1, :cond_0

    .line 1565
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1566
    invoke-interface {p2, p0, p3}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/MessageLite;

    const/4 p3, 0x4

    .line 1567
    invoke-static {p1, p3}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1568
    iget p1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    return-object p2

    .line 1563
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

    .line 1546
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionLimit:I

    if-ge v0, v1, :cond_0

    .line 1549
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1550
    invoke-interface {p2, p0, p3}, Lcom/explorestack/protobuf/MessageLite$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;

    const/4 p2, 0x4

    .line 1551
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1552
    iget p1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    return-void

    .line 1547
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

    .line 1479
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

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

    .line 1474
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

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

    .line 1599
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1600
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionLimit:I

    if-ge v1, v2, :cond_0

    .line 1603
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pushLimit(I)I

    move-result v0

    .line 1604
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1605
    invoke-interface {p1, p0, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/MessageLite;

    const/4 p2, 0x0

    .line 1606
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1607
    iget p2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1608
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->popLimit(I)V

    return-object p1

    .line 1601
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

    .line 1583
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1584
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionLimit:I

    if-ge v1, v2, :cond_0

    .line 1587
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pushLimit(I)I

    move-result v0

    .line 1588
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1589
    invoke-interface {p1, p0, p2}, Lcom/explorestack/protobuf/MessageLite$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;

    const/4 p1, 0x0

    .line 1590
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1591
    iget p1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1592
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->popLimit(I)V

    return-void

    .line 1585
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

    .line 1946
    iget-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 1949
    iput-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    return v0

    .line 1947
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final readRawBytes(I)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1954
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 1955
    new-array v0, p1, [B

    .line 1956
    iget-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v3, p1

    add-long v5, v1, v3

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->slice(JJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1957
    iget-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    return-object v0

    :cond_0
    if-gtz p1, :cond_2

    if-nez p1, :cond_1

    .line 1963
    sget-object p1, Lcom/explorestack/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object p1

    .line 1965
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1969
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final readRawLittleEndian32()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1860
    iget-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1862
    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    add-long/2addr v4, v0

    .line 1866
    iput-wide v4, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1867
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    .line 1868
    invoke-static {v3, v4}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const-wide/16 v3, 0x2

    add-long/2addr v3, v0

    .line 1869
    invoke-static {v3, v4}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const-wide/16 v3, 0x3

    add-long/2addr v0, v3

    .line 1870
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    .line 1863
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final readRawLittleEndian64()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1875
    iget-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1877
    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x8

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    add-long/2addr v4, v0

    .line 1881
    iput-wide v4, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1882
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    .line 1883
    invoke-static {v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x2

    add-long/2addr v6, v0

    .line 1884
    invoke-static {v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    .line 1885
    invoke-static {v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x4

    add-long/2addr v6, v0

    .line 1886
    invoke-static {v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x5

    add-long/2addr v6, v0

    .line 1887
    invoke-static {v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x6

    add-long/2addr v6, v0

    .line 1888
    invoke-static {v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x7

    add-long/2addr v0, v6

    .line 1889
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 1878
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final readRawVarint32()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1710
    iget-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1712
    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_6

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .line 1717
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    if-ltz v0, :cond_0

    .line 1718
    iput-wide v4, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    return v0

    .line 1720
    :cond_0
    iget-wide v6, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

    cmp-long v1, v6, v8

    if-ltz v1, :cond_6

    add-long v6, v4, v2

    .line 1722
    invoke-static {v4, v5}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    :cond_1
    add-long v4, v6, v2

    .line 1724
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

    .line 1726
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

    .line 1729
    invoke-static {v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v6, v1, 0x1c

    xor-int/2addr v0, v6

    const v6, 0xfe03f80

    xor-int/2addr v0, v6

    if-gez v1, :cond_2

    add-long v6, v4, v2

    .line 1733
    invoke-static {v4, v5}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-gez v1, :cond_5

    add-long v4, v6, v2

    .line 1734
    invoke-static {v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-gez v1, :cond_2

    add-long v6, v4, v2

    .line 1735
    invoke-static {v4, v5}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-gez v1, :cond_5

    add-long v4, v6, v2

    .line 1736
    invoke-static {v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-gez v1, :cond_2

    add-long v6, v4, v2

    .line 1737
    invoke-static {v4, v5}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-ltz v1, :cond_6

    .line 1741
    :cond_5
    :goto_0
    iput-wide v6, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    return v0

    .line 1744
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64SlowPath()J

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

    .line 1788
    iget-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1790
    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_9

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .line 1796
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    if-ltz v0, :cond_0

    .line 1797
    iput-wide v4, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v0, v0

    return-wide v0

    .line 1799
    :cond_0
    iget-wide v6, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

    cmp-long v1, v6, v8

    if-ltz v1, :cond_9

    add-long v6, v4, v2

    .line 1801
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

    .line 1803
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

    .line 1805
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

    .line 1807
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

    .line 1809
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

    .line 1811
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

    .line 1813
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

    .line 1823
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

    .line 1834
    invoke-static {v4, v5}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    cmp-long v8, v4, v6

    if-ltz v8, :cond_9

    move-wide v6, v2

    .line 1839
    :goto_4
    iput-wide v6, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    return-wide v0

    .line 1842
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64SlowPath()J

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

    .line 1849
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawByte()B

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

    .line 1855
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

    .line 1685
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

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

    .line 1690
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

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

    .line 1695
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->decodeZigZag32(I)I

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

    .line 1700
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1499
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_0

    .line 1500
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 1505
    new-array v1, v0, [B

    .line 1506
    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v5, 0x0

    int-to-long v9, v0

    move-object v4, v1

    move-wide v7, v9

    invoke-static/range {v2 .. v8}, Lcom/explorestack/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 1507
    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/explorestack/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1508
    iget-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    add-long/2addr v1, v9

    iput-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gez v0, :cond_2

    .line 1516
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1518
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final readStringRequireUtf8()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1523
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_0

    .line 1524
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 1525
    iget-wide v1, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-direct {p0, v1, v2}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferPos(J)I

    move-result v1

    .line 1526
    iget-object v2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v2, v1, v0}, Lcom/explorestack/protobuf/Utf8;->decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v1

    .line 1527
    iget-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gtz v0, :cond_2

    .line 1535
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1537
    :cond_2
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

    .line 1330
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1331
    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    return v0

    .line 1335
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    .line 1336
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1341
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    return v0

    .line 1339
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

    .line 1675
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

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

    .line 1469
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

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

    .line 1576
    invoke-static {}, Lcom/explorestack/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/explorestack/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readGroup(ILcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public final resetSizeCounter()V
    .locals 2

    .line 1899
    iget-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iput-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    return-void
.end method

.method public final skipField(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1358
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

    .line 1376
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawBytes(I)V

    return v1

    .line 1379
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 1369
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipMessage()V

    .line 1371
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    invoke-static {p1, v3}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    .line 1370
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    return v1

    .line 1366
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawBytes(I)V

    return v1

    :cond_4
    const/16 p1, 0x8

    .line 1363
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawBytes(I)V

    return v1

    .line 1360
    :cond_5
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawVarint()V

    return v1
.end method

.method public final skipField(ILcom/explorestack/protobuf/CodedOutputStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1385
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

    .line 1424
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

    move-result v0

    .line 1425
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 1426
    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    return v1

    .line 1430
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 1409
    :cond_2
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 1410
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipMessage(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 1413
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    .line 1412
    invoke-static {p1, v3}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    .line 1414
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1415
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    return v1

    .line 1402
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1403
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 1404
    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/explorestack/protobuf/ByteString;)V

    return v1

    .line 1395
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

    move-result-wide v2

    .line 1396
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 1397
    invoke-virtual {p2, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    return v1

    .line 1388
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readInt64()J

    move-result-wide v2

    .line 1389
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 1390
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

    .line 1437
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readTag()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1438
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipField(I)Z

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

    .line 1447
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readTag()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1448
    invoke-virtual {p0, v0, p1}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipField(ILcom/explorestack/protobuf/CodedOutputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public final skipRawBytes(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1974
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 1976
    iget-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    return-void

    :cond_0
    if-gez p1, :cond_1

    .line 1981
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1983
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method
