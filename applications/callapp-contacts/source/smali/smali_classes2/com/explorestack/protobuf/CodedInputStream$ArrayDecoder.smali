.class final Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;
.super Lcom/explorestack/protobuf/CodedInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ArrayDecoder"
.end annotation


# instance fields
.field private final buffer:[B

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private enableAliasing:Z

.field private final immutable:Z

.field private lastTag:I

.field private limit:I

.field private pos:I

.field private startPos:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 606
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream;-><init>(Lcom/explorestack/protobuf/CodedInputStream$1;)V

    const v0, 0x7fffffff

    .line 604
    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    .line 607
    iput-object p1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    add-int/2addr p3, p2

    .line 608
    iput p3, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    .line 609
    iput p2, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 610
    iput p2, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->startPos:I

    .line 611
    iput-boolean p4, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->immutable:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZLcom/explorestack/protobuf/CodedInputStream$1;)V
    .locals 0

    .line 593
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;-><init>([BIIZ)V

    return-void
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 3

    .line 1197
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    .line 1198
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->startPos:I

    sub-int v1, v0, v1

    .line 1199
    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 1201
    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->bufferSizeAfterLimit:I

    sub-int/2addr v0, v1

    .line 1202
    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1204
    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->bufferSizeAfterLimit:I

    return-void
.end method

.method private skipRawVarint()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1022
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 1023
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->skipRawVarintFastPath()V

    return-void

    .line 1025
    :cond_0
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->skipRawVarintSlowPath()V

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

    .line 1031
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1035
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

    .line 1040
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1044
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

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

    .line 632
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    if-ne v0, p1, :cond_0

    return-void

    .line 633
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final enableAliasing(Z)V
    .locals 0

    .line 1171
    iput-boolean p1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->enableAliasing:Z

    return-void
.end method

.method public final getBytesUntilLimit()I
    .locals 2

    .line 1216
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1220
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->getTotalBytesRead()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLastTag()I
    .locals 1

    .line 639
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    return v0
.end method

.method public final getTotalBytesRead()I
    .locals 2

    .line 1230
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->startPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final isAtEnd()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1225
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final popLimit(I)V
    .locals 0

    .line 1210
    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    .line 1211
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recomputeBufferSizeAfterLimit()V

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

    .line 1184
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->getTotalBytesRead()I

    move-result v0

    add-int/2addr p1, v0

    .line 1185
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    if-gt p1, v0, :cond_0

    .line 1189
    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    .line 1191
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recomputeBufferSizeAfterLimit()V

    return v0

    .line 1187
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1182
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

    .line 780
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64()J

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

    .line 915
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 916
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawBytes(I)[B

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

    .line 921
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_1

    .line 922
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    .line 928
    iget-boolean v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->immutable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->enableAliasing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 930
    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    add-int v3, v2, v0

    .line 931
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 932
    :goto_0
    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    return-object v1

    :cond_1
    if-nez v0, :cond_2

    .line 938
    sget-object v0, Lcom/explorestack/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    :cond_2
    if-gez v0, :cond_3

    .line 941
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 943
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final readBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 895
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_1

    .line 896
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    .line 899
    iget-boolean v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->immutable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->enableAliasing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 901
    invoke-static {v1, v2, v0}, Lcom/explorestack/protobuf/ByteString;->wrap([BII)Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 902
    invoke-static {v1, v2, v0}, Lcom/explorestack/protobuf/ByteString;->copyFrom([BII)Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    .line 903
    :goto_0
    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    return-object v1

    :cond_1
    if-nez v0, :cond_2

    .line 907
    sget-object v0, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    return-object v0

    .line 910
    :cond_2
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->wrap([B)Lcom/explorestack/protobuf/ByteString;

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

    .line 745
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian64()J

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

    .line 953
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

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

    .line 775
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian32()I

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

    .line 770
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian64()J

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

    .line 750
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian32()I

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

    .line 843
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recursionLimit:I

    if-ge v0, v1, :cond_0

    .line 846
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 847
    invoke-interface {p2, p0, p3}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/MessageLite;

    const/4 p3, 0x4

    .line 848
    invoke-static {p1, p3}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 849
    iget p1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    return-object p2

    .line 844
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

    .line 827
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recursionLimit:I

    if-ge v0, v1, :cond_0

    .line 830
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 831
    invoke-interface {p2, p0, p3}, Lcom/explorestack/protobuf/MessageLite$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;

    const/4 p2, 0x4

    .line 832
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 833
    iget p1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    return-void

    .line 828
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

    .line 765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

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

    .line 760
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64()J

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

    .line 880
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 881
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recursionLimit:I

    if-ge v1, v2, :cond_0

    .line 884
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pushLimit(I)I

    move-result v0

    .line 885
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 886
    invoke-interface {p1, p0, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/MessageLite;

    const/4 p2, 0x0

    .line 887
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 888
    iget p2, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 889
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->popLimit(I)V

    return-object p1

    .line 882
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

    .line 864
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 865
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recursionLimit:I

    if-ge v1, v2, :cond_0

    .line 868
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pushLimit(I)I

    move-result v0

    .line 869
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 870
    invoke-interface {p1, p0, p2}, Lcom/explorestack/protobuf/MessageLite$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;

    const/4 p1, 0x0

    .line 871
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 872
    iget p1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 873
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->popLimit(I)V

    return-void

    .line 866
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

    .line 1235
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    if-eq v0, v1, :cond_0

    .line 1238
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    aget-byte v0, v1, v0

    return v0

    .line 1236
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final readRawBytes(I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 1243
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    add-int/2addr p1, v1

    .line 1245
    iput p1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1246
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    :cond_0
    if-gtz p1, :cond_2

    if-nez p1, :cond_1

    .line 1251
    sget-object p1, Lcom/explorestack/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object p1

    .line 1253
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1256
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final readRawLittleEndian32()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1135
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1137
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 1141
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    add-int/lit8 v2, v0, 0x4

    .line 1142
    iput v2, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1143
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

    .line 1138
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

    .line 1151
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1153
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 1157
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    add-int/lit8 v3, v0, 0x8

    .line 1158
    iput v3, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1159
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

    .line 1154
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final readRawVarint32()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 983
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 985
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    if-eq v1, v0, :cond_6

    .line 989
    iget-object v2, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    .line 991
    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    .line 992
    iput v3, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    return v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_6

    add-int/lit8 v1, v3, 0x1

    .line 996
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, 0x1

    .line 998
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

    .line 1000
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_4

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v1, 0x1

    .line 1003
    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    .line 1006
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

    .line 1015
    :cond_5
    :goto_0
    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    return v0

    .line 1018
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64SlowPath()J

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

    .line 1062
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1064
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    if-eq v1, v0, :cond_9

    .line 1068
    iget-object v2, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    .line 1071
    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    .line 1072
    iput v3, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_9

    add-int/lit8 v1, v3, 0x1

    .line 1076
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

    .line 1078
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

    .line 1080
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

    .line 1082
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

    .line 1084
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

    .line 1086
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

    .line 1088
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

    .line 1098
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

    .line 1109
    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-ltz v0, :cond_9

    goto :goto_3

    :cond_8
    move v1, v0

    :goto_3
    move-wide v2, v3

    .line 1114
    :goto_4
    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    return-wide v2

    .line 1117
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64SlowPath()J

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

    .line 1124
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawByte()B

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

    .line 1130
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

    .line 958
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian32()I

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

    .line 963
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian64()J

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

    .line 968
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->decodeZigZag32(I)I

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

    .line 973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->decodeZigZag64(J)J

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

    .line 785
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_0

    .line 786
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 789
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    iget v3, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sget-object v4, Lcom/explorestack/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 790
    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gez v0, :cond_2

    .line 798
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 800
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final readStringRequireUtf8()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 805
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_0

    .line 806
    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 807
    iget-object v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    invoke-static {v1, v2, v0}, Lcom/explorestack/protobuf/Utf8;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v1

    .line 808
    iget v2, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gtz v0, :cond_2

    .line 816
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 818
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

    .line 616
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 617
    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    return v0

    .line 621
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    .line 622
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    return v0

    .line 625
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

    .line 948
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

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

    .line 755
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64()J

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

    .line 857
    invoke-static {}, Lcom/explorestack/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/explorestack/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readGroup(ILcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public final resetSizeCounter()V
    .locals 1

    .line 1176
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iput v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->startPos:I

    return-void
.end method

.method public final skipField(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 644
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

    .line 662
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->skipRawBytes(I)V

    return v1

    .line 665
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 655
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->skipMessage()V

    .line 657
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    invoke-static {p1, v3}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    .line 656
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    return v1

    .line 652
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->skipRawBytes(I)V

    return v1

    :cond_4
    const/16 p1, 0x8

    .line 649
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->skipRawBytes(I)V

    return v1

    .line 646
    :cond_5
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->skipRawVarint()V

    return v1
.end method

.method public final skipField(ILcom/explorestack/protobuf/CodedOutputStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 671
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

    .line 710
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian32()I

    move-result v0

    .line 711
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 712
    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    return v1

    .line 716
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 695
    :cond_2
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 696
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->skipMessage(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 699
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    .line 698
    invoke-static {p1, v3}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    .line 700
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 701
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    return v1

    .line 688
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 689
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 690
    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/explorestack/protobuf/ByteString;)V

    return v1

    .line 681
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian64()J

    move-result-wide v2

    .line 682
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 683
    invoke-virtual {p2, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    return v1

    .line 674
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readInt64()J

    move-result-wide v2

    .line 675
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 676
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

    .line 723
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readTag()I

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->skipField(I)Z

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

    .line 733
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->readTag()I

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    invoke-virtual {p0, v0, p1}, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->skipField(ILcom/explorestack/protobuf/CodedOutputStream;)Z

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

    if-ltz p1, :cond_0

    .line 1261
    iget v0, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    add-int/2addr v1, p1

    .line 1263
    iput v1, p0, Lcom/explorestack/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    return-void

    :cond_0
    if-gez p1, :cond_1

    .line 1268
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1270
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method
