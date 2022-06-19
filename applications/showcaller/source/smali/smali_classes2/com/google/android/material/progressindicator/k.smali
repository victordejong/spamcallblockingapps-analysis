.class final Lcom/google/android/material/progressindicator/k;
.super Lcom/google/android/material/progressindicator/h;
.source "LinearIndeterminateContiguousAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/h<",
        "Landroid/animation/ObjectAnimator;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/k;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Landroid/animation/ObjectAnimator;

.field private f:Lb/n/a/a/b;

.field private final g:Lcom/google/android/material/progressindicator/b;

.field private h:I

.field private i:Z

.field private j:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/material/progressindicator/k$b;

    const-class v1, Ljava/lang/Float;

    const-string v2, "animationFraction"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/k$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/k;->d:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/h;-><init>(I)V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/material/progressindicator/k;->h:I

    .line 3
    iput-object p1, p0, Lcom/google/android/material/progressindicator/k;->g:Lcom/google/android/material/progressindicator/b;

    .line 4
    new-instance p1, Lb/n/a/a/b;

    invoke-direct {p1}, Lb/n/a/a/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/k;->f:Lb/n/a/a/b;

    return-void
.end method

.method static synthetic i(Lcom/google/android/material/progressindicator/k;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/progressindicator/k;->h:I

    return p0
.end method

.method static synthetic j(Lcom/google/android/material/progressindicator/k;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/progressindicator/k;->h:I

    return p1
.end method

.method static synthetic k(Lcom/google/android/material/progressindicator/k;)Lcom/google/android/material/progressindicator/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/progressindicator/k;->g:Lcom/google/android/material/progressindicator/b;

    return-object p0
.end method

.method static synthetic l(Lcom/google/android/material/progressindicator/k;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/k;->i:Z

    return p1
.end method

.method static synthetic m(Lcom/google/android/material/progressindicator/k;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/k;->n()F

    move-result p0

    return p0
.end method

.method private n()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/progressindicator/k;->j:F

    return v0
.end method

.method private o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/k;->e:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/material/progressindicator/k;->d:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/k;->e:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x14d

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4
    iget-object v0, p0, Lcom/google/android/material/progressindicator/k;->e:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/material/progressindicator/k;->e:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/progressindicator/k;->e:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/google/android/material/progressindicator/k$a;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/k$a;-><init>(Lcom/google/android/material/progressindicator/k;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private p()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/k;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/progressindicator/h;->b:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/progressindicator/h;->c:[I

    const/4 v1, 0x2

    const/4 v2, 0x1

    aget v3, v0, v2

    aput v3, v0, v1

    const/4 v1, 0x0

    .line 3
    aget v3, v0, v1

    aput v3, v0, v2

    .line 4
    iget-object v2, p0, Lcom/google/android/material/progressindicator/k;->g:Lcom/google/android/material/progressindicator/b;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/b;->c:[I

    iget v3, p0, Lcom/google/android/material/progressindicator/k;->h:I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/google/android/material/progressindicator/h;->a:Lcom/google/android/material/progressindicator/i;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/material/progressindicator/i;->getAlpha()I

    move-result v3

    .line 6
    invoke-static {v2, v3}, Lc/c/a/b/o/a;->a(II)I

    move-result v2

    aput v2, v0, v1

    .line 7
    iput-boolean v1, p0, Lcom/google/android/material/progressindicator/k;->i:Z

    :cond_0
    return-void
.end method

.method private s(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/h;->b:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v0, 0x29b

    .line 2
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/material/progressindicator/h;->b(III)F

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/google/android/material/progressindicator/h;->b:[F

    iget-object v1, p0, Lcom/google/android/material/progressindicator/k;->f:Lb/n/a/a/b;

    invoke-virtual {v1, p1}, Lb/n/a/a/b;->getInterpolation(F)F

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    const v0, 0x3eff9dbf

    add-float/2addr p1, v0

    .line 4
    iget-object v0, p0, Lcom/google/android/material/progressindicator/h;->b:[F

    iget-object v1, p0, Lcom/google/android/material/progressindicator/k;->f:Lb/n/a/a/b;

    invoke-virtual {v1, p1}, Lb/n/a/a/b;->getInterpolation(F)F

    move-result p1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 5
    iget-object p1, p0, Lcom/google/android/material/progressindicator/h;->b:[F

    const/4 v0, 0x5

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p1, v0

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/k;->e:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/k;->q()V

    return-void
.end method

.method public d(Lb/t/a/a/b;)V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/k;->o()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/k;->q()V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/progressindicator/k;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method q()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/k;->i:Z

    .line 2
    iput v0, p0, Lcom/google/android/material/progressindicator/k;->h:I

    .line 3
    iget-object v0, p0, Lcom/google/android/material/progressindicator/h;->c:[I

    iget-object v1, p0, Lcom/google/android/material/progressindicator/k;->g:Lcom/google/android/material/progressindicator/b;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/b;->c:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/material/progressindicator/h;->a:Lcom/google/android/material/progressindicator/i;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/material/progressindicator/i;->getAlpha()I

    move-result v2

    invoke-static {v1, v2}, Lc/c/a/b/o/a;->a(II)I

    move-result v1

    .line 5
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method r(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/google/android/material/progressindicator/k;->j:F

    const v0, 0x43a68000    # 333.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/k;->s(I)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/k;->p()V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/progressindicator/h;->a:Lcom/google/android/material/progressindicator/i;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
