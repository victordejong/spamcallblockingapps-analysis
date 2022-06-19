.class public Lcom/google/android/material/floatingactionbutton/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/d$a;,
        Lcom/google/android/material/floatingactionbutton/d$c;,
        Lcom/google/android/material/floatingactionbutton/d$b;,
        Lcom/google/android/material/floatingactionbutton/d$f;,
        Lcom/google/android/material/floatingactionbutton/d$g;,
        Lcom/google/android/material/floatingactionbutton/d$e;,
        Lcom/google/android/material/floatingactionbutton/d$d;
    }
.end annotation


# static fields
.field static final a:Landroid/animation/TimeInterpolator;

.field static final t:[I

.field static final u:[I

.field static final v:[I

.field static final w:[I

.field static final x:[I

.field static final y:[I


# instance fields
.field final A:Lcom/google/android/material/j/b;

.field B:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final C:Lcom/google/android/material/internal/g;

.field private D:Lcom/google/android/material/a/h;

.field private E:Lcom/google/android/material/a/h;

.field private F:Landroid/animation/Animator;

.field private G:F

.field private H:I

.field private final I:Landroid/graphics/Rect;

.field private final J:Landroid/graphics/RectF;

.field private final K:Landroid/graphics/RectF;

.field private final L:Landroid/graphics/Matrix;

.field b:Lcom/google/android/material/k/m;

.field c:Lcom/google/android/material/k/h;

.field d:Landroid/graphics/drawable/Drawable;

.field e:Lcom/google/android/material/floatingactionbutton/c;

.field f:Landroid/graphics/drawable/Drawable;

.field g:Z

.field h:Z

.field i:F

.field j:F

.field k:F

.field l:I

.field m:Lcom/google/android/material/a/h;

.field n:Lcom/google/android/material/a/h;

.field o:F

.field p:I

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/floatingactionbutton/d$d;",
            ">;"
        }
    .end annotation
.end field

.field final z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    sget-object v0, Lcom/google/android/material/a/a;->c:Landroid/animation/TimeInterpolator;

    sput-object v0, Lcom/google/android/material/floatingactionbutton/d;->a:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 128
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/material/floatingactionbutton/d;->t:[I

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 131
    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/material/floatingactionbutton/d;->u:[I

    new-array v1, v0, [I

    .line 134
    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/android/material/floatingactionbutton/d;->v:[I

    new-array v0, v0, [I

    .line 137
    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/material/floatingactionbutton/d;->w:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009e

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 140
    sput-object v0, Lcom/google/android/material/floatingactionbutton/d;->x:[I

    new-array v0, v2, [I

    .line 141
    sput-object v0, Lcom/google/android/material/floatingactionbutton/d;->y:[I

    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x1010367
        0x101009c
        0x101009e
    .end array-data

    :array_2
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    :array_3
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/j/b;)V
    .locals 2

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/d;->h:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 107
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/d;->G:F

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/d;->H:I

    .line 146
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->I:Landroid/graphics/Rect;

    .line 147
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->J:Landroid/graphics/RectF;

    .line 148
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->K:Landroid/graphics/RectF;

    .line 149
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->L:Landroid/graphics/Matrix;

    .line 156
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 157
    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->A:Lcom/google/android/material/j/b;

    .line 159
    new-instance p2, Lcom/google/android/material/internal/g;

    invoke-direct {p2}, Lcom/google/android/material/internal/g;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->C:Lcom/google/android/material/internal/g;

    .line 162
    sget-object v0, Lcom/google/android/material/floatingactionbutton/d;->t:[I

    new-instance v1, Lcom/google/android/material/floatingactionbutton/d$c;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/d$c;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    .line 164
    invoke-static {v1}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/floatingactionbutton/d$g;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 162
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/g;->a([ILandroid/animation/ValueAnimator;)V

    .line 165
    sget-object v0, Lcom/google/android/material/floatingactionbutton/d;->u:[I

    new-instance v1, Lcom/google/android/material/floatingactionbutton/d$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/d$b;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    .line 167
    invoke-static {v1}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/floatingactionbutton/d$g;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 165
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/g;->a([ILandroid/animation/ValueAnimator;)V

    .line 168
    sget-object v0, Lcom/google/android/material/floatingactionbutton/d;->v:[I

    new-instance v1, Lcom/google/android/material/floatingactionbutton/d$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/d$b;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    .line 170
    invoke-static {v1}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/floatingactionbutton/d$g;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 168
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/g;->a([ILandroid/animation/ValueAnimator;)V

    .line 171
    sget-object v0, Lcom/google/android/material/floatingactionbutton/d;->w:[I

    new-instance v1, Lcom/google/android/material/floatingactionbutton/d$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/d$b;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    .line 173
    invoke-static {v1}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/floatingactionbutton/d$g;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 171
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/g;->a([ILandroid/animation/ValueAnimator;)V

    .line 175
    sget-object v0, Lcom/google/android/material/floatingactionbutton/d;->x:[I

    new-instance v1, Lcom/google/android/material/floatingactionbutton/d$f;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/d$f;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    .line 176
    invoke-static {v1}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/floatingactionbutton/d$g;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 175
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/g;->a([ILandroid/animation/ValueAnimator;)V

    .line 178
    sget-object v0, Lcom/google/android/material/floatingactionbutton/d;->y:[I

    new-instance v1, Lcom/google/android/material/floatingactionbutton/d$a;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/d$a;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    .line 179
    invoke-static {v1}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/floatingactionbutton/d$g;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 178
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/g;->a([ILandroid/animation/ValueAnimator;)V

    .line 181
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getRotation()F

    move-result p1

    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->o:F

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/floatingactionbutton/d;F)F
    .locals 0

    .line 66
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->G:F

    return p1
.end method

.method static synthetic a(Lcom/google/android/material/floatingactionbutton/d;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->H:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/material/floatingactionbutton/d;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->F:Landroid/animation/Animator;

    return-object p1
.end method

.method private a(Lcom/google/android/material/a/h;FFF)Landroid/animation/AnimatorSet;
    .locals 6

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 565
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p2, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "opacity"

    .line 566
    invoke-virtual {p1, v1}, Lcom/google/android/material/a/h;->a(Ljava/lang/String;)Lcom/google/android/material/a/i;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/material/a/i;->a(Landroid/animation/Animator;)V

    .line 567
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v3, [F

    aput p3, v2, v5

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "scale"

    .line 570
    invoke-virtual {p1, v1}, Lcom/google/android/material/a/h;->a(Ljava/lang/String;)Lcom/google/android/material/a/i;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/material/a/i;->a(Landroid/animation/Animator;)V

    .line 571
    invoke-direct {p0, p2}, Lcom/google/android/material/floatingactionbutton/d;->a(Landroid/animation/ObjectAnimator;)V

    .line 572
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v3, [F

    aput p3, v4, v5

    invoke-static {p2, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 575
    invoke-virtual {p1, v1}, Lcom/google/android/material/a/h;->a(Ljava/lang/String;)Lcom/google/android/material/a/i;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/material/a/i;->a(Landroid/animation/Animator;)V

    .line 576
    invoke-direct {p0, p2}, Lcom/google/android/material/floatingactionbutton/d;->a(Landroid/animation/ObjectAnimator;)V

    .line 577
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->L:Landroid/graphics/Matrix;

    invoke-direct {p0, p4, p2}, Lcom/google/android/material/floatingactionbutton/d;->a(FLandroid/graphics/Matrix;)V

    .line 580
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance p3, Lcom/google/android/material/a/f;

    invoke-direct {p3}, Lcom/google/android/material/a/f;-><init>()V

    new-instance p4, Lcom/google/android/material/floatingactionbutton/d$3;

    invoke-direct {p4, p0}, Lcom/google/android/material/floatingactionbutton/d$3;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    new-array v1, v3, [Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/d;->L:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v2, v1, v5

    .line 581
    invoke-static {p2, p3, p4, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string p3, "iconScale"

    .line 595
    invoke-virtual {p1, p3}, Lcom/google/android/material/a/h;->a(Ljava/lang/String;)Lcom/google/android/material/a/i;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/material/a/i;->a(Landroid/animation/Animator;)V

    .line 596
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 599
    invoke-static {p1, v0}, Lcom/google/android/material/a/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object p1
.end method

.method private static a(Lcom/google/android/material/floatingactionbutton/d$g;)Landroid/animation/ValueAnimator;
    .locals 3

    .line 769
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 770
    sget-object v1, Lcom/google/android/material/floatingactionbutton/d;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    .line 771
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 772
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 773
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p0, 0x2

    new-array p0, p0, [F

    .line 774
    fill-array-data p0, :array_0

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(FLandroid/graphics/Matrix;)V
    .locals 5

    .line 293
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 295
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/d;->p:I

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/d;->J:Landroid/graphics/RectF;

    .line 299
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/d;->K:Landroid/graphics/RectF;

    .line 300
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 301
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->p:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v2, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 302
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 305
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->p:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p2, p1, p1, v1, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_0
    return-void
.end method

.method private a(Landroid/animation/ObjectAnimator;)V
    .locals 2

    .line 608
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    return-void

    .line 612
    :cond_0
    new-instance v0, Lcom/google/android/material/floatingactionbutton/d$4;

    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/d$4;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-void
.end method

.method private b(Landroid/graphics/Rect;)V
    .locals 7

    .line 682
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->f:Landroid/graphics/drawable/Drawable;

    const-string v1, "Didn\'t initialize content background"

    invoke-static {v0, v1}, Landroidx/core/e/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/d;->f:Landroid/graphics/drawable/Drawable;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 686
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->A:Lcom/google/android/material/j/b;

    invoke-interface {p1, v0}, Lcom/google/android/material/j/b;->a(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 688
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->A:Lcom/google/android/material/j/b;

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->f:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v0}, Lcom/google/android/material/j/b;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private e(F)V
    .locals 1

    .line 285
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->G:F

    .line 287
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->L:Landroid/graphics/Matrix;

    .line 288
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/d;->a(FLandroid/graphics/Matrix;)V

    .line 289
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private o()Lcom/google/android/material/a/h;
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->D:Lcom/google/android/material/a/h;

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 545
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$a;->design_fab_show_motion_spec:I

    invoke-static {v0, v1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->D:Lcom/google/android/material/a/h;

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->D:Lcom/google/android/material/a/h;

    invoke-static {v0}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/a/h;

    return-object v0
.end method

.method private p()Lcom/google/android/material/a/h;
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->E:Lcom/google/android/material/a/h;

    if-nez v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 554
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$a;->design_fab_hide_motion_spec:I

    invoke-static {v0, v1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->E:Lcom/google/android/material/a/h;

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->E:Lcom/google/android/material/a/h;

    invoke-static {v0}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/a/h;

    return-object v0
.end method

.method private q()Z
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v0}, Landroidx/core/view/v;->B(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method a()F
    .locals 1

    .line 246
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->i:F

    return v0
.end method

.method final a(F)V
    .locals 2

    .line 239
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->i:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 240
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->i:F

    .line 241
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->j:F

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/d;->k:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/material/floatingactionbutton/d;->a(FFF)V

    :cond_0
    return-void
.end method

.method a(FFF)V
    .locals 0

    .line 366
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->h()V

    .line 367
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/d;->d(F)V

    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 234
    invoke-static {p1}, Lcom/google/android/material/i/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 233
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .locals 0

    .line 191
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->k()Lcom/google/android/material/k/h;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/material/floatingactionbutton/d;->c:Lcom/google/android/material/k/h;

    .line 192
    invoke-virtual {p4, p1}, Lcom/google/android/material/k/h;->setTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_0

    .line 194
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->c:Lcom/google/android/material/k/h;

    invoke-virtual {p1, p2}, Lcom/google/android/material/k/h;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->c:Lcom/google/android/material/k/h;

    invoke-virtual {p1}, Lcom/google/android/material/k/h;->i()V

    .line 198
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->c:Lcom/google/android/material/k/h;

    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/k/h;->a(Landroid/content/Context;)V

    .line 201
    new-instance p1, Lcom/google/android/material/i/a;

    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->c:Lcom/google/android/material/k/h;

    .line 1271
    iget-object p2, p2, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object p2, p2, Lcom/google/android/material/k/h$a;->a:Lcom/google/android/material/k/m;

    .line 202
    invoke-direct {p1, p2}, Lcom/google/android/material/i/a;-><init>(Lcom/google/android/material/k/m;)V

    .line 203
    invoke-static {p3}, Lcom/google/android/material/i/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/i/a;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 204
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->d:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x0

    .line 206
    iget-object p4, p0, Lcom/google/android/material/floatingactionbutton/d;->c:Lcom/google/android/material/k/h;

    .line 207
    invoke-static {p4}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/drawable/Drawable;

    aput-object p4, p2, p3

    const/4 p3, 0x1

    aput-object p1, p2, p3

    .line 209
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->f:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method a(Landroid/graphics/Rect;)V
    .locals 5

    .line 671
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/d;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->l:I

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 672
    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 675
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/d;->h:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->a()F

    move-result v1

    iget v2, p0, Lcom/google/android/material/floatingactionbutton/d;->k:F

    add-float/2addr v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    float-to-double v2, v1

    .line 676
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v1, v1, v3

    float-to-double v3, v1

    .line 677
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 678
    invoke-virtual {p1, v2, v0, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method final a(Lcom/google/android/material/floatingactionbutton/d$e;Z)V
    .locals 2

    .line 417
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->F:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 426
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/d;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 427
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->n:Lcom/google/android/material/a/h;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 429
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/d;->p()Lcom/google/android/material/a/h;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 428
    invoke-direct {p0, v0, v1, v1, v1}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/a/h;FFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 433
    new-instance v1, Lcom/google/android/material/floatingactionbutton/d$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/material/floatingactionbutton/d$1;-><init>(Lcom/google/android/material/floatingactionbutton/d;ZLcom/google/android/material/floatingactionbutton/d$e;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 464
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->r:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 465
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    .line 466
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 469
    :cond_3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 472
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz p2, :cond_5

    const/16 v1, 0x8

    goto :goto_2

    :cond_5
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {v0, v1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(IZ)V

    if-eqz p1, :cond_6

    .line 474
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/d$e;->b()V

    :cond_6
    return-void
.end method

.method final a(Lcom/google/android/material/k/m;)V
    .locals 2

    .line 310
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->b:Lcom/google/android/material/k/m;

    .line 311
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->c:Lcom/google/android/material/k/h;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0, p1}, Lcom/google/android/material/k/h;->setShapeAppearanceModel(Lcom/google/android/material/k/m;)V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->d:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/google/android/material/k/q;

    if-eqz v1, :cond_1

    .line 316
    check-cast v0, Lcom/google/android/material/k/q;

    invoke-interface {v0, p1}, Lcom/google/android/material/k/q;->setShapeAppearanceModel(Lcom/google/android/material/k/m;)V

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->e:Lcom/google/android/material/floatingactionbutton/c;

    if-eqz v0, :cond_2

    .line 320
    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/c;->a(Lcom/google/android/material/k/m;)V

    :cond_2
    return-void
.end method

.method a([I)V
    .locals 6

    .line 377
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->C:Lcom/google/android/material/internal/g;

    .line 2070
    iget-object v1, v0, Lcom/google/android/material/internal/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    .line 2072
    iget-object v4, v0, Lcom/google/android/material/internal/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/internal/g$a;

    .line 2073
    iget-object v5, v4, Lcom/google/android/material/internal/g$a;->a:[I

    invoke-static {v5, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v3

    .line 2078
    :goto_1
    iget-object p1, v0, Lcom/google/android/material/internal/g;->b:Lcom/google/android/material/internal/g$a;

    if-eq v4, p1, :cond_3

    .line 2081
    iget-object p1, v0, Lcom/google/android/material/internal/g;->b:Lcom/google/android/material/internal/g$a;

    if-eqz p1, :cond_2

    .line 2098
    iget-object p1, v0, Lcom/google/android/material/internal/g;->c:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 2099
    iget-object p1, v0, Lcom/google/android/material/internal/g;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2100
    iput-object v3, v0, Lcom/google/android/material/internal/g;->c:Landroid/animation/ValueAnimator;

    .line 2085
    :cond_2
    iput-object v4, v0, Lcom/google/android/material/internal/g;->b:Lcom/google/android/material/internal/g$a;

    if-eqz v4, :cond_3

    .line 3093
    iget-object p1, v4, Lcom/google/android/material/internal/g$a;->b:Landroid/animation/ValueAnimator;

    iput-object p1, v0, Lcom/google/android/material/internal/g;->c:Landroid/animation/ValueAnimator;

    .line 3094
    iget-object p1, v0, Lcom/google/android/material/internal/g;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method final b()V
    .locals 1

    .line 281
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->G:F

    invoke-direct {p0, v0}, Lcom/google/android/material/floatingactionbutton/d;->e(F)V

    return-void
.end method

.method final b(F)V
    .locals 2

    .line 258
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->j:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 259
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->j:F

    .line 260
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->i:F

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/d;->k:F

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/material/floatingactionbutton/d;->a(FFF)V

    :cond_0
    return-void
.end method

.method final b(Lcom/google/android/material/floatingactionbutton/d$e;Z)V
    .locals 3

    .line 480
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->F:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 486
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 489
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/d;->q()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    .line 490
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 492
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setAlpha(F)V

    .line 493
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    .line 494
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    .line 495
    invoke-direct {p0, v2}, Lcom/google/android/material/floatingactionbutton/d;->e(F)V

    .line 498
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->m:Lcom/google/android/material/a/h;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 500
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/d;->o()Lcom/google/android/material/a/h;

    move-result-object v0

    .line 499
    :goto_0
    invoke-direct {p0, v0, v1, v1, v1}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/a/h;FFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 504
    new-instance v1, Lcom/google/android/material/floatingactionbutton/d$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/material/floatingactionbutton/d$2;-><init>(Lcom/google/android/material/floatingactionbutton/d;ZLcom/google/android/material/floatingactionbutton/d$e;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 524
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->q:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 525
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    .line 526
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 529
    :cond_4
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 531
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(IZ)V

    .line 532
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setAlpha(F)V

    .line 533
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    .line 534
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    .line 535
    invoke-direct {p0, v1}, Lcom/google/android/material/floatingactionbutton/d;->e(F)V

    if-eqz p1, :cond_6

    .line 537
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/d$e;->a()V

    :cond_6
    return-void
.end method

.method final c(F)V
    .locals 2

    .line 265
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 266
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->k:F

    .line 267
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->i:F

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/d;->j:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/material/floatingactionbutton/d;->a(FFF)V

    :cond_0
    return-void
.end method

.method final c()Z
    .locals 2

    .line 348
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/d;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/d;->l:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method d()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->C:Lcom/google/android/material/internal/g;

    .line 3110
    iget-object v1, v0, Lcom/google/android/material/internal/g;->c:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 3111
    iget-object v1, v0, Lcom/google/android/material/internal/g;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    const/4 v1, 0x0

    .line 3112
    iput-object v1, v0, Lcom/google/android/material/internal/g;->c:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method final d(F)V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->c:Lcom/google/android/material/k/h;

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0, p1}, Lcom/google/android/material/k/h;->r(F)V

    :cond_0
    return-void
.end method

.method final e()V
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/floatingactionbutton/d$d;

    .line 641
    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/d$d;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final f()V
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/floatingactionbutton/d$d;

    .line 649
    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/d$d;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method g()V
    .locals 0

    return-void
.end method

.method final h()V
    .locals 5

    .line 664
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->I:Landroid/graphics/Rect;

    .line 665
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/d;->a(Landroid/graphics/Rect;)V

    .line 666
    invoke-direct {p0, v0}, Lcom/google/android/material/floatingactionbutton/d;->b(Landroid/graphics/Rect;)V

    .line 667
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/d;->A:Lcom/google/android/material/j/b;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/google/android/material/j/b;->a(IIII)V

    return-void
.end method

.method i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method k()Lcom/google/android/material/k/h;
    .locals 2

    .line 743
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->b:Lcom/google/android/material/k/m;

    invoke-static {v0}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/k/m;

    .line 744
    new-instance v1, Lcom/google/android/material/k/h;

    invoke-direct {v1, v0}, Lcom/google/android/material/k/h;-><init>(Lcom/google/android/material/k/m;)V

    return-object v1
.end method

.method public final l()Z
    .locals 4

    .line 748
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 750
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->H:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    return v2

    :cond_0
    return v1

    .line 753
    :cond_1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->H:I

    if-eq v0, v2, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final m()Z
    .locals 4

    .line 758
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 760
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->H:I

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1

    .line 763
    :cond_1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->H:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method n()V
    .locals 3

    .line 850
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    .line 853
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->o:F

    const/high16 v1, 0x42b40000    # 90.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayerType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 855
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 865
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->c:Lcom/google/android/material/k/h;

    if-eqz v0, :cond_2

    .line 866
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/d;->o:F

    float-to-int v1, v1

    .line 3796
    iget-object v2, v0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v2, v2, Lcom/google/android/material/k/h$a;->t:I

    if-eq v2, v1, :cond_2

    .line 3797
    iget-object v2, v0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iput v1, v2, Lcom/google/android/material/k/h$a;->t:I

    .line 3798
    invoke-virtual {v0}, Lcom/google/android/material/k/h;->h()V

    :cond_2
    return-void
.end method
