.class final Lcom/google/android/material/progressindicator/d;
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

.field private static final g:[I

.field private static final o:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/d;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/d;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroidx/l/a/a/b$a;

.field private h:Landroid/animation/ObjectAnimator;

.field private i:Landroid/animation/ObjectAnimator;

.field private final j:Landroidx/g/a/a/b;

.field private final k:Lcom/google/android/material/progressindicator/b;

.field private l:I

.field private m:F

.field private n:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 44
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/material/progressindicator/d;->e:[I

    new-array v1, v0, [I

    .line 45
    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/material/progressindicator/d;->f:[I

    new-array v0, v0, [I

    .line 46
    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/material/progressindicator/d;->g:[I

    .line 236
    new-instance v0, Lcom/google/android/material/progressindicator/d$3;

    const-class v1, Ljava/lang/Float;

    const-string v2, "animationFraction"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/d$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/d;->o:Landroid/util/Property;

    .line 250
    new-instance v0, Lcom/google/android/material/progressindicator/d$4;

    const-class v1, Ljava/lang/Float;

    const-string v2, "completeEndFraction"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/d$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/d;->p:Landroid/util/Property;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x546
        0xa8c
        0xfd2
    .end array-data

    :array_1
    .array-data 4
        0x29b
        0x7e1
        0xd27
        0x126d
    .end array-data

    :array_2
    .array-data 4
        0x3e8
        0x92e
        0xe74
        0x13ba
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V
    .locals 1

    const/4 v0, 0x1

    .line 67
    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/h;-><init>(I)V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/google/android/material/progressindicator/d;->l:I

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/google/android/material/progressindicator/d;->a:Landroidx/l/a/a/b$a;

    .line 69
    iput-object p1, p0, Lcom/google/android/material/progressindicator/d;->k:Lcom/google/android/material/progressindicator/b;

    .line 71
    new-instance p1, Landroidx/g/a/a/b;

    invoke-direct {p1}, Landroidx/g/a/a/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/d;->j:Landroidx/g/a/a/b;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/progressindicator/d;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/google/android/material/progressindicator/d;->l:I

    return p0
.end method

.method static synthetic a(Lcom/google/android/material/progressindicator/d;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/google/android/material/progressindicator/d;->l:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/material/progressindicator/d;F)V
    .locals 0

    .line 4231
    iput p1, p0, Lcom/google/android/material/progressindicator/d;->n:F

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/progressindicator/d;)Lcom/google/android/material/progressindicator/b;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/android/material/progressindicator/d;->k:Lcom/google/android/material/progressindicator/b;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/progressindicator/d;)F
    .locals 0

    .line 4214
    iget p0, p0, Lcom/google/android/material/progressindicator/d;->m:F

    return p0
.end method

.method static synthetic d(Lcom/google/android/material/progressindicator/d;)F
    .locals 0

    .line 4227
    iget p0, p0, Lcom/google/android/material/progressindicator/d;->n:F

    return p0
.end method

.method private f()V
    .locals 4

    const/4 v0, 0x0

    .line 205
    iput v0, p0, Lcom/google/android/material/progressindicator/d;->l:I

    .line 206
    iget-object v1, p0, Lcom/google/android/material/progressindicator/d;->d:[I

    iget-object v2, p0, Lcom/google/android/material/progressindicator/d;->k:Lcom/google/android/material/progressindicator/b;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/b;->c:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/android/material/progressindicator/d;->b:Lcom/google/android/material/progressindicator/i;

    .line 207
    invoke-virtual {v3}, Lcom/google/android/material/progressindicator/i;->getAlpha()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/material/b/a;->a(II)I

    move-result v2

    aput v2, v1, v0

    const/4 v0, 0x0

    .line 208
    iput v0, p0, Lcom/google/android/material/progressindicator/d;->n:F

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 1085
    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->h:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 1087
    sget-object v0, Lcom/google/android/material/progressindicator/d;->o:Landroid/util/Property;

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/d;->h:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1518

    .line 1088
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1089
    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->h:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1090
    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->h:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1091
    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->h:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/google/android/material/progressindicator/d$1;

    invoke-direct {v2, p0}, Lcom/google/android/material/progressindicator/d$1;-><init>(Lcom/google/android/material/progressindicator/d;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->i:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 1103
    sget-object v0, Lcom/google/android/material/progressindicator/d;->p:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/d;->i:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x14d

    .line 1104
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1105
    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->i:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/d;->j:Landroidx/g/a/a/b;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1106
    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->i:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/google/android/material/progressindicator/d$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/d$2;-><init>(Lcom/google/android/material/progressindicator/d;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/d;->f()V

    .line 81
    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method final a(F)V
    .locals 8

    .line 219
    iput p1, p0, Lcom/google/android/material/progressindicator/d;->m:F

    const v0, 0x45a8c000    # 5400.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 1159
    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->c:[F

    iget v1, p0, Lcom/google/android/material/progressindicator/d;->m:F

    const/high16 v2, 0x44be0000    # 1520.0f

    mul-float v1, v1, v2

    const/high16 v3, -0x3e600000    # -20.0f

    add-float/2addr v1, v3

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 1160
    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->c:[F

    iget v1, p0, Lcom/google/android/material/progressindicator/d;->m:F

    mul-float v1, v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1164
    sget-object v1, Lcom/google/android/material/progressindicator/d;->e:[I

    aget v1, v1, v0

    sub-int v1, p1, v1

    int-to-float v1, v1

    const v4, 0x4426c000    # 667.0f

    div-float/2addr v1, v4

    .line 1166
    iget-object v5, p0, Lcom/google/android/material/progressindicator/d;->c:[F

    aget v6, v5, v2

    iget-object v7, p0, Lcom/google/android/material/progressindicator/d;->j:Landroidx/g/a/a/b;

    invoke-virtual {v7, v1}, Landroidx/g/a/a/b;->getInterpolation(F)F

    move-result v1

    const/high16 v7, 0x437a0000    # 250.0f

    mul-float v1, v1, v7

    add-float/2addr v6, v1

    aput v6, v5, v2

    .line 1168
    sget-object v1, Lcom/google/android/material/progressindicator/d;->f:[I

    aget v1, v1, v0

    sub-int v1, p1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    .line 1171
    iget-object v4, p0, Lcom/google/android/material/progressindicator/d;->c:[F

    aget v5, v4, v3

    iget-object v6, p0, Lcom/google/android/material/progressindicator/d;->j:Landroidx/g/a/a/b;

    invoke-virtual {v6, v1}, Landroidx/g/a/a/b;->getInterpolation(F)F

    move-result v1

    mul-float v1, v1, v7

    add-float/2addr v5, v1

    aput v5, v4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->c:[F

    aget v4, v0, v3

    iget-object v5, p0, Lcom/google/android/material/progressindicator/d;->c:[F

    aget v5, v5, v2

    iget-object v6, p0, Lcom/google/android/material/progressindicator/d;->c:[F

    aget v6, v6, v3

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/google/android/material/progressindicator/d;->n:F

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    aput v4, v0, v3

    .line 1176
    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->c:[F

    aget v4, v0, v3

    const/high16 v5, 0x43b40000    # 360.0f

    div-float/2addr v4, v5

    aput v4, v0, v3

    .line 1177
    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->c:[F

    aget v4, v0, v2

    div-float/2addr v4, v5

    aput v4, v0, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 3183
    sget-object v2, Lcom/google/android/material/progressindicator/d;->g:[I

    aget v2, v2, v0

    sub-int v2, p1, v2

    int-to-float v2, v2

    const v4, 0x43a68000    # 333.0f

    div-float/2addr v2, v4

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_1

    .line 3186
    iget p1, p0, Lcom/google/android/material/progressindicator/d;->l:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/google/android/material/progressindicator/d;->k:Lcom/google/android/material/progressindicator/b;

    iget-object p1, p1, Lcom/google/android/material/progressindicator/b;->c:[I

    array-length p1, p1

    rem-int/2addr v0, p1

    add-int/lit8 p1, v0, 0x1

    .line 3188
    iget-object v1, p0, Lcom/google/android/material/progressindicator/d;->k:Lcom/google/android/material/progressindicator/b;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/b;->c:[I

    array-length v1, v1

    rem-int/2addr p1, v1

    .line 3189
    iget-object v1, p0, Lcom/google/android/material/progressindicator/d;->k:Lcom/google/android/material/progressindicator/b;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/b;->c:[I

    aget v0, v1, v0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/d;->b:Lcom/google/android/material/progressindicator/i;

    .line 3191
    invoke-virtual {v1}, Lcom/google/android/material/progressindicator/i;->getAlpha()I

    move-result v1

    .line 3190
    invoke-static {v0, v1}, Lcom/google/android/material/b/a;->a(II)I

    move-result v0

    .line 3192
    iget-object v1, p0, Lcom/google/android/material/progressindicator/d;->k:Lcom/google/android/material/progressindicator/b;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/b;->c:[I

    aget p1, v1, p1

    iget-object v1, p0, Lcom/google/android/material/progressindicator/d;->b:Lcom/google/android/material/progressindicator/i;

    .line 3194
    invoke-virtual {v1}, Lcom/google/android/material/progressindicator/i;->getAlpha()I

    move-result v1

    .line 3193
    invoke-static {p1, v1}, Lcom/google/android/material/b/a;->a(II)I

    move-result p1

    .line 3195
    iget-object v1, p0, Lcom/google/android/material/progressindicator/d;->j:Landroidx/g/a/a/b;

    invoke-virtual {v1, v2}, Landroidx/g/a/a/b;->getInterpolation(F)F

    move-result v1

    .line 3196
    iget-object v2, p0, Lcom/google/android/material/progressindicator/d;->d:[I

    .line 3197
    invoke-static {}, Lcom/google/android/material/a/c;->a()Lcom/google/android/material/a/c;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/google/android/material/a/c;->a(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v2, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 223
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/google/android/material/progressindicator/d;->b:Lcom/google/android/material/progressindicator/i;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/i;->invalidateSelf()V

    return-void
.end method

.method public final a(Landroidx/l/a/a/b$a;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/google/android/material/progressindicator/d;->a:Landroidx/l/a/a/b$a;

    return-void
.end method

.method final b()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->h:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method final c()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->b:Lcom/google/android/material/progressindicator/i;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/i;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/d;->b()V

    return-void
.end method

.method public final d()V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/d;->f()V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/google/android/material/progressindicator/d;->a:Landroidx/l/a/a/b$a;

    return-void
.end method
