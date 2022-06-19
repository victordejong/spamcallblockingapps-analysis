.class public final Lscala/collection/immutable/LongMap$;
.super Ljava/lang/Object;
.source "LongMap.scala"


# static fields
.field public static final MODULE$:Lscala/collection/immutable/LongMap$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/LongMap$;

    invoke-direct {v0}, Lscala/collection/immutable/LongMap$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/LongMap$;->MODULE$:Lscala/collection/immutable/LongMap$;

    return-void
.end method


# virtual methods
.method public apply(Lscala/collection/Seq;)Lscala/collection/immutable/LongMap;
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
            "Lscala/collection/immutable/LongMap<",
            "TT;>;"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap$;->empty()Lscala/collection/immutable/LongMap;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/LongMap$$anonfun$apply$1;

    invoke-direct {v1}, Lscala/collection/immutable/LongMap$$anonfun$apply$1;-><init>()V

    invoke-interface {p1, v0, v1}, Lscala/collection/Seq;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/LongMap;

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
    new-instance v0, Lscala/collection/immutable/LongMap$$anon$1;

    invoke-direct {v0}, Lscala/collection/immutable/LongMap$$anon$1;-><init>()V

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/LongMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;"
        }
    .end annotation

    .line 54
    sget-object v0, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    return-object v0
.end method

.method public singleton(JLjava/lang/Object;)Lscala/collection/immutable/LongMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(JTT;)",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;"
        }
    .end annotation

    .line 55
    new-instance v0, Lscala/collection/immutable/LongMap$Tip;

    invoke-direct {v0, p1, p2, p3}, Lscala/collection/immutable/LongMap$Tip;-><init>(JLjava/lang/Object;)V

    return-object v0
.end method
