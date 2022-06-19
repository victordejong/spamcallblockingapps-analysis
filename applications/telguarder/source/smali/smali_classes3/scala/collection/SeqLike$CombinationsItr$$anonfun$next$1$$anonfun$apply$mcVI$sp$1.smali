.class public final Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1$$anonfun$apply$mcVI$sp$1;
.super Lscala/runtime/AbstractFunction1;
.source "SeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/Builder<",
        "TA;TRepr;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1;

.field public final k$1:I


# direct methods
.method public constructor <init>(Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqLike<",
            "TA;TRepr;>.CombinationsItr$$anonfun$next$1;)V"
        }
    .end annotation

    .line 223
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1$$anonfun$apply$mcVI$sp$1;->$outer:Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1;

    iput p2, p0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1$$anonfun$apply$mcVI$sp$1;->k$1:I

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 223
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1$$anonfun$apply$mcVI$sp$1;->apply(I)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(I)Lscala/collection/mutable/Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/mutable/Builder<",
            "TA;TRepr;>;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1$$anonfun$apply$mcVI$sp$1;->$outer:Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1;

    iget-object v0, v0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1;->buf$1:Lscala/collection/mutable/Builder;

    iget-object v1, p0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1$$anonfun$apply$mcVI$sp$1;->$outer:Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1;

    iget-object v1, v1, Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1;->$outer:Lscala/collection/SeqLike$CombinationsItr;

    invoke-virtual {v1}, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$elms()Lscala/collection/IndexedSeq;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1$$anonfun$apply$mcVI$sp$1;->$outer:Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1;

    iget-object v2, v2, Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1;->$outer:Lscala/collection/SeqLike$CombinationsItr;

    invoke-virtual {v2}, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$offs()[I

    move-result-object v2

    iget v3, p0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1$$anonfun$apply$mcVI$sp$1;->k$1:I

    aget v2, v2, v3

    add-int/2addr v2, p1

    invoke-interface {v1, v2}, Lscala/collection/IndexedSeq;->apply(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method
