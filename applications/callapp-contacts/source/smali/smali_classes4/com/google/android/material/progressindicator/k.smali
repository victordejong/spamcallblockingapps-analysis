.class final Lcom/google/android/material/progressindicator/k;
.super Lcom/google/android/material/progressindicator/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/h<",
        "Landroid/animation/ObjectAnimator;",
        ">;"
    }
.end annotation


# static fields
.field private static final j:Landroid/util/Property;
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
.field private a:Landroid/animation/ObjectAnimator;

.field private e:Landroidx/g/a/a/b;

.field private final f:Lcom/google/android/material/progressindicator/b;

.field private g:I

.field private h:Z

.field private i:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 171
    new-instance v0, Lcom/google/android/material/progressindicator/k$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "animationFraction"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/k$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/k;->j:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V
    .locals 1

    const/4 v0, 0x3

    .line 55
    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/h;-><init>(I)V

    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lcom/google/android/material/progressindicator/k;->g:I

    .line 57
    iput-object p1, p0, Lcom/google/android/material/progressindicator/k;->f:Lcom/google/android/material/progressindicator/b;

    .line 59
    new-instance p1, Landroidx/g/a/a/b;

    invoke-direct {p1}, Landroidx/g/a/a/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/k;->e:Landroidx/g/a/a/b;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/progressindicator/k;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/google/android/material/progressindicator/k;->g:I

    return p0
.end method

.method static synthetic a(Lcom/google/android/material/progressindicator/k;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/google/android/material/progressindicator/k;->g:I

    return p1
.end method

.method static synthetic b(Lcom/google/android/material/progressindicator/k;)Lcom/google/android/material/progressindicator/b;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/google/android/material/progressindicator/k;->f:Lcom/google/android/material/progressindicator/b;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/progressindicator/k;)Z
    .locals 1

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/k;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/material/progressindicator/k;)F
    .locals 0

    .line 2156
    iget p0, p0, Lcom/google/android/material/progressindicator/k;->i:F

    return p0
.end method

.method private f()V
    .locals 3

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/k;->h:Z

    .line 147
    iput v0, p0, Lcom/google/android/material/progressindicator/k;->g:I

    .line 148
    iget-object v0, p0, Lcom/google/android/material/progressindicator/k;->d:[I

    iget-object v1, p0, Lcom/google/android/material/progressindicator/k;->f:Lcom/google/android/material/progressindicator/b;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/b;->c:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/material/progressindicator/k;->b:Lcom/google/android/material/progressindicator/i;

    .line 150
    invoke-virtual {v2}, Lcom/google/android/material/progressindicator/i;->getAlpha()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/material/b/a;->a(II)I

    move-result v1

    .line 148
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1073
    iget-object v0, p0, Lcom/google/android/material/progressindicator/k;->a:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 1075
    sget-object v0, Lcom/google/android/material/progressindicator/k;->j:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/k;->a:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x14d

    .line 1076
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1077
    iget-object v0, p0, Lcom/google/android/material/progressindicator/k;->a:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1078
    iget-object v0, p0, Lcom/google/android/material/progressindicator/k;->a:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1079
    iget-object v0, p0, Lcom/google/android/material/progressindicator/k;->a:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/google/android/material/progressindicator/k$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/k$1;-><init>(Lcom/google/android/material/progressindicator/k;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/k;->f()V

    .line 69
    iget-object v0, p0, Lcom/google/android/material/progressindicator/k;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method final a(F)V
    .locals 6

    .line 161
    iput p1, p0, Lcom/google/android/material/progressindicator/k;->i:F

    const v0, 0x43a68000    # 333.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 1124
    iget-object v0, p0, Lcom/google/android/material/progressindicator/k;->c:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    const v0, 0x4426c000    # 667.0f

    div-float/2addr p1, v0

    .line 1126
    iget-object v0, p0, Lcom/google/android/material/progressindicator/k;->c:[F

    iget-object v1, p0, Lcom/google/android/material/progressindicator/k;->c:[F

    iget-object v3, p0, Lcom/google/android/material/progressindicator/k;->e:Landroidx/g/a/a/b;

    invoke-virtual {v3, p1}, Landroidx/g/a/a/b;->getInterpolation(F)F

    move-result v3

    const/4 v4, 0x2

    aput v3, v1, v4

    const/4 v1, 0x1

    aput v3, v0, v1

    const v0, 0x3eff9dbf

    add-float/2addr p1, v0

    .line 1128
    iget-object v0, p0, Lcom/google/android/material/progressindicator/k;->c:[F

    iget-object v3, p0, Lcom/google/android/material/progressindicator/k;->c:[F

    iget-object v5, p0, Lcom/google/android/material/progressindicator/k;->e:Landroidx/g/a/a/b;

    invoke-virtual {v5, p1}, Landroidx/g/a/a/b;->getInterpolation(F)F

    move-result p1

    const/4 v5, 0x4

    aput p1, v3, v5

    const/4 v3, 0x3

    aput p1, v0, v3

    .line 1129
    iget-object p1, p0, Lcom/google/android/material/progressindicator/k;->c:[F

    const/4 v0, 0x5

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, p1, v0

    .line 2134
    iget-boolean p1, p0, Lcom/google/android/material/progressindicator/k;->h:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/progressindicator/k;->c:[F

    aget p1, p1, v3

    cmpg-float p1, p1, v5

    if-gez p1, :cond_0

    .line 2135
    iget-object p1, p0, Lcom/google/android/material/progressindicator/k;->d:[I

    iget-object v0, p0, Lcom/google/android/material/progressindicator/k;->d:[I

    aget v0, v0, v1

    aput v0, p1, v4

    .line 2136
    iget-object p1, p0, Lcom/google/android/material/progressindicator/k;->d:[I

    iget-object v0, p0, Lcom/google/android/material/progressindicator/k;->d:[I

    aget v0, v0, v2

    aput v0, p1, v1

    .line 2137
    iget-object p1, p0, Lcom/google/android/material/progressindicator/k;->d:[I

    iget-object v0, p0, Lcom/google/android/material/progressindicator/k;->f:Lcom/google/android/material/progressindicator/b;

    iget-object v0, v0, Lcom/google/android/material/progressindicator/b;->c:[I

    iget v1, p0, Lcom/google/android/material/progressindicator/k;->g:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/google/android/material/progressindicator/k;->b:Lcom/google/android/material/progressindicator/i;

    .line 2139
    invoke-virtual {v1}, Lcom/google/android/material/progressindicator/i;->getAlpha()I

    move-result v1

    .line 2138
    invoke-static {v0, v1}, Lcom/google/android/material/b/a;->a(II)I

    move-result v0

    aput v0, p1, v2

    .line 2140
    iput-boolean v2, p0, Lcom/google/android/material/progressindicator/k;->h:Z

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/progressindicator/k;->b:Lcom/google/android/material/progressindicator/i;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/i;->invalidateSelf()V

    return-void
.end method

.method public final a(Landroidx/l/a/a/b$a;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/android/material/progressindicator/k;->a:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/k;->f()V

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method
