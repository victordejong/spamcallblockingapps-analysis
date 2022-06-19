.class public final Lscala/collection/parallel/mutable/ParHashSet$;
.super Lscala/collection/generic/ParSetFactory;
.source "ParHashSet.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ParSetFactory<",
        "Lscala/collection/parallel/mutable/ParHashSet;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/parallel/mutable/ParHashSet$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/mutable/ParHashSet$;

    invoke-direct {v0}, Lscala/collection/parallel/mutable/ParHashSet$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Lscala/collection/generic/ParSetFactory;-><init>()V

    sput-object p0, Lscala/collection/parallel/mutable/ParHashSet$;->MODULE$:Lscala/collection/parallel/mutable/ParHashSet$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 111
    sget-object v0, Lscala/collection/parallel/mutable/ParHashSet$;->MODULE$:Lscala/collection/parallel/mutable/ParHashSet$;

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
            "Lscala/collection/parallel/mutable/ParHashSet<",
            "*>;TT;",
            "Lscala/collection/parallel/mutable/ParHashSet<",
            "TT;>;>;"
        }
    .end annotation

    .line 112
    new-instance v0, Lscala/collection/generic/ParSetFactory$GenericCanCombineFrom;

    invoke-direct {v0, p0}, Lscala/collection/generic/ParSetFactory$GenericCanCombineFrom;-><init>(Lscala/collection/generic/ParSetFactory;)V

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lscala/collection/mutable/Builder;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSet$;->newBuilder()Lscala/collection/parallel/Combiner;

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
            "Lscala/collection/parallel/mutable/ParHashSet<",
            "TT;>;>;"
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSet$;->newCombiner()Lscala/collection/parallel/Combiner;

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
            "Lscala/collection/parallel/mutable/ParHashSet<",
            "TT;>;>;"
        }
    .end annotation

    .line 116
    sget-object v0, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->MODULE$:Lscala/collection/parallel/mutable/ParHashSetCombiner$;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->apply()Lscala/collection/parallel/mutable/ParHashSetCombiner;

    move-result-object v0

    return-object v0
.end method
