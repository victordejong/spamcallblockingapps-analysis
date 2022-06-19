.class public final Lio/objectbox/model/ModelEntity;
.super Lcom/google/flatbuffers/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/objectbox/model/ModelEntity$Vector;
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
    invoke-static {p0, p1}, Lio/objectbox/model/ModelEntity;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public static addFlags(Lcom/google/flatbuffers/d;J)V
    .locals 0

    long-to-int p2, p1

    const/4 p1, 0x5

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/google/flatbuffers/d;->b(II)V

    return-void
.end method

.method public static addId(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->d(II)V

    return-void
.end method

.method public static addLastPropertyId(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x3

    .line 68
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->d(II)V

    return-void
.end method

.method public static addName(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->c(II)V

    return-void
.end method

.method public static addNameSecondary(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x6

    .line 73
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->c(II)V

    return-void
.end method

.method public static addProperties(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x2

    .line 65
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->c(II)V

    return-void
.end method

.method public static addRelations(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x4

    .line 69
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->c(II)V

    return-void
.end method

.method public static createPropertiesVector(Lcom/google/flatbuffers/d;[I)I
    .locals 2

    .line 66
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

.method public static createRelationsVector(Lcom/google/flatbuffers/d;[I)I
    .locals 2

    .line 70
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

.method public static endModelEntity(Lcom/google/flatbuffers/d;)I
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/google/flatbuffers/d;->c()I

    move-result p0

    return p0
.end method

.method public static getRootAsModelEntity(Ljava/nio/ByteBuffer;)Lio/objectbox/model/ModelEntity;
    .locals 1

    .line 29
    new-instance v0, Lio/objectbox/model/ModelEntity;

    invoke-direct {v0}, Lio/objectbox/model/ModelEntity;-><init>()V

    invoke-static {p0, v0}, Lio/objectbox/model/ModelEntity;->getRootAsModelEntity(Ljava/nio/ByteBuffer;Lio/objectbox/model/ModelEntity;)Lio/objectbox/model/ModelEntity;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsModelEntity(Ljava/nio/ByteBuffer;Lio/objectbox/model/ModelEntity;)Lio/objectbox/model/ModelEntity;
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

    invoke-virtual {p1, v0, p0}, Lio/objectbox/model/ModelEntity;->__assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/ModelEntity;

    move-result-object p0

    return-object p0
.end method

.method public static startModelEntity(Lcom/google/flatbuffers/d;)V
    .locals 1

    const/4 v0, 0x7

    .line 62
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/d;->d(I)V

    return-void
.end method

.method public static startPropertiesVector(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x4

    .line 67
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/d;->a(III)V

    return-void
.end method

.method public static startRelationsVector(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x4

    .line 71
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/d;->a(III)V

    return-void
.end method


# virtual methods
.method public final __assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/ModelEntity;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lio/objectbox/model/ModelEntity;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public final __init(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lio/objectbox/model/ModelEntity;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public final flags()J
    .locals 4

    const/16 v0, 0xe

    .line 54
    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelEntity;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/objectbox/model/ModelEntity;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lio/objectbox/model/ModelEntity;->bb_pos:I

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

    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelEntity;->id(Lio/objectbox/model/IdUid;)Lio/objectbox/model/IdUid;

    move-result-object v0

    return-object v0
.end method

.method public final id(Lio/objectbox/model/IdUid;)Lio/objectbox/model/IdUid;
    .locals 2

    const/4 v0, 0x4

    .line 35
    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelEntity;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lio/objectbox/model/ModelEntity;->bb_pos:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lio/objectbox/model/ModelEntity;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1}, Lio/objectbox/model/IdUid;->__assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/IdUid;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final lastPropertyId()Lio/objectbox/model/IdUid;
    .locals 1

    .line 44
    new-instance v0, Lio/objectbox/model/IdUid;

    invoke-direct {v0}, Lio/objectbox/model/IdUid;-><init>()V

    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelEntity;->lastPropertyId(Lio/objectbox/model/IdUid;)Lio/objectbox/model/IdUid;

    move-result-object v0

    return-object v0
.end method

.method public final lastPropertyId(Lio/objectbox/model/IdUid;)Lio/objectbox/model/IdUid;
    .locals 2

    const/16 v0, 0xa

    .line 45
    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelEntity;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lio/objectbox/model/ModelEntity;->bb_pos:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lio/objectbox/model/ModelEntity;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1}, Lio/objectbox/model/IdUid;->__assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/IdUid;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final name()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x6

    .line 36
    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelEntity;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lio/objectbox/model/ModelEntity;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelEntity;->__string(I)Ljava/lang/String;

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
    invoke-virtual {p0, v0, v1}, Lio/objectbox/model/ModelEntity;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final nameInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 38
    invoke-virtual {p0, p1, v0, v1}, Lio/objectbox/model/ModelEntity;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final nameSecondary()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x10

    .line 58
    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelEntity;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lio/objectbox/model/ModelEntity;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelEntity;->__string(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final nameSecondaryAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x1

    .line 59
    invoke-virtual {p0, v0, v1}, Lio/objectbox/model/ModelEntity;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final nameSecondaryInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x1

    .line 60
    invoke-virtual {p0, p1, v0, v1}, Lio/objectbox/model/ModelEntity;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final properties(I)Lio/objectbox/model/ModelProperty;
    .locals 1

    .line 39
    new-instance v0, Lio/objectbox/model/ModelProperty;

    invoke-direct {v0}, Lio/objectbox/model/ModelProperty;-><init>()V

    invoke-virtual {p0, v0, p1}, Lio/objectbox/model/ModelEntity;->properties(Lio/objectbox/model/ModelProperty;I)Lio/objectbox/model/ModelProperty;

    move-result-object p1

    return-object p1
.end method

.method public final properties(Lio/objectbox/model/ModelProperty;I)Lio/objectbox/model/ModelProperty;
    .locals 1

    const/16 v0, 0x8

    .line 40
    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelEntity;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelEntity;->__vector(I)I

    move-result v0

    mul-int/lit8 p2, p2, 0x4

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelEntity;->__indirect(I)I

    move-result p2

    iget-object v0, p0, Lio/objectbox/model/ModelEntity;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, v0}, Lio/objectbox/model/ModelProperty;->__assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/ModelProperty;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final propertiesLength()I
    .locals 1

    const/16 v0, 0x8

    .line 41
    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelEntity;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelEntity;->__vector_len(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final propertiesVector()Lio/objectbox/model/ModelProperty$Vector;
    .locals 1

    .line 42
    new-instance v0, Lio/objectbox/model/ModelProperty$Vector;

    invoke-direct {v0}, Lio/objectbox/model/ModelProperty$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelEntity;->propertiesVector(Lio/objectbox/model/ModelProperty$Vector;)Lio/objectbox/model/ModelProperty$Vector;

    move-result-object v0

    return-object v0
.end method

.method public final propertiesVector(Lio/objectbox/model/ModelProperty$Vector;)Lio/objectbox/model/ModelProperty$Vector;
    .locals 3

    const/16 v0, 0x8

    .line 43
    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelEntity;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelEntity;->__vector(I)I

    move-result v0

    const/4 v1, 0x4

    iget-object v2, p0, Lio/objectbox/model/ModelEntity;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1, v2}, Lio/objectbox/model/ModelProperty$Vector;->__assign(IILjava/nio/ByteBuffer;)Lio/objectbox/model/ModelProperty$Vector;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final relations(I)Lio/objectbox/model/ModelRelation;
    .locals 1

    .line 46
    new-instance v0, Lio/objectbox/model/ModelRelation;

    invoke-direct {v0}, Lio/objectbox/model/ModelRelation;-><init>()V

    invoke-virtual {p0, v0, p1}, Lio/objectbox/model/ModelEntity;->relations(Lio/objectbox/model/ModelRelation;I)Lio/objectbox/model/ModelRelation;

    move-result-object p1

    return-object p1
.end method

.method public final relations(Lio/objectbox/model/ModelRelation;I)Lio/objectbox/model/ModelRelation;
    .locals 1

    const/16 v0, 0xc

    .line 47
    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelEntity;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelEntity;->__vector(I)I

    move-result v0

    mul-int/lit8 p2, p2, 0x4

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelEntity;->__indirect(I)I

    move-result p2

    iget-object v0, p0, Lio/objectbox/model/ModelEntity;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, v0}, Lio/objectbox/model/ModelRelation;->__assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/ModelRelation;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final relationsLength()I
    .locals 1

    const/16 v0, 0xc

    .line 48
    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelEntity;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelEntity;->__vector_len(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final relationsVector()Lio/objectbox/model/ModelRelation$Vector;
    .locals 1

    .line 49
    new-instance v0, Lio/objectbox/model/ModelRelation$Vector;

    invoke-direct {v0}, Lio/objectbox/model/ModelRelation$Vector;-><init>()V

    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelEntity;->relationsVector(Lio/objectbox/model/ModelRelation$Vector;)Lio/objectbox/model/ModelRelation$Vector;

    move-result-object v0

    return-object v0
.end method

.method public final relationsVector(Lio/objectbox/model/ModelRelation$Vector;)Lio/objectbox/model/ModelRelation$Vector;
    .locals 3

    const/16 v0, 0xc

    .line 50
    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelEntity;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelEntity;->__vector(I)I

    move-result v0

    const/4 v1, 0x4

    iget-object v2, p0, Lio/objectbox/model/ModelEntity;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1, v2}, Lio/objectbox/model/ModelRelation$Vector;->__assign(IILjava/nio/ByteBuffer;)Lio/objectbox/model/ModelRelation$Vector;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
