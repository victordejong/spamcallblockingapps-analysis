.class public final Lscala/collection/mutable/PriorityQueue$;
.super Lscala/collection/generic/OrderedTraversableFactory;
.source "PriorityQueue.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/OrderedTraversableFactory<",
        "Lscala/collection/mutable/PriorityQueue;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/PriorityQueue$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/PriorityQueue$;

    invoke-direct {v0}, Lscala/collection/mutable/PriorityQueue$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 253
    invoke-direct {p0}, Lscala/collection/generic/OrderedTraversableFactory;-><init>()V

    sput-object p0, Lscala/collection/mutable/PriorityQueue$;->MODULE$:Lscala/collection/mutable/PriorityQueue$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 253
    sget-object v0, Lscala/collection/mutable/PriorityQueue$;->MODULE$:Lscala/collection/mutable/PriorityQueue$;

    return-object v0
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
            "Lscala/collection/mutable/PriorityQueue<",
            "*>;TA;",
            "Lscala/collection/mutable/PriorityQueue<",
            "TA;>;>;"
        }
    .end annotation

    .line 255
    new-instance v0, Lscala/collection/generic/OrderedTraversableFactory$GenericCanBuildFrom;

    invoke-direct {v0, p0, p1}, Lscala/collection/generic/OrderedTraversableFactory$GenericCanBuildFrom;-><init>(Lscala/collection/generic/OrderedTraversableFactory;Lscala/math/Ordering;)V

    return-object v0
.end method

.method public bridge synthetic newBuilder(Lscala/math/Ordering;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 253
    invoke-virtual {p0, p1}, Lscala/collection/mutable/PriorityQueue$;->newBuilder(Lscala/math/Ordering;)Lscala/collection/mutable/PriorityQueue;

    move-result-object p1

    return-object p1
.end method

.method public newBuilder(Lscala/math/Ordering;)Lscala/collection/mutable/PriorityQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/mutable/PriorityQueue<",
            "TA;>;"
        }
    .end annotation

    .line 254
    new-instance v0, Lscala/collection/mutable/PriorityQueue;

    invoke-direct {v0, p1}, Lscala/collection/mutable/PriorityQueue;-><init>(Lscala/math/Ordering;)V

    return-object v0
.end method
