.class public final Lscala/collection/IterableViewLike$$anon$6;
.super Lscala/collection/IterableViewLike$AbstractTransformed;
.source "IterableViewLike.scala"

# interfaces
.implements Lscala/collection/IterableViewLike$Sliced;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/IterableViewLike;->newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/IterableViewLike$Transformed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/IterableViewLike<",
        "TA;TColl;TThis;>.AbstractTransformed<TA;>;",
        "Lscala/collection/IterableViewLike<",
        "TA;TColl;TThis;>.Sliced;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/IterableViewLike;

.field private final endpoints:Lscala/collection/generic/SliceInterval;


# direct methods
.method public constructor <init>(Lscala/collection/IterableViewLike;Lscala/collection/generic/SliceInterval;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/IterableViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 116
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/IterableViewLike$$anon$6;->$outer:Lscala/collection/IterableViewLike;

    iput-object p2, p0, Lscala/collection/IterableViewLike$$anon$6;->endpoints:Lscala/collection/generic/SliceInterval;

    invoke-direct {p0, p1}, Lscala/collection/IterableViewLike$AbstractTransformed;-><init>(Lscala/collection/IterableViewLike;)V

    invoke-static {p0}, Lscala/collection/TraversableViewLike$Sliced$class;->$init$(Lscala/collection/TraversableViewLike$Sliced;)V

    invoke-static {p0}, Lscala/collection/IterableViewLike$Sliced$class;->$init$(Lscala/collection/IterableViewLike$Sliced;)V

    return-void
.end method


# virtual methods
.method public endpoints()Lscala/collection/generic/SliceInterval;
    .locals 1

    .line 116
    iget-object v0, p0, Lscala/collection/IterableViewLike$$anon$6;->endpoints:Lscala/collection/generic/SliceInterval;

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
            "Ljava/lang/Object;",
            "TU;>;)V"
        }
    .end annotation

    .line 116
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$Sliced$class;->foreach(Lscala/collection/TraversableViewLike$Sliced;Lscala/Function1;)V

    return-void
.end method

.method public from()I
    .locals 1

    .line 116
    invoke-static {p0}, Lscala/collection/TraversableViewLike$Sliced$class;->from(Lscala/collection/TraversableViewLike$Sliced;)I

    move-result v0

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 116
    invoke-static {p0}, Lscala/collection/IterableViewLike$Sliced$class;->iterator(Lscala/collection/IterableViewLike$Sliced;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IterableViewLike$Sliced$$$outer()Lscala/collection/IterableViewLike;
    .locals 1

    .line 57
    iget-object v0, p0, Lscala/collection/IterableViewLike$$anon$6;->$outer:Lscala/collection/IterableViewLike;

    return-object v0
.end method

.method public synthetic scala$collection$TraversableViewLike$Sliced$$$outer()Lscala/collection/TraversableViewLike;
    .locals 1

    .line 145
    iget-object v0, p0, Lscala/collection/IterableViewLike$$anon$6;->$outer:Lscala/collection/IterableViewLike;

    return-object v0
.end method

.method public until()I
    .locals 1

    .line 116
    invoke-static {p0}, Lscala/collection/TraversableViewLike$Sliced$class;->until(Lscala/collection/TraversableViewLike$Sliced;)I

    move-result v0

    return v0
.end method

.method public final viewIdentifier()Ljava/lang/String;
    .locals 1

    .line 116
    invoke-static {p0}, Lscala/collection/TraversableViewLike$Sliced$class;->viewIdentifier(Lscala/collection/TraversableViewLike$Sliced;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
