.class public final Lscala/collection/parallel/mutable/ParHashMap$;
.super Lscala/collection/generic/ParMapFactory;
.source "ParHashMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ParMapFactory<",
        "Lscala/collection/parallel/mutable/ParHashMap;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/parallel/mutable/ParHashMap$;


# instance fields
.field private iters:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/mutable/ParHashMap$;

    invoke-direct {v0}, Lscala/collection/parallel/mutable/ParHashMap$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 149
    invoke-direct {p0}, Lscala/collection/generic/ParMapFactory;-><init>()V

    sput-object p0, Lscala/collection/parallel/mutable/ParHashMap$;->MODULE$:Lscala/collection/parallel/mutable/ParHashMap$;

    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lscala/collection/parallel/mutable/ParHashMap$;->iters:I

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 149
    sget-object v0, Lscala/collection/parallel/mutable/ParHashMap$;->MODULE$:Lscala/collection/parallel/mutable/ParHashMap$;

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
            "Lscala/collection/parallel/mutable/ParHashMap<",
            "**>;",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/collection/parallel/mutable/ParHashMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 156
    new-instance v0, Lscala/collection/generic/ParMapFactory$CanCombineFromMap;

    invoke-direct {v0, p0}, Lscala/collection/generic/ParMapFactory$CanCombineFromMap;-><init>(Lscala/collection/generic/ParMapFactory;)V

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/GenMap;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap$;->empty()Lscala/collection/parallel/mutable/ParHashMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/parallel/mutable/ParHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/mutable/ParHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 152
    new-instance v0, Lscala/collection/parallel/mutable/ParHashMap;

    invoke-direct {v0}, Lscala/collection/parallel/mutable/ParHashMap;-><init>()V

    return-object v0
.end method

.method public iters()I
    .locals 1

    .line 150
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashMap$;->iters:I

    return v0
.end method

.method public iters_$eq(I)V
    .locals 0

    .line 150
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashMap$;->iters:I

    return-void
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
            "Lscala/collection/parallel/mutable/ParHashMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 154
    sget-object v0, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->MODULE$:Lscala/collection/parallel/mutable/ParHashMapCombiner$;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->apply()Lscala/collection/parallel/mutable/ParHashMapCombiner;

    move-result-object v0

    return-object v0
.end method
