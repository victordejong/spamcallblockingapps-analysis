.class public final Lscala/math/PartialOrdering$$anon$1;
.super Ljava/lang/Object;
.source "PartialOrdering.scala"

# interfaces
.implements Lscala/math/PartialOrdering;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/math/PartialOrdering;->reverse()Lscala/math/PartialOrdering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/math/PartialOrdering<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/math/PartialOrdering;


# direct methods
.method public constructor <init>(Lscala/math/PartialOrdering;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/math/PartialOrdering<",
            "TT;>;)V"
        }
    .end annotation

    .line 75
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/math/PartialOrdering$$anon$1;->$outer:Lscala/math/PartialOrdering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/math/PartialOrdering$class;->$init$(Lscala/math/PartialOrdering;)V

    return-void
.end method


# virtual methods
.method public equiv(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 75
    invoke-static {p0, p1, p2}, Lscala/math/PartialOrdering$class;->equiv(Lscala/math/PartialOrdering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public gt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 75
    invoke-static {p0, p1, p2}, Lscala/math/PartialOrdering$class;->gt(Lscala/math/PartialOrdering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public gteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 75
    invoke-static {p0, p1, p2}, Lscala/math/PartialOrdering$class;->gteq(Lscala/math/PartialOrdering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public lt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 75
    invoke-static {p0, p1, p2}, Lscala/math/PartialOrdering$class;->lt(Lscala/math/PartialOrdering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public lteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lscala/math/PartialOrdering$$anon$1;->$outer:Lscala/math/PartialOrdering;

    invoke-interface {v0, p2, p1}, Lscala/math/PartialOrdering;->lteq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public reverse()Lscala/math/PartialOrdering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/math/PartialOrdering<",
            "TT;>;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lscala/math/PartialOrdering$$anon$1;->$outer:Lscala/math/PartialOrdering;

    return-object v0
.end method

.method public tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lscala/math/PartialOrdering$$anon$1;->$outer:Lscala/math/PartialOrdering;

    invoke-interface {v0, p2, p1}, Lscala/math/PartialOrdering;->tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method
