.class public Lscala/math/Numeric$ByteIsIntegral$;
.super Ljava/lang/Object;
.source "Numeric.scala"

# interfaces
.implements Lscala/math/Numeric$ByteIsIntegral;
.implements Lscala/math/Ordering$ByteOrdering;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/math/Numeric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteIsIntegral$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/math/Numeric$ByteIsIntegral$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/Numeric$ByteIsIntegral$;

    invoke-direct {v0}, Lscala/math/Numeric$ByteIsIntegral$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/Numeric$ByteIsIntegral$;->MODULE$:Lscala/math/Numeric$ByteIsIntegral$;

    invoke-static {p0}, Lscala/math/PartialOrdering$class;->$init$(Lscala/math/PartialOrdering;)V

    invoke-static {p0}, Lscala/math/Ordering$class;->$init$(Lscala/math/Ordering;)V

    invoke-static {p0}, Lscala/math/Numeric$class;->$init$(Lscala/math/Numeric;)V

    invoke-static {p0}, Lscala/math/Integral$class;->$init$(Lscala/math/Integral;)V

    invoke-static {p0}, Lscala/math/Numeric$ByteIsIntegral$class;->$init$(Lscala/math/Numeric$ByteIsIntegral;)V

    invoke-static {p0}, Lscala/math/Ordering$ByteOrdering$class;->$init$(Lscala/math/Ordering$ByteOrdering;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 88
    sget-object v0, Lscala/math/Numeric$ByteIsIntegral$;->MODULE$:Lscala/math/Numeric$ByteIsIntegral$;

    return-object v0
.end method


# virtual methods
.method public abs(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-static {p0, p1}, Lscala/math/Numeric$class;->abs(Lscala/math/Numeric;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public compare(BB)I
    .locals 0

    .line 88
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$ByteOrdering$class;->compare(Lscala/math/Ordering$ByteOrdering;BB)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 88
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$ByteIsIntegral$;->compare(BB)I

    move-result p1

    return p1
.end method

.method public equiv(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 88
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->equiv(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public fromInt(I)B
    .locals 0

    .line 88
    invoke-static {p0, p1}, Lscala/math/Numeric$ByteIsIntegral$class;->fromInt(Lscala/math/Numeric$ByteIsIntegral;I)B

    move-result p1

    return p1
.end method

.method public bridge synthetic fromInt(I)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lscala/math/Numeric$ByteIsIntegral$;->fromInt(I)B

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public gt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 88
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->gt(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public gteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 88
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->gteq(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public lt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 88
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->lt(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public lteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 88
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->lteq(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->max(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->min(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public minus(BB)B
    .locals 0

    .line 88
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$ByteIsIntegral$class;->minus(Lscala/math/Numeric$ByteIsIntegral;BB)B

    move-result p1

    return p1
.end method

.method public bridge synthetic minus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$ByteIsIntegral$;->minus(BB)B

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

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

    .line 88
    invoke-static {p0, p1}, Lscala/math/Integral$class;->mkNumericOps(Lscala/math/Integral;Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mkNumericOps(Ljava/lang/Object;)Lscala/math/Numeric$Ops;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lscala/math/Numeric$ByteIsIntegral$;->mkNumericOps(Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

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

    .line 88
    invoke-static {p0, p1}, Lscala/math/Ordering$class;->mkOrderingOps(Lscala/math/Ordering;Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object p1

    return-object p1
.end method

.method public negate(B)B
    .locals 0

    .line 88
    invoke-static {p0, p1}, Lscala/math/Numeric$ByteIsIntegral$class;->negate(Lscala/math/Numeric$ByteIsIntegral;B)B

    move-result p1

    return p1
.end method

.method public bridge synthetic negate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p1

    invoke-virtual {p0, p1}, Lscala/math/Numeric$ByteIsIntegral$;->negate(B)B

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

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

    .line 88
    invoke-static {p0, p1}, Lscala/math/Ordering$class;->on(Lscala/math/Ordering;Lscala/Function1;)Lscala/math/Ordering;

    move-result-object p1

    return-object p1
.end method

.method public one()Ljava/lang/Object;
    .locals 1

    .line 88
    invoke-static {p0}, Lscala/math/Numeric$class;->one(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public plus(BB)B
    .locals 0

    .line 88
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$ByteIsIntegral$class;->plus(Lscala/math/Numeric$ByteIsIntegral;BB)B

    move-result p1

    return p1
.end method

.method public bridge synthetic plus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$ByteIsIntegral$;->plus(BB)B

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public quot(BB)B
    .locals 0

    .line 88
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$ByteIsIntegral$class;->quot(Lscala/math/Numeric$ByteIsIntegral;BB)B

    move-result p1

    return p1
.end method

.method public bridge synthetic quot(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$ByteIsIntegral$;->quot(BB)B

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public rem(BB)B
    .locals 0

    .line 88
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$ByteIsIntegral$class;->rem(Lscala/math/Numeric$ByteIsIntegral;BB)B

    move-result p1

    return p1
.end method

.method public bridge synthetic rem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$ByteIsIntegral$;->rem(BB)B

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

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

    .line 88
    invoke-static {p0}, Lscala/math/Ordering$class;->reverse(Lscala/math/Ordering;)Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse()Lscala/math/PartialOrdering;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lscala/math/Numeric$ByteIsIntegral$;->reverse()Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public signum(Ljava/lang/Object;)I
    .locals 0

    .line 88
    invoke-static {p0, p1}, Lscala/math/Numeric$class;->signum(Lscala/math/Numeric;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public times(BB)B
    .locals 0

    .line 88
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$ByteIsIntegral$class;->times(Lscala/math/Numeric$ByteIsIntegral;BB)B

    move-result p1

    return p1
.end method

.method public bridge synthetic times(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$ByteIsIntegral$;->times(BB)B

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public toDouble(B)D
    .locals 2

    .line 88
    invoke-static {p0, p1}, Lscala/math/Numeric$ByteIsIntegral$class;->toDouble(Lscala/math/Numeric$ByteIsIntegral;B)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic toDouble(Ljava/lang/Object;)D
    .locals 2

    .line 88
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p1

    invoke-virtual {p0, p1}, Lscala/math/Numeric$ByteIsIntegral$;->toDouble(B)D

    move-result-wide v0

    return-wide v0
.end method

.method public toFloat(B)F
    .locals 0

    .line 88
    invoke-static {p0, p1}, Lscala/math/Numeric$ByteIsIntegral$class;->toFloat(Lscala/math/Numeric$ByteIsIntegral;B)F

    move-result p1

    return p1
.end method

.method public bridge synthetic toFloat(Ljava/lang/Object;)F
    .locals 0

    .line 88
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p1

    invoke-virtual {p0, p1}, Lscala/math/Numeric$ByteIsIntegral$;->toFloat(B)F

    move-result p1

    return p1
.end method

.method public toInt(B)I
    .locals 0

    .line 88
    invoke-static {p0, p1}, Lscala/math/Numeric$ByteIsIntegral$class;->toInt(Lscala/math/Numeric$ByteIsIntegral;B)I

    move-result p1

    return p1
.end method

.method public bridge synthetic toInt(Ljava/lang/Object;)I
    .locals 0

    .line 88
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p1

    invoke-virtual {p0, p1}, Lscala/math/Numeric$ByteIsIntegral$;->toInt(B)I

    move-result p1

    return p1
.end method

.method public toLong(B)J
    .locals 2

    .line 88
    invoke-static {p0, p1}, Lscala/math/Numeric$ByteIsIntegral$class;->toLong(Lscala/math/Numeric$ByteIsIntegral;B)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic toLong(Ljava/lang/Object;)J
    .locals 2

    .line 88
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p1

    invoke-virtual {p0, p1}, Lscala/math/Numeric$ByteIsIntegral$;->toLong(B)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 88
    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$ByteIsIntegral$;->tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method

.method public tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;
    .locals 0

    .line 88
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->tryCompare(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method

.method public zero()Ljava/lang/Object;
    .locals 1

    .line 88
    invoke-static {p0}, Lscala/math/Numeric$class;->zero(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
