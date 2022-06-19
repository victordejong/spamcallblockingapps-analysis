.class public final Lscala/collection/immutable/TreeSet$;
.super Lscala/collection/generic/ImmutableSortedSetFactory;
.source "TreeSet.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ImmutableSortedSetFactory<",
        "Lscala/collection/immutable/TreeSet;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/TreeSet$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/TreeSet$;

    invoke-direct {v0}, Lscala/collection/immutable/TreeSet$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lscala/collection/generic/ImmutableSortedSetFactory;-><init>()V

    sput-object p0, Lscala/collection/immutable/TreeSet$;->MODULE$:Lscala/collection/immutable/TreeSet$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 23
    sget-object v0, Lscala/collection/immutable/TreeSet$;->MODULE$:Lscala/collection/immutable/TreeSet$;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic empty(Lscala/math/Ordering;)Lscala/collection/SortedSet;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/TreeSet$;->empty(Lscala/math/Ordering;)Lscala/collection/immutable/TreeSet;

    move-result-object p1

    return-object p1
.end method

.method public empty(Lscala/math/Ordering;)Lscala/collection/immutable/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/immutable/TreeSet<",
            "TA;>;"
        }
    .end annotation

    .line 30
    new-instance v0, Lscala/collection/immutable/TreeSet;

    invoke-direct {v0, p1}, Lscala/collection/immutable/TreeSet;-><init>(Lscala/math/Ordering;)V

    return-object v0
.end method

.method public implicitBuilder(Lscala/math/Ordering;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/mutable/Builder<",
            "TA;",
            "Lscala/collection/immutable/TreeSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1}, Lscala/collection/immutable/TreeSet$;->newBuilder(Lscala/math/Ordering;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public newBuilder(Lscala/math/Ordering;)Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/mutable/Builder<",
            "TA;",
            "Lscala/collection/immutable/TreeSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 26
    new-instance v0, Lscala/collection/mutable/SetBuilder;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/TreeSet$;->empty(Lscala/math/Ordering;)Lscala/collection/immutable/TreeSet;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/collection/mutable/SetBuilder;-><init>(Lscala/collection/Set;)V

    return-object v0
.end method
