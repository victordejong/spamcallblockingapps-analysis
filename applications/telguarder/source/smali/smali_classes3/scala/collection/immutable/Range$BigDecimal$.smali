.class public Lscala/collection/immutable/Range$BigDecimal$;
.super Ljava/lang/Object;
.source "Range.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigDecimal$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/Range$BigDecimal$;


# instance fields
.field private final bigDecAsIntegral:Lscala/math/Numeric$BigDecimalAsIfIntegral$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/Range$BigDecimal$;

    invoke-direct {v0}, Lscala/collection/immutable/Range$BigDecimal$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/Range$BigDecimal$;->MODULE$:Lscala/collection/immutable/Range$BigDecimal$;

    .line 474
    sget-object v0, Lscala/math/Numeric$BigDecimalAsIfIntegral$;->MODULE$:Lscala/math/Numeric$BigDecimalAsIfIntegral$;

    iput-object v0, p0, Lscala/collection/immutable/Range$BigDecimal$;->bigDecAsIntegral:Lscala/math/Numeric$BigDecimalAsIfIntegral$;

    return-void
.end method


# virtual methods
.method public apply(Lscala/math/BigDecimal;Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/collection/immutable/NumericRange$Exclusive;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/math/BigDecimal;",
            "Lscala/math/BigDecimal;",
            "Lscala/math/BigDecimal;",
            ")",
            "Lscala/collection/immutable/NumericRange$Exclusive<",
            "Lscala/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .line 477
    sget-object v0, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    invoke-virtual {p0}, Lscala/collection/immutable/Range$BigDecimal$;->bigDecAsIntegral()Lscala/math/Numeric$BigDecimalAsIfIntegral$;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lscala/collection/immutable/NumericRange$;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange$Exclusive;

    move-result-object p1

    return-object p1
.end method

.method public bigDecAsIntegral()Lscala/math/Numeric$BigDecimalAsIfIntegral$;
    .locals 1

    .line 474
    iget-object v0, p0, Lscala/collection/immutable/Range$BigDecimal$;->bigDecAsIntegral:Lscala/math/Numeric$BigDecimalAsIfIntegral$;

    return-object v0
.end method

.method public inclusive(Lscala/math/BigDecimal;Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/collection/immutable/NumericRange$Inclusive;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/math/BigDecimal;",
            "Lscala/math/BigDecimal;",
            "Lscala/math/BigDecimal;",
            ")",
            "Lscala/collection/immutable/NumericRange$Inclusive<",
            "Lscala/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .line 479
    sget-object v0, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    invoke-virtual {p0}, Lscala/collection/immutable/Range$BigDecimal$;->bigDecAsIntegral()Lscala/math/Numeric$BigDecimalAsIfIntegral$;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lscala/collection/immutable/NumericRange$;->inclusive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange$Inclusive;

    move-result-object p1

    return-object p1
.end method
