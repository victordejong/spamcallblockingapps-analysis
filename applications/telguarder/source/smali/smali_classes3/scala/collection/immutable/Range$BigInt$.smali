.class public Lscala/collection/immutable/Range$BigInt$;
.super Ljava/lang/Object;
.source "Range.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigInt$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/Range$BigInt$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/Range$BigInt$;

    invoke-direct {v0}, Lscala/collection/immutable/Range$BigInt$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/Range$BigInt$;->MODULE$:Lscala/collection/immutable/Range$BigInt$;

    return-void
.end method


# virtual methods
.method public apply(Lscala/math/BigInt;Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/collection/immutable/NumericRange$Exclusive;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/math/BigInt;",
            "Lscala/math/BigInt;",
            "Lscala/math/BigInt;",
            ")",
            "Lscala/collection/immutable/NumericRange$Exclusive<",
            "Lscala/math/BigInt;",
            ">;"
        }
    .end annotation

    .line 459
    sget-object v0, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    sget-object v1, Lscala/math/Numeric$BigIntIsIntegral$;->MODULE$:Lscala/math/Numeric$BigIntIsIntegral$;

    invoke-virtual {v0, p1, p2, p3, v1}, Lscala/collection/immutable/NumericRange$;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange$Exclusive;

    move-result-object p1

    return-object p1
.end method

.method public inclusive(Lscala/math/BigInt;Lscala/math/BigInt;Lscala/math/BigInt;)Lscala/collection/immutable/NumericRange$Inclusive;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/math/BigInt;",
            "Lscala/math/BigInt;",
            "Lscala/math/BigInt;",
            ")",
            "Lscala/collection/immutable/NumericRange$Inclusive<",
            "Lscala/math/BigInt;",
            ">;"
        }
    .end annotation

    .line 460
    sget-object v0, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    sget-object v1, Lscala/math/Numeric$BigIntIsIntegral$;->MODULE$:Lscala/math/Numeric$BigIntIsIntegral$;

    invoke-virtual {v0, p1, p2, p3, v1}, Lscala/collection/immutable/NumericRange$;->inclusive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange$Inclusive;

    move-result-object p1

    return-object p1
.end method
