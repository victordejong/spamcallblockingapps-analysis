.class public final Lscala/collection/parallel/immutable/ParSet$;
.super Lscala/collection/generic/ParSetFactory;
.source "ParSet.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ParSetFactory<",
        "Lscala/collection/parallel/immutable/ParSet;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/parallel/immutable/ParSet$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/immutable/ParSet$;

    invoke-direct {v0}, Lscala/collection/parallel/immutable/ParSet$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lscala/collection/generic/ParSetFactory;-><init>()V

    sput-object p0, Lscala/collection/parallel/immutable/ParSet$;->MODULE$:Lscala/collection/parallel/immutable/ParSet$;

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
            "Lscala/collection/parallel/immutable/ParSet<",
            "*>;TT;",
            "Lscala/collection/parallel/immutable/ParSet<",
            "TT;>;>;"
        }
    .end annotation

    .line 47
    new-instance v0, Lscala/collection/generic/ParSetFactory$GenericCanCombineFrom;

    invoke-direct {v0, p0}, Lscala/collection/generic/ParSetFactory$GenericCanCombineFrom;-><init>(Lscala/collection/generic/ParSetFactory;)V

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
            "Lscala/collection/parallel/immutable/ParSet<",
            "TT;>;>;"
        }
    .end annotation

    .line 45
    sget-object v0, Lscala/collection/parallel/immutable/HashSetCombiner$;->MODULE$:Lscala/collection/parallel/immutable/HashSetCombiner$;

    invoke-virtual {v0}, Lscala/collection/parallel/immutable/HashSetCombiner$;->apply()Lscala/collection/parallel/immutable/HashSetCombiner;

    move-result-object v0

    return-object v0
.end method
