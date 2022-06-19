.class public final Lscala/collection/immutable/SortedSet$;
.super Lscala/collection/generic/ImmutableSortedSetFactory;
.source "SortedSet.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ImmutableSortedSetFactory<",
        "Lscala/collection/immutable/SortedSet;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/SortedSet$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/SortedSet$;

    invoke-direct {v0}, Lscala/collection/immutable/SortedSet$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lscala/collection/generic/ImmutableSortedSetFactory;-><init>()V

    sput-object p0, Lscala/collection/immutable/SortedSet$;->MODULE$:Lscala/collection/immutable/SortedSet$;

    return-void
.end method


# virtual methods
.method public canBuildFrom(Lscala/math/Ordering;)Lscala/collection/generic/CanBuildFrom;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/SortedSet<",
            "*>;TA;",
            "Lscala/collection/immutable/SortedSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedSet$;->newCanBuildFrom(Lscala/math/Ordering;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic empty(Lscala/math/Ordering;)Lscala/collection/SortedSet;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedSet$;->empty(Lscala/math/Ordering;)Lscala/collection/immutable/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public empty(Lscala/math/Ordering;)Lscala/collection/immutable/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/immutable/SortedSet<",
            "TA;>;"
        }
    .end annotation

    .line 40
    sget-object v0, Lscala/collection/immutable/TreeSet$;->MODULE$:Lscala/collection/immutable/TreeSet$;

    invoke-virtual {v0, p1}, Lscala/collection/immutable/TreeSet$;->empty(Lscala/math/Ordering;)Lscala/collection/immutable/TreeSet;

    move-result-object p1

    return-object p1
.end method

.method public newCanBuildFrom(Lscala/math/Ordering;)Lscala/collection/generic/CanBuildFrom;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/SortedSet<",
            "*>;TA;",
            "Lscala/collection/immutable/SortedSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 42
    invoke-super {p0, p1}, Lscala/collection/generic/SortedSetFactory;->newCanBuildFrom(Lscala/math/Ordering;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p1

    return-object p1
.end method
