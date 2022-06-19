.class public Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Z

.field private final f:[F

.field private final g:[F

.field private final h:[F

.field private final i:[F


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a:I

    .line 34
    iput p2, p0, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->b:I

    const/high16 v0, -0x1000000

    and-int v1, p1, v0

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 35
    iput v1, p0, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->c:I

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 36
    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->d:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->e:Z

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 38
    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->g:[F

    new-array v0, v0, [F

    .line 39
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->h:[F

    .line 40
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(I)[F

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->b([F)[F

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->f:[F

    .line 41
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(I)[F

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->b([F)[F

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->i:[F

    return-void
.end method

.method private a(I)[F
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->h:[F

    .line 75
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    return-object v0
.end method

.method private a([F)[F
    .locals 7

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->h:[F

    const/4 v1, 0x0

    .line 81
    aget v2, p1, v1

    aget v3, p1, v1

    mul-float v2, v2, v3

    const/4 v3, 0x1

    aget v4, p1, v3

    aget v5, p1, v3

    mul-float v4, v4, v5

    add-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    aput v2, v0, v3

    .line 82
    aget v2, v0, v3

    const/4 v4, 0x0

    const v5, 0x3a83126f    # 0.001f

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    aget v2, p1, v3

    aget v5, v0, v3

    div-float/2addr v2, v5

    float-to-double v5, v2

    aget v2, p1, v1

    aget v3, v0, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 83
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double v2, v2, v5

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v5

    double-to-float v2, v2

    :goto_0
    aput v2, v0, v1

    .line 84
    aget v2, v0, v1

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    .line 85
    aget v2, v0, v1

    const/high16 v3, 0x43b40000    # 360.0f

    add-float/2addr v2, v3

    aput v2, v0, v1

    :cond_1
    const/4 v1, 0x2

    .line 87
    aget p1, p1, v1

    aput p1, v0, v1

    return-object v0
.end method

.method private a([F[FF)[F
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->g:[F

    const/4 v1, 0x0

    aget v2, p2, v1

    aget v3, p1, v1

    sub-float/2addr v2, v3

    mul-float v2, v2, p3

    aget v3, p1, v1

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 68
    aget v2, p2, v1

    aget v3, p1, v1

    sub-float/2addr v2, v3

    mul-float v2, v2, p3

    aget v3, p1, v1

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 69
    aget p2, p2, v1

    aget v2, p1, v1

    sub-float/2addr p2, v2

    mul-float p2, p2, p3

    aget p1, p1, v1

    add-float/2addr p2, p1

    aput p2, v0, v1

    return-object v0
.end method

.method private static b([F)[F
    .locals 7

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 93
    aget v2, p0, v1

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    .line 94
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v5, 0x1

    aget v6, p0, v5

    mul-float v4, v4, v6

    aput v4, v0, v1

    .line 95
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    aget v2, p0, v5

    mul-float v1, v1, v2

    aput v1, v0, v5

    const/4 v1, 0x2

    .line 96
    aget p0, p0, v1

    aput p0, v0, v1

    return-object v0
.end method


# virtual methods
.method public final a(F)I
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 52
    iget p1, p0, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a:I

    return p1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 55
    iget p1, p0, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->b:I

    return p1

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->f:[F

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->i:[F

    invoke-direct {p0, v0, v1, p1}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a([F[FF)[F

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a([F)[F

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 59
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->e:Z

    if-eqz v1, :cond_2

    const v1, 0xffffff

    and-int/2addr v0, v1

    .line 61
    iget v1, p0, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->c:I

    iget v2, p0, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->d:I

    invoke-static {v1, v2, p1}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(IIF)I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr v0, p1

    :cond_2
    return v0
.end method
