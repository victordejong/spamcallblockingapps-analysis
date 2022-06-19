.class public Lwb1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwb1$b;,
        Lwb1$d;,
        Lwb1$c;
    }
.end annotation


# instance fields
.field public a:Landroid/view/animation/Interpolator;

.field public b:F

.field public c:F

.field public d:F

.field public e:Lwb1$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lwb1$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lwb1$b;-><init>(Lwb1$a;)V

    iput-object v0, p0, Lwb1;->e:Lwb1$b;

    iput p2, p0, Lwb1;->c:F

    new-instance p2, Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    const v1, 0x3eb33333    # 0.35f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lwb1;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x437a0000    # 250.0f

    mul-float p2, p2, v0

    iput p2, p0, Lwb1;->b:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const p2, 0x453b8000    # 3000.0f

    mul-float p1, p1, p2

    iput p1, p0, Lwb1;->d:F

    return-void
.end method


# virtual methods
.method public a(Landroid/animation/Animator;FFF)V
    .locals 7

    sub-float v0, p3, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lwb1;->b(Landroid/animation/Animator;FFFF)V

    return-void
.end method

.method public b(Landroid/animation/Animator;FFFF)V
    .locals 0

    invoke-virtual {p0, p2, p3, p4, p5}, Lwb1;->g(FFFF)Lwb1$b;

    move-result-object p2

    iget-wide p3, p2, Lwb1$b;->b:J

    invoke-virtual {p1, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object p2, p2, Lwb1$b;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public c(Landroid/animation/Animator;FFFF)V
    .locals 0

    invoke-virtual {p0, p2, p3, p4, p5}, Lwb1;->e(FFFF)Lwb1$b;

    move-result-object p2

    iget-wide p3, p2, Lwb1$b;->b:J

    invoke-virtual {p1, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object p2, p2, Lwb1$b;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public final d(F)F
    .locals 2

    iget v0, p0, Lwb1;->b:F

    sub-float/2addr p1, v0

    iget v1, p0, Lwb1;->d:F

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    sub-float/2addr v0, p1

    const v1, 0x3ecccccd    # 0.4f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public final e(FFFF)Lwb1$b;
    .locals 6

    iget v0, p0, Lwb1;->c:F

    float-to-double v0, v0

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, p4

    float-to-double v2, p1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-float p1, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-virtual {p0, p3}, Lwb1;->d(F)F

    move-result p4

    const/high16 v0, 0x3f000000    # 0.5f

    div-float v1, p4, v0

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    mul-float v1, v1, p2

    div-float/2addr v1, p3

    cmpg-float p4, v1, p1

    if-gtz p4, :cond_0

    iget-object p1, p0, Lwb1;->e:Lwb1$b;

    iput-object v2, p1, Lwb1$b;->a:Landroid/view/animation/Interpolator;

    move p1, v1

    goto :goto_0

    :cond_0
    iget p4, p0, Lwb1;->b:F

    cmpl-float p4, p3, p4

    if-ltz p4, :cond_1

    new-instance p4, Lwb1$d;

    const/4 v0, 0x0

    invoke-direct {p4, p1, p3, p2, v0}, Lwb1$d;-><init>(FFFLwb1$a;)V

    new-instance p2, Lwb1$c;

    iget-object p3, p0, Lwb1;->a:Landroid/view/animation/Interpolator;

    invoke-direct {p2, p4, v2, p3}, Lwb1$c;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    iget-object p3, p0, Lwb1;->e:Lwb1$b;

    iput-object p2, p3, Lwb1$b;->a:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lwb1;->e:Lwb1$b;

    sget-object p3, Lzb1;->a:Landroid/view/animation/Interpolator;

    iput-object p3, p2, Lwb1$b;->a:Landroid/view/animation/Interpolator;

    :goto_0
    iget-object p2, p0, Lwb1;->e:Lwb1$b;

    const/high16 p3, 0x447a0000    # 1000.0f

    mul-float p1, p1, p3

    float-to-long p3, p1

    iput-wide p3, p2, Lwb1$b;->b:J

    return-object p2
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lwb1;->b:F

    return v0
.end method

.method public final g(FFFF)Lwb1$b;
    .locals 4

    iget v0, p0, Lwb1;->c:F

    float-to-double v0, v0

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, p4

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-float p1, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    const p4, 0x4036db6e

    mul-float p4, p4, p2

    div-float/2addr p4, p3

    cmpg-float v0, p4, p1

    if-gtz v0, :cond_0

    iget-object p1, p0, Lwb1;->e:Lwb1$b;

    iget-object p2, p0, Lwb1;->a:Landroid/view/animation/Interpolator;

    iput-object p2, p1, Lwb1$b;->a:Landroid/view/animation/Interpolator;

    move p1, p4

    goto :goto_1

    :cond_0
    iget p4, p0, Lwb1;->b:F

    cmpl-float p4, p3, p4

    if-ltz p4, :cond_1

    new-instance p4, Lwb1$d;

    const/4 v0, 0x0

    invoke-direct {p4, p1, p3, p2, v0}, Lwb1$d;-><init>(FFFLwb1$a;)V

    iget-object p2, p0, Lwb1;->e:Lwb1$b;

    new-instance p3, Lwb1$c;

    iget-object v0, p0, Lwb1;->a:Landroid/view/animation/Interpolator;

    invoke-direct {p3, p4, v0, v0}, Lwb1$c;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lwb1;->e:Lwb1$b;

    sget-object p3, Lzb1;->b:Landroid/view/animation/Interpolator;

    :goto_0
    iput-object p3, p2, Lwb1$b;->a:Landroid/view/animation/Interpolator;

    :goto_1
    iget-object p2, p0, Lwb1;->e:Lwb1$b;

    const/high16 p3, 0x447a0000    # 1000.0f

    mul-float p1, p1, p3

    float-to-long p3, p1

    iput-wide p3, p2, Lwb1$b;->b:J

    return-object p2
.end method
