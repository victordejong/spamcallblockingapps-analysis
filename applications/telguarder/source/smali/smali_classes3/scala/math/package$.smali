.class public final Lscala/math/package$;
.super Ljava/lang/Object;
.source "package.scala"


# static fields
.field public static final MODULE$:Lscala/math/package$;


# instance fields
.field private final E:D

.field private final Pi:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/package$;

    invoke-direct {v0}, Lscala/math/package$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    return-void
.end method


# virtual methods
.method public final E()D
    .locals 2

    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    return-wide v0
.end method

.method public IEEEremainder(DD)D
    .locals 0

    .line 63
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public final Pi()D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    return-wide v0
.end method

.method public abs(D)D
    .locals 0

    .line 117
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public abs(F)F
    .locals 0

    .line 116
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method

.method public abs(I)I
    .locals 0

    .line 114
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    return p1
.end method

.method public abs(J)J
    .locals 0

    .line 115
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public acos(D)D
    .locals 0

    .line 35
    invoke-static {p1, p2}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public asin(D)D
    .locals 0

    .line 34
    invoke-static {p1, p2}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public atan(D)D
    .locals 0

    .line 36
    invoke-static {p1, p2}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public atan2(DD)D
    .locals 0

    .line 85
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public cbrt(D)D
    .locals 0

    .line 144
    invoke-static {p1, p2}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public ceil(D)D
    .locals 0

    .line 65
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public cos(D)D
    .locals 0

    .line 32
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public cosh(D)D
    .locals 0

    .line 171
    invoke-static {p1, p2}, Ljava/lang/Math;->cosh(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public exp(D)D
    .locals 0

    .line 60
    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public expm1(D)D
    .locals 0

    .line 151
    invoke-static {p1, p2}, Ljava/lang/Math;->expm1(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public floor(D)D
    .locals 0

    .line 66
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public hypot(DD)D
    .locals 0

    .line 183
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public log(D)D
    .locals 0

    .line 61
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public log10(D)D
    .locals 0

    .line 161
    invoke-static {p1, p2}, Ljava/lang/Math;->log10(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public log1p(D)D
    .locals 0

    .line 158
    invoke-static {p1, p2}, Ljava/lang/Math;->log1p(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public max(DD)D
    .locals 0

    .line 122
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public max(FF)F
    .locals 0

    .line 121
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public max(II)I
    .locals 0

    .line 119
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public max(JJ)J
    .locals 0

    .line 120
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public min(DD)D
    .locals 0

    .line 127
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public min(FF)F
    .locals 0

    .line 126
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method public min(II)I
    .locals 0

    .line 124
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public min(JJ)J
    .locals 0

    .line 125
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public pow(DD)D
    .locals 0

    .line 94
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public random()D
    .locals 2

    .line 29
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    return-wide v0
.end method

.method public rint(D)D
    .locals 0

    .line 75
    invoke-static {p1, p2}, Ljava/lang/Math;->rint(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public round(F)I
    .locals 0

    .line 105
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public round(D)J
    .locals 0

    .line 112
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    return-wide p1
.end method

.method public round(J)J
    .locals 0

    return-wide p1
.end method

.method public signum(D)D
    .locals 0

    .line 137
    invoke-static {p1, p2}, Ljava/lang/Math;->signum(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public signum(F)F
    .locals 0

    .line 136
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    return p1
.end method

.method public signum(I)I
    .locals 0

    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result p1

    return p1
.end method

.method public signum(J)J
    .locals 0

    .line 135
    invoke-static {p1, p2}, Ljava/lang/Long;->signum(J)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public sin(D)D
    .locals 0

    .line 31
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public sinh(D)D
    .locals 0

    .line 168
    invoke-static {p1, p2}, Ljava/lang/Math;->sinh(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public sqrt(D)D
    .locals 0

    .line 62
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public tan(D)D
    .locals 0

    .line 33
    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public tanh(D)D
    .locals 0

    .line 174
    invoke-static {p1, p2}, Ljava/lang/Math;->tanh(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toDegrees(D)D
    .locals 0

    .line 52
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toRadians(D)D
    .locals 0

    .line 44
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public ulp(D)D
    .locals 0

    .line 186
    invoke-static {p1, p2}, Ljava/lang/Math;->ulp(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public ulp(F)F
    .locals 0

    .line 189
    invoke-static {p1}, Ljava/lang/Math;->ulp(F)F

    move-result p1

    return p1
.end method
