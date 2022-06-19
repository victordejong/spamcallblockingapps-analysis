.class public final Lio/objectbox/model/Model$Vector;
.super Lcom/google/flatbuffers/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/objectbox/model/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vector"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/google/flatbuffers/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final __assign(IILjava/nio/ByteBuffer;)Lio/objectbox/model/Model$Vector;
    .locals 0

    .line 102
    invoke-virtual {p0, p1, p2, p3}, Lio/objectbox/model/Model$Vector;->__reset(IILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public final get(I)Lio/objectbox/model/Model;
    .locals 1

    .line 104
    new-instance v0, Lio/objectbox/model/Model;

    invoke-direct {v0}, Lio/objectbox/model/Model;-><init>()V

    invoke-virtual {p0, v0, p1}, Lio/objectbox/model/Model$Vector;->get(Lio/objectbox/model/Model;I)Lio/objectbox/model/Model;

    move-result-object p1

    return-object p1
.end method

.method public final get(Lio/objectbox/model/Model;I)Lio/objectbox/model/Model;
    .locals 1

    .line 105
    invoke-virtual {p0, p2}, Lio/objectbox/model/Model$Vector;->__element(I)I

    move-result p2

    iget-object v0, p0, Lio/objectbox/model/Model$Vector;->bb:Ljava/nio/ByteBuffer;

    invoke-static {p2, v0}, Lio/objectbox/model/Model;->access$000(ILjava/nio/ByteBuffer;)I

    move-result p2

    iget-object v0, p0, Lio/objectbox/model/Model$Vector;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, v0}, Lio/objectbox/model/Model;->__assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/Model;

    move-result-object p1

    return-object p1
.end method
