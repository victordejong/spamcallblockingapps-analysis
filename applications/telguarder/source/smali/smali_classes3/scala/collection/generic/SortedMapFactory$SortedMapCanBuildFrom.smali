.class public Lscala/collection/generic/SortedMapFactory$SortedMapCanBuildFrom;
.super Ljava/lang/Object;
.source "SortedMapFactory.scala"

# interfaces
.implements Lscala/collection/generic/CanBuildFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/generic/SortedMapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SortedMapCanBuildFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/generic/CanBuildFrom<",
        "TCC;",
        "Lscala/Tuple2<",
        "TA;TB;>;TCC;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/generic/SortedMapFactory;

.field private final ord:Lscala/math/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/math/Ordering<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/generic/SortedMapFactory;Lscala/math/Ordering;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/SortedMapFactory<",
            "TCC;>;",
            "Lscala/math/Ordering<",
            "TA;>;)V"
        }
    .end annotation

    .line 33
    iput-object p2, p0, Lscala/collection/generic/SortedMapFactory$SortedMapCanBuildFrom;->ord:Lscala/math/Ordering;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/generic/SortedMapFactory$SortedMapCanBuildFrom;->$outer:Lscala/collection/generic/SortedMapFactory;

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
            "Lscala/Tuple2<",
            "TA;TB;>;TCC;>;"
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lscala/collection/generic/SortedMapFactory$SortedMapCanBuildFrom;->scala$collection$generic$SortedMapFactory$SortedMapCanBuildFrom$$$outer()Lscala/collection/generic/SortedMapFactory;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/generic/SortedMapFactory$SortedMapCanBuildFrom;->ord:Lscala/math/Ordering;

    invoke-virtual {v0, v1}, Lscala/collection/generic/SortedMapFactory;->newBuilder(Lscala/math/Ordering;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 33
    check-cast p1, Lscala/collection/SortedMap;

    invoke-virtual {p0, p1}, Lscala/collection/generic/SortedMapFactory$SortedMapCanBuildFrom;->apply(Lscala/collection/SortedMap;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/collection/SortedMap;)Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCC;)",
            "Lscala/collection/mutable/Builder<",
            "Lscala/Tuple2<",
            "TA;TB;>;TCC;>;"
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lscala/collection/generic/SortedMapFactory$SortedMapCanBuildFrom;->scala$collection$generic$SortedMapFactory$SortedMapCanBuildFrom$$$outer()Lscala/collection/generic/SortedMapFactory;

    move-result-object p1

    iget-object v0, p0, Lscala/collection/generic/SortedMapFactory$SortedMapCanBuildFrom;->ord:Lscala/math/Ordering;

    invoke-virtual {p1, v0}, Lscala/collection/generic/SortedMapFactory;->newBuilder(Lscala/math/Ordering;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$generic$SortedMapFactory$SortedMapCanBuildFrom$$$outer()Lscala/collection/generic/SortedMapFactory;
    .locals 1

    .line 33
    iget-object v0, p0, Lscala/collection/generic/SortedMapFactory$SortedMapCanBuildFrom;->$outer:Lscala/collection/generic/SortedMapFactory;

    return-object v0
.end method
