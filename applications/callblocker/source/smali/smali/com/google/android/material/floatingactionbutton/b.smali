.class Lcom/google/android/material/floatingactionbutton/b;
.super Ljava/lang/Object;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/b$a;,
        Lcom/google/android/material/floatingactionbutton/b$c;,
        Lcom/google/android/material/floatingactionbutton/b$b;,
        Lcom/google/android/material/floatingactionbutton/b$f;,
        Lcom/google/android/material/floatingactionbutton/b$g;,
        Lcom/google/android/material/floatingactionbutton/b$e;,
        Lcom/google/android/material/floatingactionbutton/b$d;
    }
.end annotation


# static fields
.field static final a:Landroid/animation/TimeInterpolator;

.field static final m:[I

.field static final n:[I

.field static final o:[I

.field static final p:[I

.field static final q:[I

.field static final r:[I


# instance fields
.field private A:F

.field private B:F

.field private C:I

.field private D:I

.field private E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/material/floatingactionbutton/b$d;",
            ">;"
        }
    .end annotation
.end field

.field private final H:Landroid/graphics/Rect;

.field private final I:Landroid/graphics/RectF;

.field private final J:Landroid/graphics/RectF;

.field private final K:Landroid/graphics/Matrix;

.field private L:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field b:Lcom/google/android/material/q/k;

.field c:Lcom/google/android/material/q/g;

.field d:Landroid/graphics/drawable/Drawable;

.field e:Lcom/google/android/material/floatingactionbutton/a;

.field f:Landroid/graphics/drawable/Drawable;

.field g:Z

.field h:Z

.field i:F

.field j:F

.field k:F

.field l:I

.field final s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field final t:Lcom/google/android/material/p/b;

.field private final u:Lcom/google/android/material/internal/f;

.field private v:Lcom/google/android/material/a/h;

.field private w:Lcom/google/android/material/a/h;

.field private x:Landroid/animation/Animator;

.field private y:Lcom/google/android/material/a/h;

.field private z:Lcom/google/android/material/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 68
    sget-object v0, Lcom/google/android/material/a/a;->c:Landroid/animation/TimeInterpolator;

    sput-object v0, Lcom/google/android/material/floatingactionbutton/b;->a:Landroid/animation/TimeInterpolator;

    .line 128
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/material/floatingactionbutton/b;->m:[I

    .line 131
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/material/floatingactionbutton/b;->n:[I

    .line 134
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/material/floatingactionbutton/b;->o:[I

    .line 137
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/material/floatingactionbutton/b;->p:[I

    .line 140
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/floatingactionbutton/b;->q:[I

    .line 141
    new-array v0, v2, [I

    sput-object v0, Lcom/google/android/material/floatingactionbutton/b;->r:[I

    return-void

    .line 128
    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    .line 131
    :array_1
    .array-data 4
        0x1010367
        0x101009c
        0x101009e
    .end array-data

    .line 134
    :array_2
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    .line 137
    :array_3
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/p/b;)V
    .locals 3

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/b;->h:Z

    .line 107
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/material/floatingactionbutton/b;->B:F

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/floatingactionbutton/b;->D:I

    .line 146
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->H:Landroid/graphics/Rect;

    .line 147
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->I:Landroid/graphics/RectF;

    .line 148
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->J:Landroid/graphics/RectF;

    .line 149
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->K:Landroid/graphics/Matrix;

    .line 156
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 157
    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/b;->t:Lcom/google/android/material/p/b;

    .line 159
    new-instance v0, Lcom/google/android/material/internal/f;

    invoke-direct {v0}, Lcom/google/android/material/internal/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->u:Lcom/google/android/material/internal/f;

    .line 162
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->u:Lcom/google/android/material/internal/f;

    sget-object v1, Lcom/google/android/material/floatingactionbutton/b;->m:[I

    new-instance v2, Lcom/google/android/material/floatingactionbutton/b$c;

    invoke-direct {v2, p0}, Lcom/google/android/material/floatingactionbutton/b$c;-><init>(Lcom/google/android/material/floatingactionbutton/b;)V

    .line 164
    invoke-direct {p0, v2}, Lcom/google/android/material/floatingactionbutton/b;->a(Lcom/google/android/material/floatingactionbutton/b$g;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 162
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/internal/f;->a([ILandroid/animation/ValueAnimator;)V

    .line 165
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->u:Lcom/google/android/material/internal/f;

    sget-object v1, Lcom/google/android/material/floatingactionbutton/b;->n:[I

    new-instance v2, Lcom/google/android/material/floatingactionbutton/b$b;

    invoke-direct {v2, p0}, Lcom/google/android/material/floatingactionbutton/b$b;-><init>(Lcom/google/android/material/floatingactionbutton/b;)V

    .line 167
    invoke-direct {p0, v2}, Lcom/google/android/material/floatingactionbutton/b;->a(Lcom/google/android/material/floatingactionbutton/b$g;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 165
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/internal/f;->a([ILandroid/animation/ValueAnimator;)V

    .line 168
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->u:Lcom/google/android/material/internal/f;

    sget-object v1, Lcom/google/android/material/floatingactionbutton/b;->o:[I

    new-instance v2, Lcom/google/android/material/floatingactionbutton/b$b;

    invoke-direct {v2, p0}, Lcom/google/android/material/floatingactionbutton/b$b;-><init>(Lcom/google/android/material/floatingactionbutton/b;)V

    .line 170
    invoke-direct {p0, v2}, Lcom/google/android/material/floatingactionbutton/b;->a(Lcom/google/android/material/floatingactionbutton/b$g;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 168
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/internal/f;->a([ILandroid/animation/ValueAnimator;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->u:Lcom/google/android/material/internal/f;

    sget-object v1, Lcom/google/android/material/floatingactionbutton/b;->p:[I

    new-instance v2, Lcom/google/android/material/floatingactionbutton/b$b;

    invoke-direct {v2, p0}, Lcom/google/android/material/floatingactionbutton/b$b;-><init>(Lcom/google/android/material/floatingactionbutton/b;)V

    .line 173
    invoke-direct {p0, v2}, Lcom/google/android/material/floatingactionbutton/b;->a(Lcom/google/android/material/floatingactionbutton/b$g;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 171
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/internal/f;->a([ILandroid/animation/ValueAnimator;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->u:Lcom/google/android/material/internal/f;

    sget-object v1, Lcom/google/android/material/floatingactionbutton/b;->q:[I

    new-instance v2, Lcom/google/android/material/floatingactionbutton/b$f;

    invoke-direct {v2, p0}, Lcom/google/android/material/floatingactionbutton/b$f;-><init>(Lcom/google/android/material/floatingactionbutton/b;)V

    .line 176
    invoke-direct {p0, v2}, Lcom/google/android/material/floatingactionbutton/b;->a(Lcom/google/android/material/floatingactionbutton/b$g;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 175
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/internal/f;->a([ILandroid/animation/ValueAnimator;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->u:Lcom/google/android/material/internal/f;

    sget-object v1, Lcom/google/android/material/floatingactionbutton/b;->r:[I

    new-instance v2, Lcom/google/android/material/floatingactionbutton/b$a;

    invoke-direct {v2, p0}, Lcom/google/android/material/floatingactionbutton/b$a;-><init>(Lcom/google/android/material/floatingactionbutton/b;)V

    .line 179
    invoke-direct {p0, v2}, Lcom/google/android/material/floatingactionbutton/b;->a(Lcom/google/android/material/floatingactionbutton/b$g;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 178
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/internal/f;->a([ILandroid/animation/ValueAnimator;)V

    .line 181
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getRotation()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/floatingactionbutton/b;->A:F

    .line 182
    return-void
.end method

.method private A()Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->L:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_0

    .line 729
    new-instance v0, Lcom/google/android/material/floatingactionbutton/b$5;

    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/b$5;-><init>(Lcom/google/android/material/floatingactionbutton/b;)V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->L:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->L:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object v0
.end method

.method private B()Z
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v0}, Landroidx/core/h/u;->y(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/material/floatingactionbutton/b;F)F
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/b;->B:F

    return p1
.end method

.method static synthetic a(Lcom/google/android/material/floatingactionbutton/b;I)I
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/b;->D:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/material/floatingactionbutton/b;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->x:Landroid/animation/Animator;

    return-object p1
.end method

.method private a(Lcom/google/android/material/a/h;FFF)Landroid/animation/AnimatorSet;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 565
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v4, [F

    aput p2, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 566
    const-string/jumbo v2, "opacity"

    invoke-virtual {p1, v2}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Lcom/google/android/material/a/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/material/a/i;->a(Landroid/animation/Animator;)V

    .line 567
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v4, [F

    aput p3, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 570
    const-string/jumbo v2, "scale"

    invoke-virtual {p1, v2}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Lcom/google/android/material/a/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/material/a/i;->a(Landroid/animation/Animator;)V

    .line 571
    invoke-direct {p0, v1}, Lcom/google/android/material/floatingactionbutton/b;->a(Landroid/animation/ObjectAnimator;)V

    .line 572
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v4, [F

    aput p3, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 575
    const-string/jumbo v2, "scale"

    invoke-virtual {p1, v2}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Lcom/google/android/material/a/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/material/a/i;->a(Landroid/animation/Animator;)V

    .line 576
    invoke-direct {p0, v1}, Lcom/google/android/material/floatingactionbutton/b;->a(Landroid/animation/ObjectAnimator;)V

    .line 577
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/b;->K:Landroid/graphics/Matrix;

    invoke-direct {p0, p4, v1}, Lcom/google/android/material/floatingactionbutton/b;->a(FLandroid/graphics/Matrix;)V

    .line 580
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v2, Lcom/google/android/material/a/f;

    invoke-direct {v2}, Lcom/google/android/material/a/f;-><init>()V

    new-instance v3, Lcom/google/android/material/floatingactionbutton/b$3;

    invoke-direct {v3, p0}, Lcom/google/android/material/floatingactionbutton/b$3;-><init>(Lcom/google/android/material/floatingactionbutton/b;)V

    new-array v4, v4, [Landroid/graphics/Matrix;

    new-instance v5, Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/google/android/material/floatingactionbutton/b;->K:Landroid/graphics/Matrix;

    invoke-direct {v5, v6}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v5, v4, v7

    .line 581
    invoke-static {v1, v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 595
    const-string/jumbo v2, "iconScale"

    invoke-virtual {p1, v2}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Lcom/google/android/material/a/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/material/a/i;->a(Landroid/animation/Animator;)V

    .line 596
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 599
    invoke-static {v1, v0}, Lcom/google/android/material/a/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 600
    return-object v1
.end method

.method private a(Lcom/google/android/material/floatingactionbutton/b$g;)Landroid/animation/ValueAnimator;
    .locals 4

    .prologue
    .line 769
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 770
    sget-object v1, Lcom/google/android/material/floatingactionbutton/b;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 771
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 772
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 773
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 774
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 775
    return-object v0

    .line 774
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(FLandroid/graphics/Matrix;)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 293
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 295
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/b;->C:I

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/b;->I:Landroid/graphics/RectF;

    .line 299
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/b;->J:Landroid/graphics/RectF;

    .line 300
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 301
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->C:I

    int-to-float v0, v0

    iget v3, p0, Lcom/google/android/material/floatingactionbutton/b;->C:I

    int-to-float v3, v3

    invoke-virtual {v2, v4, v4, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 302
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 305
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->C:I

    int-to-float v0, v0

    div-float/2addr v0, v5

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/b;->C:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {p2, p1, p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 307
    :cond_0
    return-void
.end method

.method private a(Landroid/animation/ObjectAnimator;)V
    .locals 2

    .prologue
    .line 608
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    .line 620
    :goto_0
    return-void

    .line 612
    :cond_0
    new-instance v0, Lcom/google/android/material/floatingactionbutton/b$4;

    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/b$4;-><init>(Lcom/google/android/material/floatingactionbutton/b;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto :goto_0
.end method

.method private y()Lcom/google/android/material/a/h;
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->v:Lcom/google/android/material/a/h;

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 545
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$a;->design_fab_show_motion_spec:I

    invoke-static {v0, v1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->v:Lcom/google/android/material/a/h;

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->v:Lcom/google/android/material/a/h;

    invoke-static {v0}, Landroidx/core/g/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/a/h;

    return-object v0
.end method

.method private z()Lcom/google/android/material/a/h;
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->w:Lcom/google/android/material/a/h;

    if-nez v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 554
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$a;->design_fab_hide_motion_spec:I

    invoke-static {v0, v1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->w:Lcom/google/android/material/a/h;

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->w:Lcom/google/android/material/a/h;

    invoke-static {v0}, Landroidx/core/g/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/a/h;

    return-object v0
.end method


# virtual methods
.method a()F
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->i:F

    return v0
.end method

.method final a(F)V
    .locals 3

    .prologue
    .line 239
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->i:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 240
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/b;->i:F

    .line 241
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->i:F

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/b;->j:F

    iget v2, p0, Lcom/google/android/material/floatingactionbutton/b;->k:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/material/floatingactionbutton/b;->a(FFF)V

    .line 243
    :cond_0
    return-void
.end method

.method a(FFF)V
    .locals 0

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/b;->o()V

    .line 367
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/b;->e(F)V

    .line 368
    return-void
.end method

.method a(I)V
    .locals 0

    .prologue
    .line 228
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/b;->l:I

    .line 229
    return-void
.end method

.method a(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->E:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->E:Ljava/util/ArrayList;

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->c:Lcom/google/android/material/q/g;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->c:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->e:Lcom/google/android/material/floatingactionbutton/a;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->e:Lcom/google/android/material/floatingactionbutton/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/a;->a(Landroid/content/res/ColorStateList;)V

    .line 219
    :cond_1
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .locals 4

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/b;->u()Lcom/google/android/material/q/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->c:Lcom/google/android/material/q/g;

    .line 192
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->c:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 193
    if-eqz p2, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->c:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p2}, Lcom/google/android/material/q/g;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->c:Lcom/google/android/material/q/g;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Lcom/google/android/material/q/g;->D(I)V

    .line 198
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->c:Lcom/google/android/material/q/g;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/q/g;->a(Landroid/content/Context;)V

    .line 201
    new-instance v1, Lcom/google/android/material/o/a;

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->c:Lcom/google/android/material/q/g;

    .line 202
    invoke-virtual {v0}, Lcom/google/android/material/q/g;->L()Lcom/google/android/material/q/k;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/material/o/a;-><init>(Lcom/google/android/material/q/k;)V

    .line 203
    invoke-static {p3}, Lcom/google/android/material/o/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/o/a;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 204
    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/b;->d:Landroid/graphics/drawable/Drawable;

    .line 206
    const/4 v0, 0x2

    new-array v2, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->c:Lcom/google/android/material/q/g;

    .line 207
    invoke-static {v0}, Landroidx/core/g/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 209
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->f:Landroid/graphics/drawable/Drawable;

    .line 210
    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->c:Lcom/google/android/material/q/g;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->c:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 225
    :cond_0
    return-void
.end method

.method a(Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/b;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->l:I

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 672
    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 675
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/b;->h:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/b;->a()F

    move-result v1

    iget v2, p0, Lcom/google/android/material/floatingactionbutton/b;->k:F

    add-float/2addr v1, v2

    .line 676
    :goto_1
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 677
    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 678
    invoke-virtual {p1, v2, v0, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 679
    return-void

    .line 672
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 675
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final a(Lcom/google/android/material/a/h;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/a/h;

    .line 336
    return-void
.end method

.method a(Lcom/google/android/material/floatingactionbutton/b$d;)V
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->G:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 624
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->G:Ljava/util/ArrayList;

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    return-void
.end method

.method a(Lcom/google/android/material/floatingactionbutton/b$e;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 417
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/b;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->x:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->x:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 426
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/b;->B()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 427
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->z:Lcom/google/android/material/a/h;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->z:Lcom/google/android/material/a/h;

    .line 428
    :goto_1
    invoke-direct {p0, v0, v1, v1, v1}, Lcom/google/android/material/floatingactionbutton/b;->a(Lcom/google/android/material/a/h;FFF)Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 433
    new-instance v0, Lcom/google/android/material/floatingactionbutton/b$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/material/floatingactionbutton/b$1;-><init>(Lcom/google/android/material/floatingactionbutton/b;ZLcom/google/android/material/floatingactionbutton/b$e;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 464
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 465
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 466
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    .line 429
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/b;->z()Lcom/google/android/material/a/h;

    move-result-object v0

    goto :goto_1

    .line 469
    :cond_4
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 472
    :cond_5
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz p2, :cond_6

    const/16 v0, 0x8

    :goto_3
    invoke-virtual {v1, v0, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(IZ)V

    .line 473
    if-eqz p1, :cond_0

    .line 474
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/b$e;->b()V

    goto :goto_0

    .line 472
    :cond_6
    const/4 v0, 0x4

    goto :goto_3
.end method

.method final a(Lcom/google/android/material/q/k;)V
    .locals 1

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->b:Lcom/google/android/material/q/k;

    .line 311
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->c:Lcom/google/android/material/q/g;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->c:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->setShapeAppearanceModel(Lcom/google/android/material/q/k;)V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->d:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/google/android/material/q/n;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->d:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/google/android/material/q/n;

    invoke-interface {v0, p1}, Lcom/google/android/material/q/n;->setShapeAppearanceModel(Lcom/google/android/material/q/k;)V

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->e:Lcom/google/android/material/floatingactionbutton/a;

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->e:Lcom/google/android/material/floatingactionbutton/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/a;->a(Lcom/google/android/material/q/k;)V

    .line 322
    :cond_2
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 356
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/b;->g:Z

    .line 357
    return-void
.end method

.method a([I)V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->u:Lcom/google/android/material/internal/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/f;->a([I)V

    .line 378
    return-void
.end method

.method b()F
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->j:F

    return v0
.end method

.method final b(F)V
    .locals 3

    .prologue
    .line 258
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->j:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 259
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/b;->j:F

    .line 260
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->i:F

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/b;->j:F

    iget v2, p0, Lcom/google/android/material/floatingactionbutton/b;->k:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/material/floatingactionbutton/b;->a(FFF)V

    .line 262
    :cond_0
    return-void
.end method

.method final b(I)V
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->C:I

    if-eq v0, p1, :cond_0

    .line 273
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/b;->C:I

    .line 274
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/b;->d()V

    .line 276
    :cond_0
    return-void
.end method

.method public b(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->F:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->F:Ljava/util/ArrayList;

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    return-void
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->d:Landroid/graphics/drawable/Drawable;

    .line 234
    invoke-static {p1}, Lcom/google/android/material/o/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 233
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 236
    :cond_0
    return-void
.end method

.method b(Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 682
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->f:Landroid/graphics/drawable/Drawable;

    const-string/jumbo v1, "Didn\'t initialize content background"

    invoke-static {v0, v1}, Landroidx/core/g/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/b;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/b;->f:Landroid/graphics/drawable/Drawable;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 686
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/b;->t:Lcom/google/android/material/p/b;

    invoke-interface {v1, v0}, Lcom/google/android/material/p/b;->a(Landroid/graphics/drawable/Drawable;)V

    .line 690
    :goto_0
    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->t:Lcom/google/android/material/p/b;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/b;->f:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/google/android/material/p/b;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method final b(Lcom/google/android/material/a/h;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->z:Lcom/google/android/material/a/h;

    .line 345
    return-void
.end method

.method b(Lcom/google/android/material/floatingactionbutton/b$e;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 480
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/b;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->x:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->x:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 489
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/b;->B()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 490
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 492
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setAlpha(F)V

    .line 493
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    .line 494
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    .line 495
    invoke-virtual {p0, v1}, Lcom/google/android/material/floatingactionbutton/b;->d(F)V

    .line 498
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/a/h;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/a/h;

    .line 499
    :goto_1
    invoke-direct {p0, v0, v2, v2, v2}, Lcom/google/android/material/floatingactionbutton/b;->a(Lcom/google/android/material/a/h;FFF)Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 504
    new-instance v0, Lcom/google/android/material/floatingactionbutton/b$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/material/floatingactionbutton/b$2;-><init>(Lcom/google/android/material/floatingactionbutton/b;ZLcom/google/android/material/floatingactionbutton/b$e;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 524
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->E:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 525
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 526
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    .line 500
    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/b;->y()Lcom/google/android/material/a/h;

    move-result-object v0

    goto :goto_1

    .line 529
    :cond_5
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 531
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(IZ)V

    .line 532
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setAlpha(F)V

    .line 533
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    .line 534
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    .line 535
    invoke-virtual {p0, v2}, Lcom/google/android/material/floatingactionbutton/b;->d(F)V

    .line 536
    if-eqz p1, :cond_0

    .line 537
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/b$e;->a()V

    goto :goto_0
.end method

.method b(Z)V
    .locals 0

    .prologue
    .line 360
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/b;->h:Z

    .line 361
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/b;->o()V

    .line 362
    return-void
.end method

.method c()F
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->k:F

    return v0
.end method

.method final c(F)V
    .locals 3

    .prologue
    .line 265
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 266
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/b;->k:F

    .line 267
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->i:F

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/b;->j:F

    iget v2, p0, Lcom/google/android/material/floatingactionbutton/b;->k:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/material/floatingactionbutton/b;->a(FFF)V

    .line 269
    :cond_0
    return-void
.end method

.method final d()V
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->B:F

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/b;->d(F)V

    .line 282
    return-void
.end method

.method final d(F)V
    .locals 2

    .prologue
    .line 285
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/b;->B:F

    .line 287
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->K:Landroid/graphics/Matrix;

    .line 288
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/b;->a(FLandroid/graphics/Matrix;)V

    .line 289
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 290
    return-void
.end method

.method final e()Lcom/google/android/material/q/k;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->b:Lcom/google/android/material/q/k;

    return-object v0
.end method

.method e(F)V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->c:Lcom/google/android/material/q/g;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->c:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->r(F)V

    .line 374
    :cond_0
    return-void
.end method

.method final f()Lcom/google/android/material/a/h;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->y:Lcom/google/android/material/a/h;

    return-object v0
.end method

.method final g()Lcom/google/android/material/a/h;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->z:Lcom/google/android/material/a/h;

    return-object v0
.end method

.method final h()Z
    .locals 2

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/b;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/b;->l:I

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method i()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/b;->g:Z

    return v0
.end method

.method j()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->u:Lcom/google/android/material/internal/f;

    invoke-virtual {v0}, Lcom/google/android/material/internal/f;->a()V

    .line 382
    return-void
.end method

.method k()V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->G:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/b$d;

    .line 641
    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/b$d;->a()V

    goto :goto_0

    .line 644
    :cond_0
    return-void
.end method

.method l()V
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->G:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/b$d;

    .line 649
    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/b$d;->b()V

    goto :goto_0

    .line 652
    :cond_0
    return-void
.end method

.method final m()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method n()V
    .locals 0

    .prologue
    .line 661
    return-void
.end method

.method final o()V
    .locals 5

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->H:Landroid/graphics/Rect;

    .line 665
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/b;->a(Landroid/graphics/Rect;)V

    .line 666
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/b;->b(Landroid/graphics/Rect;)V

    .line 667
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/b;->t:Lcom/google/android/material/p/b;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/google/android/material/p/b;->a(IIII)V

    .line 668
    return-void
.end method

.method p()Z
    .locals 1

    .prologue
    .line 693
    const/4 v0, 0x1

    return v0
.end method

.method q()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->c:Lcom/google/android/material/q/g;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/b;->c:Lcom/google/android/material/q/g;

    invoke-static {v0, v1}, Lcom/google/android/material/q/h;->a(Landroid/view/View;Lcom/google/android/material/q/g;)V

    .line 701
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/b;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/b;->A()Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 704
    :cond_1
    return-void
.end method

.method r()V
    .locals 2

    .prologue
    .line 707
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 708
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/b;->L:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/b;->L:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 710
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->L:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 712
    :cond_0
    return-void
.end method

.method s()Z
    .locals 1

    .prologue
    .line 715
    const/4 v0, 0x1

    return v0
.end method

.method t()V
    .locals 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getRotation()F

    move-result v0

    .line 720
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/b;->A:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 721
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/b;->A:F

    .line 722
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/b;->x()V

    .line 724
    :cond_0
    return-void
.end method

.method u()Lcom/google/android/material/q/g;
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->b:Lcom/google/android/material/q/k;

    invoke-static {v0}, Landroidx/core/g/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/q/k;

    .line 744
    new-instance v1, Lcom/google/android/material/q/g;

    invoke-direct {v1, v0}, Lcom/google/android/material/q/g;-><init>(Lcom/google/android/material/q/k;)V

    return-object v1
.end method

.method v()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 748
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 750
    iget v2, p0, Lcom/google/android/material/floatingactionbutton/b;->D:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 753
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 750
    goto :goto_0

    .line 753
    :cond_2
    iget v2, p0, Lcom/google/android/material/floatingactionbutton/b;->D:I

    if-ne v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method w()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 758
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 760
    iget v2, p0, Lcom/google/android/material/floatingactionbutton/b;->D:I

    if-ne v2, v0, :cond_1

    .line 763
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 760
    goto :goto_0

    .line 763
    :cond_2
    iget v2, p0, Lcom/google/android/material/floatingactionbutton/b;->D:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method x()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 850
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 853
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/b;->A:F

    const/high16 v1, 0x42b40000    # 90.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 854
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayerType()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 855
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 865
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->c:Lcom/google/android/material/q/g;

    if-eqz v0, :cond_1

    .line 866
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->c:Lcom/google/android/material/q/g;

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/b;->A:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/q/g;->C(I)V

    .line 868
    :cond_1
    return-void

    .line 858
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method
