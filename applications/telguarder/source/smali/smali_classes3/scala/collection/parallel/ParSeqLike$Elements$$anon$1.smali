.class public final Lscala/collection/parallel/ParSeqLike$Elements$$anon$1;
.super Lscala/collection/parallel/ParSeqLike$Elements;
.source "ParSeqLike.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParSeqLike$Elements;->dup()Lscala/collection/parallel/ParSeqLike$Elements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/parallel/ParSeqLike<",
        "TT;TRepr;TSequential;>.Elements;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParSeqLike$Elements;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.Elements;)V"
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Lscala/collection/parallel/ParSeqLike$Elements;->scala$collection$parallel$ParSeqLike$Elements$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/parallel/ParSeqLike$Elements;->scala$collection$parallel$ParSeqLike$Elements$$i()I

    move-result v1

    invoke-virtual {p1}, Lscala/collection/parallel/ParSeqLike$Elements;->end()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lscala/collection/parallel/ParSeqLike$Elements;-><init>(Lscala/collection/parallel/ParSeqLike;II)V

    return-void
.end method
