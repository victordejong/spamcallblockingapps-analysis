.class public final Lio/objectbox/model/ModelRelation$Vector;
.super Lcom/google/flatbuffers/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/objectbox/model/ModelRelation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vector"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/google/flatbuffers/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final __assign(IILjava/nio/ByteBuffer;)Lio/objectbox/model/ModelRelation$Vector;
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lio/objectbox/model/ModelRelation$Vector;->__reset(IILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public final get(I)Lio/objectbox/model/ModelRelation;
    .locals 1

    .line 54
    new-instance v0, Lio/objectbox/model/ModelRelation;

    invoke-direct {v0}, Lio/objectbox/model/ModelRelation;-><init>()V

    invoke-virtual {p0, v0, p1}, Lio/objectbox/model/ModelRelation$Vector;->get(Lio/objectbox/model/ModelRelation;I)Lio/objectbox/model/ModelRelation;

    move-result-object p1

    return-object p1
.end method

.method public final get(Lio/objectbox/model/ModelRelation;I)Lio/objectbox/model/ModelRelation;
    .locals 1

    .line 55
    invoke-virtual {p0, p2}, Lio/objectbox/model/ModelRelation$Vector;->__element(I)I

    move-result p2

    iget-object v0, p0, Lio/objectbox/model/ModelRelation$Vector;->bb:Ljava/nio/ByteBuffer;

    invoke-static {p2, v0}, Lio/objectbox/model/ModelRelation;->access$000(ILjava/nio/ByteBuffer;)I

    move-result p2

    iget-object v0, p0, Lio/objectbox/model/ModelRelation$Vector;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, v0}, Lio/objectbox/model/ModelRelation;->__assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/ModelRelation;

    move-result-object p1

    return-object p1
.end method
