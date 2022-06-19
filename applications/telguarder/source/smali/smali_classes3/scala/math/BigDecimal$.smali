.class public final Lscala/math/BigDecimal$;
.super Ljava/lang/Object;
.source "BigDecimal.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/math/BigDecimal$;


# instance fields
.field private volatile bitmap$0:Z

.field private cache:[Lscala/math/BigDecimal;

.field private final deci2binary:D

.field private final defaultMathContext:Ljava/math/MathContext;

.field private final hashCodeNotComputed:I

.field private final maxCached:I

.field private final maximumHashScale:I

.field private final minCached:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/BigDecimal$;

    invoke-direct {v0}, Lscala/math/BigDecimal$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/BigDecimal$;->MODULE$:Lscala/math/BigDecimal$;

    const/16 v0, -0x200

    .line 29
    iput v0, p0, Lscala/math/BigDecimal$;->minCached:I

    const/16 v0, 0x200

    .line 30
    iput v0, p0, Lscala/math/BigDecimal$;->maxCached:I

    .line 31
    sget-object v0, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    iput-object v0, p0, Lscala/math/BigDecimal$;->defaultMathContext:Ljava/math/MathContext;

    return-void
.end method

.method private cache()[Lscala/math/BigDecimal;
    .locals 1

    .line 34
    iget-boolean v0, p0, Lscala/math/BigDecimal$;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/math/BigDecimal$;->cache:[Lscala/math/BigDecimal;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/math/BigDecimal$;->cache$lzycompute()[Lscala/math/BigDecimal;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private cache$lzycompute()[Lscala/math/BigDecimal;
    .locals 2

    .line 34
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/math/BigDecimal$;->bitmap$0:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/math/BigDecimal$;->maxCached()I

    move-result v0

    invoke-direct {p0}, Lscala/math/BigDecimal$;->minCached()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Lscala/math/BigDecimal;

    iput-object v0, p0, Lscala/math/BigDecimal$;->cache:[Lscala/math/BigDecimal;

    iput-boolean v1, p0, Lscala/math/BigDecimal$;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/math/BigDecimal$;->cache:[Lscala/math/BigDecimal;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final deci2binary()D
    .locals 2

    const-wide v0, 0x400a934f0979a372L    # 3.3219280948873626

    return-wide v0
.end method

.method private final hashCodeNotComputed()I
    .locals 1

    const v0, 0x5d50690f

    return v0
.end method

.method private maxCached()I
    .locals 1

    .line 30
    iget v0, p0, Lscala/math/BigDecimal$;->maxCached:I

    return v0
.end method

.method private final maximumHashScale()I
    .locals 1

    const/16 v0, 0x1346

    return v0
.end method

.method private minCached()I
    .locals 1

    .line 29
    iget v0, p0, Lscala/math/BigDecimal$;->minCached:I

    return v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 25
    sget-object v0, Lscala/math/BigDecimal$;->MODULE$:Lscala/math/BigDecimal$;

    return-object v0
.end method


# virtual methods
.method public apply(D)Lscala/math/BigDecimal;
    .locals 1

    .line 249
    invoke-virtual {p0}, Lscala/math/BigDecimal$;->defaultMathContext()Ljava/math/MathContext;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lscala/math/BigDecimal$;->decimal(DLjava/math/MathContext;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public apply(DLjava/math/MathContext;)Lscala/math/BigDecimal;
    .locals 0

    .line 261
    invoke-virtual {p0, p1, p2, p3}, Lscala/math/BigDecimal$;->decimal(DLjava/math/MathContext;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public apply(F)Lscala/math/BigDecimal;
    .locals 2

    float-to-double v0, p1

    .line 264
    invoke-virtual {p0, v0, v1}, Lscala/math/BigDecimal$;->apply(D)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public apply(FLjava/math/MathContext;)Lscala/math/BigDecimal;
    .locals 2

    float-to-double v0, p1

    .line 267
    invoke-virtual {p0, v0, v1, p2}, Lscala/math/BigDecimal$;->apply(DLjava/math/MathContext;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public apply(I)Lscala/math/BigDecimal;
    .locals 1

    .line 184
    invoke-virtual {p0}, Lscala/math/BigDecimal$;->defaultMathContext()Ljava/math/MathContext;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lscala/math/BigDecimal$;->apply(ILjava/math/MathContext;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public apply(ILjava/math/MathContext;)Lscala/math/BigDecimal;
    .locals 4

    .line 194
    invoke-virtual {p0}, Lscala/math/BigDecimal$;->defaultMathContext()Ljava/math/MathContext;

    move-result-object v0

    if-nez p2, :cond_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lscala/math/BigDecimal$;->minCached()I

    move-result v0

    if-gt v0, p1, :cond_2

    invoke-direct {p0}, Lscala/math/BigDecimal$;->maxCached()I

    move-result v0

    if-gt p1, v0, :cond_2

    .line 195
    invoke-direct {p0}, Lscala/math/BigDecimal$;->minCached()I

    move-result v0

    sub-int v0, p1, v0

    .line 196
    invoke-direct {p0}, Lscala/math/BigDecimal$;->cache()[Lscala/math/BigDecimal;

    move-result-object v1

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 197
    new-instance v1, Lscala/math/BigDecimal;

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lscala/math/BigDecimal;-><init>(Ljava/math/BigDecimal;Ljava/math/MathContext;)V

    invoke-direct {p0}, Lscala/math/BigDecimal$;->cache()[Lscala/math/BigDecimal;

    move-result-object p1

    aput-object v1, p1, v0

    goto :goto_1

    :cond_2
    :goto_0
    int-to-long v0, p1

    .line 200
    invoke-virtual {p0, v0, v1, p2}, Lscala/math/BigDecimal$;->apply(JLjava/math/MathContext;)Lscala/math/BigDecimal;

    move-result-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public apply(J)Lscala/math/BigDecimal;
    .locals 3

    .line 209
    invoke-direct {p0}, Lscala/math/BigDecimal$;->minCached()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    invoke-direct {p0}, Lscala/math/BigDecimal$;->maxCached()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    long-to-int p2, p1

    invoke-virtual {p0, p2}, Lscala/math/BigDecimal$;->apply(I)Lscala/math/BigDecimal;

    move-result-object p1

    goto :goto_0

    .line 210
    :cond_0
    new-instance v0, Lscala/math/BigDecimal;

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0}, Lscala/math/BigDecimal$;->defaultMathContext()Ljava/math/MathContext;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lscala/math/BigDecimal;-><init>(Ljava/math/BigDecimal;Ljava/math/MathContext;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public apply(JI)Lscala/math/BigDecimal;
    .locals 1

    .line 230
    sget-object v0, Lscala/math/BigInt$;->MODULE$:Lscala/math/BigInt$;

    invoke-virtual {v0, p1, p2}, Lscala/math/BigInt$;->apply(J)Lscala/math/BigInt;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lscala/math/BigDecimal$;->apply(Lscala/math/BigInt;I)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public apply(JILjava/math/MathContext;)Lscala/math/BigDecimal;
    .locals 1

    .line 241
    sget-object v0, Lscala/math/BigInt$;->MODULE$:Lscala/math/BigInt$;

    invoke-virtual {v0, p1, p2}, Lscala/math/BigInt$;->apply(J)Lscala/math/BigInt;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lscala/math/BigDecimal$;->apply(Lscala/math/BigInt;ILjava/math/MathContext;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public apply(JLjava/math/MathContext;)Lscala/math/BigDecimal;
    .locals 2

    .line 220
    new-instance v0, Lscala/math/BigDecimal;

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1, p2, p3}, Ljava/math/BigDecimal;-><init>(JLjava/math/MathContext;)V

    invoke-direct {v0, v1, p3}, Lscala/math/BigDecimal;-><init>(Ljava/math/BigDecimal;Ljava/math/MathContext;)V

    return-object v0
.end method

.method public apply(Ljava/lang/String;)Lscala/math/BigDecimal;
    .locals 0

    .line 283
    invoke-virtual {p0, p1}, Lscala/math/BigDecimal$;->exact(Ljava/lang/String;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/String;Ljava/math/MathContext;)Lscala/math/BigDecimal;
    .locals 2

    .line 289
    new-instance v0, Lscala/math/BigDecimal;

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    invoke-direct {v0, v1, p2}, Lscala/math/BigDecimal;-><init>(Ljava/math/BigDecimal;Ljava/math/MathContext;)V

    return-object v0
.end method

.method public apply(Ljava/math/BigDecimal;)Lscala/math/BigDecimal;
    .locals 1

    .line 331
    invoke-virtual {p0}, Lscala/math/BigDecimal$;->defaultMathContext()Ljava/math/MathContext;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lscala/math/BigDecimal$;->apply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Lscala/math/BigDecimal;
    .locals 1

    .line 334
    new-instance v0, Lscala/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Lscala/math/BigDecimal;-><init>(Ljava/math/BigDecimal;Ljava/math/MathContext;)V

    return-object v0
.end method

.method public apply(Lscala/math/BigInt;)Lscala/math/BigDecimal;
    .locals 0

    .line 297
    invoke-virtual {p0, p1}, Lscala/math/BigDecimal$;->exact(Lscala/math/BigInt;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/math/BigInt;I)Lscala/math/BigDecimal;
    .locals 1

    .line 317
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lscala/math/BigInt;->bigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    invoke-virtual {p0, v0}, Lscala/math/BigDecimal$;->exact(Ljava/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/math/BigInt;ILjava/math/MathContext;)Lscala/math/BigDecimal;
    .locals 2

    .line 328
    new-instance v0, Lscala/math/BigDecimal;

    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lscala/math/BigInt;->bigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v1, p1, p2, p3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    invoke-direct {v0, v1, p3}, Lscala/math/BigDecimal;-><init>(Ljava/math/BigDecimal;Ljava/math/MathContext;)V

    return-object v0
.end method

.method public apply(Lscala/math/BigInt;Ljava/math/MathContext;)Lscala/math/BigDecimal;
    .locals 2

    .line 307
    new-instance v0, Lscala/math/BigDecimal;

    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lscala/math/BigInt;->bigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;Ljava/math/MathContext;)V

    invoke-direct {v0, v1, p2}, Lscala/math/BigDecimal;-><init>(Ljava/math/BigDecimal;Ljava/math/MathContext;)V

    return-object v0
.end method

.method public apply([C)Lscala/math/BigDecimal;
    .locals 0

    .line 272
    invoke-virtual {p0, p1}, Lscala/math/BigDecimal$;->exact([C)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public apply([CLjava/math/MathContext;)Lscala/math/BigDecimal;
    .locals 2

    .line 278
    new-instance v0, Lscala/math/BigDecimal;

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1, p2}, Ljava/math/BigDecimal;-><init>([CLjava/math/MathContext;)V

    invoke-direct {v0, v1, p2}, Lscala/math/BigDecimal;-><init>(Ljava/math/BigDecimal;Ljava/math/MathContext;)V

    return-object v0
.end method

.method public binary(D)Lscala/math/BigDecimal;
    .locals 1

    .line 93
    invoke-virtual {p0}, Lscala/math/BigDecimal$;->defaultMathContext()Ljava/math/MathContext;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lscala/math/BigDecimal$;->binary(DLjava/math/MathContext;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public binary(DLjava/math/MathContext;)Lscala/math/BigDecimal;
    .locals 2

    .line 87
    new-instance v0, Lscala/math/BigDecimal;

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1, p2, p3}, Ljava/math/BigDecimal;-><init>(DLjava/math/MathContext;)V

    invoke-direct {v0, v1, p3}, Lscala/math/BigDecimal;-><init>(Ljava/math/BigDecimal;Ljava/math/MathContext;)V

    return-object v0
.end method

.method public decimal(D)Lscala/math/BigDecimal;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lscala/math/BigDecimal$;->defaultMathContext()Ljava/math/MathContext;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lscala/math/BigDecimal$;->decimal(DLjava/math/MathContext;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public decimal(DLjava/math/MathContext;)Lscala/math/BigDecimal;
    .locals 2

    .line 52
    new-instance v0, Lscala/math/BigDecimal;

    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    invoke-direct {v0, v1, p3}, Lscala/math/BigDecimal;-><init>(Ljava/math/BigDecimal;Ljava/math/MathContext;)V

    return-object v0
.end method

.method public decimal(F)Lscala/math/BigDecimal;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lscala/math/BigDecimal$;->defaultMathContext()Ljava/math/MathContext;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lscala/math/BigDecimal$;->decimal(FLjava/math/MathContext;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public decimal(FLjava/math/MathContext;)Lscala/math/BigDecimal;
    .locals 2

    .line 62
    new-instance v0, Lscala/math/BigDecimal;

    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    invoke-direct {v0, v1, p2}, Lscala/math/BigDecimal;-><init>(Ljava/math/BigDecimal;Ljava/math/MathContext;)V

    return-object v0
.end method

.method public decimal(J)Lscala/math/BigDecimal;
    .locals 0

    .line 76
    invoke-virtual {p0, p1, p2}, Lscala/math/BigDecimal$;->apply(J)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public decimal(JLjava/math/MathContext;)Lscala/math/BigDecimal;
    .locals 0

    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lscala/math/BigDecimal$;->apply(JLjava/math/MathContext;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public decimal(Ljava/math/BigDecimal;Ljava/math/MathContext;)Lscala/math/BigDecimal;
    .locals 1

    .line 79
    new-instance v0, Lscala/math/BigDecimal;

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lscala/math/BigDecimal;-><init>(Ljava/math/BigDecimal;Ljava/math/MathContext;)V

    return-object v0
.end method

.method public defaultMathContext()Ljava/math/MathContext;
    .locals 1

    .line 31
    iget-object v0, p0, Lscala/math/BigDecimal$;->defaultMathContext:Ljava/math/MathContext;

    return-object v0
.end method

.method public double2bigDecimal(D)Lscala/math/BigDecimal;
    .locals 0

    .line 343
    invoke-virtual {p0, p1, p2}, Lscala/math/BigDecimal$;->decimal(D)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public exact(D)Lscala/math/BigDecimal;
    .locals 1

    .line 110
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {p0, v0}, Lscala/math/BigDecimal$;->exact(Ljava/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public exact(J)Lscala/math/BigDecimal;
    .locals 0

    .line 120
    invoke-virtual {p0, p1, p2}, Lscala/math/BigDecimal$;->apply(J)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public exact(Ljava/lang/String;)Lscala/math/BigDecimal;
    .locals 1

    .line 125
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lscala/math/BigDecimal$;->exact(Ljava/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public exact(Ljava/math/BigDecimal;)Lscala/math/BigDecimal;
    .locals 3

    .line 101
    invoke-virtual {p1}, Ljava/math/BigDecimal;->precision()I

    move-result v0

    invoke-virtual {p0}, Lscala/math/BigDecimal$;->defaultMathContext()Ljava/math/MathContext;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/MathContext;->getPrecision()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lscala/math/BigDecimal$;->defaultMathContext()Ljava/math/MathContext;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Ljava/math/MathContext;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->precision()I

    move-result v1

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-direct {v0, v1, v2}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 103
    :goto_0
    new-instance v1, Lscala/math/BigDecimal;

    invoke-direct {v1, p1, v0}, Lscala/math/BigDecimal;-><init>(Ljava/math/BigDecimal;Ljava/math/MathContext;)V

    return-object v1
.end method

.method public exact(Lscala/math/BigInt;)Lscala/math/BigDecimal;
    .locals 1

    .line 114
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lscala/math/BigInt;->bigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, Lscala/math/BigDecimal$;->exact(Ljava/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public exact([C)Lscala/math/BigDecimal;
    .locals 1

    .line 130
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>([C)V

    invoke-virtual {p0, v0}, Lscala/math/BigDecimal$;->exact(Ljava/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public int2bigDecimal(I)Lscala/math/BigDecimal;
    .locals 0

    .line 337
    invoke-virtual {p0, p1}, Lscala/math/BigDecimal$;->apply(I)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public javaBigDecimal2bigDecimal(Ljava/math/BigDecimal;)Lscala/math/BigDecimal;
    .locals 0

    .line 346
    invoke-virtual {p0, p1}, Lscala/math/BigDecimal$;->apply(Ljava/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public long2bigDecimal(J)Lscala/math/BigDecimal;
    .locals 0

    .line 340
    invoke-virtual {p0, p1, p2}, Lscala/math/BigDecimal$;->apply(J)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public valueOf(D)Lscala/math/BigDecimal;
    .locals 0

    .line 139
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/math/BigDecimal$;->apply(Ljava/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public valueOf(DLjava/math/MathContext;)Lscala/math/BigDecimal;
    .locals 0

    .line 153
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lscala/math/BigDecimal$;->apply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public valueOf(F)Lscala/math/BigDecimal;
    .locals 2

    float-to-double v0, p1

    .line 168
    invoke-virtual {p0, v0, v1}, Lscala/math/BigDecimal$;->valueOf(D)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public valueOf(FLjava/math/MathContext;)Lscala/math/BigDecimal;
    .locals 2

    float-to-double v0, p1

    .line 175
    invoke-virtual {p0, v0, v1, p2}, Lscala/math/BigDecimal$;->valueOf(DLjava/math/MathContext;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public valueOf(J)Lscala/math/BigDecimal;
    .locals 0

    .line 161
    invoke-virtual {p0, p1, p2}, Lscala/math/BigDecimal$;->apply(J)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method
