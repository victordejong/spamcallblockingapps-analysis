.class public final Lscala/collection/parallel/ParIterableLike$SplitAt$$anonfun$15;
.super Lscala/runtime/AbstractFunction2;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike$SplitAt;->split()Lscala/collection/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/IterableSplitter<",
        "TT;>;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike$SplitAt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.SplitAt<TU;TThis;>;)V"
        }
    .end annotation

    .line 1230
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(ILscala/collection/parallel/IterableSplitter;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;)I"
        }
    .end annotation

    .line 1230
    invoke-interface {p2}, Lscala/collection/parallel/IterableSplitter;->remaining()I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1230
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    check-cast p2, Lscala/collection/parallel/IterableSplitter;

    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$SplitAt$$anonfun$15;->apply(ILscala/collection/parallel/IterableSplitter;)I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
