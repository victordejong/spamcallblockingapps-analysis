.class public final Lio/objectbox/model/ModelProperty$Vector;
.super Lcom/google/flatbuffers/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/objectbox/model/ModelProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vector"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/google/flatbuffers/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final __assign(IILjava/nio/ByteBuffer;)Lio/objectbox/model/ModelProperty$Vector;
    .locals 0

    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lio/objectbox/model/ModelProperty$Vector;->__reset(IILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public final get(I)Lio/objectbox/model/ModelProperty;
    .locals 1

    .line 94
    new-instance v0, Lio/objectbox/model/ModelProperty;

    invoke-direct {v0}, Lio/objectbox/model/ModelProperty;-><init>()V

    invoke-virtual {p0, v0, p1}, Lio/objectbox/model/ModelProperty$Vector;->get(Lio/objectbox/model/ModelProperty;I)Lio/objectbox/model/ModelProperty;

    move-result-object p1

    return-object p1
.end method

.method public final get(Lio/objectbox/model/ModelProperty;I)Lio/objectbox/model/ModelProperty;
    .locals 1

    .line 95
    invoke-virtual {p0, p2}, Lio/objectbox/model/ModelProperty$Vector;->__element(I)I

    move-result p2

    iget-object v0, p0, Lio/objectbox/model/ModelProperty$Vector;->bb:Ljava/nio/ByteBuffer;

    invoke-static {p2, v0}, Lio/objectbox/model/ModelProperty;->access$000(ILjava/nio/ByteBuffer;)I

    move-result p2

    iget-object v0, p0, Lio/objectbox/model/ModelProperty$Vector;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, v0}, Lio/objectbox/model/ModelProperty;->__assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/ModelProperty;

    move-result-object p1

    return-object p1
.end method
