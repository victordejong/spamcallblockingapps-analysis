.class public final Lscala/collection/parallel/ParSet$;
.super Lscala/collection/generic/ParSetFactory;
.source "ParSet.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ParSetFactory<",
        "Lscala/collection/parallel/ParSet;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/parallel/ParSet$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/ParSet$;

    invoke-direct {v0}, Lscala/collection/parallel/ParSet$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lscala/collection/generic/ParSetFactory;-><init>()V

    sput-object p0, Lscala/collection/parallel/ParSet$;->MODULE$:Lscala/collection/parallel/ParSet$;

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
            "Lscala/collection/parallel/ParSet<",
            "*>;TT;",
            "Lscala/collection/parallel/ParSet<",
            "TT;>;>;"
        }
    .end annotation

    .line 43
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
            "Lscala/collection/parallel/ParSet<",
            "TT;>;>;"
        }
    .end annotation

    .line 41
    sget-object v0, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->MODULE$:Lscala/collection/parallel/mutable/ParHashSetCombiner$;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->apply()Lscala/collection/parallel/mutable/ParHashSetCombiner;

    move-result-object v0

    return-object v0
.end method
