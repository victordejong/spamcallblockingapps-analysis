.class public abstract Lcom/google/android/material/progressindicator/BaseProgressIndicator;
.super Landroid/widget/ProgressBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/google/android/material/progressindicator/b;",
        ">",
        "Landroid/widget/ProgressBar;"
    }
.end annotation


# static fields
.field static final a:I


# instance fields
.field b:Lcom/google/android/material/progressindicator/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field c:Lcom/google/android/material/progressindicator/a;

.field private d:I

.field private e:Z

.field private f:Z

.field private final g:I

.field private final h:I

.field private i:J

.field private j:Z

.field private k:I

.field private final l:Ljava/lang/Runnable;

.field private final m:Ljava/lang/Runnable;

.field private final n:Landroidx/l/a/a/b$a;

.field private final o:Landroidx/l/a/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    sget v0, Lcom/google/android/material/a$k;->Widget_MaterialComponents_ProgressIndicator:I

    sput v0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->a:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .line 137
    sget v0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->a:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, -0x1

    .line 120
    iput-wide v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->i:J

    const/4 p1, 0x0

    .line 125
    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->j:Z

    const/4 v0, 0x4

    .line 128
    iput v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->k:I

    .line 779
    new-instance v0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator$1;-><init>(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V

    iput-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->l:Ljava/lang/Runnable;

    .line 792
    new-instance v0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator$2;-><init>(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V

    iput-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->m:Ljava/lang/Runnable;

    .line 807
    new-instance v0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$3;

    invoke-direct {v0, p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator$3;-><init>(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V

    iput-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->n:Landroidx/l/a/a/b$a;

    .line 825
    new-instance v0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$4;

    invoke-direct {v0, p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator$4;-><init>(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V

    iput-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->o:Landroidx/l/a/a/b$a;

    .line 141
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 143
    invoke-virtual {p0, v1, p2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/progressindicator/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->b:Lcom/google/android/material/progressindicator/b;

    .line 146
    sget-object v3, Lcom/google/android/material/a$l;->BaseProgressIndicator:[I

    new-array v6, p1, [I

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 147
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/l;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 149
    sget p2, Lcom/google/android/material/a$l;->BaseProgressIndicator_showDelay:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->g:I

    .line 150
    sget p2, Lcom/google/android/material/a$l;->BaseProgressIndicator_minHideDelay:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/16 p3, 0x3e8

    .line 151
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->h:I

    .line 152
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    new-instance p1, Lcom/google/android/material/progressindicator/a;

    invoke-direct {p1}, Lcom/google/android/material/progressindicator/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->c:Lcom/google/android/material/progressindicator/a;

    const/4 p1, 0x1

    .line 155
    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->d()V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 276
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->f:Z

    if-nez v0, :cond_0

    return-void

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/f;

    .line 281
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->c()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/material/progressindicator/f;->b(ZZZ)Z

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V
    .locals 3

    .line 28249
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 28250
    invoke-virtual {v0, v1, v1, v2}, Lcom/google/android/material/progressindicator/f;->b(ZZZ)Z

    .line 29420
    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/e;

    if-eqz v0, :cond_0

    .line 30420
    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/e;

    .line 28484
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/e;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 30426
    :cond_0
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/i;

    if-eqz v0, :cond_1

    .line 31426
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/i;

    .line 28485
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/i;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    const/4 v0, 0x4

    .line 28253
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)J
    .locals 2

    const-wide/16 v0, -0x1

    .line 70
    iput-wide v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->i:J

    return-wide v0
.end method

.method static synthetic d(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->d:I

    return p0
.end method

.method private d()V
    .locals 2

    .line 213
    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->h:I

    if-lez v0, :cond_0

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->i:J

    :cond_0
    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setVisibility(I)V

    return-void
.end method

.method private e()Z
    .locals 3

    move-object v0, p0

    .line 465
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 468
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 470
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    return v2

    .line 472
    :cond_2
    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_3

    return v1

    .line 475
    :cond_3
    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic e(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->e:Z

    return p0
.end method

.method static synthetic f(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->j:Z

    return p0
.end method

.method static synthetic g(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->k:I

    return p0
.end method


# virtual methods
.method abstract a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/progressindicator/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TS;"
        }
    .end annotation
.end method

.method public final a()Lcom/google/android/material/progressindicator/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/progressindicator/e<",
            "TS;>;"
        }
    .end annotation

    .line 420
    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/e;

    return-object v0
.end method

.method public final b()Lcom/google/android/material/progressindicator/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/progressindicator/i<",
            "TS;>;"
        }
    .end annotation

    .line 426
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/i;

    return-object v0
.end method

.method final c()Z
    .locals 1

    .line 434
    invoke-static {p0}, Landroidx/core/view/v;->E(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 436
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 356
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15426
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/i;

    return-object v0

    .line 16420
    :cond_0
    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/e;

    return-object v0
.end method

.method public bridge synthetic getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 27426
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/i;

    return-object v0
.end method

.method public bridge synthetic getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 27420
    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/e;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .line 344
    invoke-super {p0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 345
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 286
    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    .line 1420
    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/e;

    if-eqz v0, :cond_0

    .line 1426
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/i;

    if-eqz v0, :cond_0

    .line 2426
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/i;

    .line 3162
    iget-object v0, v0, Lcom/google/android/material/progressindicator/i;->f:Lcom/google/android/material/progressindicator/h;

    .line 1167
    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->n:Landroidx/l/a/a/b$a;

    .line 1168
    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/h;->a(Landroidx/l/a/a/b$a;)V

    .line 3420
    :cond_0
    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/e;

    if-eqz v0, :cond_1

    .line 4420
    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/e;

    .line 1173
    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->o:Landroidx/l/a/a/b$a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/e;->b(Landroidx/l/a/a/b$a;)V

    .line 4426
    :cond_1
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/i;

    if-eqz v0, :cond_2

    .line 5426
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/i;

    .line 1177
    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->o:Landroidx/l/a/a/b$a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/i;->b(Landroidx/l/a/a/b$a;)V

    .line 289
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->d()V

    :cond_3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->m:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 298
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 299
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/f;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/f;->a()Z

    .line 6426
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/i;

    if-eqz v0, :cond_0

    .line 7426
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/i;

    .line 6183
    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->o:Landroidx/l/a/a/b$a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/i;->a(Landroidx/l/a/a/b$a;)Z

    .line 8426
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/i;

    .line 9162
    iget-object v0, v0, Lcom/google/android/material/progressindicator/i;->f:Lcom/google/android/material/progressindicator/h;

    .line 6184
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/h;->e()V

    .line 9420
    :cond_0
    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/e;

    if-eqz v0, :cond_1

    .line 10420
    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/e;

    .line 6187
    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->o:Landroidx/l/a/a/b$a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/e;->a(Landroidx/l/a/a/b$a;)Z

    .line 301
    :cond_1
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    monitor-enter p0

    .line 308
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 309
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingLeft()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingTop()I

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingRight()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingBottom()I

    move-result v1

    if-eqz v1, :cond_3

    .line 313
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 314
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    .line 315
    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 319
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 321
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 1

    monitor-enter p0

    .line 326
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onMeasure(II)V

    .line 11362
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminate()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 11426
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/progressindicator/i;

    if-nez p1, :cond_0

    goto :goto_0

    .line 12426
    :cond_0
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/progressindicator/i;

    .line 13173
    iget-object p2, p1, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/g;

    goto :goto_0

    .line 13420
    :cond_1
    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/progressindicator/e;

    if-nez p1, :cond_2

    goto :goto_0

    .line 14420
    :cond_2
    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/progressindicator/e;

    .line 15211
    iget-object p2, p1, Lcom/google/android/material/progressindicator/e;->a:Lcom/google/android/material/progressindicator/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez p2, :cond_3

    .line 329
    monitor-exit p0

    return-void

    .line 331
    :cond_3
    :try_start_1
    invoke-virtual {p2}, Lcom/google/android/material/progressindicator/g;->a()I

    move-result p1

    .line 332
    invoke-virtual {p2}, Lcom/google/android/material/progressindicator/g;->b()I

    move-result p2

    if-gez p1, :cond_4

    .line 335
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getMeasuredWidth()I

    move-result p1

    goto :goto_1

    .line 336
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingLeft()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    :goto_1
    if-gez p2, :cond_5

    .line 338
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getMeasuredHeight()I

    move-result p2

    goto :goto_2

    .line 339
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 333
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setMeasuredDimension(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 259
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 260
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->a(Z)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 265
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onWindowVisibilityChanged(I)V

    const/4 p1, 0x0

    .line 266
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->a(Z)V

    return-void
.end method

.method public setAnimatorDurationScaleProvider(Lcom/google/android/material/progressindicator/a;)V
    .locals 1

    .line 763
    iput-object p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->c:Lcom/google/android/material/progressindicator/a;

    .line 24420
    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/e;

    if-eqz v0, :cond_0

    .line 25420
    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/e;

    .line 765
    iput-object p1, v0, Lcom/google/android/material/progressindicator/e;->d:Lcom/google/android/material/progressindicator/a;

    .line 25426
    :cond_0
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/i;

    if-eqz v0, :cond_1

    .line 26426
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/i;

    .line 768
    iput-object p1, v0, Lcom/google/android/material/progressindicator/i;->d:Lcom/google/android/material/progressindicator/a;

    :cond_1
    return-void
.end method

.method public setHideAnimationBehavior(I)V
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->b:Lcom/google/android/material/progressindicator/b;

    iput p1, v0, Lcom/google/android/material/progressindicator/b;->f:I

    .line 685
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->invalidate()V

    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 2

    monitor-enter p0

    .line 498
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminate()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 500
    monitor-exit p0

    return-void

    .line 503
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 504
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot switch to indeterminate mode while the progress indicator is visible."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 511
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/f;

    if-eqz v0, :cond_3

    .line 513
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/f;->a()Z

    .line 515
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 517
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/progressindicator/f;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 519
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->c()Z

    move-result v1

    invoke-virtual {p1, v1, v0, v0}, Lcom/google/android/material/progressindicator/f;->b(ZZZ)Z

    .line 523
    :cond_4
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->j:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 405
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 408
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/progressindicator/i;

    if-eqz v0, :cond_1

    .line 409
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/progressindicator/f;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/f;->a()Z

    .line 410
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 412
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set framework drawable as indeterminate drawable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs setIndicatorColor([I)V
    .locals 4

    .line 574
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    .line 576
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/material/a$b;->colorPrimary:I

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/material/b/a;->a(Landroid/content/Context;II)I

    move-result v1

    aput v1, p1, v0

    .line 17562
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->b:Lcom/google/android/material/progressindicator/b;

    iget-object v0, v0, Lcom/google/android/material/progressindicator/b;->c:[I

    .line 578
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->b:Lcom/google/android/material/progressindicator/b;

    iput-object p1, v0, Lcom/google/android/material/progressindicator/b;->c:[I

    .line 18426
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/progressindicator/i;

    .line 19162
    iget-object p1, p1, Lcom/google/android/material/progressindicator/i;->f:Lcom/google/android/material/progressindicator/h;

    .line 580
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/h;->d()V

    .line 581
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->invalidate()V

    :cond_1
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    .line 699
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminate()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 700
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 702
    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgressCompat(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 703
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgressCompat(IZ)V
    .locals 1

    .line 716
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19420
    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/e;

    if-eqz v0, :cond_3

    .line 720
    iput p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->d:I

    .line 721
    iput-boolean p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->e:Z

    const/4 p1, 0x1

    .line 722
    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->j:Z

    .line 19426
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/progressindicator/i;

    .line 724
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/i;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 726
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 725
    invoke-static {p1}, Lcom/google/android/material/progressindicator/a;->a(Landroid/content/ContentResolver;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    .line 21426
    :cond_0
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/progressindicator/i;

    .line 22162
    iget-object p1, p1, Lcom/google/android/material/progressindicator/i;->f:Lcom/google/android/material/progressindicator/h;

    .line 730
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/h;->c()V

    return-void

    .line 728
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->n:Landroidx/l/a/a/b$a;

    .line 20426
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/progressindicator/i;

    .line 728
    invoke-virtual {p1, p2}, Landroidx/l/a/a/b$a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 736
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 22420
    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/progressindicator/e;

    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    .line 23420
    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/progressindicator/e;

    .line 739
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/e;->jumpToCurrentState()V

    :cond_3
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 380
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 383
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/progressindicator/e;

    if-eqz v0, :cond_1

    .line 384
    check-cast p1, Lcom/google/android/material/progressindicator/e;

    .line 385
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/e;->a()Z

    .line 386
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x461c4000    # 10000.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 17172
    invoke-virtual {p1, v0}, Lcom/google/android/material/progressindicator/e;->setLevel(I)Z

    return-void

    .line 392
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set framework drawable as progress drawable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShowAnimationBehavior(I)V
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->b:Lcom/google/android/material/progressindicator/b;

    iput p1, v0, Lcom/google/android/material/progressindicator/b;->e:I

    .line 660
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->invalidate()V

    return-void
.end method

.method public setTrackColor(I)V
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->b:Lcom/google/android/material/progressindicator/b;

    iget v0, v0, Lcom/google/android/material/progressindicator/b;->d:I

    if-eq v0, p1, :cond_0

    .line 607
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->b:Lcom/google/android/material/progressindicator/b;

    iput p1, v0, Lcom/google/android/material/progressindicator/b;->d:I

    .line 608
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTrackCornerRadius(I)V
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->b:Lcom/google/android/material/progressindicator/b;

    iget v0, v0, Lcom/google/android/material/progressindicator/b;->b:I

    if-eq v0, p1, :cond_0

    .line 634
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->b:Lcom/google/android/material/progressindicator/b;

    iget v1, v0, Lcom/google/android/material/progressindicator/b;->a:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Lcom/google/android/material/progressindicator/b;->b:I

    :cond_0
    return-void
.end method

.method public setTrackThickness(I)V
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->b:Lcom/google/android/material/progressindicator/b;

    iget v0, v0, Lcom/google/android/material/progressindicator/b;->a:I

    if-eq v0, p1, :cond_0

    .line 548
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->b:Lcom/google/android/material/progressindicator/b;

    iput p1, v0, Lcom/google/android/material/progressindicator/b;->a:I

    .line 549
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setVisibilityAfterHide(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 751
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The component\'s visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 755
    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->k:I

    return-void
.end method
