.class public final Lscala/collection/parallel/ParMap$;
.super Lscala/collection/generic/ParMapFactory;
.source "ParMap.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ParMapFactory<",
        "Lscala/collection/parallel/ParMap;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/parallel/ParMap$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/ParMap$;

    invoke-direct {v0}, Lscala/collection/parallel/ParMap$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lscala/collection/generic/ParMapFactory;-><init>()V

    sput-object p0, Lscala/collection/parallel/ParMap$;->MODULE$:Lscala/collection/parallel/ParMap$;

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
            "Lscala/collection/parallel/ParMap<",
            "**>;",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/collection/parallel/ParMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lscala/collection/generic/ParMapFactory$CanCombineFromMap;

    invoke-direct {v0, p0}, Lscala/collection/generic/ParMapFactory$CanCombineFromMap;-><init>(Lscala/collection/generic/ParMapFactory;)V

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/GenMap;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lscala/collection/parallel/ParMap$;->empty()Lscala/collection/parallel/ParMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/parallel/ParMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/ParMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 54
    new-instance v0, Lscala/collection/parallel/mutable/ParHashMap;

    invoke-direct {v0}, Lscala/collection/parallel/mutable/ParHashMap;-><init>()V

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
            "Lscala/collection/parallel/ParMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 56
    sget-object v0, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->MODULE$:Lscala/collection/parallel/mutable/ParHashMapCombiner$;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->apply()Lscala/collection/parallel/mutable/ParHashMapCombiner;

    move-result-object v0

    return-object v0
.end method
