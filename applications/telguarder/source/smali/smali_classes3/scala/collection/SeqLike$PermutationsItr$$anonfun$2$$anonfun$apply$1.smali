.class public final Lscala/collection/SeqLike$PermutationsItr$$anonfun$2$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction0$mcI$sp;
.source "SeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SeqLike$PermutationsItr$$anonfun$2;->apply(Ljava/lang/Object;)Lscala/Tuple2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/collection/SeqLike$PermutationsItr$$anonfun$2;


# direct methods
.method public constructor <init>(Lscala/collection/SeqLike$PermutationsItr$$anonfun$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqLike<",
            "TA;TRepr;>.PermutationsItr$$anonfun$2;)V"
        }
    .end annotation

    .line 202
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/SeqLike$PermutationsItr$$anonfun$2$$anonfun$apply$1;->$outer:Lscala/collection/SeqLike$PermutationsItr$$anonfun$2;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()I
    .locals 1

    .line 202
    iget-object v0, p0, Lscala/collection/SeqLike$PermutationsItr$$anonfun$2$$anonfun$apply$1;->$outer:Lscala/collection/SeqLike$PermutationsItr$$anonfun$2;

    iget-object v0, v0, Lscala/collection/SeqLike$PermutationsItr$$anonfun$2;->m$1:Lscala/collection/mutable/HashMap;

    invoke-virtual {v0}, Lscala/collection/mutable/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lscala/collection/SeqLike$PermutationsItr$$anonfun$2$$anonfun$apply$1;->apply()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public apply$mcI$sp()I
    .locals 1

    .line 202
    iget-object v0, p0, Lscala/collection/SeqLike$PermutationsItr$$anonfun$2$$anonfun$apply$1;->$outer:Lscala/collection/SeqLike$PermutationsItr$$anonfun$2;

    iget-object v0, v0, Lscala/collection/SeqLike$PermutationsItr$$anonfun$2;->m$1:Lscala/collection/mutable/HashMap;

    invoke-virtual {v0}, Lscala/collection/mutable/HashMap;->size()I

    move-result v0

    return v0
.end method
