.class public final Lscala/collection/SortedSet$;
.super Lscala/collection/generic/SortedSetFactory;
.source "SortedSet.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/SortedSetFactory<",
        "Lscala/collection/SortedSet;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/SortedSet$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/SortedSet$;

    invoke-direct {v0}, Lscala/collection/SortedSet$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lscala/collection/generic/SortedSetFactory;-><init>()V

    sput-object p0, Lscala/collection/SortedSet$;->MODULE$:Lscala/collection/SortedSet$;

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
            "Lscala/collection/SortedSet<",
            "*>;TA;",
            "Lscala/collection/SortedSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lscala/collection/SortedSet$;->newCanBuildFrom(Lscala/math/Ordering;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic empty(Lscala/math/Ordering;)Lscala/collection/SortedSet;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/SortedSet$;->empty(Lscala/math/Ordering;)Lscala/collection/immutable/SortedSet;

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

    .line 30
    sget-object v0, Lscala/collection/immutable/SortedSet$;->MODULE$:Lscala/collection/immutable/SortedSet$;

    invoke-virtual {v0, p1}, Lscala/collection/immutable/SortedSet$;->empty(Lscala/math/Ordering;)Lscala/collection/immutable/SortedSet;

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
            "Lscala/collection/SortedSet<",
            "*>;TA;",
            "Lscala/collection/SortedSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 33
    invoke-super {p0, p1}, Lscala/collection/generic/SortedSetFactory;->newCanBuildFrom(Lscala/math/Ordering;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p1

    return-object p1
.end method
