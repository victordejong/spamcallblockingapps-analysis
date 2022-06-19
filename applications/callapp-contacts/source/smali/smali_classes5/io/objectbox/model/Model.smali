.class public final Lio/objectbox/model/Model;
.super Lcom/google/flatbuffers/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/objectbox/model/Model$Vector;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/google/flatbuffers/h;-><init>()V

    return-void
.end method

.method public static ValidateVersion()V
    .locals 0

    return-void
.end method

.method static synthetic access$000(ILjava/nio/ByteBuffer;)I
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lio/objectbox/model/Model;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public static addEntities(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x3

    .line 83
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->c(II)V

    return-void
.end method

.method public static addHash(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/16 v0, 0x8

    .line 90
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->c(II)V

    return-void
.end method

.method public static addLastEntityId(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x4

    .line 86
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->d(II)V

    return-void
.end method

.method public static addLastIndexId(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x5

    .line 87
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->d(II)V

    return-void
.end method

.method public static addLastRelationId(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x7

    .line 89
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->d(II)V

    return-void
.end method

.method public static addLastSequenceId(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x6

    .line 88
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->d(II)V

    return-void
.end method

.method public static addModelVersion(Lcom/google/flatbuffers/d;J)V
    .locals 0

    long-to-int p2, p1

    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/google/flatbuffers/d;->b(II)V

    return-void
.end method

.method public static addName(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->c(II)V

    return-void
.end method

.method public static addVersion(Lcom/google/flatbuffers/d;J)V
    .locals 1

    const/4 v0, 0x2

    .line 82
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/flatbuffers/d;->a(IJ)V

    return-void
.end method

.method public static createEntitiesVector(Lcom/google/flatbuffers/d;[I)I
    .locals 2

    .line 84
    array-length v0, p1

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/d;->a(III)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/d;->c(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/flatbuffers/d;->b()I

    move-result p0

    return p0
.end method

.method public static createHashVector(Lcom/google/flatbuffers/d;Ljava/nio/ByteBuffer;)I
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/d;->a(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public static createHashVector(Lcom/google/flatbuffers/d;[B)I
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/d;->a([B)I

    move-result p0

    return p0
.end method

.method public static endModel(Lcom/google/flatbuffers/d;)I
    .locals 0

    .line 95
    invoke-virtual {p0}, Lcom/google/flatbuffers/d;->c()I

    move-result p0

    return p0
.end method

.method public static finishModelBuffer(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1902
    invoke-virtual {p0, p1, v0}, Lcom/google/flatbuffers/d;->b(IZ)V

    return-void
.end method

.method public static finishSizePrefixedModelBuffer(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1911
    invoke-virtual {p0, p1, v0}, Lcom/google/flatbuffers/d;->b(IZ)V

    return-void
.end method

.method public static getRootAsModel(Ljava/nio/ByteBuffer;)Lio/objectbox/model/Model;
    .locals 1

    .line 35
    new-instance v0, Lio/objectbox/model/Model;

    invoke-direct {v0}, Lio/objectbox/model/Model;-><init>()V

    invoke-static {p0, v0}, Lio/objectbox/model/Model;->getRootAsModel(Ljava/nio/ByteBuffer;Lio/objectbox/model/Model;)Lio/objectbox/model/Model;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsModel(Ljava/nio/ByteBuffer;Lio/objectbox/model/Model;)Lio/objectbox/model/Model;
    .locals 2

    .line 36
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, p0}, Lio/objectbox/model/Model;->__assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/Model;

    move-result-object p0

    return-object p0
.end method

.method public static startEntitiesVector(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x4

    .line 85
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/d;->a(III)V

    return-void
.end method

.method public static startHashVector(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/d;->a(III)V

    return-void
.end method

.method public static startModel(Lcom/google/flatbuffers/d;)V
    .locals 1

    const/16 v0, 0x9

    .line 79
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/d;->d(I)V

    return-void
.end method


# virtual methods
.method public final __assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/Model;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lio/objectbox/model/Model;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public final __init(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lio/objectbox/model/Model;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public final entities(I)Lio/objectbox/model/ModelEntity;
    .locals 1

    .line 54
    new-instance v0, Lio/objectbox/model/ModelEntity;

    invoke-direct {v0}, Lio/objectbox/model/ModelEntity;-><init>()V

    invoke-virtual {p0, v0, p1}, Lio/objectbox/model/Model;->entities(Lio/objectbox/model/ModelEntity;I)Lio/objectbox/model/ModelEntity;

    move-result-object p1

    return-object p1
.end method

.method public final entities(Lio/objectbox/model/ModelEntity;I)Lio/objectbox/model/ModelEntity;
    .locals 1

    const/16 v0, 0xa

    .line 55
    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->__vector(I)I

    move-result v0

    mul-int/lit8 p2, p2, 0x4

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->__indirect(I)I

    move-result p2

    iget-object v0, p0, Lio/objectbox/model/Model;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, v0}, Lio/objectbox/model/ModelEntity;->__assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/ModelEntity;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final entitiesLength()I
    .locals 1

    const/16 v0, 0xa

    .line 56
    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->__vector_len(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final entitiesVector()Lio/objectbox/model/ModelEntity$Vector;
    .locals 1

    .line 57
    new-instance v0, Lio/objectbox/model/ModelEntity$Vector;

    invoke-direct {v0}, Lio/objectbox/model/ModelEntity$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->entitiesVector(Lio/objectbox/model/ModelEntity$Vector;)Lio/objectbox/model/ModelEntity$Vector;

    move-result-object v0

    return-object v0
.end method

.method public final entitiesVector(Lio/objectbox/model/ModelEntity$Vector;)Lio/objectbox/model/ModelEntity$Vector;
    .locals 3

    const/16 v0, 0xa

    .line 58
    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->__vector(I)I

    move-result v0

    const/4 v1, 0x4

    iget-object v2, p0, Lio/objectbox/model/Model;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1, v2}, Lio/objectbox/model/ModelEntity$Vector;->__assign(IILjava/nio/ByteBuffer;)Lio/objectbox/model/ModelEntity$Vector;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final hash(I)I
    .locals 2

    const/16 v0, 0x14

    .line 72
    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/objectbox/model/Model;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->__vector(I)I

    move-result v0

    mul-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x14

    const/4 v1, 0x1

    .line 76
    invoke-virtual {p0, v0, v1}, Lio/objectbox/model/Model;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final hashInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x14

    const/4 v1, 0x1

    .line 77
    invoke-virtual {p0, p1, v0, v1}, Lio/objectbox/model/Model;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final hashLength()I
    .locals 1

    const/16 v0, 0x14

    .line 73
    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->__vector_len(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashVector()Lcom/google/flatbuffers/c;
    .locals 1

    .line 74
    new-instance v0, Lcom/google/flatbuffers/c;

    invoke-direct {v0}, Lcom/google/flatbuffers/c;-><init>()V

    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->hashVector(Lcom/google/flatbuffers/c;)Lcom/google/flatbuffers/c;

    move-result-object v0

    return-object v0
.end method

.method public final hashVector(Lcom/google/flatbuffers/c;)Lcom/google/flatbuffers/c;
    .locals 2

    const/16 v0, 0x14

    .line 75
    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->__vector(I)I

    move-result v0

    iget-object v1, p0, Lio/objectbox/model/Model;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/google/flatbuffers/c;->a(ILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/c;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final lastEntityId()Lio/objectbox/model/IdUid;
    .locals 1

    .line 59
    new-instance v0, Lio/objectbox/model/IdUid;

    invoke-direct {v0}, Lio/objectbox/model/IdUid;-><init>()V

    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->lastEntityId(Lio/objectbox/model/IdUid;)Lio/objectbox/model/IdUid;

    move-result-object v0

    return-object v0
.end method

.method public final lastEntityId(Lio/objectbox/model/IdUid;)Lio/objectbox/model/IdUid;
    .locals 2

    const/16 v0, 0xc

    .line 60
    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lio/objectbox/model/Model;->bb_pos:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lio/objectbox/model/Model;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1}, Lio/objectbox/model/IdUid;->__assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/IdUid;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final lastIndexId()Lio/objectbox/model/IdUid;
    .locals 1

    .line 61
    new-instance v0, Lio/objectbox/model/IdUid;

    invoke-direct {v0}, Lio/objectbox/model/IdUid;-><init>()V

    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->lastIndexId(Lio/objectbox/model/IdUid;)Lio/objectbox/model/IdUid;

    move-result-object v0

    return-object v0
.end method

.method public final lastIndexId(Lio/objectbox/model/IdUid;)Lio/objectbox/model/IdUid;
    .locals 2

    const/16 v0, 0xe

    .line 62
    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lio/objectbox/model/Model;->bb_pos:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lio/objectbox/model/Model;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1}, Lio/objectbox/model/IdUid;->__assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/IdUid;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final lastRelationId()Lio/objectbox/model/IdUid;
    .locals 1

    .line 65
    new-instance v0, Lio/objectbox/model/IdUid;

    invoke-direct {v0}, Lio/objectbox/model/IdUid;-><init>()V

    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->lastRelationId(Lio/objectbox/model/IdUid;)Lio/objectbox/model/IdUid;

    move-result-object v0

    return-object v0
.end method

.method public final lastRelationId(Lio/objectbox/model/IdUid;)Lio/objectbox/model/IdUid;
    .locals 2

    const/16 v0, 0x12

    .line 66
    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lio/objectbox/model/Model;->bb_pos:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lio/objectbox/model/Model;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1}, Lio/objectbox/model/IdUid;->__assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/IdUid;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final lastSequenceId()Lio/objectbox/model/IdUid;
    .locals 1

    .line 63
    new-instance v0, Lio/objectbox/model/IdUid;

    invoke-direct {v0}, Lio/objectbox/model/IdUid;-><init>()V

    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->lastSequenceId(Lio/objectbox/model/IdUid;)Lio/objectbox/model/IdUid;

    move-result-object v0

    return-object v0
.end method

.method public final lastSequenceId(Lio/objectbox/model/IdUid;)Lio/objectbox/model/IdUid;
    .locals 2

    const/16 v0, 0x10

    .line 64
    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lio/objectbox/model/Model;->bb_pos:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lio/objectbox/model/Model;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1}, Lio/objectbox/model/IdUid;->__assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/IdUid;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final modelVersion()J
    .locals 4

    const/4 v0, 0x4

    .line 43
    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/objectbox/model/Model;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lio/objectbox/model/Model;->bb_pos:I

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

    .line 47
    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lio/objectbox/model/Model;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->__string(I)Ljava/lang/String;

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

    .line 48
    invoke-virtual {p0, v0, v1}, Lio/objectbox/model/Model;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final nameInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 49
    invoke-virtual {p0, p1, v0, v1}, Lio/objectbox/model/Model;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final version()J
    .locals 3

    const/16 v0, 0x8

    .line 53
    invoke-virtual {p0, v0}, Lio/objectbox/model/Model;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/objectbox/model/Model;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lio/objectbox/model/Model;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
