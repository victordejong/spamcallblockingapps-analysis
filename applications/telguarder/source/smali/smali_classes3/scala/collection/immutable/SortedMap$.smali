.class public final Lscala/collection/immutable/SortedMap$;
.super Lscala/collection/generic/ImmutableSortedMapFactory;
.source "SortedMap.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ImmutableSortedMapFactory<",
        "Lscala/collection/immutable/SortedMap;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/SortedMap$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/SortedMap$;

    invoke-direct {v0}, Lscala/collection/immutable/SortedMap$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lscala/collection/generic/ImmutableSortedMapFactory;-><init>()V

    sput-object p0, Lscala/collection/immutable/SortedMap$;->MODULE$:Lscala/collection/immutable/SortedMap$;

    return-void
.end method


# virtual methods
.method public canBuildFrom(Lscala/math/Ordering;)Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/SortedMap<",
            "**>;",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Lscala/collection/immutable/SortedMap<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 107
    new-instance v0, Lscala/collection/generic/SortedMapFactory$SortedMapCanBuildFrom;

    invoke-direct {v0, p0, p1}, Lscala/collection/generic/SortedMapFactory$SortedMapCanBuildFrom;-><init>(Lscala/collection/generic/SortedMapFactory;Lscala/math/Ordering;)V

    return-object v0
.end method

.method public bridge synthetic empty(Lscala/math/Ordering;)Lscala/collection/SortedMap;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SortedMap$;->empty(Lscala/math/Ordering;)Lscala/collection/immutable/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public empty(Lscala/math/Ordering;)Lscala/collection/immutable/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/immutable/SortedMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 108
    sget-object v0, Lscala/collection/immutable/TreeMap$;->MODULE$:Lscala/collection/immutable/TreeMap$;

    invoke-virtual {v0, p1}, Lscala/collection/immutable/TreeMap$;->empty(Lscala/math/Ordering;)Lscala/collection/immutable/TreeMap;

    move-result-object p1

    return-object p1
.end method
