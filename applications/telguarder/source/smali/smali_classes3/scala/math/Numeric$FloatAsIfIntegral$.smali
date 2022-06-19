.class public Lscala/math/Numeric$FloatAsIfIntegral$;
.super Ljava/lang/Object;
.source "Numeric.scala"

# interfaces
.implements Lscala/math/Numeric$FloatAsIfIntegral;
.implements Lscala/math/Ordering$FloatOrdering;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/math/Numeric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatAsIfIntegral$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/math/Numeric$FloatAsIfIntegral$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/Numeric$FloatAsIfIntegral$;

    invoke-direct {v0}, Lscala/math/Numeric$FloatAsIfIntegral$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/Numeric$FloatAsIfIntegral$;->MODULE$:Lscala/math/Numeric$FloatAsIfIntegral$;

    invoke-static {p0}, Lscala/math/PartialOrdering$class;->$init$(Lscala/math/PartialOrdering;)V

    invoke-static {p0}, Lscala/math/Ordering$class;->$init$(Lscala/math/Ordering;)V

    invoke-static {p0}, Lscala/math/Numeric$class;->$init$(Lscala/math/Numeric;)V

    invoke-static {p0}, Lscala/math/Numeric$FloatIsConflicted$class;->$init$(Lscala/math/Numeric$FloatIsConflicted;)V

    invoke-static {p0}, Lscala/math/Integral$class;->$init$(Lscala/math/Integral;)V

    invoke-static {p0}, Lscala/math/Numeric$FloatAsIfIntegral$class;->$init$(Lscala/math/Numeric$FloatAsIfIntegral;)V

    invoke-static {p0}, Lscala/math/Ordering$FloatOrdering$class;->$init$(Lscala/math/Ordering$FloatOrdering;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 141
    sget-object v0, Lscala/math/Numeric$FloatAsIfIntegral$;->MODULE$:Lscala/math/Numeric$FloatAsIfIntegral$;

    return-object v0
.end method


# virtual methods
.method public abs(F)F
    .locals 0

    .line 141
    invoke-static {p0, p1}, Lscala/math/Numeric$FloatIsConflicted$class;->abs(Lscala/math/Numeric$FloatIsConflicted;F)F

    move-result p1

    return p1
.end method

.method public bridge synthetic abs(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 141
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0, p1}, Lscala/math/Numeric$FloatAsIfIntegral$;->abs(F)F

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public compare(FF)I
    .locals 0

    .line 141
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$FloatOrdering$class;->compare(Lscala/math/Ordering$FloatOrdering;FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 141
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$FloatAsIfIntegral$;->compare(FF)I

    move-result p1

    return p1
.end method

.method public equiv(FF)Z
    .locals 0

    .line 141
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$FloatOrdering$class;->equiv(Lscala/math/Ordering$FloatOrdering;FF)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic equiv(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 141
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$FloatAsIfIntegral$;->equiv(FF)Z

    move-result p1

    return p1
.end method

.method public fromInt(I)F
    .locals 0

    .line 141
    invoke-static {p0, p1}, Lscala/math/Numeric$FloatIsConflicted$class;->fromInt(Lscala/math/Numeric$FloatIsConflicted;I)F

    move-result p1

    return p1
.end method

.method public bridge synthetic fromInt(I)Ljava/lang/Object;
    .locals 0

    .line 141
    invoke-virtual {p0, p1}, Lscala/math/Numeric$FloatAsIfIntegral$;->fromInt(I)F

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public gt(FF)Z
    .locals 0

    .line 141
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$FloatOrdering$class;->gt(Lscala/math/Ordering$FloatOrdering;FF)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic gt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 141
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$FloatAsIfIntegral$;->gt(FF)Z

    move-result p1

    return p1
.end method

.method public gteq(FF)Z
    .locals 0

    .line 141
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$FloatOrdering$class;->gteq(Lscala/math/Ordering$FloatOrdering;FF)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic gteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 141
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$FloatAsIfIntegral$;->gteq(FF)Z

    move-result p1

    return p1
.end method

.method public lt(FF)Z
    .locals 0

    .line 141
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$FloatOrdering$class;->lt(Lscala/math/Ordering$FloatOrdering;FF)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic lt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 141
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$FloatAsIfIntegral$;->lt(FF)Z

    move-result p1

    return p1
.end method

.method public lteq(FF)Z
    .locals 0

    .line 141
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$FloatOrdering$class;->lteq(Lscala/math/Ordering$FloatOrdering;FF)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic lteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 141
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$FloatAsIfIntegral$;->lteq(FF)Z

    move-result p1

    return p1
.end method

.method public max(FF)F
    .locals 0

    .line 141
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$FloatOrdering$class;->max(Lscala/math/Ordering$FloatOrdering;FF)F

    move-result p1

    return p1
.end method

.method public bridge synthetic max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 141
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$FloatAsIfIntegral$;->max(FF)F

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public min(FF)F
    .locals 0

    .line 141
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$FloatOrdering$class;->min(Lscala/math/Ordering$FloatOrdering;FF)F

    move-result p1

    return p1
.end method

.method public bridge synthetic min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 141
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$FloatAsIfIntegral$;->min(FF)F

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public minus(FF)F
    .locals 0

    .line 141
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$FloatIsConflicted$class;->minus(Lscala/math/Numeric$FloatIsConflicted;FF)F

    move-result p1

    return p1
.end method

.method public bridge synthetic minus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 141
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$FloatAsIfIntegral$;->minus(FF)F

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

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

    .line 141
    invoke-static {p0, p1}, Lscala/math/Integral$class;->mkNumericOps(Lscala/math/Integral;Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mkNumericOps(Ljava/lang/Object;)Lscala/math/Numeric$Ops;
    .locals 0

    .line 141
    invoke-virtual {p0, p1}, Lscala/math/Numeric$FloatAsIfIntegral$;->mkNumericOps(Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

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

    .line 141
    invoke-static {p0, p1}, Lscala/math/Ordering$class;->mkOrderingOps(Lscala/math/Ordering;Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object p1

    return-object p1
.end method

.method public negate(F)F
    .locals 0

    .line 141
    invoke-static {p0, p1}, Lscala/math/Numeric$FloatIsConflicted$class;->negate(Lscala/math/Numeric$FloatIsConflicted;F)F

    move-result p1

    return p1
.end method

.method public bridge synthetic negate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 141
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0, p1}, Lscala/math/Numeric$FloatAsIfIntegral$;->negate(F)F

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

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

    .line 141
    invoke-static {p0, p1}, Lscala/math/Ordering$class;->on(Lscala/math/Ordering;Lscala/Function1;)Lscala/math/Ordering;

    move-result-object p1

    return-object p1
.end method

.method public one()Ljava/lang/Object;
    .locals 1

    .line 141
    invoke-static {p0}, Lscala/math/Numeric$class;->one(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public plus(FF)F
    .locals 0

    .line 141
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$FloatIsConflicted$class;->plus(Lscala/math/Numeric$FloatIsConflicted;FF)F

    move-result p1

    return p1
.end method

.method public bridge synthetic plus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 141
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$FloatAsIfIntegral$;->plus(FF)F

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public quot(FF)F
    .locals 0

    .line 141
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$FloatAsIfIntegral$class;->quot(Lscala/math/Numeric$FloatAsIfIntegral;FF)F

    move-result p1

    return p1
.end method

.method public bridge synthetic quot(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 141
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$FloatAsIfIntegral$;->quot(FF)F

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public rem(FF)F
    .locals 0

    .line 141
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$FloatAsIfIntegral$class;->rem(Lscala/math/Numeric$FloatAsIfIntegral;FF)F

    move-result p1

    return p1
.end method

.method public bridge synthetic rem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 141
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$FloatAsIfIntegral$;->rem(FF)F

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

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

    .line 141
    invoke-static {p0}, Lscala/math/Ordering$FloatOrdering$class;->reverse(Lscala/math/Ordering$FloatOrdering;)Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse()Lscala/math/PartialOrdering;
    .locals 1

    .line 141
    invoke-virtual {p0}, Lscala/math/Numeric$FloatAsIfIntegral$;->reverse()Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public signum(Ljava/lang/Object;)I
    .locals 0

    .line 141
    invoke-static {p0, p1}, Lscala/math/Numeric$class;->signum(Lscala/math/Numeric;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public times(FF)F
    .locals 0

    .line 141
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$FloatIsConflicted$class;->times(Lscala/math/Numeric$FloatIsConflicted;FF)F

    move-result p1

    return p1
.end method

.method public bridge synthetic times(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 141
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$FloatAsIfIntegral$;->times(FF)F

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public toDouble(F)D
    .locals 2

    .line 141
    invoke-static {p0, p1}, Lscala/math/Numeric$FloatIsConflicted$class;->toDouble(Lscala/math/Numeric$FloatIsConflicted;F)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic toDouble(Ljava/lang/Object;)D
    .locals 2

    .line 141
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0, p1}, Lscala/math/Numeric$FloatAsIfIntegral$;->toDouble(F)D

    move-result-wide v0

    return-wide v0
.end method

.method public toFloat(F)F
    .locals 0

    .line 141
    invoke-static {p0, p1}, Lscala/math/Numeric$FloatIsConflicted$class;->toFloat(Lscala/math/Numeric$FloatIsConflicted;F)F

    move-result p1

    return p1
.end method

.method public bridge synthetic toFloat(Ljava/lang/Object;)F
    .locals 0

    .line 141
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0, p1}, Lscala/math/Numeric$FloatAsIfIntegral$;->toFloat(F)F

    move-result p1

    return p1
.end method

.method public toInt(F)I
    .locals 0

    .line 141
    invoke-static {p0, p1}, Lscala/math/Numeric$FloatIsConflicted$class;->toInt(Lscala/math/Numeric$FloatIsConflicted;F)I

    move-result p1

    return p1
.end method

.method public bridge synthetic toInt(Ljava/lang/Object;)I
    .locals 0

    .line 141
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0, p1}, Lscala/math/Numeric$FloatAsIfIntegral$;->toInt(F)I

    move-result p1

    return p1
.end method

.method public toLong(F)J
    .locals 2

    .line 141
    invoke-static {p0, p1}, Lscala/math/Numeric$FloatIsConflicted$class;->toLong(Lscala/math/Numeric$FloatIsConflicted;F)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic toLong(Ljava/lang/Object;)J
    .locals 2

    .line 141
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0, p1}, Lscala/math/Numeric$FloatAsIfIntegral$;->toLong(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 141
    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$FloatAsIfIntegral$;->tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method

.method public tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;
    .locals 0

    .line 141
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->tryCompare(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method

.method public zero()Ljava/lang/Object;
    .locals 1

    .line 141
    invoke-static {p0}, Lscala/math/Numeric$class;->zero(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
