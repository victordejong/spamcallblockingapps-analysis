.class final Landroidx/recyclerview/widget/d;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/d$b;,
        Landroidx/recyclerview/widget/d$a;
    }
.end annotation


# static fields
.field private static final r:[I

.field private static final s:[I


# instance fields
.field private A:I

.field private final B:[I

.field private final C:[I

.field private final D:Ljava/lang/Runnable;

.field private final E:Landroidx/recyclerview/widget/RecyclerView$m;

.field final a:I

.field final b:Landroid/graphics/drawable/StateListDrawable;

.field final c:Landroid/graphics/drawable/Drawable;

.field d:I

.field e:I

.field f:F

.field g:I

.field h:I

.field i:F

.field j:I

.field k:I

.field l:Landroidx/recyclerview/widget/RecyclerView;

.field m:Z

.field n:Z

.field o:I

.field final p:Landroid/animation/ValueAnimator;

.field q:I

.field private final t:I

.field private final u:I

.field private final v:I

.field private final w:Landroid/graphics/drawable/StateListDrawable;

.field private final x:Landroid/graphics/drawable/Drawable;

.field private final y:I

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 74
    sput-object v0, Landroidx/recyclerview/widget/d;->r:[I

    new-array v0, v2, [I

    .line 75
    sput-object v0, Landroidx/recyclerview/widget/d;->s:[I

    return-void
.end method

.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 3

    .line 141
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Landroidx/recyclerview/widget/d;->j:I

    .line 105
    iput v0, p0, Landroidx/recyclerview/widget/d;->k:I

    .line 112
    iput-boolean v0, p0, Landroidx/recyclerview/widget/d;->m:Z

    .line 113
    iput-boolean v0, p0, Landroidx/recyclerview/widget/d;->n:Z

    .line 114
    iput v0, p0, Landroidx/recyclerview/widget/d;->o:I

    .line 115
    iput v0, p0, Landroidx/recyclerview/widget/d;->A:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 117
    iput-object v2, p0, Landroidx/recyclerview/widget/d;->B:[I

    new-array v2, v1, [I

    .line 118
    iput-object v2, p0, Landroidx/recyclerview/widget/d;->C:[I

    new-array v1, v1, [F

    .line 119
    fill-array-data v1, :array_0

    .line 120
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroidx/recyclerview/widget/d;->p:Landroid/animation/ValueAnimator;

    .line 121
    iput v0, p0, Landroidx/recyclerview/widget/d;->q:I

    .line 123
    new-instance v0, Landroidx/recyclerview/widget/d$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/d$1;-><init>(Landroidx/recyclerview/widget/d;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/d;->D:Ljava/lang/Runnable;

    .line 129
    new-instance v0, Landroidx/recyclerview/widget/d$2;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/d$2;-><init>(Landroidx/recyclerview/widget/d;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/d;->E:Landroidx/recyclerview/widget/RecyclerView$m;

    .line 142
    iput-object p2, p0, Landroidx/recyclerview/widget/d;->b:Landroid/graphics/drawable/StateListDrawable;

    .line 143
    iput-object p3, p0, Landroidx/recyclerview/widget/d;->c:Landroid/graphics/drawable/Drawable;

    .line 144
    iput-object p4, p0, Landroidx/recyclerview/widget/d;->w:Landroid/graphics/drawable/StateListDrawable;

    .line 145
    iput-object p5, p0, Landroidx/recyclerview/widget/d;->x:Landroid/graphics/drawable/Drawable;

    .line 146
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {p6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/d;->u:I

    .line 147
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {p6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/d;->v:I

    .line 149
    invoke-virtual {p4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result p4

    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Landroidx/recyclerview/widget/d;->y:I

    .line 151
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Landroidx/recyclerview/widget/d;->z:I

    .line 152
    iput p7, p0, Landroidx/recyclerview/widget/d;->a:I

    .line 153
    iput p8, p0, Landroidx/recyclerview/widget/d;->t:I

    const/16 p4, 0xff

    .line 154
    invoke-virtual {p2, p4}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 155
    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 157
    new-instance p2, Landroidx/recyclerview/widget/d$a;

    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/d$a;-><init>(Landroidx/recyclerview/widget/d;)V

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    new-instance p2, Landroidx/recyclerview/widget/d$b;

    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/d$b;-><init>(Landroidx/recyclerview/widget/d;)V

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4164
    iget-object p2, p0, Landroidx/recyclerview/widget/d;->l:Landroidx/recyclerview/widget/RecyclerView;

    if-eq p2, p1, :cond_2

    if-eqz p2, :cond_1

    .line 4183
    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->b(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 4184
    iget-object p2, p0, Landroidx/recyclerview/widget/d;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 4222
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4223
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->t:Landroidx/recyclerview/widget/RecyclerView$l;

    if-ne p3, p0, :cond_0

    const/4 p3, 0x0

    .line 4224
    iput-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->t:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 4185
    :cond_0
    iget-object p2, p0, Landroidx/recyclerview/widget/d;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->b(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 4186
    invoke-direct {p0}, Landroidx/recyclerview/widget/d;->c()V

    .line 4170
    :cond_1
    iput-object p1, p0, Landroidx/recyclerview/widget/d;->l:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    const/4 p2, -0x1

    .line 5665
    invoke-virtual {p1, p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;I)V

    .line 5178
    iget-object p1, p0, Landroidx/recyclerview/widget/d;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 6213
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5179
    iget-object p1, p0, Landroidx/recyclerview/widget/d;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$m;)V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static a(FF[IIII)I
    .locals 2

    const/4 v0, 0x1

    .line 479
    aget v0, p2, v0

    const/4 v1, 0x0

    aget p2, p2, v1

    sub-int/2addr v0, p2

    if-nez v0, :cond_0

    return v1

    :cond_0
    sub-float/2addr p1, p0

    int-to-float p0, v0

    div-float/2addr p1, p0

    sub-int/2addr p3, p5

    int-to-float p0, p3

    mul-float p1, p1, p0

    float-to-int p0, p1

    add-int/2addr p4, p0

    if-ge p4, p3, :cond_1

    if-ltz p4, :cond_1

    return p0

    :cond_1
    return v1
.end method

.method private a()Z
    .locals 2

    .line 216
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private a(FF)Z
    .locals 2

    .line 496
    invoke-direct {p0}, Landroidx/recyclerview/widget/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/d;->u:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/d;->j:I

    iget v1, p0, Landroidx/recyclerview/widget/d;->u:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    :goto_0
    iget p1, p0, Landroidx/recyclerview/widget/d;->e:I

    iget v0, p0, Landroidx/recyclerview/widget/d;->d:I

    div-int/lit8 v1, v0, 0x2

    sub-int v1, p1, v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private b()V
    .locals 5

    .line 228
    iget v0, p0, Landroidx/recyclerview/widget/d;->q:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x1

    .line 233
    iput v0, p0, Landroidx/recyclerview/widget/d;->q:I

    .line 234
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->p:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 235
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->p:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 236
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->p:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 237
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method private b(I)V
    .locals 4

    .line 262
    invoke-direct {p0}, Landroidx/recyclerview/widget/d;->c()V

    .line 263
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->l:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/d;->D:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private b(FF)Z
    .locals 2

    .line 504
    iget v0, p0, Landroidx/recyclerview/widget/d;->k:I

    iget v1, p0, Landroidx/recyclerview/widget/d;->y:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    iget p2, p0, Landroidx/recyclerview/widget/d;->h:I

    iget v0, p0, Landroidx/recyclerview/widget/d;->g:I

    div-int/lit8 v1, v0, 0x2

    sub-int v1, p2, v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c()V
    .locals 2

    .line 258
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->l:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/d;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 195
    iget v1, p0, Landroidx/recyclerview/widget/d;->o:I

    if-eq v1, v0, :cond_0

    .line 196
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->b:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Landroidx/recyclerview/widget/d;->r:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 197
    invoke-direct {p0}, Landroidx/recyclerview/widget/d;->c()V

    :cond_0
    if-nez p1, :cond_1

    .line 7191
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    goto :goto_0

    .line 203
    :cond_1
    invoke-direct {p0}, Landroidx/recyclerview/widget/d;->b()V

    .line 206
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/d;->o:I

    if-ne v1, v0, :cond_2

    if-eq p1, v0, :cond_2

    .line 207
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->b:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroidx/recyclerview/widget/d;->s:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    const/16 v0, 0x4b0

    .line 208
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/d;->b(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/16 v0, 0x5dc

    .line 210
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/d;->b(I)V

    .line 212
    :cond_3
    :goto_1
    iput p1, p0, Landroidx/recyclerview/widget/d;->o:I

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 5

    .line 268
    iget p2, p0, Landroidx/recyclerview/widget/d;->j:I

    iget-object p3, p0, Landroidx/recyclerview/widget/d;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p3

    const/4 v0, 0x0

    if-ne p2, p3, :cond_4

    iget p2, p0, Landroidx/recyclerview/widget/d;->k:I

    iget-object p3, p0, Landroidx/recyclerview/widget/d;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 269
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p3

    if-eq p2, p3, :cond_0

    goto/16 :goto_1

    .line 280
    :cond_0
    iget p2, p0, Landroidx/recyclerview/widget/d;->q:I

    if-eqz p2, :cond_3

    .line 281
    iget-boolean p2, p0, Landroidx/recyclerview/widget/d;->m:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 7291
    iget p2, p0, Landroidx/recyclerview/widget/d;->j:I

    .line 7293
    iget v1, p0, Landroidx/recyclerview/widget/d;->u:I

    sub-int/2addr p2, v1

    .line 7294
    iget v2, p0, Landroidx/recyclerview/widget/d;->e:I

    iget v3, p0, Landroidx/recyclerview/widget/d;->d:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    .line 7295
    iget-object v4, p0, Landroidx/recyclerview/widget/d;->b:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v4, v0, v0, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 7296
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->c:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroidx/recyclerview/widget/d;->v:I

    iget v4, p0, Landroidx/recyclerview/widget/d;->k:I

    .line 7297
    invoke-virtual {v1, v0, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7299
    invoke-direct {p0}, Landroidx/recyclerview/widget/d;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7300
    iget-object p2, p0, Landroidx/recyclerview/widget/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7301
    iget p2, p0, Landroidx/recyclerview/widget/d;->u:I

    int-to-float p2, p2

    int-to-float v1, v2

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 7302
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 7303
    iget-object v3, p0, Landroidx/recyclerview/widget/d;->b:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 7304
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 7305
    iget p2, p0, Landroidx/recyclerview/widget/d;->u:I

    neg-int p2, p2

    int-to-float p2, p2

    neg-int v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_1
    int-to-float v1, p2

    .line 7307
    invoke-virtual {p1, v1, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7308
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v1, v2

    .line 7309
    invoke-virtual {p1, p3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7310
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->b:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-int p2, p2

    int-to-float p2, p2

    neg-int v1, v2

    int-to-float v1, v1

    .line 7311
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 284
    :cond_2
    :goto_0
    iget-boolean p2, p0, Landroidx/recyclerview/widget/d;->n:Z

    if-eqz p2, :cond_3

    .line 7316
    iget p2, p0, Landroidx/recyclerview/widget/d;->k:I

    .line 7318
    iget v1, p0, Landroidx/recyclerview/widget/d;->y:I

    sub-int/2addr p2, v1

    .line 7319
    iget v2, p0, Landroidx/recyclerview/widget/d;->h:I

    iget v3, p0, Landroidx/recyclerview/widget/d;->g:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    .line 7320
    iget-object v4, p0, Landroidx/recyclerview/widget/d;->w:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v4, v0, v0, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 7321
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->x:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroidx/recyclerview/widget/d;->j:I

    iget v4, p0, Landroidx/recyclerview/widget/d;->z:I

    .line 7322
    invoke-virtual {v1, v0, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v0, p2

    .line 7324
    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7325
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v0, v2

    .line 7326
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7327
    iget-object p3, p0, Landroidx/recyclerview/widget/d;->w:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-int p3, v2

    int-to-float p3, p3

    neg-int p2, p2

    int-to-float p2, p2

    .line 7328
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    return-void

    .line 270
    :cond_4
    :goto_1
    iget-object p1, p0, Landroidx/recyclerview/widget/d;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/d;->j:I

    .line 271
    iget-object p1, p0, Landroidx/recyclerview/widget/d;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/d;->k:I

    .line 276
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/d;->a(I)V

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 381
    iget v0, p0, Landroidx/recyclerview/widget/d;->o:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 382
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v0, v4}, Landroidx/recyclerview/widget/d;->a(FF)Z

    move-result v0

    .line 383
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5}, Landroidx/recyclerview/widget/d;->b(FF)Z

    move-result v4

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_4

    if-nez v0, :cond_0

    if-eqz v4, :cond_4

    :cond_0
    if-eqz v4, :cond_1

    .line 387
    iput v3, p0, Landroidx/recyclerview/widget/d;->A:I

    .line 388
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/d;->i:F

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 390
    iput v2, p0, Landroidx/recyclerview/widget/d;->A:I

    .line 391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/d;->f:F

    .line 394
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/d;->a(I)V

    goto :goto_1

    :cond_3
    if-ne v0, v2, :cond_4

    :goto_1
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public final b(Landroid/view/MotionEvent;)V
    .locals 11

    .line 409
    iget v0, p0, Landroidx/recyclerview/widget/d;->o:I

    if-nez v0, :cond_0

    return-void

    .line 413
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v3}, Landroidx/recyclerview/widget/d;->a(FF)Z

    move-result v0

    .line 415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Landroidx/recyclerview/widget/d;->b(FF)Z

    move-result v3

    if-nez v0, :cond_1

    if-eqz v3, :cond_4

    :cond_1
    if-eqz v3, :cond_2

    .line 418
    iput v2, p0, Landroidx/recyclerview/widget/d;->A:I

    .line 419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/d;->i:F

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 421
    iput v1, p0, Landroidx/recyclerview/widget/d;->A:I

    .line 422
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/d;->f:F

    .line 424
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/d;->a(I)V

    :cond_4
    return-void

    .line 426
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_6

    iget v0, p0, Landroidx/recyclerview/widget/d;->o:I

    if-ne v0, v1, :cond_6

    const/4 p1, 0x0

    .line 427
    iput p1, p0, Landroidx/recyclerview/widget/d;->f:F

    .line 428
    iput p1, p0, Landroidx/recyclerview/widget/d;->i:F

    .line 429
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/d;->a(I)V

    .line 430
    iput v3, p0, Landroidx/recyclerview/widget/d;->A:I

    return-void

    .line 431
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_a

    iget v0, p0, Landroidx/recyclerview/widget/d;->o:I

    if-ne v0, v1, :cond_a

    .line 432
    invoke-direct {p0}, Landroidx/recyclerview/widget/d;->b()V

    .line 433
    iget v0, p0, Landroidx/recyclerview/widget/d;->A:I

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_8

    .line 434
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 7542
    iget-object v7, p0, Landroidx/recyclerview/widget/d;->C:[I

    iget v5, p0, Landroidx/recyclerview/widget/d;->t:I

    aput v5, v7, v3

    .line 7543
    iget v6, p0, Landroidx/recyclerview/widget/d;->j:I

    sub-int/2addr v6, v5

    aput v6, v7, v2

    .line 7462
    aget v5, v7, v3

    int-to-float v5, v5

    aget v6, v7, v2

    int-to-float v6, v6

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 7463
    iget v5, p0, Landroidx/recyclerview/widget/d;->h:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v4

    if-ltz v5, :cond_8

    .line 7467
    iget v5, p0, Landroidx/recyclerview/widget/d;->i:F

    iget-object v6, p0, Landroidx/recyclerview/widget/d;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 7468
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v8

    iget-object v6, p0, Landroidx/recyclerview/widget/d;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 7469
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v9

    iget v10, p0, Landroidx/recyclerview/widget/d;->j:I

    move v6, v0

    .line 7467
    invoke-static/range {v5 .. v10}, Landroidx/recyclerview/widget/d;->a(FF[IIII)I

    move-result v5

    if-eqz v5, :cond_7

    .line 7471
    iget-object v6, p0, Landroidx/recyclerview/widget/d;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 7474
    :cond_7
    iput v0, p0, Landroidx/recyclerview/widget/d;->i:F

    .line 436
    :cond_8
    iget v0, p0, Landroidx/recyclerview/widget/d;->A:I

    if-ne v0, v1, :cond_a

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 8533
    iget-object v7, p0, Landroidx/recyclerview/widget/d;->B:[I

    iget v0, p0, Landroidx/recyclerview/widget/d;->t:I

    aput v0, v7, v3

    .line 8534
    iget v1, p0, Landroidx/recyclerview/widget/d;->k:I

    sub-int/2addr v1, v0

    aput v1, v7, v2

    .line 8447
    aget v0, v7, v3

    int-to-float v0, v0

    aget v1, v7, v2

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 8448
    iget v0, p0, Landroidx/recyclerview/widget/d;->e:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_a

    .line 8451
    iget v5, p0, Landroidx/recyclerview/widget/d;->f:F

    iget-object v0, p0, Landroidx/recyclerview/widget/d;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 8452
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v8

    iget-object v0, p0, Landroidx/recyclerview/widget/d;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 8453
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v9

    iget v10, p0, Landroidx/recyclerview/widget/d;->k:I

    move v6, p1

    .line 8451
    invoke-static/range {v5 .. v10}, Landroidx/recyclerview/widget/d;->a(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_9

    .line 8455
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 8457
    :cond_9
    iput p1, p0, Landroidx/recyclerview/widget/d;->f:F

    :cond_a
    return-void
.end method
