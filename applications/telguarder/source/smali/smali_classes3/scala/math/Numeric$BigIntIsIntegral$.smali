.class public Lscala/math/Numeric$BigIntIsIntegral$;
.super Ljava/lang/Object;
.source "Numeric.scala"

# interfaces
.implements Lscala/math/Numeric$BigIntIsIntegral;
.implements Lscala/math/Ordering$BigIntOrdering;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/math/Numeric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigIntIsIntegral$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/math/Numeric$BigIntIsIntegral$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/Numeric$BigIntIsIntegral$;

    invoke-direct {v0}, Lscala/math/Numeric$BigIntIsIntegral$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/Numeric$BigIntIsIntegral$;->MODULE$:Lscala/math/Numeric$BigIntIsIntegral$;

    invoke-static {p0}, Lscala/math/PartialOrdering$class;->$init$(Lscala/math/PartialOrdering;)V

    invoke-static {p0}, Lscala/math/Ordering$class;->$init$(Lscala/math/Ordering;)V

    invoke-static {p0}, Lscala/math/Numeric$class;->$init$(Lscala/math/Numeric;)V

    invoke-static {p0}, Lscala/math/Integral$class;->$init$(Lscala/math/Integral;)V

    invoke-static {p0}, Lscala/math/Numeric$BigIntIsIntegral$class;->$init$(Lscala/math/Numeric$BigIntIsIntegral;)V

    invoke-static {p0}, Lscala/math/Ordering$BigIntOrdering$class;->$init$(Lscala/math/Ordering$BigIntOrdering;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 43
    sget-object v0, Lscala/math/Numeric$BigIntIsIntegral$;->MODULE$:Lscala/math/Numeric$BigIntIsIntegral$;

    return-object v0
.end method


# virtual methods
.method public abs(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lscala/math/Numeric$class;->abs(Lscala/math/Numeric;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 43
    check-cast p1, Lscala/math/BigInt;

    check-cast p2, Lscala/math/BigInt;

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$BigIntIsIntegral$;->compare(Lscala/math/BigInt;Lscala/math/BigInt;)I

    move-result p1

    return p1
.end method

.method public compare(Lscala/math/BigInt;Lscala/math/BigInt;)I
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$BigIntOrdering$class;->compare(Lscala/math/Ordering$BigIntOrdering;Lscala/math/BigInt;Lscala/math/BigInt;)I

    move-result p1

    return p1
.end method

.method public equiv(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->equiv(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic fromInt(I)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lscala/math/Numeric$BigIntIsIntegral$;->fromInt(I)Lscala/math/BigInt;

    move-result-object p1

    return-object p1
.end method

.method public fromInt(I)Lscala/math/BigInt;
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lscala/math/Numeric$BigIntIsIntegral$class;->fromInt(Lscala/math/Numeric$BigIntIsIntegral;I)Lscala/math/BigInt;

    move-result-object p1

    return-object p1
.end method

.method public gt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->gt(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public gteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->gteq(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public lt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->lt(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public lteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->lteq(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->max(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->min(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, Lscala/math/BigInt;

    check-cast p2, Lscala/math/BigInt;

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$BigIntIsIntegral$;->minus(Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/math/BigInt;

    move-result-object p1

    return-object p1
.end method

.method public minus(Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/math/BigInt;
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$BigIntIsIntegral$class;->minus(Lscala/math/Numeric$BigIntIsIntegral;Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/math/BigInt;

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

    .line 43
    invoke-static {p0, p1}, Lscala/math/Integral$class;->mkNumericOps(Lscala/math/Integral;Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mkNumericOps(Ljava/lang/Object;)Lscala/math/Numeric$Ops;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lscala/math/Numeric$BigIntIsIntegral$;->mkNumericOps(Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

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

    .line 43
    invoke-static {p0, p1}, Lscala/math/Ordering$class;->mkOrderingOps(Lscala/math/Ordering;Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic negate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, Lscala/math/BigInt;

    invoke-virtual {p0, p1}, Lscala/math/Numeric$BigIntIsIntegral$;->negate(Lscala/math/BigInt;)Lscala/math/BigInt;

    move-result-object p1

    return-object p1
.end method

.method public negate(Lscala/math/BigInt;)Lscala/math/BigInt;
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lscala/math/Numeric$BigIntIsIntegral$class;->negate(Lscala/math/Numeric$BigIntIsIntegral;Lscala/math/BigInt;)Lscala/math/BigInt;

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
            "Lscala/math/BigInt;",
            ">;)",
            "Lscala/math/Ordering<",
            "TU;>;"
        }
    .end annotation

    .line 43
    invoke-static {p0, p1}, Lscala/math/Ordering$class;->on(Lscala/math/Ordering;Lscala/Function1;)Lscala/math/Ordering;

    move-result-object p1

    return-object p1
.end method

.method public one()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-static {p0}, Lscala/math/Numeric$class;->one(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, Lscala/math/BigInt;

    check-cast p2, Lscala/math/BigInt;

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$BigIntIsIntegral$;->plus(Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/math/BigInt;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/math/BigInt;
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$BigIntIsIntegral$class;->plus(Lscala/math/Numeric$BigIntIsIntegral;Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/math/BigInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic quot(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, Lscala/math/BigInt;

    check-cast p2, Lscala/math/BigInt;

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$BigIntIsIntegral$;->quot(Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/math/BigInt;

    move-result-object p1

    return-object p1
.end method

.method public quot(Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/math/BigInt;
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$BigIntIsIntegral$class;->quot(Lscala/math/Numeric$BigIntIsIntegral;Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/math/BigInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic rem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, Lscala/math/BigInt;

    check-cast p2, Lscala/math/BigInt;

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$BigIntIsIntegral$;->rem(Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/math/BigInt;

    move-result-object p1

    return-object p1
.end method

.method public rem(Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/math/BigInt;
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$BigIntIsIntegral$class;->rem(Lscala/math/Numeric$BigIntIsIntegral;Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/math/BigInt;

    move-result-object p1

    return-object p1
.end method

.method public reverse()Lscala/math/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/math/Ordering<",
            "Lscala/math/BigInt;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-static {p0}, Lscala/math/Ordering$class;->reverse(Lscala/math/Ordering;)Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse()Lscala/math/PartialOrdering;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lscala/math/Numeric$BigIntIsIntegral$;->reverse()Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public signum(Ljava/lang/Object;)I
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lscala/math/Numeric$class;->signum(Lscala/math/Numeric;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic times(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, Lscala/math/BigInt;

    check-cast p2, Lscala/math/BigInt;

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$BigIntIsIntegral$;->times(Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/math/BigInt;

    move-result-object p1

    return-object p1
.end method

.method public times(Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/math/BigInt;
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$BigIntIsIntegral$class;->times(Lscala/math/Numeric$BigIntIsIntegral;Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/math/BigInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toDouble(Ljava/lang/Object;)D
    .locals 2

    .line 43
    check-cast p1, Lscala/math/BigInt;

    invoke-virtual {p0, p1}, Lscala/math/Numeric$BigIntIsIntegral$;->toDouble(Lscala/math/BigInt;)D

    move-result-wide v0

    return-wide v0
.end method

.method public toDouble(Lscala/math/BigInt;)D
    .locals 2

    .line 43
    invoke-static {p0, p1}, Lscala/math/Numeric$BigIntIsIntegral$class;->toDouble(Lscala/math/Numeric$BigIntIsIntegral;Lscala/math/BigInt;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic toFloat(Ljava/lang/Object;)F
    .locals 0

    .line 43
    check-cast p1, Lscala/math/BigInt;

    invoke-virtual {p0, p1}, Lscala/math/Numeric$BigIntIsIntegral$;->toFloat(Lscala/math/BigInt;)F

    move-result p1

    return p1
.end method

.method public toFloat(Lscala/math/BigInt;)F
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lscala/math/Numeric$BigIntIsIntegral$class;->toFloat(Lscala/math/Numeric$BigIntIsIntegral;Lscala/math/BigInt;)F

    move-result p1

    return p1
.end method

.method public bridge synthetic toInt(Ljava/lang/Object;)I
    .locals 0

    .line 43
    check-cast p1, Lscala/math/BigInt;

    invoke-virtual {p0, p1}, Lscala/math/Numeric$BigIntIsIntegral$;->toInt(Lscala/math/BigInt;)I

    move-result p1

    return p1
.end method

.method public toInt(Lscala/math/BigInt;)I
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lscala/math/Numeric$BigIntIsIntegral$class;->toInt(Lscala/math/Numeric$BigIntIsIntegral;Lscala/math/BigInt;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic toLong(Ljava/lang/Object;)J
    .locals 2

    .line 43
    check-cast p1, Lscala/math/BigInt;

    invoke-virtual {p0, p1}, Lscala/math/Numeric$BigIntIsIntegral$;->toLong(Lscala/math/BigInt;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toLong(Lscala/math/BigInt;)J
    .locals 2

    .line 43
    invoke-static {p0, p1}, Lscala/math/Numeric$BigIntIsIntegral$class;->toLong(Lscala/math/Numeric$BigIntIsIntegral;Lscala/math/BigInt;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$BigIntIsIntegral$;->tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method

.method public tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->tryCompare(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method

.method public zero()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-static {p0}, Lscala/math/Numeric$class;->zero(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
