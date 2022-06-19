.class public final Lscala/Double$;
.super Ljava/lang/Object;
.source "Double.scala"

# interfaces
.implements Lscala/AnyValCompanion;


# static fields
.field public static final MODULE$:Lscala/Double$;


# instance fields
.field private final MaxValue:D

.field private final MinPositiveValue:D

.field private final MinValue:D

.field private final NaN:D

.field private final NegativeInfinity:D

.field private final PositiveInfinity:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Double$;

    invoke-direct {v0}, Lscala/Double$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Double$;->MODULE$:Lscala/Double$;

    const-wide v0, -0x10000000000001L

    .line 220
    iput-wide v0, p0, Lscala/Double$;->MinValue:D

    return-void
.end method


# virtual methods
.method public final MaxValue()D
    .locals 2

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    return-wide v0
.end method

.method public final MinPositiveValue()D
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public final MinValue()D
    .locals 2

    .line 220
    iget-wide v0, p0, Lscala/Double$;->MinValue:D

    return-wide v0
.end method

.method public final NaN()D
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public final NegativeInfinity()D
    .locals 2

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0
.end method

.method public final PositiveInfinity()D
    .locals 2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public box(D)Ljava/lang/Double;
    .locals 0

    .line 232
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "object scala.Double"

    return-object v0
.end method

.method public unbox(Ljava/lang/Object;)D
    .locals 2

    .line 244
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method
