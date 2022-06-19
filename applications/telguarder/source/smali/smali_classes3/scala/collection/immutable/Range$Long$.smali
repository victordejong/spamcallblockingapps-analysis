.class public Lscala/collection/immutable/Range$Long$;
.super Ljava/lang/Object;
.source "Range.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Long$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/Range$Long$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/Range$Long$;

    invoke-direct {v0}, Lscala/collection/immutable/Range$Long$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/Range$Long$;->MODULE$:Lscala/collection/immutable/Range$Long$;

    return-void
.end method


# virtual methods
.method public apply(JJJ)Lscala/collection/immutable/NumericRange$Exclusive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ)",
            "Lscala/collection/immutable/NumericRange$Exclusive<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 464
    sget-object v0, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p5, p6}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p3

    sget-object p4, Lscala/math/Numeric$LongIsIntegral$;->MODULE$:Lscala/math/Numeric$LongIsIntegral$;

    invoke-virtual {v0, p1, p2, p3, p4}, Lscala/collection/immutable/NumericRange$;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange$Exclusive;

    move-result-object p1

    return-object p1
.end method

.method public inclusive(JJJ)Lscala/collection/immutable/NumericRange$Inclusive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ)",
            "Lscala/collection/immutable/NumericRange$Inclusive<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 465
    sget-object v0, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p5, p6}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p3

    sget-object p4, Lscala/math/Numeric$LongIsIntegral$;->MODULE$:Lscala/math/Numeric$LongIsIntegral$;

    invoke-virtual {v0, p1, p2, p3, p4}, Lscala/collection/immutable/NumericRange$;->inclusive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange$Inclusive;

    move-result-object p1

    return-object p1
.end method
