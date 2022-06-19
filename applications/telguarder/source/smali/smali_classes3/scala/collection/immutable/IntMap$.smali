.class public final Lscala/collection/immutable/IntMap$;
.super Ljava/lang/Object;
.source "IntMap.scala"


# static fields
.field public static final MODULE$:Lscala/collection/immutable/IntMap$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/IntMap$;

    invoke-direct {v0}, Lscala/collection/immutable/IntMap$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/IntMap$;->MODULE$:Lscala/collection/immutable/IntMap$;

    return-void
.end method


# virtual methods
.method public apply(Lscala/collection/Seq;)Lscala/collection/immutable/IntMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TT;>;>;)",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lscala/collection/immutable/IntMap$;->empty()Lscala/collection/immutable/IntMap;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/IntMap$$anonfun$apply$1;

    invoke-direct {v1}, Lscala/collection/immutable/IntMap$$anonfun$apply$1;-><init>()V

    invoke-interface {p1, v0, v1}, Lscala/collection/Seq;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/IntMap;

    return-object p1
.end method

.method public canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 49
    new-instance v0, Lscala/collection/immutable/IntMap$$anon$1;

    invoke-direct {v0}, Lscala/collection/immutable/IntMap$$anon$1;-><init>()V

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/IntMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;"
        }
    .end annotation

    .line 54
    sget-object v0, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    return-object v0
.end method

.method public singleton(ILjava/lang/Object;)Lscala/collection/immutable/IntMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;"
        }
    .end annotation

    .line 56
    new-instance v0, Lscala/collection/immutable/IntMap$Tip;

    invoke-direct {v0, p1, p2}, Lscala/collection/immutable/IntMap$Tip;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method
