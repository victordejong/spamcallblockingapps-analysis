.class public final Lscala/collection/IterableViewLike$$anon$9;
.super Lscala/collection/IterableViewLike$AbstractTransformed;
.source "IterableViewLike.scala"

# interfaces
.implements Lscala/collection/IterableViewLike$Zipped;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/IterableViewLike;->newZipped(Lscala/collection/GenIterable;)Lscala/collection/IterableViewLike$Transformed;
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
        "TA;TB;>;>;",
        "Lscala/collection/IterableViewLike<",
        "TA;TColl;TThis;>.Zipped<TB;>;"
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


# direct methods
.method public constructor <init>(Lscala/collection/IterableViewLike;Lscala/collection/GenIterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/IterableViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 105
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/IterableViewLike$$anon$9;->$outer:Lscala/collection/IterableViewLike;

    iput-object p2, p0, Lscala/collection/IterableViewLike$$anon$9;->other:Lscala/collection/GenIterable;

    invoke-direct {p0, p1}, Lscala/collection/IterableViewLike$AbstractTransformed;-><init>(Lscala/collection/IterableViewLike;)V

    invoke-static {p0}, Lscala/collection/IterableViewLike$Zipped$class;->$init$(Lscala/collection/IterableViewLike$Zipped;)V

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
            "TA;TB;>;>;"
        }
    .end annotation

    .line 105
    invoke-static {p0}, Lscala/collection/IterableViewLike$Zipped$class;->iterator(Lscala/collection/IterableViewLike$Zipped;)Lscala/collection/Iterator;

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

    .line 105
    iget-object v0, p0, Lscala/collection/IterableViewLike$$anon$9;->other:Lscala/collection/GenIterable;

    return-object v0
.end method

.method public synthetic scala$collection$IterableViewLike$Zipped$$$outer()Lscala/collection/IterableViewLike;
    .locals 1

    .line 85
    iget-object v0, p0, Lscala/collection/IterableViewLike$$anon$9;->$outer:Lscala/collection/IterableViewLike;

    return-object v0
.end method

.method public final viewIdentifier()Ljava/lang/String;
    .locals 1

    .line 105
    invoke-static {p0}, Lscala/collection/IterableViewLike$Zipped$class;->viewIdentifier(Lscala/collection/IterableViewLike$Zipped;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
