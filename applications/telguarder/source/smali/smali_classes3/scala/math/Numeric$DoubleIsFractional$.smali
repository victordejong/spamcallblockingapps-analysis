.class public Lscala/math/Numeric$DoubleIsFractional$;
.super Ljava/lang/Object;
.source "Numeric.scala"

# interfaces
.implements Lscala/math/Numeric$DoubleIsFractional;
.implements Lscala/math/Ordering$DoubleOrdering;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/math/Numeric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DoubleIsFractional$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/math/Numeric$DoubleIsFractional$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/Numeric$DoubleIsFractional$;

    invoke-direct {v0}, Lscala/math/Numeric$DoubleIsFractional$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/Numeric$DoubleIsFractional$;->MODULE$:Lscala/math/Numeric$DoubleIsFractional$;

    invoke-static {p0}, Lscala/math/PartialOrdering$class;->$init$(Lscala/math/PartialOrdering;)V

    invoke-static {p0}, Lscala/math/Ordering$class;->$init$(Lscala/math/Ordering;)V

    invoke-static {p0}, Lscala/math/Numeric$class;->$init$(Lscala/math/Numeric;)V

    invoke-static {p0}, Lscala/math/Numeric$DoubleIsConflicted$class;->$init$(Lscala/math/Numeric$DoubleIsConflicted;)V

    invoke-static {p0}, Lscala/math/Fractional$class;->$init$(Lscala/math/Fractional;)V

    invoke-static {p0}, Lscala/math/Numeric$DoubleIsFractional$class;->$init$(Lscala/math/Numeric$DoubleIsFractional;)V

    invoke-static {p0}, Lscala/math/Ordering$DoubleOrdering$class;->$init$(Lscala/math/Ordering$DoubleOrdering;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 190
    sget-object v0, Lscala/math/Numeric$DoubleIsFractional$;->MODULE$:Lscala/math/Numeric$DoubleIsFractional$;

    return-object v0
.end method


# virtual methods
.method public abs(D)D
    .locals 0

    .line 190
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$DoubleIsConflicted$class;->abs(Lscala/math/Numeric$DoubleIsConflicted;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic abs(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 190
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/math/Numeric$DoubleIsFractional$;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public compare(DD)I
    .locals 0

    .line 190
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering$class;->compare(Lscala/math/Ordering$DoubleOrdering;DD)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 190
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$DoubleIsFractional$;->compare(DD)I

    move-result p1

    return p1
.end method

.method public div(DD)D
    .locals 0

    .line 190
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Numeric$DoubleIsFractional$class;->div(Lscala/math/Numeric$DoubleIsFractional;DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic div(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 190
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$DoubleIsFractional$;->div(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public equiv(DD)Z
    .locals 0

    .line 190
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering$class;->equiv(Lscala/math/Ordering$DoubleOrdering;DD)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic equiv(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 190
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$DoubleIsFractional$;->equiv(DD)Z

    move-result p1

    return p1
.end method

.method public fromInt(I)D
    .locals 2

    .line 190
    invoke-static {p0, p1}, Lscala/math/Numeric$DoubleIsConflicted$class;->fromInt(Lscala/math/Numeric$DoubleIsConflicted;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic fromInt(I)Ljava/lang/Object;
    .locals 2

    .line 190
    invoke-virtual {p0, p1}, Lscala/math/Numeric$DoubleIsFractional$;->fromInt(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public gt(DD)Z
    .locals 0

    .line 190
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering$class;->gt(Lscala/math/Ordering$DoubleOrdering;DD)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic gt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 190
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$DoubleIsFractional$;->gt(DD)Z

    move-result p1

    return p1
.end method

.method public gteq(DD)Z
    .locals 0

    .line 190
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering$class;->gteq(Lscala/math/Ordering$DoubleOrdering;DD)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic gteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 190
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$DoubleIsFractional$;->gteq(DD)Z

    move-result p1

    return p1
.end method

.method public lt(DD)Z
    .locals 0

    .line 190
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering$class;->lt(Lscala/math/Ordering$DoubleOrdering;DD)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic lt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 190
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$DoubleIsFractional$;->lt(DD)Z

    move-result p1

    return p1
.end method

.method public lteq(DD)Z
    .locals 0

    .line 190
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering$class;->lteq(Lscala/math/Ordering$DoubleOrdering;DD)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic lteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 190
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$DoubleIsFractional$;->lteq(DD)Z

    move-result p1

    return p1
.end method

.method public max(DD)D
    .locals 0

    .line 190
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering$class;->max(Lscala/math/Ordering$DoubleOrdering;DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 190
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$DoubleIsFractional$;->max(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public min(DD)D
    .locals 0

    .line 190
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering$class;->min(Lscala/math/Ordering$DoubleOrdering;DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 190
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$DoubleIsFractional$;->min(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public minus(DD)D
    .locals 0

    .line 190
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Numeric$DoubleIsConflicted$class;->minus(Lscala/math/Numeric$DoubleIsConflicted;DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic minus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 190
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$DoubleIsFractional$;->minus(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public mkNumericOps(Ljava/lang/Object;)Lscala/math/Fractional$FractionalOps;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/math/Fractional$FractionalOps;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/math/Fractional$class;->mkNumericOps(Lscala/math/Fractional;Ljava/lang/Object;)Lscala/math/Fractional$FractionalOps;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mkNumericOps(Ljava/lang/Object;)Lscala/math/Numeric$Ops;
    .locals 0

    .line 190
    invoke-virtual {p0, p1}, Lscala/math/Numeric$DoubleIsFractional$;->mkNumericOps(Ljava/lang/Object;)Lscala/math/Fractional$FractionalOps;

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

    .line 190
    invoke-static {p0, p1}, Lscala/math/Ordering$class;->mkOrderingOps(Lscala/math/Ordering;Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object p1

    return-object p1
.end method

.method public negate(D)D
    .locals 0

    .line 190
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$DoubleIsConflicted$class;->negate(Lscala/math/Numeric$DoubleIsConflicted;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic negate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 190
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/math/Numeric$DoubleIsFractional$;->negate(D)D

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

    .line 190
    invoke-static {p0, p1}, Lscala/math/Ordering$class;->on(Lscala/math/Ordering;Lscala/Function1;)Lscala/math/Ordering;

    move-result-object p1

    return-object p1
.end method

.method public one()Ljava/lang/Object;
    .locals 1

    .line 190
    invoke-static {p0}, Lscala/math/Numeric$class;->one(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public plus(DD)D
    .locals 0

    .line 190
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Numeric$DoubleIsConflicted$class;->plus(Lscala/math/Numeric$DoubleIsConflicted;DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic plus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 190
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$DoubleIsFractional$;->plus(DD)D

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

    .line 190
    invoke-static {p0}, Lscala/math/Ordering$DoubleOrdering$class;->reverse(Lscala/math/Ordering$DoubleOrdering;)Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse()Lscala/math/PartialOrdering;
    .locals 1

    .line 190
    invoke-virtual {p0}, Lscala/math/Numeric$DoubleIsFractional$;->reverse()Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public signum(Ljava/lang/Object;)I
    .locals 0

    .line 190
    invoke-static {p0, p1}, Lscala/math/Numeric$class;->signum(Lscala/math/Numeric;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public times(DD)D
    .locals 0

    .line 190
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Numeric$DoubleIsConflicted$class;->times(Lscala/math/Numeric$DoubleIsConflicted;DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic times(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 190
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Numeric$DoubleIsFractional$;->times(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public toDouble(D)D
    .locals 0

    .line 190
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$DoubleIsConflicted$class;->toDouble(Lscala/math/Numeric$DoubleIsConflicted;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic toDouble(Ljava/lang/Object;)D
    .locals 2

    .line 190
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/math/Numeric$DoubleIsFractional$;->toDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public toFloat(D)F
    .locals 0

    .line 190
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$DoubleIsConflicted$class;->toFloat(Lscala/math/Numeric$DoubleIsConflicted;D)F

    move-result p1

    return p1
.end method

.method public bridge synthetic toFloat(Ljava/lang/Object;)F
    .locals 2

    .line 190
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/math/Numeric$DoubleIsFractional$;->toFloat(D)F

    move-result p1

    return p1
.end method

.method public toInt(D)I
    .locals 0

    .line 190
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$DoubleIsConflicted$class;->toInt(Lscala/math/Numeric$DoubleIsConflicted;D)I

    move-result p1

    return p1
.end method

.method public bridge synthetic toInt(Ljava/lang/Object;)I
    .locals 2

    .line 190
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/math/Numeric$DoubleIsFractional$;->toInt(D)I

    move-result p1

    return p1
.end method

.method public toLong(D)J
    .locals 0

    .line 190
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$DoubleIsConflicted$class;->toLong(Lscala/math/Numeric$DoubleIsConflicted;D)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic toLong(Ljava/lang/Object;)J
    .locals 2

    .line 190
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/math/Numeric$DoubleIsFractional$;->toLong(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 190
    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$DoubleIsFractional$;->tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method

.method public tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;
    .locals 0

    .line 190
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->tryCompare(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method

.method public zero()Ljava/lang/Object;
    .locals 1

    .line 190
    invoke-static {p0}, Lscala/math/Numeric$class;->zero(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
