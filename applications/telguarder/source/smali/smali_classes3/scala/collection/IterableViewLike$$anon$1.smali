.class public final Lscala/collection/IterableViewLike$$anon$1;
.super Lscala/collection/IterableViewLike$AbstractTransformed;
.source "IterableViewLike.scala"

# interfaces
.implements Lscala/collection/IterableViewLike$Forced;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/IterableViewLike;->newForced(Lscala/Function0;)Lscala/collection/IterableViewLike$Transformed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/IterableViewLike<",
        "TA;TColl;TThis;>.AbstractTransformed<TB;>;",
        "Lscala/collection/IterableViewLike<",
        "TA;TColl;TThis;>.Forced<TB;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/IterableViewLike;

.field private final forced:Lscala/collection/GenSeq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/GenSeq<",
            "TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/IterableViewLike;Lscala/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/IterableViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 111
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/IterableViewLike$$anon$1;->$outer:Lscala/collection/IterableViewLike;

    invoke-interface {p2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/collection/GenSeq;

    iput-object p2, p0, Lscala/collection/IterableViewLike$$anon$1;->forced:Lscala/collection/GenSeq;

    invoke-direct {p0, p1}, Lscala/collection/IterableViewLike$AbstractTransformed;-><init>(Lscala/collection/IterableViewLike;)V

    invoke-static {p0}, Lscala/collection/TraversableViewLike$Forced$class;->$init$(Lscala/collection/TraversableViewLike$Forced;)V

    invoke-static {p0}, Lscala/collection/IterableViewLike$Forced$class;->$init$(Lscala/collection/IterableViewLike$Forced;)V

    return-void
.end method


# virtual methods
.method public forced()Lscala/collection/GenSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/GenSeq<",
            "TB;>;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lscala/collection/IterableViewLike$$anon$1;->forced:Lscala/collection/GenSeq;

    return-object v0
.end method

.method public foreach(Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TB;TU;>;)V"
        }
    .end annotation

    .line 111
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$Forced$class;->foreach(Lscala/collection/TraversableViewLike$Forced;Lscala/Function1;)V

    return-void
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 111
    invoke-static {p0}, Lscala/collection/IterableViewLike$Forced$class;->iterator(Lscala/collection/IterableViewLike$Forced;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IterableViewLike$Forced$$$outer()Lscala/collection/IterableViewLike;
    .locals 1

    .line 53
    iget-object v0, p0, Lscala/collection/IterableViewLike$$anon$1;->$outer:Lscala/collection/IterableViewLike;

    return-object v0
.end method

.method public synthetic scala$collection$TraversableViewLike$Forced$$$outer()Lscala/collection/TraversableViewLike;
    .locals 1

    .line 139
    iget-object v0, p0, Lscala/collection/IterableViewLike$$anon$1;->$outer:Lscala/collection/IterableViewLike;

    return-object v0
.end method

.method public final viewIdentifier()Ljava/lang/String;
    .locals 1

    .line 111
    invoke-static {p0}, Lscala/collection/TraversableViewLike$Forced$class;->viewIdentifier(Lscala/collection/TraversableViewLike$Forced;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
