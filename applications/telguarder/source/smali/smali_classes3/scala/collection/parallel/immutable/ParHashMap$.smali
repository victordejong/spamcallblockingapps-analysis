.class public final Lscala/collection/parallel/immutable/ParHashMap$;
.super Lscala/collection/generic/ParMapFactory;
.source "ParHashMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ParMapFactory<",
        "Lscala/collection/parallel/immutable/ParHashMap;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/parallel/immutable/ParHashMap$;


# instance fields
.field private totalcombines:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/immutable/ParHashMap$;

    invoke-direct {v0}, Lscala/collection/parallel/immutable/ParHashMap$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 141
    invoke-direct {p0}, Lscala/collection/generic/ParMapFactory;-><init>()V

    sput-object p0, Lscala/collection/parallel/immutable/ParHashMap$;->MODULE$:Lscala/collection/parallel/immutable/ParHashMap$;

    .line 152
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lscala/collection/parallel/immutable/ParHashMap$;->totalcombines:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 141
    sget-object v0, Lscala/collection/parallel/immutable/ParHashMap$;->MODULE$:Lscala/collection/parallel/immutable/ParHashMap$;

    return-object v0
.end method


# virtual methods
.method public canBuildFrom()Lscala/collection/generic/CanCombineFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanCombineFrom<",
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "**>;",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 147
    new-instance v0, Lscala/collection/generic/ParMapFactory$CanCombineFromMap;

    invoke-direct {v0, p0}, Lscala/collection/generic/ParMapFactory$CanCombineFromMap;-><init>(Lscala/collection/generic/ParMapFactory;)V

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/GenMap;
    .locals 1

    .line 141
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashMap$;->empty()Lscala/collection/parallel/immutable/ParHashMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/parallel/immutable/ParHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 142
    new-instance v0, Lscala/collection/parallel/immutable/ParHashMap;

    invoke-direct {v0}, Lscala/collection/parallel/immutable/ParHashMap;-><init>()V

    return-object v0
.end method

.method public fromTrie(Lscala/collection/immutable/HashMap;)Lscala/collection/parallel/immutable/ParHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/HashMap<",
            "TK;TV;>;)",
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 150
    new-instance v0, Lscala/collection/parallel/immutable/ParHashMap;

    invoke-direct {v0, p1}, Lscala/collection/parallel/immutable/ParHashMap;-><init>(Lscala/collection/immutable/HashMap;)V

    return-object v0
.end method

.method public newCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 144
    sget-object v0, Lscala/collection/parallel/immutable/HashMapCombiner$;->MODULE$:Lscala/collection/parallel/immutable/HashMapCombiner$;

    invoke-virtual {v0}, Lscala/collection/parallel/immutable/HashMapCombiner$;->apply()Lscala/collection/parallel/immutable/HashMapCombiner;

    move-result-object v0

    return-object v0
.end method

.method public totalcombines()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 152
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashMap$;->totalcombines:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public totalcombines_$eq(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lscala/collection/parallel/immutable/ParHashMap$;->totalcombines:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
