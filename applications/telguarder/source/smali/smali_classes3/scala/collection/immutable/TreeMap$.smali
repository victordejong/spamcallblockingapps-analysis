.class public final Lscala/collection/immutable/TreeMap$;
.super Lscala/collection/generic/ImmutableSortedMapFactory;
.source "TreeMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ImmutableSortedMapFactory<",
        "Lscala/collection/immutable/TreeMap;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/TreeMap$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/TreeMap$;

    invoke-direct {v0}, Lscala/collection/immutable/TreeMap$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lscala/collection/generic/ImmutableSortedMapFactory;-><init>()V

    sput-object p0, Lscala/collection/immutable/TreeMap$;->MODULE$:Lscala/collection/immutable/TreeMap$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 21
    sget-object v0, Lscala/collection/immutable/TreeMap$;->MODULE$:Lscala/collection/immutable/TreeMap$;

    return-object v0
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
            "Lscala/collection/immutable/TreeMap<",
            "**>;",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Lscala/collection/immutable/TreeMap<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Lscala/collection/generic/SortedMapFactory$SortedMapCanBuildFrom;

    invoke-direct {v0, p0, p1}, Lscala/collection/generic/SortedMapFactory$SortedMapCanBuildFrom;-><init>(Lscala/collection/generic/SortedMapFactory;Lscala/math/Ordering;)V

    return-object v0
.end method

.method public bridge synthetic empty(Lscala/math/Ordering;)Lscala/collection/SortedMap;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lscala/collection/immutable/TreeMap$;->empty(Lscala/math/Ordering;)Lscala/collection/immutable/TreeMap;

    move-result-object p1

    return-object p1
.end method

.method public empty(Lscala/math/Ordering;)Lscala/collection/immutable/TreeMap;
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
            "Lscala/collection/immutable/TreeMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 22
    new-instance v0, Lscala/collection/immutable/TreeMap;

    invoke-direct {v0, p1}, Lscala/collection/immutable/TreeMap;-><init>(Lscala/math/Ordering;)V

    return-object v0
.end method
