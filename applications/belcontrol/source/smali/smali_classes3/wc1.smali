.class public Lwc1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:F

.field public b:F

.field public c:J


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lwc1;->a:F

    iput p2, p0, Lwc1;->b:F

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lwc1;->c:J

    return-void
.end method

.method public constructor <init>(FFJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lwc1;->a:F

    iput p2, p0, Lwc1;->b:F

    iput-wide p3, p0, Lwc1;->c:J

    return-void
.end method


# virtual methods
.method public a(Lwc1;Lwc1;)F
    .locals 4

    iget v0, p1, Lwc1;->a:F

    iget v1, p0, Lwc1;->a:F

    sub-float/2addr v0, v1

    iget v2, p2, Lwc1;->b:F

    iget v3, p0, Lwc1;->b:F

    sub-float/2addr v2, v3

    mul-float v0, v0, v2

    iget p1, p1, Lwc1;->b:F

    sub-float/2addr p1, v3

    iget p2, p2, Lwc1;->a:F

    sub-float/2addr p2, v1

    mul-float p1, p1, p2

    sub-float/2addr v0, p1

    return v0
.end method

.method public b(Lwc1;)F
    .locals 4

    iget v0, p1, Lwc1;->a:F

    iget v1, p0, Lwc1;->a:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget p1, p1, Lwc1;->b:F

    iget v2, p0, Lwc1;->b:F

    sub-float/2addr p1, v2

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public c(Lwc1;Lwc1;)F
    .locals 3

    iget v0, p1, Lwc1;->a:F

    iget v1, p0, Lwc1;->a:F

    sub-float/2addr v0, v1

    iget v2, p2, Lwc1;->a:F

    sub-float/2addr v2, v1

    mul-float v0, v0, v2

    iget p1, p1, Lwc1;->b:F

    iget v1, p0, Lwc1;->b:F

    sub-float/2addr p1, v1

    iget p2, p2, Lwc1;->b:F

    sub-float/2addr p2, v1

    mul-float p1, p1, p2

    add-float/2addr v0, p1

    return v0
.end method

.method public d(Lwc1;Lwc1;)F
    .locals 4

    invoke-virtual {p0, p1}, Lwc1;->b(Lwc1;)F

    move-result v0

    invoke-virtual {p0, p2}, Lwc1;->b(Lwc1;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_2

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lwc1;->a(Lwc1;Lwc1;)F

    move-result v2

    invoke-virtual {p0, p1, p2}, Lwc1;->c(Lwc1;Lwc1;)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    div-float/2addr p1, v0

    div-float/2addr p1, v1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    double-to-float p1, p1

    float-to-double v0, v2

    const-wide/16 v2, 0x0

    cmpg-double p2, v0, v2

    if-gez p2, :cond_1

    const p2, 0x40c90fdb

    sub-float p1, p2, p1

    :cond_1
    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lwc1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lwc1;

    iget v0, p0, Lwc1;->a:F

    iget v2, p1, Lwc1;->a:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lwc1;->b:F

    iget p1, p1, Lwc1;->b:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lwc1;->a:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lwc1;->b:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_1

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method
