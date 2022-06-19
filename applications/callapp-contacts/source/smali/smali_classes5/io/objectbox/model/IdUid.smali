.class public final Lio/objectbox/model/IdUid;
.super Lcom/google/flatbuffers/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/objectbox/model/IdUid$Vector;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/flatbuffers/g;-><init>()V

    return-void
.end method

.method public static createIdUid(Lcom/google/flatbuffers/d;JJ)I
    .locals 2

    const/16 v0, 0x8

    const/16 v1, 0x10

    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/d;->a(II)V

    .line 43
    invoke-virtual {p0, p3, p4}, Lcom/google/flatbuffers/d;->a(J)V

    const/4 p3, 0x4

    .line 44
    invoke-virtual {p0, p3}, Lcom/google/flatbuffers/d;->a(I)V

    long-to-int p2, p1

    .line 45
    invoke-virtual {p0, p2}, Lcom/google/flatbuffers/d;->b(I)V

    .line 46
    invoke-virtual {p0}, Lcom/google/flatbuffers/d;->a()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final __assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/IdUid;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lio/objectbox/model/IdUid;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public final __init(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lio/objectbox/model/IdUid;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public final id()J
    .locals 4

    .line 34
    iget-object v0, p0, Lio/objectbox/model/IdUid;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lio/objectbox/model/IdUid;->bb_pos:I

    add-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public final uid()J
    .locals 2

    .line 39
    iget-object v0, p0, Lio/objectbox/model/IdUid;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lio/objectbox/model/IdUid;->bb_pos:I

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
