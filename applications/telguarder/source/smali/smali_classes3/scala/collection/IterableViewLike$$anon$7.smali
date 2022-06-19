.class public final Lscala/collection/IterableViewLike$$anon$7;
.super Lscala/collection/IterableViewLike$AbstractTransformed;
.source "IterableViewLike.scala"

# interfaces
.implements Lscala/collection/IterableViewLike$DroppedWhile;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/IterableViewLike;->newDroppedWhile(Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
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
        "TA;TColl;TThis;>.DroppedWhile;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/IterableViewLike;

.field private final pred:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;"
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

    .line 117
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/IterableViewLike$$anon$7;->$outer:Lscala/collection/IterableViewLike;

    iput-object p2, p0, Lscala/collection/IterableViewLike$$anon$7;->pred:Lscala/Function1;

    invoke-direct {p0, p1}, Lscala/collection/IterableViewLike$AbstractTransformed;-><init>(Lscala/collection/IterableViewLike;)V

    invoke-static {p0}, Lscala/collection/TraversableViewLike$DroppedWhile$class;->$init$(Lscala/collection/TraversableViewLike$DroppedWhile;)V

    invoke-static {p0}, Lscala/collection/IterableViewLike$DroppedWhile$class;->$init$(Lscala/collection/IterableViewLike$DroppedWhile;)V

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
            "Ljava/lang/Object;",
            "TU;>;)V"
        }
    .end annotation

    .line 117
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$DroppedWhile$class;->foreach(Lscala/collection/TraversableViewLike$DroppedWhile;Lscala/Function1;)V

    return-void
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

    .line 117
    invoke-static {p0}, Lscala/collection/IterableViewLike$DroppedWhile$class;->iterator(Lscala/collection/IterableViewLike$DroppedWhile;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public pred()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lscala/collection/IterableViewLike$$anon$7;->pred:Lscala/Function1;

    return-object v0
.end method

.method public synthetic scala$collection$IterableViewLike$DroppedWhile$$$outer()Lscala/collection/IterableViewLike;
    .locals 1

    .line 81
    iget-object v0, p0, Lscala/collection/IterableViewLike$$anon$7;->$outer:Lscala/collection/IterableViewLike;

    return-object v0
.end method

.method public synthetic scala$collection$TraversableViewLike$DroppedWhile$$$outer()Lscala/collection/TraversableViewLike;
    .locals 1

    .line 213
    iget-object v0, p0, Lscala/collection/IterableViewLike$$anon$7;->$outer:Lscala/collection/IterableViewLike;

    return-object v0
.end method

.method public final viewIdentifier()Ljava/lang/String;
    .locals 1

    .line 117
    invoke-static {p0}, Lscala/collection/TraversableViewLike$DroppedWhile$class;->viewIdentifier(Lscala/collection/TraversableViewLike$DroppedWhile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
