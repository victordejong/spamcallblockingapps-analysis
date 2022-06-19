.class public final Lscala/collection/mutable/TreeSet$;
.super Lscala/collection/generic/MutableSortedSetFactory;
.source "TreeSet.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/MutableSortedSetFactory<",
        "Lscala/collection/mutable/TreeSet;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/TreeSet$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/TreeSet$;

    invoke-direct {v0}, Lscala/collection/mutable/TreeSet$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lscala/collection/generic/MutableSortedSetFactory;-><init>()V

    sput-object p0, Lscala/collection/mutable/TreeSet$;->MODULE$:Lscala/collection/mutable/TreeSet$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 26
    sget-object v0, Lscala/collection/mutable/TreeSet$;->MODULE$:Lscala/collection/mutable/TreeSet$;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic empty(Lscala/math/Ordering;)Lscala/collection/SortedSet;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lscala/collection/mutable/TreeSet$;->empty(Lscala/math/Ordering;)Lscala/collection/mutable/TreeSet;

    move-result-object p1

    return-object p1
.end method

.method public empty(Lscala/math/Ordering;)Lscala/collection/mutable/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;"
        }
    .end annotation

    .line 30
    new-instance v0, Lscala/collection/mutable/TreeSet;

    invoke-direct {v0, p1}, Lscala/collection/mutable/TreeSet;-><init>(Lscala/math/Ordering;)V

    return-object v0
.end method
