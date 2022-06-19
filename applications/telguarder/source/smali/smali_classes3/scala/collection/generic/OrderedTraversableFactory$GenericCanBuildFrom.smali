.class public Lscala/collection/generic/OrderedTraversableFactory$GenericCanBuildFrom;
.super Ljava/lang/Object;
.source "OrderedTraversableFactory.scala"

# interfaces
.implements Lscala/collection/generic/CanBuildFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/generic/OrderedTraversableFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GenericCanBuildFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/generic/CanBuildFrom<",
        "TCC;TA;TCC;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/generic/OrderedTraversableFactory;

.field private final ord:Lscala/math/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/math/Ordering<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/generic/OrderedTraversableFactory;Lscala/math/Ordering;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/OrderedTraversableFactory<",
            "TCC;>;",
            "Lscala/math/Ordering<",
            "TA;>;)V"
        }
    .end annotation

    .line 19
    iput-object p2, p0, Lscala/collection/generic/OrderedTraversableFactory$GenericCanBuildFrom;->ord:Lscala/math/Ordering;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/generic/OrderedTraversableFactory$GenericCanBuildFrom;->$outer:Lscala/collection/generic/OrderedTraversableFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()Lscala/collection/mutable/Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "TA;TCC;>;"
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lscala/collection/generic/OrderedTraversableFactory$GenericCanBuildFrom;->scala$collection$generic$OrderedTraversableFactory$GenericCanBuildFrom$$$outer()Lscala/collection/generic/OrderedTraversableFactory;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/generic/OrderedTraversableFactory$GenericCanBuildFrom;->ord:Lscala/math/Ordering;

    invoke-virtual {v0, v1}, Lscala/collection/generic/OrderedTraversableFactory;->newBuilder(Lscala/math/Ordering;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 19
    check-cast p1, Lscala/collection/Traversable;

    invoke-virtual {p0, p1}, Lscala/collection/generic/OrderedTraversableFactory$GenericCanBuildFrom;->apply(Lscala/collection/Traversable;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/collection/Traversable;)Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCC;)",
            "Lscala/collection/mutable/Builder<",
            "TA;TCC;>;"
        }
    .end annotation

    .line 20
    check-cast p1, Lscala/collection/generic/GenericOrderedTraversableTemplate;

    iget-object v0, p0, Lscala/collection/generic/OrderedTraversableFactory$GenericCanBuildFrom;->ord:Lscala/math/Ordering;

    invoke-interface {p1, v0}, Lscala/collection/generic/GenericOrderedTraversableTemplate;->genericOrderedBuilder(Lscala/math/Ordering;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$generic$OrderedTraversableFactory$GenericCanBuildFrom$$$outer()Lscala/collection/generic/OrderedTraversableFactory;
    .locals 1

    .line 19
    iget-object v0, p0, Lscala/collection/generic/OrderedTraversableFactory$GenericCanBuildFrom;->$outer:Lscala/collection/generic/OrderedTraversableFactory;

    return-object v0
.end method
