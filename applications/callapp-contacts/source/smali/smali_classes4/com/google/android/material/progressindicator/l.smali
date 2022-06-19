.class final Lcom/google/android/material/progressindicator/l;
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
.field private static final e:[I

.field private static final f:[I

.field private static final n:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/l;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroidx/l/a/a/b$a;

.field private g:Landroid/animation/ObjectAnimator;

.field private final h:[Landroid/view/animation/Interpolator;

.field private final i:Lcom/google/android/material/progressindicator/b;

.field private j:I

.field private k:Z

.field private l:F

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 47
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/material/progressindicator/l;->e:[I

    new-array v0, v0, [I

    .line 48
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/material/progressindicator/l;->f:[I

    .line 205
    new-instance v0, Lcom/google/android/material/progressindicator/l$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "animationFraction"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/l$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/l;->n:Landroid/util/Property;

    return-void

    nop

    :array_0
    .array-data 4
        0x215
        0x237
        0x352
        0x2ee
    .end array-data

    :array_1
    .array-data 4
        0x4f3
        0x3e8
        0x14d
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V
    .locals 3

    const/4 v0, 0x2

    .line 66
    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/h;-><init>(I)V

    const/4 v1, 0x0

    .line 58
    iput v1, p0, Lcom/google/android/material/progressindicator/l;->j:I

    const/4 v2, 0x0

    .line 62
    iput-object v2, p0, Lcom/google/android/material/progressindicator/l;->a:Landroidx/l/a/a/b$a;

    .line 68
    iput-object p2, p0, Lcom/google/android/material/progressindicator/l;->i:Lcom/google/android/material/progressindicator/b;

    const/4 p2, 0x4

    new-array p2, p2, [Landroid/view/animation/Interpolator;

    .line 70
    sget v2, Lcom/google/android/material/a$a;->linear_indeterminate_line1_head_interpolator:I

    .line 72
    invoke-static {p1, v2}, Landroidx/l/a/a/d;->a(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    aput-object v2, p2, v1

    sget v1, Lcom/google/android/material/a$a;->linear_indeterminate_line1_tail_interpolator:I

    .line 74
    invoke-static {p1, v1}, Landroidx/l/a/a/d;->a(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p2, v2

    sget v1, Lcom/google/android/material/a$a;->linear_indeterminate_line2_head_interpolator:I

    .line 76
    invoke-static {p1, v1}, Landroidx/l/a/a/d;->a(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    aput-object v1, p2, v0

    sget v0, Lcom/google/android/material/a$a;->linear_indeterminate_line2_tail_interpolator:I

    .line 78
    invoke-static {p1, v0}, Landroidx/l/a/a/d;->a(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, p2, v0

    iput-object p2, p0, Lcom/google/android/material/progressindicator/l;->h:[Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/progressindicator/l;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/google/android/material/progressindicator/l;->j:I

    return p0
.end method

.method static synthetic a(Lcom/google/android/material/progressindicator/l;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/google/android/material/progressindicator/l;->j:I

    return p1
.end method

.method static synthetic b(Lcom/google/android/material/progressindicator/l;)Lcom/google/android/material/progressindicator/b;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/google/android/material/progressindicator/l;->i:Lcom/google/android/material/progressindicator/b;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/progressindicator/l;)Z
    .locals 1

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/l;->k:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/material/progressindicator/l;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/google/android/material/progressindicator/l;->m:Z

    return p0
.end method

.method static synthetic e(Lcom/google/android/material/progressindicator/l;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/google/android/material/progressindicator/l;->g:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private f()V
    .locals 3

    const/4 v0, 0x0

    .line 180
    iput v0, p0, Lcom/google/android/material/progressindicator/l;->j:I

    .line 181
    iget-object v1, p0, Lcom/google/android/material/progressindicator/l;->i:Lcom/google/android/material/progressindicator/b;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/b;->c:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/material/progressindicator/l;->b:Lcom/google/android/material/progressindicator/i;

    .line 182
    invoke-virtual {v2}, Lcom/google/android/material/progressindicator/i;->getAlpha()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/material/b/a;->a(II)I

    move-result v1

    .line 183
    iget-object v2, p0, Lcom/google/android/material/progressindicator/l;->d:[I

    aput v1, v2, v0

    .line 184
    iget-object v0, p0, Lcom/google/android/material/progressindicator/l;->d:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    return-void
.end method

.method static synthetic f(Lcom/google/android/material/progressindicator/l;)Z
    .locals 1

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/l;->m:Z

    return v0
.end method

.method static synthetic g(Lcom/google/android/material/progressindicator/l;)F
    .locals 0

    .line 2190
    iget p0, p0, Lcom/google/android/material/progressindicator/l;->l:F

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1094
    iget-object v0, p0, Lcom/google/android/material/progressindicator/l;->g:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 1096
    sget-object v0, Lcom/google/android/material/progressindicator/l;->n:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/l;->g:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x708

    .line 1097
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1098
    iget-object v0, p0, Lcom/google/android/material/progressindicator/l;->g:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1099
    iget-object v0, p0, Lcom/google/android/material/progressindicator/l;->g:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1100
    iget-object v0, p0, Lcom/google/android/material/progressindicator/l;->g:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/google/android/material/progressindicator/l$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/l$1;-><init>(Lcom/google/android/material/progressindicator/l;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/l;->f()V

    .line 90
    iget-object v0, p0, Lcom/google/android/material/progressindicator/l;->g:Landroid/animation/ObjectAnimator;

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

    .line 195
    iput p1, p0, Lcom/google/android/material/progressindicator/l;->l:F

    const/high16 v0, 0x44e10000    # 1800.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 1159
    sget-object v2, Lcom/google/android/material/progressindicator/l;->f:[I

    aget v2, v2, v1

    sget-object v3, Lcom/google/android/material/progressindicator/l;->e:[I

    aget v3, v3, v1

    sub-int v2, p1, v2

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1162
    iget-object v3, p0, Lcom/google/android/material/progressindicator/l;->h:[Landroid/view/animation/Interpolator;

    aget-object v3, v3, v1

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 1163
    iget-object v3, p0, Lcom/google/android/material/progressindicator/l;->c:[F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2169
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/progressindicator/l;->k:Z

    if-eqz p1, :cond_1

    .line 2170
    iget-object p1, p0, Lcom/google/android/material/progressindicator/l;->d:[I

    iget-object v1, p0, Lcom/google/android/material/progressindicator/l;->i:Lcom/google/android/material/progressindicator/b;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/b;->c:[I

    iget v2, p0, Lcom/google/android/material/progressindicator/l;->j:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/material/progressindicator/l;->b:Lcom/google/android/material/progressindicator/i;

    .line 2173
    invoke-virtual {v2}, Lcom/google/android/material/progressindicator/i;->getAlpha()I

    move-result v2

    .line 2172
    invoke-static {v1, v2}, Lcom/google/android/material/b/a;->a(II)I

    move-result v1

    .line 2170
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2174
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/l;->k:Z

    .line 199
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/progressindicator/l;->b:Lcom/google/android/material/progressindicator/i;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/i;->invalidateSelf()V

    return-void
.end method

.method public final a(Landroidx/l/a/a/b$a;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/google/android/material/progressindicator/l;->a:Landroidx/l/a/a/b$a;

    return-void
.end method

.method public final b()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/android/material/progressindicator/l;->g:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/google/android/material/progressindicator/l;->b:Lcom/google/android/material/progressindicator/i;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/i;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/l;->m:Z

    .line 133
    iget-object v0, p0, Lcom/google/android/material/progressindicator/l;->g:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/l;->b()V

    return-void
.end method

.method public final d()V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/l;->f()V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/google/android/material/progressindicator/l;->a:Landroidx/l/a/a/b$a;

    return-void
.end method
