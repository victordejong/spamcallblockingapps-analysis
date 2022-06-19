.class public final Lscala/collection/mutable/FlatHashTable$;
.super Ljava/lang/Object;
.source "FlatHashTable.scala"


# static fields
.field public static final MODULE$:Lscala/collection/mutable/FlatHashTable$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/FlatHashTable$;

    invoke-direct {v0}, Lscala/collection/mutable/FlatHashTable$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/FlatHashTable$;->MODULE$:Lscala/collection/mutable/FlatHashTable$;

    return-void
.end method


# virtual methods
.method public defaultLoadFactor()I
    .locals 1

    const/16 v0, 0x1c2

    return v0
.end method

.method public final loadFactorDenum()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public newThreshold(II)I
    .locals 2

    .line 399
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    int-to-long v0, p2

    int-to-long p1, p1

    mul-long v0, v0, p1

    const/16 p1, 0x3e8

    int-to-long p1, p1

    .line 401
    div-long/2addr v0, p1

    long-to-int p1, v0

    return p1

    .line 400
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Lscala/collection/mutable/StringBuilder;

    invoke-direct {p2}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v0, "assertion failed: "

    invoke-virtual {p2, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p2

    const-string v0, "loadFactor too large; must be < 0.5"

    invoke-virtual {p2, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final seedGenerator()Ljava/lang/ThreadLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal<",
            "Lscala/util/Random;",
            ">;"
        }
    .end annotation

    .line 382
    new-instance v0, Lscala/collection/mutable/FlatHashTable$$anon$2;

    invoke-direct {v0}, Lscala/collection/mutable/FlatHashTable$$anon$2;-><init>()V

    return-object v0
.end method

.method public sizeForThreshold(II)I
    .locals 5

    .line 396
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    int-to-long v1, p1

    invoke-virtual {p0}, Lscala/collection/mutable/FlatHashTable$;->loadFactorDenum()I

    move-result p1

    int-to-long v3, p1

    mul-long v1, v1, v3

    int-to-long p1, p2

    div-long/2addr v1, p1

    long-to-int p1, v1

    const/16 p2, 0x20

    invoke-virtual {v0, p2, p1}, Lscala/math/package$;->max(II)I

    move-result p1

    return p1
.end method
