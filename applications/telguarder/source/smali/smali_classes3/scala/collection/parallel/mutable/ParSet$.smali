.class public final Lscala/collection/parallel/mutable/ParSet$;
.super Lscala/collection/generic/ParSetFactory;
.source "ParSet.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ParSetFactory<",
        "Lscala/collection/parallel/mutable/ParSet;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/parallel/mutable/ParSet$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/mutable/ParSet$;

    invoke-direct {v0}, Lscala/collection/parallel/mutable/ParSet$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lscala/collection/generic/ParSetFactory;-><init>()V

    sput-object p0, Lscala/collection/parallel/mutable/ParSet$;->MODULE$:Lscala/collection/parallel/mutable/ParSet$;

    return-void
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
            "Lscala/collection/parallel/mutable/ParSet<",
            "*>;TT;",
            "Lscala/collection/parallel/mutable/ParSet<",
            "TT;>;>;"
        }
    .end annotation

    .line 38
    new-instance v0, Lscala/collection/generic/ParSetFactory$GenericCanCombineFrom;

    invoke-direct {v0, p0}, Lscala/collection/generic/ParSetFactory$GenericCanCombineFrom;-><init>(Lscala/collection/generic/ParSetFactory;)V

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lscala/collection/mutable/Builder;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParSet$;->newBuilder()Lscala/collection/parallel/Combiner;

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
            "Lscala/collection/parallel/mutable/ParSet<",
            "TT;>;>;"
        }
    .end annotation

    .line 40
    sget-object v0, Lscala/collection/parallel/mutable/ParHashSet$;->MODULE$:Lscala/collection/parallel/mutable/ParHashSet$;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParHashSet$;->newBuilder()Lscala/collection/parallel/Combiner;

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
            "Lscala/collection/parallel/mutable/ParSet<",
            "TT;>;>;"
        }
    .end annotation

    .line 42
    sget-object v0, Lscala/collection/parallel/mutable/ParHashSet$;->MODULE$:Lscala/collection/parallel/mutable/ParHashSet$;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParHashSet$;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method
