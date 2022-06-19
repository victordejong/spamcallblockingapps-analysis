.class public Lscala/math/Numeric$ShortIsIntegral$;
.super Ljava/lang/Object;
.source "Numeric.scala"

# interfaces
.implements Lscala/math/Numeric$ShortIsIntegral;
.implements Lscala/math/Ordering$ShortOrdering;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/math/Numeric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortIsIntegral$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/math/Numeric$ShortIsIntegral$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/Numeric$ShortIsIntegral$;

    invoke-direct {v0}, Lscala/math/Numeric$ShortIsIntegral$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/Numeric$ShortIsIntegral$;->MODULE$:Lscala/math/Numeric$ShortIsIntegral$;

    invoke-static {p0}, Lscala/math/PartialOrdering$class;->$init$(Lscala/math/PartialOrdering;)V

    invoke-static {p0}, Lscala/math/Ordering$class;->$init$(Lscala/math/Ordering;)V

    invoke-static {p0}, Lscala/math/Numeric$class;->$init$(Lscala/math/Numeric;)V

    invoke-static {p0}, Lscala/math/Integral$class;->$init$(Lscala/math/Integral;)V

    invoke-static {p0}, Lscala/math/Numeric$ShortIsIntegral$class;->$init$(Lscala/math/Numeric$ShortIsIntegral;)V

    invoke-static {p0}, Lscala/math/Ordering$ShortOrdering$class;->$init$(Lscala/math/Ordering$ShortOrdering;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 73
    sget-object v0, Lscala/math/Numeric$ShortIsIntegral$;->MODULE$:Lscala/math/Numeric$ShortIsIntegral$;

    return-object v0
.end method


# virtual methods
.method public abs(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-static {p0, p1}, Lscala/math/Numeric$class;->abs(Lscala/math/Numeric;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 73
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$ShortIsIntegral$;->compare(SS)I

    move-result p1

    return p1
.end method

.method public compare(SS)I
    .locals 0

    .line 73
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$ShortOrdering$class;->compare(Lscala/math/Ordering$ShortOrdering;SS)I

    move-result p1

    return p1
.end method

.method public equiv(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 73
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->equiv(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic fromInt(I)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lscala/math/Numeric$ShortIsIntegral$;->fromInt(I)S

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public fromInt(I)S
    .locals 0

    .line 73
    invoke-static {p0, p1}, Lscala/math/Numeric$ShortIsIntegral$class;->fromInt(Lscala/math/Numeric$ShortIsIntegral;I)S

    move-result p1

    return p1
.end method

.method public gt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 73
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->gt(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public gteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 73
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->gteq(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public lt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 73
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->lt(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public lteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 73
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->lteq(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->max(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->min(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$ShortIsIntegral$;->minus(SS)S

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public minus(SS)S
    .locals 0

    .line 73
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$ShortIsIntegral$class;->minus(Lscala/math/Numeric$ShortIsIntegral;SS)S

    move-result p1

    return p1
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

    .line 73
    invoke-static {p0, p1}, Lscala/math/Integral$class;->mkNumericOps(Lscala/math/Integral;Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mkNumericOps(Ljava/lang/Object;)Lscala/math/Numeric$Ops;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lscala/math/Numeric$ShortIsIntegral$;->mkNumericOps(Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

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

    .line 73
    invoke-static {p0, p1}, Lscala/math/Ordering$class;->mkOrderingOps(Lscala/math/Ordering;Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic negate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p1

    invoke-virtual {p0, p1}, Lscala/math/Numeric$ShortIsIntegral$;->negate(S)S

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public negate(S)S
    .locals 0

    .line 73
    invoke-static {p0, p1}, Lscala/math/Numeric$ShortIsIntegral$class;->negate(Lscala/math/Numeric$ShortIsIntegral;S)S

    move-result p1

    return p1
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

    .line 73
    invoke-static {p0, p1}, Lscala/math/Ordering$class;->on(Lscala/math/Ordering;Lscala/Function1;)Lscala/math/Ordering;

    move-result-object p1

    return-object p1
.end method

.method public one()Ljava/lang/Object;
    .locals 1

    .line 73
    invoke-static {p0}, Lscala/math/Numeric$class;->one(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$ShortIsIntegral$;->plus(SS)S

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public plus(SS)S
    .locals 0

    .line 73
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$ShortIsIntegral$class;->plus(Lscala/math/Numeric$ShortIsIntegral;SS)S

    move-result p1

    return p1
.end method

.method public bridge synthetic quot(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$ShortIsIntegral$;->quot(SS)S

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public quot(SS)S
    .locals 0

    .line 73
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$ShortIsIntegral$class;->quot(Lscala/math/Numeric$ShortIsIntegral;SS)S

    move-result p1

    return p1
.end method

.method public bridge synthetic rem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$ShortIsIntegral$;->rem(SS)S

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public rem(SS)S
    .locals 0

    .line 73
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$ShortIsIntegral$class;->rem(Lscala/math/Numeric$ShortIsIntegral;SS)S

    move-result p1

    return p1
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

    .line 73
    invoke-static {p0}, Lscala/math/Ordering$class;->reverse(Lscala/math/Ordering;)Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse()Lscala/math/PartialOrdering;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lscala/math/Numeric$ShortIsIntegral$;->reverse()Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public signum(Ljava/lang/Object;)I
    .locals 0

    .line 73
    invoke-static {p0, p1}, Lscala/math/Numeric$class;->signum(Lscala/math/Numeric;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic times(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$ShortIsIntegral$;->times(SS)S

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public times(SS)S
    .locals 0

    .line 73
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$ShortIsIntegral$class;->times(Lscala/math/Numeric$ShortIsIntegral;SS)S

    move-result p1

    return p1
.end method

.method public bridge synthetic toDouble(Ljava/lang/Object;)D
    .locals 2

    .line 73
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p1

    invoke-virtual {p0, p1}, Lscala/math/Numeric$ShortIsIntegral$;->toDouble(S)D

    move-result-wide v0

    return-wide v0
.end method

.method public toDouble(S)D
    .locals 2

    .line 73
    invoke-static {p0, p1}, Lscala/math/Numeric$ShortIsIntegral$class;->toDouble(Lscala/math/Numeric$ShortIsIntegral;S)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic toFloat(Ljava/lang/Object;)F
    .locals 0

    .line 73
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p1

    invoke-virtual {p0, p1}, Lscala/math/Numeric$ShortIsIntegral$;->toFloat(S)F

    move-result p1

    return p1
.end method

.method public toFloat(S)F
    .locals 0

    .line 73
    invoke-static {p0, p1}, Lscala/math/Numeric$ShortIsIntegral$class;->toFloat(Lscala/math/Numeric$ShortIsIntegral;S)F

    move-result p1

    return p1
.end method

.method public bridge synthetic toInt(Ljava/lang/Object;)I
    .locals 0

    .line 73
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p1

    invoke-virtual {p0, p1}, Lscala/math/Numeric$ShortIsIntegral$;->toInt(S)I

    move-result p1

    return p1
.end method

.method public toInt(S)I
    .locals 0

    .line 73
    invoke-static {p0, p1}, Lscala/math/Numeric$ShortIsIntegral$class;->toInt(Lscala/math/Numeric$ShortIsIntegral;S)I

    move-result p1

    return p1
.end method

.method public bridge synthetic toLong(Ljava/lang/Object;)J
    .locals 2

    .line 73
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p1

    invoke-virtual {p0, p1}, Lscala/math/Numeric$ShortIsIntegral$;->toLong(S)J

    move-result-wide v0

    return-wide v0
.end method

.method public toLong(S)J
    .locals 2

    .line 73
    invoke-static {p0, p1}, Lscala/math/Numeric$ShortIsIntegral$class;->toLong(Lscala/math/Numeric$ShortIsIntegral;S)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 73
    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$ShortIsIntegral$;->tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method

.method public tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;
    .locals 0

    .line 73
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->tryCompare(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method

.method public zero()Ljava/lang/Object;
    .locals 1

    .line 73
    invoke-static {p0}, Lscala/math/Numeric$class;->zero(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
