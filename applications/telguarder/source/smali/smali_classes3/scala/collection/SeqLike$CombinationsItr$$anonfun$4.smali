.class public final Lscala/collection/SeqLike$CombinationsItr$$anonfun$4;
.super Lscala/runtime/AbstractFunction1;
.source "SeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SeqLike$CombinationsItr;->init()Lscala/Tuple3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Lscala/Tuple2<",
        "TA;",
        "Ljava/lang/Object;",
        ">;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final m$2:Lscala/collection/mutable/HashMap;


# direct methods
.method public constructor <init>(Lscala/collection/SeqLike$CombinationsItr;Lscala/collection/mutable/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqLike<",
            "TA;TRepr;>.CombinationsItr;)V"
        }
    .end annotation

    .line 257
    iput-object p2, p0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$4;->m$2:Lscala/collection/mutable/HashMap;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 257
    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$CombinationsItr$$anonfun$4;->apply(Ljava/lang/Object;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/Tuple2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Lscala/Tuple2;

    iget-object v1, p0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$4;->m$2:Lscala/collection/mutable/HashMap;

    new-instance v2, Lscala/collection/SeqLike$CombinationsItr$$anonfun$4$$anonfun$apply$2;

    invoke-direct {v2, p0}, Lscala/collection/SeqLike$CombinationsItr$$anonfun$4$$anonfun$apply$2;-><init>(Lscala/collection/SeqLike$CombinationsItr$$anonfun$4;)V

    invoke-virtual {v1, p1, v2}, Lscala/collection/mutable/HashMap;->getOrElseUpdate(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
