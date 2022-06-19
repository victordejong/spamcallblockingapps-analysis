.class public final Lscala/collection/parallel/immutable/ParRange$ParRangeIterator$$anonfun$psplit$1;
.super Lscala/runtime/AbstractFunction1;
.source "ParRange.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/immutable/ParRange$ParRangeIterator;->psplit(Lscala/collection/Seq;)Lscala/collection/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/immutable/ParRange$ParRangeIterator;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/immutable/ParRange$ParRangeIterator;

.field private final rleft$1:Lscala/runtime/ObjectRef;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/immutable/ParRange$ParRangeIterator;Lscala/runtime/ObjectRef;)V
    .locals 0

    .line 81
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/immutable/ParRange$ParRangeIterator$$anonfun$psplit$1;->$outer:Lscala/collection/parallel/immutable/ParRange$ParRangeIterator;

    iput-object p2, p0, Lscala/collection/parallel/immutable/ParRange$ParRangeIterator$$anonfun$psplit$1;->rleft$1:Lscala/runtime/ObjectRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 81
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParRange$ParRangeIterator$$anonfun$psplit$1;->apply(I)Lscala/collection/parallel/immutable/ParRange$ParRangeIterator;

    move-result-object p1

    return-object p1
.end method

.method public final apply(I)Lscala/collection/parallel/immutable/ParRange$ParRangeIterator;
    .locals 3

    .line 82
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParRange$ParRangeIterator$$anonfun$psplit$1;->rleft$1:Lscala/runtime/ObjectRef;

    iget-object v0, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Lscala/collection/immutable/Range;

    invoke-virtual {v0, p1}, Lscala/collection/immutable/Range;->take(I)Lscala/collection/immutable/Range;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lscala/collection/parallel/immutable/ParRange$ParRangeIterator$$anonfun$psplit$1;->rleft$1:Lscala/runtime/ObjectRef;

    iget-object v2, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v2, Lscala/collection/immutable/Range;

    invoke-virtual {v2, p1}, Lscala/collection/immutable/Range;->drop(I)Lscala/collection/immutable/Range;

    move-result-object p1

    iput-object p1, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    .line 84
    new-instance p1, Lscala/collection/parallel/immutable/ParRange$ParRangeIterator;

    iget-object v1, p0, Lscala/collection/parallel/immutable/ParRange$ParRangeIterator$$anonfun$psplit$1;->$outer:Lscala/collection/parallel/immutable/ParRange$ParRangeIterator;

    invoke-virtual {v1}, Lscala/collection/parallel/immutable/ParRange$ParRangeIterator;->scala$collection$parallel$immutable$ParRange$ParRangeIterator$$$outer()Lscala/collection/parallel/immutable/ParRange;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lscala/collection/parallel/immutable/ParRange$ParRangeIterator;-><init>(Lscala/collection/parallel/immutable/ParRange;Lscala/collection/immutable/Range;)V

    return-object p1
.end method
