.class public final Lcom/google/android/material/badge/BadgeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/badge/BadgeDrawable$SavedState;
    }
.end annotation


# static fields
.field private static final b:I

.field private static final c:I


# instance fields
.field final a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/material/k/h;

.field private final f:Lcom/google/android/material/internal/i;

.field private final g:Landroid/graphics/Rect;

.field private final h:F

.field private final i:F

.field private final j:F

.field private k:F

.field private l:F

.field private m:I

.field private n:F

.field private o:F

.field private p:F

.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 165
    sget v0, Lcom/google/android/material/a$k;->Widget_MaterialComponents_Badge:I

    sput v0, Lcom/google/android/material/badge/BadgeDrawable;->b:I

    .line 166
    sget v0, Lcom/google/android/material/a$b;->badgeStyle:I

    sput v0, Lcom/google/android/material/badge/BadgeDrawable;->c:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 411
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 412
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->d:Ljava/lang/ref/WeakReference;

    .line 413
    invoke-static {p1}, Lcom/google/android/material/internal/l;->b(Landroid/content/Context;)V

    .line 414
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 415
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->g:Landroid/graphics/Rect;

    .line 416
    new-instance v2, Lcom/google/android/material/k/h;

    invoke-direct {v2}, Lcom/google/android/material/k/h;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/k/h;

    .line 418
    sget v2, Lcom/google/android/material/a$d;->mtrl_badge_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->h:F

    .line 419
    sget v2, Lcom/google/android/material/a$d;->mtrl_badge_long_text_horizontal_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->j:F

    .line 420
    sget v2, Lcom/google/android/material/a$d;->mtrl_badge_with_text_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->i:F

    .line 422
    new-instance v1, Lcom/google/android/material/internal/i;

    invoke-direct {v1, p0}, Lcom/google/android/material/internal/i;-><init>(Lcom/google/android/material/internal/i$a;)V

    iput-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->f:Lcom/google/android/material/internal/i;

    .line 9087
    iget-object v2, v1, Lcom/google/android/material/internal/i;->a:Landroid/text/TextPaint;

    .line 423
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 424
    new-instance v2, Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-direct {v2, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 425
    sget p1, Lcom/google/android/material/a$k;->TextAppearance_MaterialComponents_Badge:I

    .line 9835
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 9839
    new-instance v3, Lcom/google/android/material/h/d;

    invoke-direct {v3, v2, p1}, Lcom/google/android/material/h/d;-><init>(Landroid/content/Context;I)V

    .line 10123
    iget-object p1, v1, Lcom/google/android/material/internal/i;->d:Lcom/google/android/material/h/d;

    if-eq p1, v3, :cond_0

    .line 9846
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 9850
    invoke-virtual {v1, v3, p1}, Lcom/google/android/material/internal/i;->a(Lcom/google/android/material/h/d;Landroid/content/Context;)V

    .line 9851
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->f()V

    :cond_0
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/google/android/material/badge/BadgeDrawable$SavedState;)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 9

    .line 292
    new-instance v0, Lcom/google/android/material/badge/BadgeDrawable;

    invoke-direct {v0, p0}, Lcom/google/android/material/badge/BadgeDrawable;-><init>(Landroid/content/Context;)V

    .line 1352
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$100(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result p0

    .line 1661
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$100(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, p0, :cond_0

    .line 1662
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v1, p0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$102(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 2651
    iget-object p0, v0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {p0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$100(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result p0

    int-to-double v5, p0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v7

    .line 1967
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int p0, v3

    sub-int/2addr p0, v2

    iput p0, v0, Lcom/google/android/material/badge/BadgeDrawable;->m:I

    .line 1664
    iget-object p0, v0, Lcom/google/android/material/badge/BadgeDrawable;->f:Lcom/google/android/material/internal/i;

    .line 3091
    iput-boolean v2, p0, Lcom/google/android/material/internal/i;->b:Z

    .line 1665
    invoke-direct {v0}, Lcom/google/android/material/badge/BadgeDrawable;->f()V

    .line 1666
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    .line 1357
    :cond_0
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$200(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result p0

    const/4 v1, -0x1

    const/4 v3, 0x0

    if-eq p0, v1, :cond_1

    .line 1358
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$200(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result p0

    .line 3629
    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 3630
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$200(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v1

    if-eq v1, p0, :cond_1

    .line 3631
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v1, p0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$202(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 3632
    iget-object p0, v0, Lcom/google/android/material/badge/BadgeDrawable;->f:Lcom/google/android/material/internal/i;

    .line 4091
    iput-boolean v2, p0, Lcom/google/android/material/internal/i;->b:Z

    .line 3633
    invoke-direct {v0}, Lcom/google/android/material/badge/BadgeDrawable;->f()V

    .line 3634
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    .line 1361
    :cond_1
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$300(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result p0

    .line 4566
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v1, p0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$302(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 4567
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 4568
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/k/h;

    .line 5317
    iget-object v1, v1, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v1, v1, Lcom/google/android/material/k/h$a;->d:Landroid/content/res/ColorStateList;

    if-eq v1, p0, :cond_2

    .line 4569
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/k/h;

    invoke-virtual {v1, p0}, Lcom/google/android/material/k/h;->g(Landroid/content/res/ColorStateList;)V

    .line 4570
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    .line 1365
    :cond_2
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$400(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result p0

    .line 5592
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v1, p0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$402(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 5593
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeDrawable;->f:Lcom/google/android/material/internal/i;

    .line 6087
    iget-object v1, v1, Lcom/google/android/material/internal/i;->a:Landroid/text/TextPaint;

    .line 5593
    invoke-virtual {v1}, Landroid/text/TextPaint;->getColor()I

    move-result v1

    if-eq v1, p0, :cond_3

    .line 5594
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeDrawable;->f:Lcom/google/android/material/internal/i;

    .line 7087
    iget-object v1, v1, Lcom/google/android/material/internal/i;->a:Landroid/text/TextPaint;

    .line 5594
    invoke-virtual {v1, p0}, Landroid/text/TextPaint;->setColor(I)V

    .line 5595
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    .line 1367
    :cond_3
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$500(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result p0

    .line 7681
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$500(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v1

    if-eq v1, p0, :cond_5

    .line 7682
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v1, p0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$502(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 7683
    iget-object p0, v0, Lcom/google/android/material/badge/BadgeDrawable;->q:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 7684
    iget-object p0, v0, Lcom/google/android/material/badge/BadgeDrawable;->q:Ljava/lang/ref/WeakReference;

    .line 7685
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    iget-object v1, v0, Lcom/google/android/material/badge/BadgeDrawable;->r:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 7684
    :goto_0
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/badge/BadgeDrawable;->a(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 1369
    :cond_5
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$600(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result p0

    .line 7804
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v1, p0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$602(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 7805
    invoke-direct {v0}, Lcom/google/android/material/badge/BadgeDrawable;->f()V

    .line 1370
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$700(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result p0

    .line 7822
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v1, p0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$702(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 7823
    invoke-direct {v0}, Lcom/google/android/material/badge/BadgeDrawable;->f()V

    .line 1371
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$000(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)Z

    move-result p0

    .line 8342
    invoke-virtual {v0, p0, v3}, Lcom/google/android/material/badge/BadgeDrawable;->setVisible(ZZ)Z

    .line 8343
    iget-object p1, v0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {p1, p0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$002(Lcom/google/android/material/badge/BadgeDrawable$SavedState;Z)Z

    .line 8346
    sget-boolean p1, Lcom/google/android/material/badge/a;->a:Z

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeDrawable;->a()Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_6

    if-nez p0, :cond_6

    .line 8347
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeDrawable;->a()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_6
    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 3

    .line 887
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$500(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    const v1, 0x800053

    if-eq v0, v1, :cond_0

    const v2, 0x800055

    if-eq v0, v2, :cond_0

    .line 895
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v2}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$700(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->l:F

    goto :goto_0

    .line 890
    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v2}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$700(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->l:F

    .line 899
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->e()I

    move-result v0

    const/16 v2, 0x9

    if-gt v0, v2, :cond_2

    .line 900
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->h:F

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->i:F

    :goto_1
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->n:F

    .line 901
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->p:F

    .line 902
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->o:F

    goto :goto_2

    .line 904
    :cond_2
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->i:F

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->n:F

    .line 905
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->p:F

    .line 906
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->g()Ljava/lang/String;

    move-result-object v0

    .line 907
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->f:Lcom/google/android/material/internal/i;

    invoke-virtual {v2, v0}, Lcom/google/android/material/internal/i;->a(Ljava/lang/String;)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->j:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->o:F

    .line 912
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 914
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/google/android/material/a$d;->mtrl_badge_text_horizontal_edge_offset:I

    goto :goto_3

    :cond_3
    sget v0, Lcom/google/android/material/a$d;->mtrl_badge_horizontal_edge_offset:I

    .line 913
    :goto_3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 918
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$500(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    const v2, 0x800033

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_5

    .line 930
    invoke-static {p3}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result p3

    if-nez p3, :cond_4

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget p3, p0, Lcom/google/android/material/badge/BadgeDrawable;->o:F

    add-float/2addr p2, p3

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 931
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$600(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    goto :goto_4

    :cond_4
    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p3, p0, Lcom/google/android/material/badge/BadgeDrawable;->o:F

    sub-float/2addr p2, p3

    int-to-float p1, p1

    add-float/2addr p2, p1

    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 932
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$600(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p2, p1

    :goto_4
    iput p2, p0, Lcom/google/android/material/badge/BadgeDrawable;->k:F

    return-void

    .line 922
    :cond_5
    invoke-static {p3}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result p3

    if-nez p3, :cond_6

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p3, p0, Lcom/google/android/material/badge/BadgeDrawable;->o:F

    sub-float/2addr p2, p3

    int-to-float p1, p1

    add-float/2addr p2, p1

    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 923
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$600(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p2, p1

    goto :goto_5

    :cond_6
    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget p3, p0, Lcom/google/android/material/badge/BadgeDrawable;->o:F

    add-float/2addr p2, p3

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 924
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$600(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    :goto_5
    iput p2, p0, Lcom/google/android/material/badge/BadgeDrawable;->k:F

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    .line 505
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    sget v2, Lcom/google/android/material/a$f;->mtrl_anchor_parent:I

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->r:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 507
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    :cond_1
    return-void

    .line 511
    :cond_2
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable;->b(Landroid/view/View;)V

    .line 514
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 515
    sget v2, Lcom/google/android/material/a$f;->mtrl_anchor_parent:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    const/4 v2, 0x0

    .line 516
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 517
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 518
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 520
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 522
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 523
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 524
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 528
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 529
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->r:Ljava/lang/ref/WeakReference;

    .line 533
    new-instance v0, Lcom/google/android/material/badge/BadgeDrawable$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/material/badge/BadgeDrawable$1;-><init>(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static b(Landroid/view/View;)V
    .locals 1

    .line 543
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 544
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 545
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method private d()Z
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$200(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private e()I
    .locals 1

    .line 614
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$200(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    return v0
.end method

.method private f()V
    .locals 6

    .line 855
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 856
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->q:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v0, :cond_6

    if-nez v1, :cond_1

    goto :goto_1

    .line 860
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 861
    iget-object v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->g:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 863
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 865
    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 867
    iget-object v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->r:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    :cond_2
    if-nez v2, :cond_3

    .line 868
    sget-boolean v5, Lcom/google/android/material/badge/a;->a:Z

    if-eqz v5, :cond_5

    :cond_3
    if-nez v2, :cond_4

    .line 871
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 872
    :cond_4
    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 875
    :cond_5
    invoke-direct {p0, v0, v4, v1}, Lcom/google/android/material/badge/BadgeDrawable;->a(Landroid/content/Context;Landroid/graphics/Rect;Landroid/view/View;)V

    .line 877
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->g:Landroid/graphics/Rect;

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->k:F

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->l:F

    iget v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->o:F

    iget v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->p:F

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/material/badge/a;->a(Landroid/graphics/Rect;FFFF)V

    .line 879
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/k/h;

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->n:F

    invoke-virtual {v0, v1}, Lcom/google/android/material/k/h;->o(F)V

    .line 880
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->g:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 881
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/k/h;

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/google/android/material/k/h;->setBounds(Landroid/graphics/Rect;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 5

    .line 951
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->e()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->m:I

    if-gt v0, v1, :cond_0

    .line 952
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->e()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    .line 959
    :cond_1
    sget v1, Lcom/google/android/material/a$j;->mtrl_exceed_max_badge_number_suffix:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->m:I

    .line 961
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "+"

    aput-object v4, v2, v3

    .line 959
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/widget/FrameLayout;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->r:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 1

    .line 480
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->q:Ljava/lang/ref/WeakReference;

    .line 482
    sget-boolean v0, Lcom/google/android/material/badge/a;->a:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 483
    invoke-direct {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->a(Landroid/view/View;)V

    goto :goto_0

    .line 485
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->r:Ljava/lang/ref/WeakReference;

    .line 487
    :goto_0
    sget-boolean p2, Lcom/google/android/material/badge/a;->a:Z

    if-nez p2, :cond_1

    .line 488
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable;->b(Landroid/view/View;)V

    .line 490
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->f()V

    .line 491
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method public final b()V
    .locals 0

    .line 749
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method public final c()Ljava/lang/CharSequence;
    .locals 6

    .line 772
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 775
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 776
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$1000(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    if-lez v0, :cond_3

    .line 777
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    return-object v1

    .line 781
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->e()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->m:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v1, v2, :cond_2

    .line 783
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 785
    invoke-static {v1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$1000(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->e()I

    move-result v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    .line 784
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 787
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 788
    invoke-static {v1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$1100(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v1

    new-array v2, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->m:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 787
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1

    .line 794
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$900(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 731
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 732
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/k/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/k/h;->draw(Landroid/graphics/Canvas;)V

    .line 736
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11938
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 11939
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->g()Ljava/lang/String;

    move-result-object v1

    .line 11940
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->f:Lcom/google/android/material/internal/i;

    .line 12087
    iget-object v2, v2, Lcom/google/android/material/internal/i;->a:Landroid/text/TextPaint;

    const/4 v3, 0x0

    .line 11940
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 11941
    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->k:F

    iget v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->l:F

    .line 11944
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->f:Lcom/google/android/material/internal/i;

    .line 13087
    iget-object v0, v0, Lcom/google/android/material/internal/i;->a:Landroid/text/TextPaint;

    .line 11941
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$800(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    return v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final isStateful()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onStateChange([I)Z
    .locals 0

    .line 754
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->a:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$802(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 708
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->f:Lcom/google/android/material/internal/i;

    .line 11087
    iget-object v0, v0, Lcom/google/android/material/internal/i;->a:Landroid/text/TextPaint;

    .line 708
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 709
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
