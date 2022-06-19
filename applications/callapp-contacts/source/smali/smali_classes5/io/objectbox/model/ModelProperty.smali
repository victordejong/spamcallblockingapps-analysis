.class public final Lio/objectbox/model/ModelProperty;
.super Lcom/google/flatbuffers/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/objectbox/model/ModelProperty$Vector;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/flatbuffers/h;-><init>()V

    return-void
.end method

.method public static ValidateVersion()V
    .locals 0

    return-void
.end method

.method static synthetic access$000(ILjava/nio/ByteBuffer;)I
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lio/objectbox/model/ModelProperty;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public static addFlags(Lcom/google/flatbuffers/d;J)V
    .locals 0

    long-to-int p2, p1

    const/4 p1, 0x3

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/google/flatbuffers/d;->b(II)V

    return-void
.end method

.method public static addId(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->d(II)V

    return-void
.end method

.method public static addIndexId(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x4

    .line 81
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->d(II)V

    return-void
.end method

.method public static addMaxIndexValueLength(Lcom/google/flatbuffers/d;J)V
    .locals 0

    long-to-int p2, p1

    const/16 p1, 0x8

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/google/flatbuffers/d;->b(II)V

    return-void
.end method

.method public static addName(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x1

    .line 78
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->c(II)V

    return-void
.end method

.method public static addNameSecondary(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x7

    .line 84
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->c(II)V

    return-void
.end method

.method public static addTargetEntity(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x5

    .line 82
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->c(II)V

    return-void
.end method

.method public static addType(Lcom/google/flatbuffers/d;I)V
    .locals 1

    int-to-short p1, p1

    const/4 v0, 0x2

    .line 79
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->a(IS)V

    return-void
.end method

.method public static addVirtualTarget(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x6

    .line 83
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->c(II)V

    return-void
.end method

.method public static endModelProperty(Lcom/google/flatbuffers/d;)I
    .locals 0

    .line 87
    invoke-virtual {p0}, Lcom/google/flatbuffers/d;->c()I

    move-result p0

    return p0
.end method

.method public static getRootAsModelProperty(Ljava/nio/ByteBuffer;)Lio/objectbox/model/ModelProperty;
    .locals 1

    .line 29
    new-instance v0, Lio/objectbox/model/ModelProperty;

    invoke-direct {v0}, Lio/objectbox/model/ModelProperty;-><init>()V

    invoke-static {p0, v0}, Lio/objectbox/model/ModelProperty;->getRootAsModelProperty(Ljava/nio/ByteBuffer;Lio/objectbox/model/ModelProperty;)Lio/objectbox/model/ModelProperty;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsModelProperty(Ljava/nio/ByteBuffer;Lio/objectbox/model/ModelProperty;)Lio/objectbox/model/ModelProperty;
    .locals 2

    .line 30
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, p0}, Lio/objectbox/model/ModelProperty;->__assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/ModelProperty;

    move-result-object p0

    return-object p0
.end method

.method public static startModelProperty(Lcom/google/flatbuffers/d;)V
    .locals 1

    const/16 v0, 0x9

    .line 76
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/d;->d(I)V

    return-void
.end method


# virtual methods
.method public final __assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/ModelProperty;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lio/objectbox/model/ModelProperty;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public final __init(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lio/objectbox/model/ModelProperty;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public final flags()J
    .locals 4

    const/16 v0, 0xa

    .line 43
    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelProperty;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/objectbox/model/ModelProperty;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lio/objectbox/model/ModelProperty;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final id()Lio/objectbox/model/IdUid;
    .locals 1

    .line 34
    new-instance v0, Lio/objectbox/model/IdUid;

    invoke-direct {v0}, Lio/objectbox/model/IdUid;-><init>()V

    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelProperty;->id(Lio/objectbox/model/IdUid;)Lio/objectbox/model/IdUid;

    move-result-object v0

    return-object v0
.end method

.method public final id(Lio/objectbox/model/IdUid;)Lio/objectbox/model/IdUid;
    .locals 2

    const/4 v0, 0x4

    .line 35
    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelProperty;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lio/objectbox/model/ModelProperty;->bb_pos:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lio/objectbox/model/ModelProperty;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1}, Lio/objectbox/model/IdUid;->__assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/IdUid;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final indexId()Lio/objectbox/model/IdUid;
    .locals 1

    .line 44
    new-instance v0, Lio/objectbox/model/IdUid;

    invoke-direct {v0}, Lio/objectbox/model/IdUid;-><init>()V

    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelProperty;->indexId(Lio/objectbox/model/IdUid;)Lio/objectbox/model/IdUid;

    move-result-object v0

    return-object v0
.end method

.method public final indexId(Lio/objectbox/model/IdUid;)Lio/objectbox/model/IdUid;
    .locals 2

    const/16 v0, 0xc

    .line 45
    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelProperty;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lio/objectbox/model/ModelProperty;->bb_pos:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lio/objectbox/model/ModelProperty;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1}, Lio/objectbox/model/IdUid;->__assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/IdUid;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final maxIndexValueLength()J
    .locals 4

    const/16 v0, 0x14

    .line 74
    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelProperty;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/objectbox/model/ModelProperty;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lio/objectbox/model/ModelProperty;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final name()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x6

    .line 36
    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelProperty;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lio/objectbox/model/ModelProperty;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelProperty;->__string(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final nameAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 37
    invoke-virtual {p0, v0, v1}, Lio/objectbox/model/ModelProperty;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final nameInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 38
    invoke-virtual {p0, p1, v0, v1}, Lio/objectbox/model/ModelProperty;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final nameSecondary()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x12

    .line 68
    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelProperty;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lio/objectbox/model/ModelProperty;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelProperty;->__string(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final nameSecondaryAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x12

    const/4 v1, 0x1

    .line 69
    invoke-virtual {p0, v0, v1}, Lio/objectbox/model/ModelProperty;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final nameSecondaryInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x12

    const/4 v1, 0x1

    .line 70
    invoke-virtual {p0, p1, v0, v1}, Lio/objectbox/model/ModelProperty;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final targetEntity()Ljava/lang/String;
    .locals 2

    const/16 v0, 0xe

    .line 49
    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelProperty;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lio/objectbox/model/ModelProperty;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelProperty;->__string(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final targetEntityAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0xe

    const/4 v1, 0x1

    .line 50
    invoke-virtual {p0, v0, v1}, Lio/objectbox/model/ModelProperty;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final targetEntityInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0xe

    const/4 v1, 0x1

    .line 51
    invoke-virtual {p0, p1, v0, v1}, Lio/objectbox/model/ModelProperty;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final type()I
    .locals 3

    const/16 v0, 0x8

    .line 39
    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelProperty;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/objectbox/model/ModelProperty;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lio/objectbox/model/ModelProperty;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final virtualTarget()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x10

    .line 62
    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelProperty;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lio/objectbox/model/ModelProperty;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelProperty;->__string(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final virtualTargetAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x1

    .line 63
    invoke-virtual {p0, v0, v1}, Lio/objectbox/model/ModelProperty;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final virtualTargetInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x1

    .line 64
    invoke-virtual {p0, p1, v0, v1}, Lio/objectbox/model/ModelProperty;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method
