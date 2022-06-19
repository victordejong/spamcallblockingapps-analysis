.class public Lscala/math/Numeric$BigDecimalAsIfIntegral$;
.super Ljava/lang/Object;
.source "Numeric.scala"

# interfaces
.implements Lscala/math/Numeric$BigDecimalAsIfIntegral;
.implements Lscala/math/Ordering$BigDecimalOrdering;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/math/Numeric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigDecimalAsIfIntegral$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/math/Numeric$BigDecimalAsIfIntegral$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/Numeric$BigDecimalAsIfIntegral$;

    invoke-direct {v0}, Lscala/math/Numeric$BigDecimalAsIfIntegral$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/Numeric$BigDecimalAsIfIntegral$;->MODULE$:Lscala/math/Numeric$BigDecimalAsIfIntegral$;

    invoke-static {p0}, Lscala/math/PartialOrdering$class;->$init$(Lscala/math/PartialOrdering;)V

    invoke-static {p0}, Lscala/math/Ordering$class;->$init$(Lscala/math/Ordering;)V

    invoke-static {p0}, Lscala/math/Numeric$class;->$init$(Lscala/math/Numeric;)V

    invoke-static {p0}, Lscala/math/Numeric$BigDecimalIsConflicted$class;->$init$(Lscala/math/Numeric$BigDecimalIsConflicted;)V

    invoke-static {p0}, Lscala/math/Integral$class;->$init$(Lscala/math/Integral;)V

    invoke-static {p0}, Lscala/math/Numeric$BigDecimalAsIfIntegral$class;->$init$(Lscala/math/Numeric$BigDecimalAsIfIntegral;)V

    invoke-static {p0}, Lscala/math/Ordering$BigDecimalOrdering$class;->$init$(Lscala/math/Ordering$BigDecimalOrdering;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 188
    sget-object v0, Lscala/math/Numeric$BigDecimalAsIfIntegral$;->MODULE$:Lscala/math/Numeric$BigDecimalAsIfIntegral$;

    return-object v0
.end method


# virtual methods
.method public abs(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 188
    invoke-static {p0, p1}, Lscala/math/Numeric$class;->abs(Lscala/math/Numeric;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 188
    check-cast p1, Lscala/math/BigDecimal;

    check-cast p2, Lscala/math/BigDecimal;

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$BigDecimalAsIfIntegral$;->compare(Lscala/math/BigDecimal;Lscala/math/BigDecimal;)I

    move-result p1

    return p1
.end method

.method public compare(Lscala/math/BigDecimal;Lscala/math/BigDecimal;)I
    .locals 0

    .line 188
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$BigDecimalOrdering$class;->compare(Lscala/math/Ordering$BigDecimalOrdering;Lscala/math/BigDecimal;Lscala/math/BigDecimal;)I

    move-result p1

    return p1
.end method

.method public equiv(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 188
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->equiv(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic fromInt(I)Ljava/lang/Object;
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Lscala/math/Numeric$BigDecimalAsIfIntegral$;->fromInt(I)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public fromInt(I)Lscala/math/BigDecimal;
    .locals 0

    .line 188
    invoke-static {p0, p1}, Lscala/math/Numeric$BigDecimalIsConflicted$class;->fromInt(Lscala/math/Numeric$BigDecimalIsConflicted;I)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public gt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 188
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->gt(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public gteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 188
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->gteq(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public lt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 188
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->lt(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public lteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 188
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->lteq(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 188
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->max(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 188
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->min(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 188
    check-cast p1, Lscala/math/BigDecimal;

    check-cast p2, Lscala/math/BigDecimal;

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$BigDecimalAsIfIntegral$;->minus(Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public minus(Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/math/BigDecimal;
    .locals 0

    .line 188
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$BigDecimalIsConflicted$class;->minus(Lscala/math/Numeric$BigDecimalIsConflicted;Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public mkNumericOps(Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/math/Integral$IntegralOps;"
        }
    .end annotation

    .line 188
    invoke-static {p0, p1}, Lscala/math/Integral$class;->mkNumericOps(Lscala/math/Integral;Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mkNumericOps(Ljava/lang/Object;)Lscala/math/Numeric$Ops;
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Lscala/math/Numeric$BigDecimalAsIfIntegral$;->mkNumericOps(Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

    move-result-object p1

    return-object p1
.end method

.method public mkOrderingOps(Ljava/lang/Object;)Lscala/math/Ordering$Ops;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/math/Ordering$Ops;"
        }
    .end annotation

    .line 188
    invoke-static {p0, p1}, Lscala/math/Ordering$class;->mkOrderingOps(Lscala/math/Ordering;Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic negate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 188
    check-cast p1, Lscala/math/BigDecimal;

    invoke-virtual {p0, p1}, Lscala/math/Numeric$BigDecimalAsIfIntegral$;->negate(Lscala/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public negate(Lscala/math/BigDecimal;)Lscala/math/BigDecimal;
    .locals 0

    .line 188
    invoke-static {p0, p1}, Lscala/math/Numeric$BigDecimalIsConflicted$class;->negate(Lscala/math/Numeric$BigDecimalIsConflicted;Lscala/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public on(Lscala/Function1;)Lscala/math/Ordering;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TU;",
            "Lscala/math/BigDecimal;",
            ">;)",
            "Lscala/math/Ordering<",
            "TU;>;"
        }
    .end annotation

    .line 188
    invoke-static {p0, p1}, Lscala/math/Ordering$class;->on(Lscala/math/Ordering;Lscala/Function1;)Lscala/math/Ordering;

    move-result-object p1

    return-object p1
.end method

.method public one()Ljava/lang/Object;
    .locals 1

    .line 188
    invoke-static {p0}, Lscala/math/Numeric$class;->one(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 188
    check-cast p1, Lscala/math/BigDecimal;

    check-cast p2, Lscala/math/BigDecimal;

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$BigDecimalAsIfIntegral$;->plus(Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/math/BigDecimal;
    .locals 0

    .line 188
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$BigDecimalIsConflicted$class;->plus(Lscala/math/Numeric$BigDecimalIsConflicted;Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic quot(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 188
    check-cast p1, Lscala/math/BigDecimal;

    check-cast p2, Lscala/math/BigDecimal;

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$BigDecimalAsIfIntegral$;->quot(Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public quot(Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/math/BigDecimal;
    .locals 0

    .line 188
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$BigDecimalAsIfIntegral$class;->quot(Lscala/math/Numeric$BigDecimalAsIfIntegral;Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic rem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 188
    check-cast p1, Lscala/math/BigDecimal;

    check-cast p2, Lscala/math/BigDecimal;

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$BigDecimalAsIfIntegral$;->rem(Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public rem(Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/math/BigDecimal;
    .locals 0

    .line 188
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$BigDecimalAsIfIntegral$class;->rem(Lscala/math/Numeric$BigDecimalAsIfIntegral;Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public reverse()Lscala/math/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/math/Ordering<",
            "Lscala/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .line 188
    invoke-static {p0}, Lscala/math/Ordering$class;->reverse(Lscala/math/Ordering;)Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse()Lscala/math/PartialOrdering;
    .locals 1

    .line 188
    invoke-virtual {p0}, Lscala/math/Numeric$BigDecimalAsIfIntegral$;->reverse()Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public signum(Ljava/lang/Object;)I
    .locals 0

    .line 188
    invoke-static {p0, p1}, Lscala/math/Numeric$class;->signum(Lscala/math/Numeric;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic times(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 188
    check-cast p1, Lscala/math/BigDecimal;

    check-cast p2, Lscala/math/BigDecimal;

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$BigDecimalAsIfIntegral$;->times(Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public times(Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/math/BigDecimal;
    .locals 0

    .line 188
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$BigDecimalIsConflicted$class;->times(Lscala/math/Numeric$BigDecimalIsConflicted;Lscala/math/BigDecimal;Lscala/math/BigDecimal;)Lscala/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toDouble(Ljava/lang/Object;)D
    .locals 2

    .line 188
    check-cast p1, Lscala/math/BigDecimal;

    invoke-virtual {p0, p1}, Lscala/math/Numeric$BigDecimalAsIfIntegral$;->toDouble(Lscala/math/BigDecimal;)D

    move-result-wide v0

    return-wide v0
.end method

.method public toDouble(Lscala/math/BigDecimal;)D
    .locals 2

    .line 188
    invoke-static {p0, p1}, Lscala/math/Numeric$BigDecimalIsConflicted$class;->toDouble(Lscala/math/Numeric$BigDecimalIsConflicted;Lscala/math/BigDecimal;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic toFloat(Ljava/lang/Object;)F
    .locals 0

    .line 188
    check-cast p1, Lscala/math/BigDecimal;

    invoke-virtual {p0, p1}, Lscala/math/Numeric$BigDecimalAsIfIntegral$;->toFloat(Lscala/math/BigDecimal;)F

    move-result p1

    return p1
.end method

.method public toFloat(Lscala/math/BigDecimal;)F
    .locals 0

    .line 188
    invoke-static {p0, p1}, Lscala/math/Numeric$BigDecimalIsConflicted$class;->toFloat(Lscala/math/Numeric$BigDecimalIsConflicted;Lscala/math/BigDecimal;)F

    move-result p1

    return p1
.end method

.method public bridge synthetic toInt(Ljava/lang/Object;)I
    .locals 0

    .line 188
    check-cast p1, Lscala/math/BigDecimal;

    invoke-virtual {p0, p1}, Lscala/math/Numeric$BigDecimalAsIfIntegral$;->toInt(Lscala/math/BigDecimal;)I

    move-result p1

    return p1
.end method

.method public toInt(Lscala/math/BigDecimal;)I
    .locals 0

    .line 188
    invoke-static {p0, p1}, Lscala/math/Numeric$BigDecimalIsConflicted$class;->toInt(Lscala/math/Numeric$BigDecimalIsConflicted;Lscala/math/BigDecimal;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic toLong(Ljava/lang/Object;)J
    .locals 2

    .line 188
    check-cast p1, Lscala/math/BigDecimal;

    invoke-virtual {p0, p1}, Lscala/math/Numeric$BigDecimalAsIfIntegral$;->toLong(Lscala/math/BigDecimal;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toLong(Lscala/math/BigDecimal;)J
    .locals 2

    .line 188
    invoke-static {p0, p1}, Lscala/math/Numeric$BigDecimalIsConflicted$class;->toLong(Lscala/math/Numeric$BigDecimalIsConflicted;Lscala/math/BigDecimal;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 188
    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$BigDecimalAsIfIntegral$;->tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method

.method public tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;
    .locals 0

    .line 188
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->tryCompare(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method

.method public zero()Ljava/lang/Object;
    .locals 1

    .line 188
    invoke-static {p0}, Lscala/math/Numeric$class;->zero(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
