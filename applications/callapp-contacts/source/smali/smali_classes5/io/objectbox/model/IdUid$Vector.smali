.class public final Lio/objectbox/model/IdUid$Vector;
.super Lcom/google/flatbuffers/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/objectbox/model/IdUid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vector"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/google/flatbuffers/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final __assign(IILjava/nio/ByteBuffer;)Lio/objectbox/model/IdUid$Vector;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lio/objectbox/model/IdUid$Vector;->__reset(IILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public final get(I)Lio/objectbox/model/IdUid;
    .locals 1

    .line 52
    new-instance v0, Lio/objectbox/model/IdUid;

    invoke-direct {v0}, Lio/objectbox/model/IdUid;-><init>()V

    invoke-virtual {p0, v0, p1}, Lio/objectbox/model/IdUid$Vector;->get(Lio/objectbox/model/IdUid;I)Lio/objectbox/model/IdUid;

    move-result-object p1

    return-object p1
.end method

.method public final get(Lio/objectbox/model/IdUid;I)Lio/objectbox/model/IdUid;
    .locals 1

    .line 53
    invoke-virtual {p0, p2}, Lio/objectbox/model/IdUid$Vector;->__element(I)I

    move-result p2

    iget-object v0, p0, Lio/objectbox/model/IdUid$Vector;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, v0}, Lio/objectbox/model/IdUid;->__assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/IdUid;

    move-result-object p1

    return-object p1
.end method
