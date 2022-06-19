.class public final Lscala/collection/mutable/SortedSet$;
.super Lscala/collection/generic/MutableSortedSetFactory;
.source "SortedSet.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/MutableSortedSetFactory<",
        "Lscala/collection/mutable/SortedSet;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/SortedSet$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/SortedSet$;

    invoke-direct {v0}, Lscala/collection/mutable/SortedSet$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lscala/collection/generic/MutableSortedSetFactory;-><init>()V

    sput-object p0, Lscala/collection/mutable/SortedSet$;->MODULE$:Lscala/collection/mutable/SortedSet$;

    return-void
.end method


# virtual methods
.method public canBuildFrom(Lscala/math/Ordering;)Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/SortedSet<",
            "*>;TA;",
            "Lscala/collection/mutable/SortedSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lscala/collection/generic/SortedSetFactory$SortedSetCanBuildFrom;

    invoke-direct {v0, p0, p1}, Lscala/collection/generic/SortedSetFactory$SortedSetCanBuildFrom;-><init>(Lscala/collection/generic/SortedSetFactory;Lscala/math/Ordering;)V

    return-object v0
.end method

.method public bridge synthetic empty(Lscala/math/Ordering;)Lscala/collection/SortedSet;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/mutable/SortedSet$;->empty(Lscala/math/Ordering;)Lscala/collection/mutable/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public empty(Lscala/math/Ordering;)Lscala/collection/mutable/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/mutable/SortedSet<",
            "TA;>;"
        }
    .end annotation

    .line 48
    sget-object v0, Lscala/collection/mutable/TreeSet$;->MODULE$:Lscala/collection/mutable/TreeSet$;

    invoke-virtual {v0, p1}, Lscala/collection/mutable/TreeSet$;->empty(Lscala/math/Ordering;)Lscala/collection/mutable/TreeSet;

    move-result-object p1

    return-object p1
.end method
