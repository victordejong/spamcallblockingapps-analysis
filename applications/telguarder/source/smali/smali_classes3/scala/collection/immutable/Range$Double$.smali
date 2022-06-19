.class public Lscala/collection/immutable/Range$Double$;
.super Ljava/lang/Object;
.source "Range.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Double$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/Range$Double$;


# instance fields
.field private final bigDecAsIntegral:Lscala/math/Numeric$BigDecimalAsIfIntegral$;

.field private final doubleAsIntegral:Lscala/math/Numeric$DoubleAsIfIntegral$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/Range$Double$;

    invoke-direct {v0}, Lscala/collection/immutable/Range$Double$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/Range$Double$;->MODULE$:Lscala/collection/immutable/Range$Double$;

    .line 489
    sget-object v0, Lscala/math/Numeric$BigDecimalAsIfIntegral$;->MODULE$:Lscala/math/Numeric$BigDecimalAsIfIntegral$;

    iput-object v0, p0, Lscala/collection/immutable/Range$Double$;->bigDecAsIntegral:Lscala/math/Numeric$BigDecimalAsIfIntegral$;

    .line 490
    sget-object v0, Lscala/math/Numeric$DoubleAsIfIntegral$;->MODULE$:Lscala/math/Numeric$DoubleAsIfIntegral$;

    iput-object v0, p0, Lscala/collection/immutable/Range$Double$;->doubleAsIntegral:Lscala/math/Numeric$DoubleAsIfIntegral$;

    return-void
.end method


# virtual methods
.method public apply(DDD)Lscala/collection/immutable/NumericRange;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD)",
            "Lscala/collection/immutable/NumericRange<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 494
    sget-object v0, Lscala/collection/immutable/Range$BigDecimal$;->MODULE$:Lscala/collection/immutable/Range$BigDecimal$;

    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Range$Double$;->toBD(D)Lscala/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p3, p4}, Lscala/collection/immutable/Range$Double$;->toBD(D)Lscala/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p0, p5, p6}, Lscala/collection/immutable/Range$Double$;->toBD(D)Lscala/math/BigDecimal;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lscala/collection/immutable/Range$BigDecimal$;->apply(Lscala/math/BigDecimal;Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/collection/immutable/NumericRange$Exclusive;

    move-result-object p1

    new-instance p2, Lscala/collection/immutable/Range$Double$$anonfun$apply$1;

    invoke-direct {p2}, Lscala/collection/immutable/Range$Double$$anonfun$apply$1;-><init>()V

    invoke-virtual {p0}, Lscala/collection/immutable/Range$Double$;->doubleAsIntegral()Lscala/math/Numeric$DoubleAsIfIntegral$;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lscala/collection/immutable/NumericRange$Exclusive;->mapRange(Lscala/Function1;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange;

    move-result-object p1

    return-object p1
.end method

.method public bigDecAsIntegral()Lscala/math/Numeric$BigDecimalAsIfIntegral$;
    .locals 1

    .line 489
    iget-object v0, p0, Lscala/collection/immutable/Range$Double$;->bigDecAsIntegral:Lscala/math/Numeric$BigDecimalAsIfIntegral$;

    return-object v0
.end method

.method public doubleAsIntegral()Lscala/math/Numeric$DoubleAsIfIntegral$;
    .locals 1

    .line 490
    iget-object v0, p0, Lscala/collection/immutable/Range$Double$;->doubleAsIntegral:Lscala/math/Numeric$DoubleAsIfIntegral$;

    return-object v0
.end method

.method public inclusive(DDD)Lscala/collection/immutable/NumericRange;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD)",
            "Lscala/collection/immutable/NumericRange<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 497
    sget-object v0, Lscala/collection/immutable/Range$BigDecimal$;->MODULE$:Lscala/collection/immutable/Range$BigDecimal$;

    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Range$Double$;->toBD(D)Lscala/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p3, p4}, Lscala/collection/immutable/Range$Double$;->toBD(D)Lscala/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p0, p5, p6}, Lscala/collection/immutable/Range$Double$;->toBD(D)Lscala/math/BigDecimal;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lscala/collection/immutable/Range$BigDecimal$;->inclusive(Lscala/math/BigDecimal;Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/collection/immutable/NumericRange$Inclusive;

    move-result-object p1

    new-instance p2, Lscala/collection/immutable/Range$Double$$anonfun$inclusive$1;

    invoke-direct {p2}, Lscala/collection/immutable/Range$Double$$anonfun$inclusive$1;-><init>()V

    invoke-virtual {p0}, Lscala/collection/immutable/Range$Double$;->doubleAsIntegral()Lscala/math/Numeric$DoubleAsIfIntegral$;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lscala/collection/immutable/NumericRange$Inclusive;->mapRange(Lscala/Function1;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange;

    move-result-object p1

    return-object p1
.end method

.method public toBD(D)Lscala/math/BigDecimal;
    .locals 1

    .line 491
    sget-object v0, Lscala/math/BigDecimal$;->MODULE$:Lscala/math/BigDecimal$;

    invoke-virtual {v0, p1, p2}, Lscala/math/BigDecimal$;->valueOf(D)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method
