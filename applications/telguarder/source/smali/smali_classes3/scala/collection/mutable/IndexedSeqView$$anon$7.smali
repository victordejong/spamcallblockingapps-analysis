.class public final Lscala/collection/mutable/IndexedSeqView$$anon$7;
.super Ljava/lang/Object;
.source "IndexedSeqView.scala"

# interfaces
.implements Lscala/collection/generic/CanBuildFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/IndexedSeqView$;->arrCanBuildFrom()Lscala/collection/generic/CanBuildFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/generic/CanBuildFrom<",
        "Lscala/collection/TraversableView<",
        "*",
        "Ljava/lang/Object;",
        ">;TA;",
        "Lscala/collection/SeqView<",
        "TA;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()Lscala/collection/TraversableView$NoBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/TraversableView$NoBuilder<",
            "TA;>;"
        }
    .end annotation

    .line 117
    new-instance v0, Lscala/collection/TraversableView$NoBuilder;

    invoke-direct {v0}, Lscala/collection/TraversableView$NoBuilder;-><init>()V

    return-object v0
.end method

.method public apply(Lscala/collection/TraversableView;)Lscala/collection/TraversableView$NoBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableView<",
            "*",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/TraversableView$NoBuilder<",
            "TA;>;"
        }
    .end annotation

    .line 116
    new-instance p1, Lscala/collection/TraversableView$NoBuilder;

    invoke-direct {p1}, Lscala/collection/TraversableView$NoBuilder;-><init>()V

    return-object p1
.end method

.method public bridge synthetic apply()Lscala/collection/mutable/Builder;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$$anon$7;->apply()Lscala/collection/TraversableView$NoBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 115
    check-cast p1, Lscala/collection/TraversableView;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$$anon$7;->apply(Lscala/collection/TraversableView;)Lscala/collection/TraversableView$NoBuilder;

    move-result-object p1

    return-object p1
.end method
