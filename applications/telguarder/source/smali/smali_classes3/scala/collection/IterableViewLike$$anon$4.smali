.class public final Lscala/collection/IterableViewLike$$anon$4;
.super Lscala/collection/IterableViewLike$AbstractTransformed;
.source "IterableViewLike.scala"

# interfaces
.implements Lscala/collection/IterableViewLike$FlatMapped;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/IterableViewLike;->newFlatMapped(Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
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
        "TA;TColl;TThis;>.FlatMapped<TB;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/IterableViewLike;

.field private final mapping:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TA;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/IterableViewLike;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/IterableViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 114
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/IterableViewLike$$anon$4;->$outer:Lscala/collection/IterableViewLike;

    iput-object p2, p0, Lscala/collection/IterableViewLike$$anon$4;->mapping:Lscala/Function1;

    invoke-direct {p0, p1}, Lscala/collection/IterableViewLike$AbstractTransformed;-><init>(Lscala/collection/IterableViewLike;)V

    invoke-static {p0}, Lscala/collection/TraversableViewLike$FlatMapped$class;->$init$(Lscala/collection/TraversableViewLike$FlatMapped;)V

    invoke-static {p0}, Lscala/collection/IterableViewLike$FlatMapped$class;->$init$(Lscala/collection/IterableViewLike$FlatMapped;)V

    return-void
.end method


# virtual methods
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

    .line 114
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$FlatMapped$class;->foreach(Lscala/collection/TraversableViewLike$FlatMapped;Lscala/Function1;)V

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

    .line 114
    invoke-static {p0}, Lscala/collection/IterableViewLike$FlatMapped$class;->iterator(Lscala/collection/IterableViewLike$FlatMapped;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public mapping()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "TA;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lscala/collection/IterableViewLike$$anon$4;->mapping:Lscala/Function1;

    return-object v0
.end method

.method public synthetic scala$collection$IterableViewLike$FlatMapped$$$outer()Lscala/collection/IterableViewLike;
    .locals 1

    .line 65
    iget-object v0, p0, Lscala/collection/IterableViewLike$$anon$4;->$outer:Lscala/collection/IterableViewLike;

    return-object v0
.end method

.method public synthetic scala$collection$TraversableViewLike$FlatMapped$$$outer()Lscala/collection/TraversableViewLike;
    .locals 1

    .line 174
    iget-object v0, p0, Lscala/collection/IterableViewLike$$anon$4;->$outer:Lscala/collection/IterableViewLike;

    return-object v0
.end method

.method public final viewIdentifier()Ljava/lang/String;
    .locals 1

    .line 114
    invoke-static {p0}, Lscala/collection/TraversableViewLike$FlatMapped$class;->viewIdentifier(Lscala/collection/TraversableViewLike$FlatMapped;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
