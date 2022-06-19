.class public Lscala/collection/immutable/Range$Int$;
.super Ljava/lang/Object;
.source "Range.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Int$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/Range$Int$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/Range$Int$;

    invoke-direct {v0}, Lscala/collection/immutable/Range$Int$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/Range$Int$;->MODULE$:Lscala/collection/immutable/Range$Int$;

    return-void
.end method


# virtual methods
.method public apply(III)Lscala/collection/immutable/NumericRange$Exclusive;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lscala/collection/immutable/NumericRange$Exclusive<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 511
    sget-object v0, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p3

    sget-object v1, Lscala/math/Numeric$IntIsIntegral$;->MODULE$:Lscala/math/Numeric$IntIsIntegral$;

    invoke-virtual {v0, p1, p2, p3, v1}, Lscala/collection/immutable/NumericRange$;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange$Exclusive;

    move-result-object p1

    return-object p1
.end method

.method public inclusive(III)Lscala/collection/immutable/NumericRange$Inclusive;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lscala/collection/immutable/NumericRange$Inclusive<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 512
    sget-object v0, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p3

    sget-object v1, Lscala/math/Numeric$IntIsIntegral$;->MODULE$:Lscala/math/Numeric$IntIsIntegral$;

    invoke-virtual {v0, p1, p2, p3, v1}, Lscala/collection/immutable/NumericRange$;->inclusive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange$Inclusive;

    move-result-object p1

    return-object p1
.end method
