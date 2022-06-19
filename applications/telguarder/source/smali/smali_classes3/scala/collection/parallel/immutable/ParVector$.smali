.class public final Lscala/collection/parallel/immutable/ParVector$;
.super Lscala/collection/generic/ParFactory;
.source "ParVector.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ParFactory<",
        "Lscala/collection/parallel/immutable/ParVector;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/parallel/immutable/ParVector$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/immutable/ParVector$;

    invoke-direct {v0}, Lscala/collection/parallel/immutable/ParVector$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Lscala/collection/generic/ParFactory;-><init>()V

    sput-object p0, Lscala/collection/parallel/immutable/ParVector$;->MODULE$:Lscala/collection/parallel/immutable/ParVector$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 86
    sget-object v0, Lscala/collection/parallel/immutable/ParVector$;->MODULE$:Lscala/collection/parallel/immutable/ParVector$;

    return-object v0
.end method


# virtual methods
.method public canBuildFrom()Lscala/collection/generic/CanCombineFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanCombineFrom<",
            "Lscala/collection/parallel/immutable/ParVector<",
            "*>;TT;",
            "Lscala/collection/parallel/immutable/ParVector<",
            "TT;>;>;"
        }
    .end annotation

    .line 88
    new-instance v0, Lscala/collection/generic/ParFactory$GenericCanCombineFrom;

    invoke-direct {v0, p0}, Lscala/collection/generic/ParFactory$GenericCanCombineFrom;-><init>(Lscala/collection/generic/ParFactory;)V

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lscala/collection/mutable/Builder;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParVector$;->newBuilder()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/Combiner<",
            "TT;",
            "Lscala/collection/parallel/immutable/ParVector<",
            "TT;>;>;"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParVector$;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public newCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/Combiner<",
            "TT;",
            "Lscala/collection/parallel/immutable/ParVector<",
            "TT;>;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Lscala/collection/parallel/immutable/LazyParVectorCombiner;

    invoke-direct {v0}, Lscala/collection/parallel/immutable/LazyParVectorCombiner;-><init>()V

    return-object v0
.end method
