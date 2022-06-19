.class public final Lscala/collection/parallel/mutable/ParTrieMap$;
.super Lscala/collection/generic/ParMapFactory;
.source "ParTrieMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ParMapFactory<",
        "Lscala/collection/parallel/mutable/ParTrieMap;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/parallel/mutable/ParTrieMap$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/mutable/ParTrieMap$;

    invoke-direct {v0}, Lscala/collection/parallel/mutable/ParTrieMap$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Lscala/collection/generic/ParMapFactory;-><init>()V

    sput-object p0, Lscala/collection/parallel/mutable/ParTrieMap$;->MODULE$:Lscala/collection/parallel/mutable/ParTrieMap$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 171
    sget-object v0, Lscala/collection/parallel/mutable/ParTrieMap$;->MODULE$:Lscala/collection/parallel/mutable/ParTrieMap$;

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
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "**>;",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 175
    new-instance v0, Lscala/collection/generic/ParMapFactory$CanCombineFromMap;

    invoke-direct {v0, p0}, Lscala/collection/generic/ParMapFactory$CanCombineFromMap;-><init>(Lscala/collection/generic/ParMapFactory;)V

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/GenMap;
    .locals 1

    .line 171
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap$;->empty()Lscala/collection/parallel/mutable/ParTrieMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/parallel/mutable/ParTrieMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 172
    new-instance v0, Lscala/collection/parallel/mutable/ParTrieMap;

    invoke-direct {v0}, Lscala/collection/parallel/mutable/ParTrieMap;-><init>()V

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
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 173
    new-instance v0, Lscala/collection/parallel/mutable/ParTrieMap;

    invoke-direct {v0}, Lscala/collection/parallel/mutable/ParTrieMap;-><init>()V

    return-object v0
.end method
