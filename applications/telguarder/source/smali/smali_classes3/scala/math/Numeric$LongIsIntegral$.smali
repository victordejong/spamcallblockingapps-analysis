.class public Lscala/math/Numeric$LongIsIntegral$;
.super Ljava/lang/Object;
.source "Numeric.scala"

# interfaces
.implements Lscala/math/Numeric$LongIsIntegral;
.implements Lscala/math/Ordering$LongOrdering;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/math/Numeric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongIsIntegral$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/math/Numeric$LongIsIntegral$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/Numeric$LongIsIntegral$;

    invoke-direct {v0}, Lscala/math/Numeric$LongIsIntegral$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/Numeric$LongIsIntegral$;->MODULE$:Lscala/math/Numeric$LongIsIntegral$;

    invoke-static {p0}, Lscala/math/PartialOrdering$class;->$init$(Lscala/math/PartialOrdering;)V

    invoke-static {p0}, Lscala/math/Ordering$class;->$init$(Lscala/math/Ordering;)V

    invoke-static {p0}, Lscala/math/Numeric$class;->$init$(Lscala/math/Numeric;)V

    invoke-static {p0}, Lscala/math/Integral$class;->$init$(Lscala/math/Integral;)V

    invoke-static {p0}, Lscala/math/Numeric$LongIsIntegral$class;->$init$(Lscala/math/Numeric$LongIsIntegral;)V

    invoke-static {p0}, Lscala/math/Ordering$LongOrdering$class;->$init$(Lscala/math/Ordering$LongOrdering;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 118
    sget-object v0, Lscala/math/Numeric$LongIsIntegral$;->MODULE$:Lscala/math/Numeric$LongIsIntegral$;

    return-object v0
.end method


# virtual methods
.method public abs(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 118
    invoke-static {p0, p1}, Lscala/math/Numeric$class;->abs(Lscala/math/Numeric;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public compare(JJ)I
    .locals 0

    .line 118
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$LongOrdering$class;->compare(Lscala/math/Ordering$LongOrdering;JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 118
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$LongIsIntegral$;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public equiv(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 118
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->equiv(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public fromInt(I)J
    .locals 2

    .line 118
    invoke-static {p0, p1}, Lscala/math/Numeric$LongIsIntegral$class;->fromInt(Lscala/math/Numeric$LongIsIntegral;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic fromInt(I)Ljava/lang/Object;
    .locals 2

    .line 118
    invoke-virtual {p0, p1}, Lscala/math/Numeric$LongIsIntegral$;->fromInt(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public gt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 118
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->gt(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public gteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 118
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->gteq(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public lt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 118
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->lt(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public lteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 118
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->lteq(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 118
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->max(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 118
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->min(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public minus(JJ)J
    .locals 0

    .line 118
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Numeric$LongIsIntegral$class;->minus(Lscala/math/Numeric$LongIsIntegral;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic minus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 118
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$LongIsIntegral$;->minus(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

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

    .line 118
    invoke-static {p0, p1}, Lscala/math/Integral$class;->mkNumericOps(Lscala/math/Integral;Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mkNumericOps(Ljava/lang/Object;)Lscala/math/Numeric$Ops;
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lscala/math/Numeric$LongIsIntegral$;->mkNumericOps(Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

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

    .line 118
    invoke-static {p0, p1}, Lscala/math/Ordering$class;->mkOrderingOps(Lscala/math/Ordering;Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object p1

    return-object p1
.end method

.method public negate(J)J
    .locals 0

    .line 118
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$LongIsIntegral$class;->negate(Lscala/math/Numeric$LongIsIntegral;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic negate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 118
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/math/Numeric$LongIsIntegral$;->negate(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

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
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/math/Ordering<",
            "TU;>;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1}, Lscala/math/Ordering$class;->on(Lscala/math/Ordering;Lscala/Function1;)Lscala/math/Ordering;

    move-result-object p1

    return-object p1
.end method

.method public one()Ljava/lang/Object;
    .locals 1

    .line 118
    invoke-static {p0}, Lscala/math/Numeric$class;->one(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public plus(JJ)J
    .locals 0

    .line 118
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Numeric$LongIsIntegral$class;->plus(Lscala/math/Numeric$LongIsIntegral;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic plus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 118
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$LongIsIntegral$;->plus(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public quot(JJ)J
    .locals 0

    .line 118
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Numeric$LongIsIntegral$class;->quot(Lscala/math/Numeric$LongIsIntegral;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic quot(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 118
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$LongIsIntegral$;->quot(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public rem(JJ)J
    .locals 0

    .line 118
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Numeric$LongIsIntegral$class;->rem(Lscala/math/Numeric$LongIsIntegral;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic rem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 118
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$LongIsIntegral$;->rem(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public reverse()Lscala/math/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 118
    invoke-static {p0}, Lscala/math/Ordering$class;->reverse(Lscala/math/Ordering;)Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse()Lscala/math/PartialOrdering;
    .locals 1

    .line 118
    invoke-virtual {p0}, Lscala/math/Numeric$LongIsIntegral$;->reverse()Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public signum(Ljava/lang/Object;)I
    .locals 0

    .line 118
    invoke-static {p0, p1}, Lscala/math/Numeric$class;->signum(Lscala/math/Numeric;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public times(JJ)J
    .locals 0

    .line 118
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Numeric$LongIsIntegral$class;->times(Lscala/math/Numeric$LongIsIntegral;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic times(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 118
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$LongIsIntegral$;->times(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public toDouble(J)D
    .locals 0

    .line 118
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$LongIsIntegral$class;->toDouble(Lscala/math/Numeric$LongIsIntegral;J)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic toDouble(Ljava/lang/Object;)D
    .locals 2

    .line 118
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/math/Numeric$LongIsIntegral$;->toDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public toFloat(J)F
    .locals 0

    .line 118
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$LongIsIntegral$class;->toFloat(Lscala/math/Numeric$LongIsIntegral;J)F

    move-result p1

    return p1
.end method

.method public bridge synthetic toFloat(Ljava/lang/Object;)F
    .locals 2

    .line 118
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/math/Numeric$LongIsIntegral$;->toFloat(J)F

    move-result p1

    return p1
.end method

.method public toInt(J)I
    .locals 0

    .line 118
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$LongIsIntegral$class;->toInt(Lscala/math/Numeric$LongIsIntegral;J)I

    move-result p1

    return p1
.end method

.method public bridge synthetic toInt(Ljava/lang/Object;)I
    .locals 2

    .line 118
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/math/Numeric$LongIsIntegral$;->toInt(J)I

    move-result p1

    return p1
.end method

.method public toLong(J)J
    .locals 0

    .line 118
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$LongIsIntegral$class;->toLong(Lscala/math/Numeric$LongIsIntegral;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic toLong(Ljava/lang/Object;)J
    .locals 2

    .line 118
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/math/Numeric$LongIsIntegral$;->toLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 118
    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$LongIsIntegral$;->tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method

.method public tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;
    .locals 0

    .line 118
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->tryCompare(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method

.method public zero()Ljava/lang/Object;
    .locals 1

    .line 118
    invoke-static {p0}, Lscala/math/Numeric$class;->zero(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
