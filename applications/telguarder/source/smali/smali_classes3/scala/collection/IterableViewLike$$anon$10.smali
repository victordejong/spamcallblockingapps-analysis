.class public final Lscala/collection/IterableViewLike$$anon$10;
.super Lscala/collection/IterableViewLike$AbstractTransformed;
.source "IterableViewLike.scala"

# interfaces
.implements Lscala/collection/IterableViewLike$ZippedAll;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/IterableViewLike;->newZippedAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/IterableViewLike$Transformed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/IterableViewLike<",
        "TA;TColl;TThis;>.AbstractTransformed<",
        "Lscala/Tuple2<",
        "TA1;TB;>;>;",
        "Lscala/collection/IterableViewLike<",
        "TA;TColl;TThis;>.ZippedAll<TA1;TB;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/IterableViewLike;

.field private final other:Lscala/collection/GenIterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/GenIterable<",
            "TB;>;"
        }
    .end annotation
.end field

.field private final thatElem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field

.field private final thisElem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/IterableViewLike;Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/IterableViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 106
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/IterableViewLike$$anon$10;->$outer:Lscala/collection/IterableViewLike;

    .line 107
    iput-object p2, p0, Lscala/collection/IterableViewLike$$anon$10;->other:Lscala/collection/GenIterable;

    .line 108
    iput-object p3, p0, Lscala/collection/IterableViewLike$$anon$10;->thisElem:Ljava/lang/Object;

    .line 109
    iput-object p4, p0, Lscala/collection/IterableViewLike$$anon$10;->thatElem:Ljava/lang/Object;

    .line 110
    invoke-direct {p0, p1}, Lscala/collection/IterableViewLike$AbstractTransformed;-><init>(Lscala/collection/IterableViewLike;)V

    invoke-static {p0}, Lscala/collection/IterableViewLike$ZippedAll$class;->$init$(Lscala/collection/IterableViewLike$ZippedAll;)V

    return-void
.end method


# virtual methods
.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA1;TB;>;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/IterableViewLike$ZippedAll$class;->iterator(Lscala/collection/IterableViewLike$ZippedAll;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public other()Lscala/collection/GenIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/GenIterable<",
            "TB;>;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lscala/collection/IterableViewLike$$anon$10;->other:Lscala/collection/GenIterable;

    return-object v0
.end method

.method public synthetic scala$collection$IterableViewLike$ZippedAll$$$outer()Lscala/collection/IterableViewLike;
    .locals 1

    .line 91
    iget-object v0, p0, Lscala/collection/IterableViewLike$$anon$10;->$outer:Lscala/collection/IterableViewLike;

    return-object v0
.end method

.method public thatElem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lscala/collection/IterableViewLike$$anon$10;->thatElem:Ljava/lang/Object;

    return-object v0
.end method

.method public thisElem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA1;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lscala/collection/IterableViewLike$$anon$10;->thisElem:Ljava/lang/Object;

    return-object v0
.end method

.method public final viewIdentifier()Ljava/lang/String;
    .locals 1

    .line 106
    invoke-static {p0}, Lscala/collection/IterableViewLike$ZippedAll$class;->viewIdentifier(Lscala/collection/IterableViewLike$ZippedAll;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
