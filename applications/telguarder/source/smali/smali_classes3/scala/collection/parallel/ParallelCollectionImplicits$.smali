.class public final Lscala/collection/parallel/ParallelCollectionImplicits$;
.super Ljava/lang/Object;
.source "package.scala"


# static fields
.field public static final MODULE$:Lscala/collection/parallel/ParallelCollectionImplicits$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/ParallelCollectionImplicits$;

    invoke-direct {v0}, Lscala/collection/parallel/ParallelCollectionImplicits$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/parallel/ParallelCollectionImplicits$;->MODULE$:Lscala/collection/parallel/ParallelCollectionImplicits$;

    return-void
.end method


# virtual methods
.method public factory2ops(Lscala/collection/generic/CanBuildFrom;)Lscala/collection/parallel/FactoryOps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<From:",
            "Ljava/lang/Object;",
            "Elem:",
            "Ljava/lang/Object;",
            "To:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "TFrom;TElem;TTo;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 75
    new-instance v0, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$4;

    invoke-direct {v0, p1}, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$4;-><init>(Lscala/collection/generic/CanBuildFrom;)V

    return-object v0
.end method

.method public throwable2ops(Ljava/lang/Throwable;)Lscala/collection/parallel/ThrowableOps;
    .locals 1

    .line 92
    new-instance v0, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$1;

    invoke-direct {v0, p1}, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$1;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public traversable2ops(Lscala/collection/GenTraversableOnce;)Lscala/collection/parallel/TraversableOps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 82
    new-instance v0, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$2;

    invoke-direct {v0, p1}, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$2;-><init>(Lscala/collection/GenTraversableOnce;)V

    return-object v0
.end method
