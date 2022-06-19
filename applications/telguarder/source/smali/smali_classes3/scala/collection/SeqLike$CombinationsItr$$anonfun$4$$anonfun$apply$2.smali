.class public final Lscala/collection/SeqLike$CombinationsItr$$anonfun$4$$anonfun$apply$2;
.super Lscala/runtime/AbstractFunction0$mcI$sp;
.source "SeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SeqLike$CombinationsItr$$anonfun$4;->apply(Ljava/lang/Object;)Lscala/Tuple2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/collection/SeqLike$CombinationsItr$$anonfun$4;


# direct methods
.method public constructor <init>(Lscala/collection/SeqLike$CombinationsItr$$anonfun$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqLike<",
            "TA;TRepr;>.CombinationsItr$$anonfun$4;)V"
        }
    .end annotation

    .line 257
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$4$$anonfun$apply$2;->$outer:Lscala/collection/SeqLike$CombinationsItr$$anonfun$4;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()I
    .locals 1

    .line 257
    iget-object v0, p0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$4$$anonfun$apply$2;->$outer:Lscala/collection/SeqLike$CombinationsItr$$anonfun$4;

    iget-object v0, v0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$4;->m$2:Lscala/collection/mutable/HashMap;

    invoke-virtual {v0}, Lscala/collection/mutable/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 257
    invoke-virtual {p0}, Lscala/collection/SeqLike$CombinationsItr$$anonfun$4$$anonfun$apply$2;->apply()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public apply$mcI$sp()I
    .locals 1

    .line 257
    iget-object v0, p0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$4$$anonfun$apply$2;->$outer:Lscala/collection/SeqLike$CombinationsItr$$anonfun$4;

    iget-object v0, v0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$4;->m$2:Lscala/collection/mutable/HashMap;

    invoke-virtual {v0}, Lscala/collection/mutable/HashMap;->size()I

    move-result v0

    return v0
.end method
