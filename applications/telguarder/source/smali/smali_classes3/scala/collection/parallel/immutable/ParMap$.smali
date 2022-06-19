.class public final Lscala/collection/parallel/immutable/ParMap$;
.super Lscala/collection/generic/ParMapFactory;
.source "ParMap.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ParMapFactory<",
        "Lscala/collection/parallel/immutable/ParMap;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/parallel/immutable/ParMap$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/immutable/ParMap$;

    invoke-direct {v0}, Lscala/collection/parallel/immutable/ParMap$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lscala/collection/generic/ParMapFactory;-><init>()V

    sput-object p0, Lscala/collection/parallel/immutable/ParMap$;->MODULE$:Lscala/collection/parallel/immutable/ParMap$;

    return-void
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
            "Lscala/collection/parallel/immutable/ParMap<",
            "**>;",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/collection/parallel/immutable/ParMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 80
    new-instance v0, Lscala/collection/generic/ParMapFactory$CanCombineFromMap;

    invoke-direct {v0, p0}, Lscala/collection/generic/ParMapFactory$CanCombineFromMap;-><init>(Lscala/collection/generic/ParMapFactory;)V

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/GenMap;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParMap$;->empty()Lscala/collection/parallel/immutable/ParMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/parallel/immutable/ParMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/immutable/ParMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 76
    new-instance v0, Lscala/collection/parallel/immutable/ParHashMap;

    invoke-direct {v0}, Lscala/collection/parallel/immutable/ParHashMap;-><init>()V

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
            "Lscala/collection/parallel/immutable/ParMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 78
    sget-object v0, Lscala/collection/parallel/immutable/HashMapCombiner$;->MODULE$:Lscala/collection/parallel/immutable/HashMapCombiner$;

    invoke-virtual {v0}, Lscala/collection/parallel/immutable/HashMapCombiner$;->apply()Lscala/collection/parallel/immutable/HashMapCombiner;

    move-result-object v0

    return-object v0
.end method
