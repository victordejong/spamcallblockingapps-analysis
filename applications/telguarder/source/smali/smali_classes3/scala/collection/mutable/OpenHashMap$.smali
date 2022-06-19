.class public final Lscala/collection/mutable/OpenHashMap$;
.super Ljava/lang/Object;
.source "OpenHashMap.scala"


# static fields
.field public static final MODULE$:Lscala/collection/mutable/OpenHashMap$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/OpenHashMap$;

    invoke-direct {v0}, Lscala/collection/mutable/OpenHashMap$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/OpenHashMap$;->MODULE$:Lscala/collection/mutable/OpenHashMap$;

    return-void
.end method


# virtual methods
.method public apply(Lscala/collection/Seq;)Lscala/collection/mutable/OpenHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;)",
            "Lscala/collection/mutable/OpenHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 21
    new-instance v0, Lscala/collection/mutable/OpenHashMap;

    invoke-direct {v0}, Lscala/collection/mutable/OpenHashMap;-><init>()V

    invoke-virtual {v0, p1}, Lscala/collection/mutable/OpenHashMap;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/OpenHashMap;

    return-object p1
.end method

.method public empty()Lscala/collection/mutable/OpenHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/OpenHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 22
    new-instance v0, Lscala/collection/mutable/OpenHashMap;

    invoke-direct {v0}, Lscala/collection/mutable/OpenHashMap;-><init>()V

    return-object v0
.end method

.method public nextPositivePowerOfTwo(I)I
    .locals 1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    shl-int p1, v0, p1

    return p1
.end method
