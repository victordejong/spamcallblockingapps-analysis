.class public final Lscala/collection/IterableViewLike$$anon$3;
.super Lscala/collection/IterableViewLike$AbstractTransformed;
.source "IterableViewLike.scala"

# interfaces
.implements Lscala/collection/IterableViewLike$Mapped;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/IterableViewLike;->newMapped(Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
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
        "TA;TColl;TThis;>.Mapped<TB;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/IterableViewLike;

.field private final mapping:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TA;TB;>;"
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

    .line 113
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/IterableViewLike$$anon$3;->$outer:Lscala/collection/IterableViewLike;

    iput-object p2, p0, Lscala/collection/IterableViewLike$$anon$3;->mapping:Lscala/Function1;

    invoke-direct {p0, p1}, Lscala/collection/IterableViewLike$AbstractTransformed;-><init>(Lscala/collection/IterableViewLike;)V

    invoke-static {p0}, Lscala/collection/TraversableViewLike$Mapped$class;->$init$(Lscala/collection/TraversableViewLike$Mapped;)V

    invoke-static {p0}, Lscala/collection/IterableViewLike$Mapped$class;->$init$(Lscala/collection/IterableViewLike$Mapped;)V

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

    .line 113
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$Mapped$class;->foreach(Lscala/collection/TraversableViewLike$Mapped;Lscala/Function1;)V

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

    .line 113
    invoke-static {p0}, Lscala/collection/IterableViewLike$Mapped$class;->iterator(Lscala/collection/IterableViewLike$Mapped;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public mapping()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "TA;TB;>;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lscala/collection/IterableViewLike$$anon$3;->mapping:Lscala/Function1;

    return-object v0
.end method

.method public synthetic scala$collection$IterableViewLike$Mapped$$$outer()Lscala/collection/IterableViewLike;
    .locals 1

    .line 61
    iget-object v0, p0, Lscala/collection/IterableViewLike$$anon$3;->$outer:Lscala/collection/IterableViewLike;

    return-object v0
.end method

.method public synthetic scala$collection$TraversableViewLike$Mapped$$$outer()Lscala/collection/TraversableViewLike;
    .locals 1

    .line 165
    iget-object v0, p0, Lscala/collection/IterableViewLike$$anon$3;->$outer:Lscala/collection/IterableViewLike;

    return-object v0
.end method

.method public final viewIdentifier()Ljava/lang/String;
    .locals 1

    .line 113
    invoke-static {p0}, Lscala/collection/TraversableViewLike$Mapped$class;->viewIdentifier(Lscala/collection/TraversableViewLike$Mapped;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
