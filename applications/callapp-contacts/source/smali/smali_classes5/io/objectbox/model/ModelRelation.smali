.class public final Lio/objectbox/model/ModelRelation;
.super Lcom/google/flatbuffers/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/objectbox/model/ModelRelation$Vector;
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
    invoke-static {p0, p1}, Lio/objectbox/model/ModelRelation;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public static addId(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->d(II)V

    return-void
.end method

.method public static addName(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->c(II)V

    return-void
.end method

.method public static addTargetEntityId(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x2

    .line 45
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->d(II)V

    return-void
.end method

.method public static endModelRelation(Lcom/google/flatbuffers/d;)I
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/google/flatbuffers/d;->c()I

    move-result p0

    return p0
.end method

.method public static getRootAsModelRelation(Ljava/nio/ByteBuffer;)Lio/objectbox/model/ModelRelation;
    .locals 1

    .line 29
    new-instance v0, Lio/objectbox/model/ModelRelation;

    invoke-direct {v0}, Lio/objectbox/model/ModelRelation;-><init>()V

    invoke-static {p0, v0}, Lio/objectbox/model/ModelRelation;->getRootAsModelRelation(Ljava/nio/ByteBuffer;Lio/objectbox/model/ModelRelation;)Lio/objectbox/model/ModelRelation;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsModelRelation(Ljava/nio/ByteBuffer;Lio/objectbox/model/ModelRelation;)Lio/objectbox/model/ModelRelation;
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

    invoke-virtual {p1, v0, p0}, Lio/objectbox/model/ModelRelation;->__assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/ModelRelation;

    move-result-object p0

    return-object p0
.end method

.method public static startModelRelation(Lcom/google/flatbuffers/d;)V
    .locals 1

    const/4 v0, 0x3

    .line 42
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/d;->d(I)V

    return-void
.end method


# virtual methods
.method public final __assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/ModelRelation;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lio/objectbox/model/ModelRelation;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public final __init(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lio/objectbox/model/ModelRelation;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public final id()Lio/objectbox/model/IdUid;
    .locals 1

    .line 34
    new-instance v0, Lio/objectbox/model/IdUid;

    invoke-direct {v0}, Lio/objectbox/model/IdUid;-><init>()V

    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelRelation;->id(Lio/objectbox/model/IdUid;)Lio/objectbox/model/IdUid;

    move-result-object v0

    return-object v0
.end method

.method public final id(Lio/objectbox/model/IdUid;)Lio/objectbox/model/IdUid;
    .locals 2

    const/4 v0, 0x4

    .line 35
    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelRelation;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lio/objectbox/model/ModelRelation;->bb_pos:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lio/objectbox/model/ModelRelation;->bb:Ljava/nio/ByteBuffer;

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
    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelRelation;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lio/objectbox/model/ModelRelation;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelRelation;->__string(I)Ljava/lang/String;

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
    invoke-virtual {p0, v0, v1}, Lio/objectbox/model/ModelRelation;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final nameInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 38
    invoke-virtual {p0, p1, v0, v1}, Lio/objectbox/model/ModelRelation;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final targetEntityId()Lio/objectbox/model/IdUid;
    .locals 1

    .line 39
    new-instance v0, Lio/objectbox/model/IdUid;

    invoke-direct {v0}, Lio/objectbox/model/IdUid;-><init>()V

    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelRelation;->targetEntityId(Lio/objectbox/model/IdUid;)Lio/objectbox/model/IdUid;

    move-result-object v0

    return-object v0
.end method

.method public final targetEntityId(Lio/objectbox/model/IdUid;)Lio/objectbox/model/IdUid;
    .locals 2

    const/16 v0, 0x8

    .line 40
    invoke-virtual {p0, v0}, Lio/objectbox/model/ModelRelation;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lio/objectbox/model/ModelRelation;->bb_pos:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lio/objectbox/model/ModelRelation;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1}, Lio/objectbox/model/IdUid;->__assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/IdUid;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
