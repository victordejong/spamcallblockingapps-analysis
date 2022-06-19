.class public Lscala/math/Numeric$DoubleAsIfIntegral$;
.super Ljava/lang/Object;
.source "Numeric.scala"

# interfaces
.implements Lscala/math/Numeric$DoubleAsIfIntegral;
.implements Lscala/math/Ordering$DoubleOrdering;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/math/Numeric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DoubleAsIfIntegral$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/math/Numeric$DoubleAsIfIntegral$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/Numeric$DoubleAsIfIntegral$;

    invoke-direct {v0}, Lscala/math/Numeric$DoubleAsIfIntegral$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/Numeric$DoubleAsIfIntegral$;->MODULE$:Lscala/math/Numeric$DoubleAsIfIntegral$;

    invoke-static {p0}, Lscala/math/PartialOrdering$class;->$init$(Lscala/math/PartialOrdering;)V

    invoke-static {p0}, Lscala/math/Ordering$class;->$init$(Lscala/math/Ordering;)V

    invoke-static {p0}, Lscala/math/Numeric$class;->$init$(Lscala/math/Numeric;)V

    invoke-static {p0}, Lscala/math/Numeric$DoubleIsConflicted$class;->$init$(Lscala/math/Numeric$DoubleIsConflicted;)V

    invoke-static {p0}, Lscala/math/Integral$class;->$init$(Lscala/math/Integral;)V

    invoke-static {p0}, Lscala/math/Numeric$DoubleAsIfIntegral$class;->$init$(Lscala/math/Numeric$DoubleAsIfIntegral;)V

    invoke-static {p0}, Lscala/math/Ordering$DoubleOrdering$class;->$init$(Lscala/math/Ordering$DoubleOrdering;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 191
    sget-object v0, Lscala/math/Numeric$DoubleAsIfIntegral$;->MODULE$:Lscala/math/Numeric$DoubleAsIfIntegral$;

    return-object v0
.end method


# virtual methods
.method public abs(D)D
    .locals 0

    .line 191
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$DoubleIsConflicted$class;->abs(Lscala/math/Numeric$DoubleIsConflicted;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic abs(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 191
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/math/Numeric$DoubleAsIfIntegral$;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public compare(DD)I
    .locals 0

    .line 191
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering$class;->compare(Lscala/math/Ordering$DoubleOrdering;DD)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 191
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$DoubleAsIfIntegral$;->compare(DD)I

    move-result p1

    return p1
.end method

.method public equiv(DD)Z
    .locals 0

    .line 191
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering$class;->equiv(Lscala/math/Ordering$DoubleOrdering;DD)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic equiv(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 191
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$DoubleAsIfIntegral$;->equiv(DD)Z

    move-result p1

    return p1
.end method

.method public fromInt(I)D
    .locals 2

    .line 191
    invoke-static {p0, p1}, Lscala/math/Numeric$DoubleIsConflicted$class;->fromInt(Lscala/math/Numeric$DoubleIsConflicted;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic fromInt(I)Ljava/lang/Object;
    .locals 2

    .line 191
    invoke-virtual {p0, p1}, Lscala/math/Numeric$DoubleAsIfIntegral$;->fromInt(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public gt(DD)Z
    .locals 0

    .line 191
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering$class;->gt(Lscala/math/Ordering$DoubleOrdering;DD)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic gt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 191
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$DoubleAsIfIntegral$;->gt(DD)Z

    move-result p1

    return p1
.end method

.method public gteq(DD)Z
    .locals 0

    .line 191
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering$class;->gteq(Lscala/math/Ordering$DoubleOrdering;DD)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic gteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 191
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$DoubleAsIfIntegral$;->gteq(DD)Z

    move-result p1

    return p1
.end method

.method public lt(DD)Z
    .locals 0

    .line 191
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering$class;->lt(Lscala/math/Ordering$DoubleOrdering;DD)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic lt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 191
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$DoubleAsIfIntegral$;->lt(DD)Z

    move-result p1

    return p1
.end method

.method public lteq(DD)Z
    .locals 0

    .line 191
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering$class;->lteq(Lscala/math/Ordering$DoubleOrdering;DD)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic lteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 191
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$DoubleAsIfIntegral$;->lteq(DD)Z

    move-result p1

    return p1
.end method

.method public max(DD)D
    .locals 0

    .line 191
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering$class;->max(Lscala/math/Ordering$DoubleOrdering;DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 191
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$DoubleAsIfIntegral$;->max(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public min(DD)D
    .locals 0

    .line 191
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering$class;->min(Lscala/math/Ordering$DoubleOrdering;DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 191
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$DoubleAsIfIntegral$;->min(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public minus(DD)D
    .locals 0

    .line 191
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Numeric$DoubleIsConflicted$class;->minus(Lscala/math/Numeric$DoubleIsConflicted;DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic minus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 191
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$DoubleAsIfIntegral$;->minus(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

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

    .line 191
    invoke-static {p0, p1}, Lscala/math/Integral$class;->mkNumericOps(Lscala/math/Integral;Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mkNumericOps(Ljava/lang/Object;)Lscala/math/Numeric$Ops;
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lscala/math/Numeric$DoubleAsIfIntegral$;->mkNumericOps(Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

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

    .line 191
    invoke-static {p0, p1}, Lscala/math/Ordering$class;->mkOrderingOps(Lscala/math/Ordering;Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object p1

    return-object p1
.end method

.method public negate(D)D
    .locals 0

    .line 191
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$DoubleIsConflicted$class;->negate(Lscala/math/Numeric$DoubleIsConflicted;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic negate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 191
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/math/Numeric$DoubleAsIfIntegral$;->negate(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

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

    .line 191
    invoke-static {p0, p1}, Lscala/math/Ordering$class;->on(Lscala/math/Ordering;Lscala/Function1;)Lscala/math/Ordering;

    move-result-object p1

    return-object p1
.end method

.method public one()Ljava/lang/Object;
    .locals 1

    .line 191
    invoke-static {p0}, Lscala/math/Numeric$class;->one(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public plus(DD)D
    .locals 0

    .line 191
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Numeric$DoubleIsConflicted$class;->plus(Lscala/math/Numeric$DoubleIsConflicted;DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic plus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 191
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$DoubleAsIfIntegral$;->plus(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public quot(DD)D
    .locals 0

    .line 191
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Numeric$DoubleAsIfIntegral$class;->quot(Lscala/math/Numeric$DoubleAsIfIntegral;DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic quot(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 191
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$DoubleAsIfIntegral$;->quot(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public rem(DD)D
    .locals 0

    .line 191
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Numeric$DoubleAsIfIntegral$class;->rem(Lscala/math/Numeric$DoubleAsIfIntegral;DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic rem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 191
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$DoubleAsIfIntegral$;->rem(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

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

    .line 191
    invoke-static {p0}, Lscala/math/Ordering$DoubleOrdering$class;->reverse(Lscala/math/Ordering$DoubleOrdering;)Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse()Lscala/math/PartialOrdering;
    .locals 1

    .line 191
    invoke-virtual {p0}, Lscala/math/Numeric$DoubleAsIfIntegral$;->reverse()Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public signum(Ljava/lang/Object;)I
    .locals 0

    .line 191
    invoke-static {p0, p1}, Lscala/math/Numeric$class;->signum(Lscala/math/Numeric;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public times(DD)D
    .locals 0

    .line 191
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Numeric$DoubleIsConflicted$class;->times(Lscala/math/Numeric$DoubleIsConflicted;DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic times(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 191
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$DoubleAsIfIntegral$;->times(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public toDouble(D)D
    .locals 0

    .line 191
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$DoubleIsConflicted$class;->toDouble(Lscala/math/Numeric$DoubleIsConflicted;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic toDouble(Ljava/lang/Object;)D
    .locals 2

    .line 191
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/math/Numeric$DoubleAsIfIntegral$;->toDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public toFloat(D)F
    .locals 0

    .line 191
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$DoubleIsConflicted$class;->toFloat(Lscala/math/Numeric$DoubleIsConflicted;D)F

    move-result p1

    return p1
.end method

.method public bridge synthetic toFloat(Ljava/lang/Object;)F
    .locals 2

    .line 191
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/math/Numeric$DoubleAsIfIntegral$;->toFloat(D)F

    move-result p1

    return p1
.end method

.method public toInt(D)I
    .locals 0

    .line 191
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$DoubleIsConflicted$class;->toInt(Lscala/math/Numeric$DoubleIsConflicted;D)I

    move-result p1

    return p1
.end method

.method public bridge synthetic toInt(Ljava/lang/Object;)I
    .locals 2

    .line 191
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/math/Numeric$DoubleAsIfIntegral$;->toInt(D)I

    move-result p1

    return p1
.end method

.method public toLong(D)J
    .locals 0

    .line 191
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$DoubleIsConflicted$class;->toLong(Lscala/math/Numeric$DoubleIsConflicted;D)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic toLong(Ljava/lang/Object;)J
    .locals 2

    .line 191
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/math/Numeric$DoubleAsIfIntegral$;->toLong(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 191
    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$DoubleAsIfIntegral$;->tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method

.method public tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;
    .locals 0

    .line 191
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->tryCompare(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method

.method public zero()Ljava/lang/Object;
    .locals 1

    .line 191
    invoke-static {p0}, Lscala/math/Numeric$class;->zero(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
