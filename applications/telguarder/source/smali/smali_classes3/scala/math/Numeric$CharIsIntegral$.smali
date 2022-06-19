.class public Lscala/math/Numeric$CharIsIntegral$;
.super Ljava/lang/Object;
.source "Numeric.scala"

# interfaces
.implements Lscala/math/Numeric$CharIsIntegral;
.implements Lscala/math/Ordering$CharOrdering;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/math/Numeric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharIsIntegral$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/math/Numeric$CharIsIntegral$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/Numeric$CharIsIntegral$;

    invoke-direct {v0}, Lscala/math/Numeric$CharIsIntegral$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/Numeric$CharIsIntegral$;->MODULE$:Lscala/math/Numeric$CharIsIntegral$;

    invoke-static {p0}, Lscala/math/PartialOrdering$class;->$init$(Lscala/math/PartialOrdering;)V

    invoke-static {p0}, Lscala/math/Ordering$class;->$init$(Lscala/math/Ordering;)V

    invoke-static {p0}, Lscala/math/Numeric$class;->$init$(Lscala/math/Numeric;)V

    invoke-static {p0}, Lscala/math/Integral$class;->$init$(Lscala/math/Integral;)V

    invoke-static {p0}, Lscala/math/Numeric$CharIsIntegral$class;->$init$(Lscala/math/Numeric$CharIsIntegral;)V

    invoke-static {p0}, Lscala/math/Ordering$CharOrdering$class;->$init$(Lscala/math/Ordering$CharOrdering;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 103
    sget-object v0, Lscala/math/Numeric$CharIsIntegral$;->MODULE$:Lscala/math/Numeric$CharIsIntegral$;

    return-object v0
.end method


# virtual methods
.method public abs(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-static {p0, p1}, Lscala/math/Numeric$class;->abs(Lscala/math/Numeric;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public compare(CC)I
    .locals 0

    .line 103
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$CharOrdering$class;->compare(Lscala/math/Ordering$CharOrdering;CC)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 103
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$CharIsIntegral$;->compare(CC)I

    move-result p1

    return p1
.end method

.method public equiv(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 103
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->equiv(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public fromInt(I)C
    .locals 0

    .line 103
    invoke-static {p0, p1}, Lscala/math/Numeric$CharIsIntegral$class;->fromInt(Lscala/math/Numeric$CharIsIntegral;I)C

    move-result p1

    return p1
.end method

.method public bridge synthetic fromInt(I)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lscala/math/Numeric$CharIsIntegral$;->fromInt(I)C

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public gt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 103
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->gt(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public gteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 103
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->gteq(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public lt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 103
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->lt(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public lteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 103
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->lteq(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->max(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->min(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public minus(CC)C
    .locals 0

    .line 103
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$CharIsIntegral$class;->minus(Lscala/math/Numeric$CharIsIntegral;CC)C

    move-result p1

    return p1
.end method

.method public bridge synthetic minus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$CharIsIntegral$;->minus(CC)C

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

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

    .line 103
    invoke-static {p0, p1}, Lscala/math/Integral$class;->mkNumericOps(Lscala/math/Integral;Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mkNumericOps(Ljava/lang/Object;)Lscala/math/Numeric$Ops;
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lscala/math/Numeric$CharIsIntegral$;->mkNumericOps(Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

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

    .line 103
    invoke-static {p0, p1}, Lscala/math/Ordering$class;->mkOrderingOps(Lscala/math/Ordering;Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object p1

    return-object p1
.end method

.method public negate(C)C
    .locals 0

    .line 103
    invoke-static {p0, p1}, Lscala/math/Numeric$CharIsIntegral$class;->negate(Lscala/math/Numeric$CharIsIntegral;C)C

    move-result p1

    return p1
.end method

.method public bridge synthetic negate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p1

    invoke-virtual {p0, p1}, Lscala/math/Numeric$CharIsIntegral$;->negate(C)C

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

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

    .line 103
    invoke-static {p0, p1}, Lscala/math/Ordering$class;->on(Lscala/math/Ordering;Lscala/Function1;)Lscala/math/Ordering;

    move-result-object p1

    return-object p1
.end method

.method public one()Ljava/lang/Object;
    .locals 1

    .line 103
    invoke-static {p0}, Lscala/math/Numeric$class;->one(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public plus(CC)C
    .locals 0

    .line 103
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$CharIsIntegral$class;->plus(Lscala/math/Numeric$CharIsIntegral;CC)C

    move-result p1

    return p1
.end method

.method public bridge synthetic plus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$CharIsIntegral$;->plus(CC)C

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public quot(CC)C
    .locals 0

    .line 103
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$CharIsIntegral$class;->quot(Lscala/math/Numeric$CharIsIntegral;CC)C

    move-result p1

    return p1
.end method

.method public bridge synthetic quot(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$CharIsIntegral$;->quot(CC)C

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public rem(CC)C
    .locals 0

    .line 103
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$CharIsIntegral$class;->rem(Lscala/math/Numeric$CharIsIntegral;CC)C

    move-result p1

    return p1
.end method

.method public bridge synthetic rem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$CharIsIntegral$;->rem(CC)C

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

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

    .line 103
    invoke-static {p0}, Lscala/math/Ordering$class;->reverse(Lscala/math/Ordering;)Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse()Lscala/math/PartialOrdering;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lscala/math/Numeric$CharIsIntegral$;->reverse()Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public signum(Ljava/lang/Object;)I
    .locals 0

    .line 103
    invoke-static {p0, p1}, Lscala/math/Numeric$class;->signum(Lscala/math/Numeric;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public times(CC)C
    .locals 0

    .line 103
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$CharIsIntegral$class;->times(Lscala/math/Numeric$CharIsIntegral;CC)C

    move-result p1

    return p1
.end method

.method public bridge synthetic times(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$CharIsIntegral$;->times(CC)C

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public toDouble(C)D
    .locals 2

    .line 103
    invoke-static {p0, p1}, Lscala/math/Numeric$CharIsIntegral$class;->toDouble(Lscala/math/Numeric$CharIsIntegral;C)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic toDouble(Ljava/lang/Object;)D
    .locals 2

    .line 103
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p1

    invoke-virtual {p0, p1}, Lscala/math/Numeric$CharIsIntegral$;->toDouble(C)D

    move-result-wide v0

    return-wide v0
.end method

.method public toFloat(C)F
    .locals 0

    .line 103
    invoke-static {p0, p1}, Lscala/math/Numeric$CharIsIntegral$class;->toFloat(Lscala/math/Numeric$CharIsIntegral;C)F

    move-result p1

    return p1
.end method

.method public bridge synthetic toFloat(Ljava/lang/Object;)F
    .locals 0

    .line 103
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p1

    invoke-virtual {p0, p1}, Lscala/math/Numeric$CharIsIntegral$;->toFloat(C)F

    move-result p1

    return p1
.end method

.method public toInt(C)I
    .locals 0

    .line 103
    invoke-static {p0, p1}, Lscala/math/Numeric$CharIsIntegral$class;->toInt(Lscala/math/Numeric$CharIsIntegral;C)I

    move-result p1

    return p1
.end method

.method public bridge synthetic toInt(Ljava/lang/Object;)I
    .locals 0

    .line 103
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p1

    invoke-virtual {p0, p1}, Lscala/math/Numeric$CharIsIntegral$;->toInt(C)I

    move-result p1

    return p1
.end method

.method public toLong(C)J
    .locals 2

    .line 103
    invoke-static {p0, p1}, Lscala/math/Numeric$CharIsIntegral$class;->toLong(Lscala/math/Numeric$CharIsIntegral;C)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic toLong(Ljava/lang/Object;)J
    .locals 2

    .line 103
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p1

    invoke-virtual {p0, p1}, Lscala/math/Numeric$CharIsIntegral$;->toLong(C)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 103
    invoke-virtual {p0, p1, p2}, Lscala/math/Numeric$CharIsIntegral$;->tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method

.method public tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;
    .locals 0

    .line 103
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->tryCompare(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method

.method public zero()Ljava/lang/Object;
    .locals 1

    .line 103
    invoke-static {p0}, Lscala/math/Numeric$class;->zero(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
