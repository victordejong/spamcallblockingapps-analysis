.class public Lscala/collection/generic/SortedSetFactory$SortedSetCanBuildFrom;
.super Ljava/lang/Object;
.source "SortedSetFactory.scala"

# interfaces
.implements Lscala/collection/generic/CanBuildFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/generic/SortedSetFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SortedSetCanBuildFrom"
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
.field public final synthetic $outer:Lscala/collection/generic/SortedSetFactory;

.field private final ord:Lscala/math/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/math/Ordering<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/generic/SortedSetFactory;Lscala/math/Ordering;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/SortedSetFactory<",
            "TCC;>;",
            "Lscala/math/Ordering<",
            "TA;>;)V"
        }
    .end annotation

    .line 33
    iput-object p2, p0, Lscala/collection/generic/SortedSetFactory$SortedSetCanBuildFrom;->ord:Lscala/math/Ordering;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/generic/SortedSetFactory$SortedSetCanBuildFrom;->$outer:Lscala/collection/generic/SortedSetFactory;

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

    .line 35
    invoke-virtual {p0}, Lscala/collection/generic/SortedSetFactory$SortedSetCanBuildFrom;->scala$collection$generic$SortedSetFactory$SortedSetCanBuildFrom$$$outer()Lscala/collection/generic/SortedSetFactory;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/generic/SortedSetFactory$SortedSetCanBuildFrom;->ord:Lscala/math/Ordering;

    invoke-virtual {v0, v1}, Lscala/collection/generic/SortedSetFactory;->newBuilder(Lscala/math/Ordering;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 33
    check-cast p1, Lscala/collection/SortedSet;

    invoke-virtual {p0, p1}, Lscala/collection/generic/SortedSetFactory$SortedSetCanBuildFrom;->apply(Lscala/collection/SortedSet;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/collection/SortedSet;)Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCC;)",
            "Lscala/collection/mutable/Builder<",
            "TA;TCC;>;"
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lscala/collection/generic/SortedSetFactory$SortedSetCanBuildFrom;->scala$collection$generic$SortedSetFactory$SortedSetCanBuildFrom$$$outer()Lscala/collection/generic/SortedSetFactory;

    move-result-object p1

    iget-object v0, p0, Lscala/collection/generic/SortedSetFactory$SortedSetCanBuildFrom;->ord:Lscala/math/Ordering;

    invoke-virtual {p1, v0}, Lscala/collection/generic/SortedSetFactory;->newBuilder(Lscala/math/Ordering;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$generic$SortedSetFactory$SortedSetCanBuildFrom$$$outer()Lscala/collection/generic/SortedSetFactory;
    .locals 1

    .line 33
    iget-object v0, p0, Lscala/collection/generic/SortedSetFactory$SortedSetCanBuildFrom;->$outer:Lscala/collection/generic/SortedSetFactory;

    return-object v0
.end method
