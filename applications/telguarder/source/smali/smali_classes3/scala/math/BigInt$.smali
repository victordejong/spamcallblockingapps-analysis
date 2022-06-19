.class public final Lscala/math/BigInt$;
.super Ljava/lang/Object;
.source "BigInt.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/math/BigInt$;


# instance fields
.field private final cache:[Lscala/math/BigInt;

.field private final maxCached:I

.field private final minCached:I

.field private final scala$math$BigInt$$minusOne:Ljava/math/BigInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/BigInt$;

    invoke-direct {v0}, Lscala/math/BigInt$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/BigInt$;->MODULE$:Lscala/math/BigInt$;

    const/16 v0, -0x400

    .line 22
    iput v0, p0, Lscala/math/BigInt$;->minCached:I

    const/16 v0, 0x400

    .line 23
    iput v0, p0, Lscala/math/BigInt$;->maxCached:I

    .line 24
    invoke-direct {p0}, Lscala/math/BigInt$;->maxCached()I

    move-result v0

    invoke-direct {p0}, Lscala/math/BigInt$;->minCached()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lscala/math/BigInt;

    iput-object v0, p0, Lscala/math/BigInt$;->cache:[Lscala/math/BigInt;

    const-wide/16 v0, -0x1

    .line 25
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lscala/math/BigInt$;->scala$math$BigInt$$minusOne:Ljava/math/BigInteger;

    return-void
.end method

.method private cache()[Lscala/math/BigInt;
    .locals 1

    .line 24
    iget-object v0, p0, Lscala/math/BigInt$;->cache:[Lscala/math/BigInt;

    return-object v0
.end method

.method private maxCached()I
    .locals 1

    .line 23
    iget v0, p0, Lscala/math/BigInt$;->maxCached:I

    return v0
.end method

.method private minCached()I
    .locals 1

    .line 22
    iget v0, p0, Lscala/math/BigInt$;->minCached:I

    return v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 20
    sget-object v0, Lscala/math/BigInt$;->MODULE$:Lscala/math/BigInt$;

    return-object v0
.end method


# virtual methods
.method public apply(I)Lscala/math/BigInt;
    .locals 4

    .line 34
    invoke-direct {p0}, Lscala/math/BigInt$;->minCached()I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-direct {p0}, Lscala/math/BigInt$;->maxCached()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 35
    invoke-direct {p0}, Lscala/math/BigInt$;->minCached()I

    move-result v0

    sub-int v0, p1, v0

    .line 36
    invoke-direct {p0}, Lscala/math/BigInt$;->cache()[Lscala/math/BigInt;

    move-result-object v1

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 37
    new-instance v1, Lscala/math/BigInt;

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v1, p1}, Lscala/math/BigInt;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p0}, Lscala/math/BigInt$;->cache()[Lscala/math/BigInt;

    move-result-object p1

    aput-object v1, p1, v0

    goto :goto_0

    .line 39
    :cond_0
    new-instance v1, Lscala/math/BigInt;

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v1, p1}, Lscala/math/BigInt;-><init>(Ljava/math/BigInteger;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public apply(IILscala/util/Random;)Lscala/math/BigInt;
    .locals 2

    .line 66
    new-instance v0, Lscala/math/BigInt;

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p3}, Lscala/util/Random;->self()Ljava/util/Random;

    move-result-object p3

    invoke-direct {v1, p1, p2, p3}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    invoke-direct {v0, v1}, Lscala/math/BigInt;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public apply(ILscala/util/Random;)Lscala/math/BigInt;
    .locals 2

    .line 72
    new-instance v0, Lscala/math/BigInt;

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p2}, Lscala/util/Random;->self()Ljava/util/Random;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-direct {v0, v1}, Lscala/math/BigInt;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public apply(I[B)Lscala/math/BigInt;
    .locals 2

    .line 60
    new-instance v0, Lscala/math/BigInt;

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, v1}, Lscala/math/BigInt;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public apply(J)Lscala/math/BigInt;
    .locals 3

    .line 48
    invoke-direct {p0}, Lscala/math/BigInt$;->minCached()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    invoke-direct {p0}, Lscala/math/BigInt$;->maxCached()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    long-to-int p2, p1

    invoke-virtual {p0, p2}, Lscala/math/BigInt$;->apply(I)Lscala/math/BigInt;

    move-result-object p1

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Lscala/math/BigInt;

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/math/BigInt;-><init>(Ljava/math/BigInteger;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public apply(Ljava/lang/String;)Lscala/math/BigInt;
    .locals 2

    .line 77
    new-instance v0, Lscala/math/BigInt;

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lscala/math/BigInt;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public apply(Ljava/lang/String;I)Lscala/math/BigInt;
    .locals 2

    .line 83
    new-instance v0, Lscala/math/BigInt;

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lscala/math/BigInt;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public apply(Ljava/math/BigInteger;)Lscala/math/BigInt;
    .locals 1

    .line 88
    new-instance v0, Lscala/math/BigInt;

    invoke-direct {v0, p1}, Lscala/math/BigInt;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public apply([B)Lscala/math/BigInt;
    .locals 2

    .line 55
    new-instance v0, Lscala/math/BigInt;

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v0, v1}, Lscala/math/BigInt;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public int2bigInt(I)Lscala/math/BigInt;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lscala/math/BigInt$;->apply(I)Lscala/math/BigInt;

    move-result-object p1

    return-object p1
.end method

.method public javaBigInteger2bigInt(Ljava/math/BigInteger;)Lscala/math/BigInt;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Lscala/math/BigInt$;->apply(Ljava/math/BigInteger;)Lscala/math/BigInt;

    move-result-object p1

    return-object p1
.end method

.method public long2bigInt(J)Lscala/math/BigInt;
    .locals 0

    .line 101
    invoke-virtual {p0, p1, p2}, Lscala/math/BigInt$;->apply(J)Lscala/math/BigInt;

    move-result-object p1

    return-object p1
.end method

.method public probablePrime(ILscala/util/Random;)Lscala/math/BigInt;
    .locals 1

    .line 93
    new-instance v0, Lscala/math/BigInt;

    invoke-virtual {p2}, Lscala/util/Random;->self()Ljava/util/Random;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/math/BigInteger;->probablePrime(ILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/math/BigInt;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public scala$math$BigInt$$minusOne()Ljava/math/BigInteger;
    .locals 1

    .line 25
    iget-object v0, p0, Lscala/math/BigInt$;->scala$math$BigInt$$minusOne:Ljava/math/BigInteger;

    return-object v0
.end method
