.class public final Lscala/collection/SeqLike$$anonfun$occCounts$1;
.super Lscala/runtime/AbstractFunction1;
.source "SeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/SeqLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final occ$3:Lscala/collection/mutable/HashMap;


# direct methods
.method public constructor <init>(Lscala/collection/SeqLike;Lscala/collection/mutable/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqLike;",
            ")V"
        }
    .end annotation

    .line 493
    iput-object p2, p0, Lscala/collection/SeqLike$$anonfun$occCounts$1;->occ$3:Lscala/collection/mutable/HashMap;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 493
    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$$anonfun$occCounts$1;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lscala/collection/SeqLike$$anonfun$occCounts$1;->occ$3:Lscala/collection/mutable/HashMap;

    invoke-virtual {v0, p1}, Lscala/collection/mutable/HashMap;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lscala/collection/mutable/HashMap;->update(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
