.class public final Lscala/collection/IterableViewLike$$anon$2;
.super Lscala/collection/IterableViewLike$AbstractTransformed;
.source "IterableViewLike.scala"

# interfaces
.implements Lscala/collection/IterableViewLike$Appended;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/IterableViewLike;->newAppended(Lscala/collection/GenTraversable;)Lscala/collection/IterableViewLike$Transformed;
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
        "TA;TColl;TThis;>.Appended<TB;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/IterableViewLike;

.field private final rest:Lscala/collection/GenTraversable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/GenTraversable<",
            "TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/IterableViewLike;Lscala/collection/GenTraversable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/IterableViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 112
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/IterableViewLike$$anon$2;->$outer:Lscala/collection/IterableViewLike;

    iput-object p2, p0, Lscala/collection/IterableViewLike$$anon$2;->rest:Lscala/collection/GenTraversable;

    invoke-direct {p0, p1}, Lscala/collection/IterableViewLike$AbstractTransformed;-><init>(Lscala/collection/IterableViewLike;)V

    invoke-static {p0}, Lscala/collection/TraversableViewLike$Appended$class;->$init$(Lscala/collection/TraversableViewLike$Appended;)V

    invoke-static {p0}, Lscala/collection/IterableViewLike$Appended$class;->$init$(Lscala/collection/IterableViewLike$Appended;)V

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

    .line 112
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$Appended$class;->foreach(Lscala/collection/TraversableViewLike$Appended;Lscala/Function1;)V

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

    .line 112
    invoke-static {p0}, Lscala/collection/IterableViewLike$Appended$class;->iterator(Lscala/collection/IterableViewLike$Appended;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public rest()Lscala/collection/GenTraversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/GenTraversable<",
            "TB;>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lscala/collection/IterableViewLike$$anon$2;->rest:Lscala/collection/GenTraversable;

    return-object v0
.end method

.method public synthetic scala$collection$IterableViewLike$Appended$$$outer()Lscala/collection/IterableViewLike;
    .locals 1

    .line 69
    iget-object v0, p0, Lscala/collection/IterableViewLike$$anon$2;->$outer:Lscala/collection/IterableViewLike;

    return-object v0
.end method

.method public synthetic scala$collection$TraversableViewLike$Appended$$$outer()Lscala/collection/TraversableViewLike;
    .locals 1

    .line 184
    iget-object v0, p0, Lscala/collection/IterableViewLike$$anon$2;->$outer:Lscala/collection/IterableViewLike;

    return-object v0
.end method

.method public final viewIdentifier()Ljava/lang/String;
    .locals 1

    .line 112
    invoke-static {p0}, Lscala/collection/TraversableViewLike$Appended$class;->viewIdentifier(Lscala/collection/TraversableViewLike$Appended;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
