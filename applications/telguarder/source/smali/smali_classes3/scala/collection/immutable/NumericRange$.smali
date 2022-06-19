.class public final Lscala/collection/immutable/NumericRange$;
.super Ljava/lang/Object;
.source "NumericRange.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/collection/immutable/NumericRange$;


# instance fields
.field private final defaultOrdering:Lscala/collection/immutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/Map<",
            "Lscala/math/Numeric<",
            "*>;",
            "Lscala/math/Ordering<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/NumericRange$;

    invoke-direct {v0}, Lscala/collection/immutable/NumericRange$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    .line 341
    sget-object v0, Lscala/collection/immutable/Map$;->MODULE$:Lscala/collection/immutable/Map$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/16 v2, 0x9

    new-array v2, v2, [Lscala/Tuple2;

    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 342
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Lscala/math/Numeric$BigIntIsIntegral$;->MODULE$:Lscala/math/Numeric$BigIntIsIntegral$;

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lscala/math/Ordering$BigInt$;->MODULE$:Lscala/math/Ordering$BigInt$;

    new-instance v5, Lscala/Tuple2;

    invoke-direct {v5, v3, v4}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v5, v2, v3

    .line 341
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 343
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Lscala/math/Numeric$IntIsIntegral$;->MODULE$:Lscala/math/Numeric$IntIsIntegral$;

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lscala/math/Ordering$Int$;->MODULE$:Lscala/math/Ordering$Int$;

    new-instance v5, Lscala/Tuple2;

    invoke-direct {v5, v3, v4}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v5, v2, v3

    .line 341
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 344
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Lscala/math/Numeric$ShortIsIntegral$;->MODULE$:Lscala/math/Numeric$ShortIsIntegral$;

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lscala/math/Ordering$Short$;->MODULE$:Lscala/math/Ordering$Short$;

    new-instance v5, Lscala/Tuple2;

    invoke-direct {v5, v3, v4}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    aput-object v5, v2, v3

    .line 341
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 345
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Lscala/math/Numeric$ByteIsIntegral$;->MODULE$:Lscala/math/Numeric$ByteIsIntegral$;

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lscala/math/Ordering$Byte$;->MODULE$:Lscala/math/Ordering$Byte$;

    new-instance v5, Lscala/Tuple2;

    invoke-direct {v5, v3, v4}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x3

    aput-object v5, v2, v3

    .line 341
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 346
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Lscala/math/Numeric$CharIsIntegral$;->MODULE$:Lscala/math/Numeric$CharIsIntegral$;

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lscala/math/Ordering$Char$;->MODULE$:Lscala/math/Ordering$Char$;

    new-instance v5, Lscala/Tuple2;

    invoke-direct {v5, v3, v4}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x4

    aput-object v5, v2, v3

    .line 341
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 347
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Lscala/math/Numeric$LongIsIntegral$;->MODULE$:Lscala/math/Numeric$LongIsIntegral$;

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lscala/math/Ordering$Long$;->MODULE$:Lscala/math/Ordering$Long$;

    new-instance v5, Lscala/Tuple2;

    invoke-direct {v5, v3, v4}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x5

    aput-object v5, v2, v3

    .line 341
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 348
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Lscala/math/Numeric$FloatAsIfIntegral$;->MODULE$:Lscala/math/Numeric$FloatAsIfIntegral$;

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lscala/math/Ordering$Float$;->MODULE$:Lscala/math/Ordering$Float$;

    new-instance v5, Lscala/Tuple2;

    invoke-direct {v5, v3, v4}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x6

    aput-object v5, v2, v3

    .line 341
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 349
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Lscala/math/Numeric$DoubleAsIfIntegral$;->MODULE$:Lscala/math/Numeric$DoubleAsIfIntegral$;

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lscala/math/Ordering$Double$;->MODULE$:Lscala/math/Ordering$Double$;

    new-instance v5, Lscala/Tuple2;

    invoke-direct {v5, v3, v4}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x7

    aput-object v5, v2, v3

    .line 341
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 350
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Lscala/math/Numeric$BigDecimalAsIfIntegral$;->MODULE$:Lscala/math/Numeric$BigDecimalAsIfIntegral$;

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lscala/math/Ordering$BigDecimal$;->MODULE$:Lscala/math/Ordering$BigDecimal$;

    new-instance v5, Lscala/Tuple2;

    invoke-direct {v5, v3, v4}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x8

    aput-object v5, v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 341
    invoke-virtual {v1, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Map$;->apply(Lscala/collection/Seq;)Lscala/collection/GenMap;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Map;

    iput-object v0, p0, Lscala/collection/immutable/NumericRange$;->defaultOrdering:Lscala/collection/immutable/Map;

    return-void
.end method

.method private final check$1(Ljava/lang/Object;Lscala/math/Integral;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 270
    invoke-interface {p2, p1, p3}, Lscala/math/Integral;->gt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "More than Int.MaxValue elements."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 229
    sget-object v0, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange$Exclusive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;",
            "Lscala/math/Integral<",
            "TT;>;)",
            "Lscala/collection/immutable/NumericRange$Exclusive<",
            "TT;>;"
        }
    .end annotation

    .line 337
    new-instance v0, Lscala/collection/immutable/NumericRange$Exclusive;

    invoke-direct {v0, p1, p2, p3, p4}, Lscala/collection/immutable/NumericRange$Exclusive;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)V

    return-object v0
.end method

.method public count(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZLscala/math/Integral;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;Z",
            "Lscala/math/Integral<",
            "TT;>;)I"
        }
    .end annotation

    .line 236
    invoke-interface {p5}, Lscala/math/Integral;->zero()Ljava/lang/Object;

    move-result-object v0

    .line 237
    invoke-interface {p5, p1, p2}, Lscala/math/Integral;->lt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 238
    invoke-interface {p5, p3, v0}, Lscala/math/Integral;->gt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p3, v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    .line 240
    :cond_1
    instance-of v5, p3, Ljava/lang/Number;

    if-eqz v5, :cond_2

    move-object v5, p3

    check-cast v5, Ljava/lang/Number;

    invoke-static {v5, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    :cond_2
    instance-of v5, p3, Ljava/lang/Character;

    if-eqz v5, :cond_3

    move-object v5, p3

    check-cast v5, Ljava/lang/Character;

    invoke-static {v5, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    :cond_3
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_0
    if-nez v5, :cond_35

    if-ne p1, p2, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    const/4 v5, 0x0

    goto :goto_1

    .line 241
    :cond_5
    instance-of v5, p1, Ljava/lang/Number;

    if-eqz v5, :cond_6

    move-object v5, p1

    check-cast v5, Ljava/lang/Number;

    invoke-static {v5, p2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    :cond_6
    instance-of v5, p1, Ljava/lang/Character;

    if-eqz v5, :cond_7

    move-object v5, p1

    check-cast v5, Ljava/lang/Character;

    invoke-static {v5, p2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    :cond_7
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_1
    if-eqz v5, :cond_8

    if-eqz p4, :cond_9

    goto/16 :goto_11

    :cond_8
    if-eq v1, v2, :cond_a

    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 252
    :cond_a
    invoke-interface {p5, p1}, Lscala/math/Integral;->toInt(Ljava/lang/Object;)I

    move-result v5

    .line 253
    invoke-interface {p5, v5}, Lscala/math/Integral;->fromInt(I)Ljava/lang/Object;

    move-result-object v6

    if-ne p1, v6, :cond_b

    const/4 v6, 0x1

    goto :goto_2

    :cond_b
    if-nez p1, :cond_c

    const/4 v6, 0x0

    goto :goto_2

    :cond_c
    instance-of v7, p1, Ljava/lang/Number;

    if-eqz v7, :cond_d

    move-object v7, p1

    check-cast v7, Ljava/lang/Number;

    invoke-static {v7, v6}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2

    :cond_d
    instance-of v7, p1, Ljava/lang/Character;

    if-eqz v7, :cond_e

    move-object v7, p1

    check-cast v7, Ljava/lang/Character;

    invoke-static {v7, v6}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2

    :cond_e
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_2
    if-eqz v6, :cond_18

    .line 254
    invoke-interface {p5, p2}, Lscala/math/Integral;->toInt(Ljava/lang/Object;)I

    move-result v6

    .line 255
    invoke-interface {p5, v6}, Lscala/math/Integral;->fromInt(I)Ljava/lang/Object;

    move-result-object v7

    if-ne p2, v7, :cond_f

    const/4 v7, 0x1

    goto :goto_3

    :cond_f
    if-nez p2, :cond_10

    const/4 v7, 0x0

    goto :goto_3

    :cond_10
    instance-of v8, p2, Ljava/lang/Number;

    if-eqz v8, :cond_11

    move-object v8, p2

    check-cast v8, Ljava/lang/Number;

    invoke-static {v8, v7}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v7

    goto :goto_3

    :cond_11
    instance-of v8, p2, Ljava/lang/Character;

    if-eqz v8, :cond_12

    move-object v8, p2

    check-cast v8, Ljava/lang/Character;

    invoke-static {v8, v7}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v7

    goto :goto_3

    :cond_12
    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    :goto_3
    if-eqz v7, :cond_18

    .line 256
    invoke-interface {p5, p3}, Lscala/math/Integral;->toInt(Ljava/lang/Object;)I

    move-result v7

    .line 257
    invoke-interface {p5, v7}, Lscala/math/Integral;->fromInt(I)Ljava/lang/Object;

    move-result-object v8

    if-ne p3, v8, :cond_13

    const/4 v8, 0x1

    goto :goto_4

    :cond_13
    if-nez p3, :cond_14

    const/4 v8, 0x0

    goto :goto_4

    :cond_14
    instance-of v9, p3, Ljava/lang/Number;

    if-eqz v9, :cond_15

    move-object v9, p3

    check-cast v9, Ljava/lang/Number;

    invoke-static {v9, v8}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v8

    goto :goto_4

    :cond_15
    instance-of v9, p3, Ljava/lang/Character;

    if-eqz v9, :cond_16

    move-object v9, p3

    check-cast v9, Ljava/lang/Character;

    invoke-static {v9, v8}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v8

    goto :goto_4

    :cond_16
    invoke-virtual {p3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    :goto_4
    if-eqz v8, :cond_18

    if-eqz p4, :cond_17

    .line 259
    sget-object p1, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    invoke-virtual {p1, v5, v6, v7}, Lscala/collection/immutable/Range$;->inclusive(III)Lscala/collection/immutable/Range$Inclusive;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/immutable/Range$Inclusive;->length()I

    move-result p1

    goto :goto_5

    .line 260
    :cond_17
    sget-object p1, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    invoke-virtual {p1, v5, v6, v7}, Lscala/collection/immutable/Range$;->apply(III)Lscala/collection/immutable/Range;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/immutable/Range;->length()I

    move-result p1

    :goto_5
    return p1

    .line 267
    :cond_18
    invoke-interface {p5}, Lscala/math/Integral;->one()Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7fffffff

    .line 268
    invoke-interface {p5, v6}, Lscala/math/Integral;->fromInt(I)Ljava/lang/Object;

    move-result-object v6

    .line 273
    invoke-interface {p5, p1}, Lscala/math/Integral;->signum(Ljava/lang/Object;)I

    move-result v7

    .line 274
    invoke-interface {p5, p2}, Lscala/math/Integral;->signum(Ljava/lang/Object;)I

    move-result v8

    mul-int v7, v7, v8

    if-ltz v7, :cond_1e

    .line 279
    invoke-interface {p5, p2, p1}, Lscala/math/Integral;->minus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 280
    invoke-interface {p5, p1, p3}, Lscala/math/Integral;->quot(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2, p5, v6}, Lscala/collection/immutable/NumericRange$;->check$1(Ljava/lang/Object;Lscala/math/Integral;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 281
    invoke-interface {p5, p2, p3}, Lscala/math/Integral;->times(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p5, p1, p3}, Lscala/math/Integral;->minus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p4, :cond_1d

    if-ne v0, p1, :cond_19

    goto :goto_6

    :cond_19
    if-nez v0, :cond_1a

    const/4 v3, 0x0

    goto :goto_6

    .line 282
    :cond_1a
    instance-of p3, v0, Ljava/lang/Number;

    if-eqz p3, :cond_1b

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, p1}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_6

    :cond_1b
    instance-of p3, v0, Ljava/lang/Character;

    if-eqz p3, :cond_1c

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, p1}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_6

    :cond_1c
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_6
    if-eqz v3, :cond_1d

    goto/16 :goto_10

    :cond_1d
    invoke-interface {p5, p2, v5}, Lscala/math/Integral;->plus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p5, v6}, Lscala/collection/immutable/NumericRange$;->check$1(Ljava/lang/Object;Lscala/math/Integral;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_10

    :cond_1e
    const/4 v7, -0x1

    .line 290
    invoke-interface {p5, v7}, Lscala/math/Integral;->fromInt(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v2, :cond_1f

    goto :goto_7

    :cond_1f
    move-object v7, v5

    .line 292
    :goto_7
    invoke-interface {p5, v7, p1}, Lscala/math/Integral;->minus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 293
    invoke-interface {p5, v2, p3}, Lscala/math/Integral;->quot(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, p5, v6}, Lscala/collection/immutable/NumericRange$;->check$1(Ljava/lang/Object;Lscala/math/Integral;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_20

    const/4 v7, 0x1

    goto :goto_8

    :cond_20
    if-nez v2, :cond_21

    const/4 v7, 0x0

    goto :goto_8

    .line 294
    :cond_21
    instance-of v7, v2, Ljava/lang/Number;

    if-eqz v7, :cond_22

    move-object v7, v2

    check-cast v7, Ljava/lang/Number;

    invoke-static {v7, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v7

    goto :goto_8

    :cond_22
    instance-of v7, v2, Ljava/lang/Character;

    if-eqz v7, :cond_23

    move-object v7, v2

    check-cast v7, Ljava/lang/Character;

    invoke-static {v7, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v7

    goto :goto_8

    :cond_23
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    :goto_8
    if-eqz v7, :cond_24

    goto :goto_9

    :cond_24
    invoke-interface {p5, v2, p3}, Lscala/math/Integral;->times(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p5, p1, v7}, Lscala/math/Integral;->plus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 295
    :goto_9
    invoke-interface {p5, p1, p3}, Lscala/math/Integral;->plus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 297
    invoke-interface {p5, p1, p2}, Lscala/math/Integral;->lt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v1, :cond_2a

    if-eqz p4, :cond_29

    if-ne p1, p2, :cond_25

    goto :goto_a

    :cond_25
    if-nez p1, :cond_26

    const/4 v3, 0x0

    goto :goto_a

    .line 299
    :cond_26
    instance-of p3, p1, Ljava/lang/Number;

    if-eqz p3, :cond_27

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_a

    :cond_27
    instance-of p3, p1, Ljava/lang/Character;

    if-eqz p3, :cond_28

    check-cast p1, Ljava/lang/Character;

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_a

    :cond_28
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_a
    if-eqz v3, :cond_29

    invoke-interface {p5, v8}, Lscala/math/Integral;->fromInt(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p5, v2, p1}, Lscala/math/Integral;->plus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_f

    .line 300
    :cond_29
    invoke-interface {p5, v2, v5}, Lscala/math/Integral;->plus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_f

    .line 304
    :cond_2a
    invoke-interface {p5, p2, p1}, Lscala/math/Integral;->minus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 305
    invoke-interface {p5, v1, p3}, Lscala/math/Integral;->quot(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, p5, v6}, Lscala/collection/immutable/NumericRange$;->check$1(Ljava/lang/Object;Lscala/math/Integral;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_b

    :cond_2b
    if-nez v1, :cond_2c

    const/4 v0, 0x0

    goto :goto_b

    .line 306
    :cond_2c
    instance-of v7, v1, Ljava/lang/Number;

    if-eqz v7, :cond_2d

    move-object v7, v1

    check-cast v7, Ljava/lang/Number;

    invoke-static {v7, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_b

    :cond_2d
    instance-of v7, v1, Ljava/lang/Character;

    if-eqz v7, :cond_2e

    move-object v7, v1

    check-cast v7, Ljava/lang/Character;

    invoke-static {v7, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_b

    :cond_2e
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_b
    if-eqz v0, :cond_2f

    goto :goto_c

    :cond_2f
    invoke-interface {p5, v1, p3}, Lscala/math/Integral;->times(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p5, p1, p3}, Lscala/math/Integral;->plus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_c
    if-nez p4, :cond_34

    if-ne p1, p2, :cond_30

    goto :goto_d

    :cond_30
    if-nez p1, :cond_31

    const/4 v3, 0x0

    goto :goto_d

    .line 312
    :cond_31
    instance-of p3, p1, Ljava/lang/Number;

    if-eqz p3, :cond_32

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_d

    :cond_32
    instance-of p3, p1, Ljava/lang/Character;

    if-eqz p3, :cond_33

    check-cast p1, Ljava/lang/Character;

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_d

    :cond_33
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_d
    if-eqz v3, :cond_34

    goto :goto_e

    :cond_34
    invoke-interface {p5, v8}, Lscala/math/Integral;->fromInt(I)Ljava/lang/Object;

    move-result-object v5

    :goto_e
    invoke-interface {p5, v1, v5}, Lscala/math/Integral;->plus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p5, v2, p1}, Lscala/math/Integral;->plus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 296
    :goto_f
    invoke-direct {p0, p1, p5, v6}, Lscala/collection/immutable/NumericRange$;->check$1(Ljava/lang/Object;Lscala/math/Integral;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 275
    :goto_10
    invoke-interface {p5, p2}, Lscala/math/Integral;->toInt(Ljava/lang/Object;)I

    move-result v3

    :goto_11
    return v3

    .line 240
    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step cannot be 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public defaultOrdering()Lscala/collection/immutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Map<",
            "Lscala/math/Numeric<",
            "*>;",
            "Lscala/math/Ordering<",
            "*>;>;"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lscala/collection/immutable/NumericRange$;->defaultOrdering:Lscala/collection/immutable/Map;

    return-object v0
.end method

.method public inclusive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange$Inclusive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;",
            "Lscala/math/Integral<",
            "TT;>;)",
            "Lscala/collection/immutable/NumericRange$Inclusive<",
            "TT;>;"
        }
    .end annotation

    .line 339
    new-instance v0, Lscala/collection/immutable/NumericRange$Inclusive;

    invoke-direct {v0, p1, p2, p3, p4}, Lscala/collection/immutable/NumericRange$Inclusive;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)V

    return-object v0
.end method
