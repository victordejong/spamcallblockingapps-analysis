.class public Lcom/google/android/material/b/a;
.super Landroid/graphics/drawable/Drawable;
.source "BadgeDrawable.java"

# interfaces
.implements Lcom/google/android/material/internal/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/b/a$a;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I


# instance fields
.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/material/q/g;

.field private final e:Lcom/google/android/material/internal/g;

.field private final f:Landroid/graphics/Rect;

.field private final g:F

.field private final h:F

.field private final i:F

.field private final j:Lcom/google/android/material/b/a$a;

.field private k:F

.field private l:F

.field private m:I

.field private n:F

.field private o:F

.field private p:F

.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    sget v0, Lcom/google/android/material/a$k;->Widget_MaterialComponents_Badge:I

    sput v0, Lcom/google/android/material/b/a;->a:I

    .line 145
    sget v0, Lcom/google/android/material/a$b;->badgeStyle:I

    sput v0, Lcom/google/android/material/b/a;->b:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 359
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 360
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/b/a;->c:Ljava/lang/ref/WeakReference;

    .line 361
    invoke-static {p1}, Lcom/google/android/material/internal/i;->b(Landroid/content/Context;)V

    .line 362
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 363
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/b/a;->f:Landroid/graphics/Rect;

    .line 364
    new-instance v1, Lcom/google/android/material/q/g;

    invoke-direct {v1}, Lcom/google/android/material/q/g;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/b/a;->d:Lcom/google/android/material/q/g;

    .line 366
    sget v1, Lcom/google/android/material/a$d;->mtrl_badge_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/b/a;->g:F

    .line 367
    sget v1, Lcom/google/android/material/a$d;->mtrl_badge_long_text_horizontal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/b/a;->i:F

    .line 368
    sget v1, Lcom/google/android/material/a$d;->mtrl_badge_with_text_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/b/a;->h:F

    .line 370
    new-instance v0, Lcom/google/android/material/internal/g;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/g;-><init>(Lcom/google/android/material/internal/g$a;)V

    iput-object v0, p0, Lcom/google/android/material/b/a;->e:Lcom/google/android/material/internal/g;

    .line 371
    iget-object v0, p0, Lcom/google/android/material/b/a;->e:Lcom/google/android/material/internal/g;

    invoke-virtual {v0}, Lcom/google/android/material/internal/g;->a()Landroid/text/TextPaint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 372
    new-instance v0, Lcom/google/android/material/b/a$a;

    invoke-direct {v0, p1}, Lcom/google/android/material/b/a$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/b/a;->j:Lcom/google/android/material/b/a$a;

    .line 373
    sget v0, Lcom/google/android/material/a$k;->TextAppearance_MaterialComponents_Badge:I

    invoke-direct {p0, v0}, Lcom/google/android/material/b/a;->f(I)V

    .line 374
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .locals 1

    .prologue
    .line 356
    invoke-static {p0, p1, p2}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/material/b/a;
    .locals 3

    .prologue
    .line 262
    const/4 v0, 0x0

    sget v1, Lcom/google/android/material/b/a;->b:I

    sget v2, Lcom/google/android/material/b/a;->a:I

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/material/b/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/b/a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/b/a;
    .locals 1

    .prologue
    .line 294
    new-instance v0, Lcom/google/android/material/b/a;

    invoke-direct {v0, p0}, Lcom/google/android/material/b/a;-><init>(Landroid/content/Context;)V

    .line 295
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/b/a;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 296
    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/google/android/material/b/a$a;)Lcom/google/android/material/b/a;
    .locals 1

    .prologue
    .line 254
    new-instance v0, Lcom/google/android/material/b/a;

    invoke-direct {v0, p0}, Lcom/google/android/material/b/a;-><init>(Landroid/content/Context;)V

    .line 255
    invoke-direct {v0, p1}, Lcom/google/android/material/b/a;->a(Lcom/google/android/material/b/a$a;)V

    .line 256
    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 687
    iget-object v0, p0, Lcom/google/android/material/b/a;->j:Lcom/google/android/material/b/a$a;

    invoke-static {v0}, Lcom/google/android/material/b/a$a;->e(Lcom/google/android/material/b/a$a;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 695
    :pswitch_0
    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/b/a;->l:F

    .line 699
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->c()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_1

    .line 700
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/b/a;->g:F

    :goto_1
    iput v0, p0, Lcom/google/android/material/b/a;->n:F

    .line 701
    iget v0, p0, Lcom/google/android/material/b/a;->n:F

    iput v0, p0, Lcom/google/android/material/b/a;->p:F

    .line 702
    iget v0, p0, Lcom/google/android/material/b/a;->n:F

    iput v0, p0, Lcom/google/android/material/b/a;->o:F

    .line 712
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 714
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/google/android/material/a$d;->mtrl_badge_text_horizontal_edge_offset:I

    .line 713
    :goto_3
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 718
    iget-object v1, p0, Lcom/google/android/material/b/a;->j:Lcom/google/android/material/b/a$a;

    invoke-static {v1}, Lcom/google/android/material/b/a$a;->e(Lcom/google/android/material/b/a$a;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 730
    invoke-static {p3}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_4

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/b/a;->o:F

    add-float/2addr v1, v2

    int-to-float v0, v0

    sub-float v0, v1, v0

    :goto_4
    iput v0, p0, Lcom/google/android/material/b/a;->k:F

    .line 735
    :goto_5
    return-void

    .line 690
    :pswitch_1
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/b/a;->l:F

    goto :goto_0

    .line 700
    :cond_0
    iget v0, p0, Lcom/google/android/material/b/a;->h:F

    goto :goto_1

    .line 704
    :cond_1
    iget v0, p0, Lcom/google/android/material/b/a;->h:F

    iput v0, p0, Lcom/google/android/material/b/a;->n:F

    .line 705
    iget v0, p0, Lcom/google/android/material/b/a;->n:F

    iput v0, p0, Lcom/google/android/material/b/a;->p:F

    .line 706
    invoke-direct {p0}, Lcom/google/android/material/b/a;->h()Ljava/lang/String;

    move-result-object v0

    .line 707
    iget-object v1, p0, Lcom/google/android/material/b/a;->e:Lcom/google/android/material/internal/g;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/g;->a(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/b/a;->i:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/b/a;->o:F

    goto :goto_2

    .line 714
    :cond_2
    sget v0, Lcom/google/android/material/a$d;->mtrl_badge_horizontal_edge_offset:I

    goto :goto_3

    .line 722
    :sswitch_0
    invoke-static {p3}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_3

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/b/a;->o:F

    sub-float/2addr v1, v2

    int-to-float v0, v0

    add-float/2addr v0, v1

    :goto_6
    iput v0, p0, Lcom/google/android/material/b/a;->k:F

    goto :goto_5

    :cond_3
    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/b/a;->o:F

    add-float/2addr v1, v2

    int-to-float v0, v0

    sub-float v0, v1, v0

    goto :goto_6

    .line 730
    :cond_4
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/b/a;->o:F

    sub-float/2addr v1, v2

    int-to-float v0, v0

    add-float/2addr v0, v1

    goto :goto_4

    .line 687
    :pswitch_data_0
    .packed-switch 0x800053
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 718
    :sswitch_data_0
    .sparse-switch
        0x800033 -> :sswitch_0
        0x800053 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 738
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 739
    invoke-direct {p0}, Lcom/google/android/material/b/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 740
    iget-object v2, p0, Lcom/google/android/material/b/a;->e:Lcom/google/android/material/internal/g;

    invoke-virtual {v2}, Lcom/google/android/material/internal/g;->a()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 741
    iget v2, p0, Lcom/google/android/material/b/a;->k:F

    iget v3, p0, Lcom/google/android/material/b/a;->l:F

    .line 744
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/material/b/a;->e:Lcom/google/android/material/internal/g;

    .line 745
    invoke-virtual {v3}, Lcom/google/android/material/internal/g;->a()Landroid/text/TextPaint;

    move-result-object v3

    .line 741
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 746
    return-void
.end method

.method private a(Lcom/google/android/material/b/a$a;)V
    .locals 2

    .prologue
    .line 308
    invoke-static {p1}, Lcom/google/android/material/b/a$a;->a(Lcom/google/android/material/b/a$a;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/b/a;->d(I)V

    .line 313
    invoke-static {p1}, Lcom/google/android/material/b/a$a;->b(Lcom/google/android/material/b/a$a;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 314
    invoke-static {p1}, Lcom/google/android/material/b/a$a;->b(Lcom/google/android/material/b/a$a;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/b/a;->c(I)V

    .line 317
    :cond_0
    invoke-static {p1}, Lcom/google/android/material/b/a$a;->c(Lcom/google/android/material/b/a$a;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/b/a;->a(I)V

    .line 321
    invoke-static {p1}, Lcom/google/android/material/b/a$a;->d(Lcom/google/android/material/b/a$a;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/b/a;->b(I)V

    .line 323
    invoke-static {p1}, Lcom/google/android/material/b/a$a;->e(Lcom/google/android/material/b/a$a;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/b/a;->e(I)V

    .line 324
    return-void
.end method

.method private a(Lcom/google/android/material/n/d;)V
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/google/android/material/b/a;->e:Lcom/google/android/material/internal/g;

    invoke-virtual {v0}, Lcom/google/android/material/internal/g;->b()Lcom/google/android/material/n/d;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/b/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 647
    if-eqz v0, :cond_0

    .line 650
    iget-object v1, p0, Lcom/google/android/material/b/a;->e:Lcom/google/android/material/internal/g;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/material/internal/g;->a(Lcom/google/android/material/n/d;Landroid/content/Context;)V

    .line 651
    invoke-direct {p0}, Lcom/google/android/material/b/a;->g()V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 328
    sget-object v2, Lcom/google/android/material/a$l;->Badge:[I

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    move v4, p4

    .line 329
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 332
    sget v1, Lcom/google/android/material/a$l;->Badge_maxCharacterCount:I

    const/4 v2, 0x4

    .line 333
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 332
    invoke-virtual {p0, v1}, Lcom/google/android/material/b/a;->d(I)V

    .line 338
    sget v1, Lcom/google/android/material/a$l;->Badge_number:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    sget v1, Lcom/google/android/material/a$l;->Badge_number:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/b/a;->c(I)V

    .line 342
    :cond_0
    sget v1, Lcom/google/android/material/a$l;->Badge_backgroundColor:I

    invoke-static {p1, v0, v1}, Lcom/google/android/material/b/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/b/a;->a(I)V

    .line 346
    sget v1, Lcom/google/android/material/a$l;->Badge_badgeTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    sget v1, Lcom/google/android/material/a$l;->Badge_badgeTextColor:I

    invoke-static {p1, v0, v1}, Lcom/google/android/material/b/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/b/a;->b(I)V

    .line 350
    :cond_1
    sget v1, Lcom/google/android/material/a$l;->Badge_badgeGravity:I

    const v2, 0x800035

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/b/a;->e(I)V

    .line 351
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 352
    return-void
.end method

.method private f(I)V
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/android/material/b/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 636
    if-nez v0, :cond_0

    .line 640
    :goto_0
    return-void

    .line 639
    :cond_0
    new-instance v1, Lcom/google/android/material/n/d;

    invoke-direct {v1, v0, p1}, Lcom/google/android/material/n/d;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v1}, Lcom/google/android/material/b/a;->a(Lcom/google/android/material/n/d;)V

    goto :goto_0
.end method

.method private g()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 655
    iget-object v0, p0, Lcom/google/android/material/b/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 656
    iget-object v1, p0, Lcom/google/android/material/b/a;->q:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/b/a;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v3, v1

    .line 657
    :goto_0
    if-eqz v0, :cond_0

    if-nez v3, :cond_2

    .line 683
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v3, v2

    .line 656
    goto :goto_0

    .line 660
    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 661
    iget-object v1, p0, Lcom/google/android/material/b/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 663
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 665
    invoke-virtual {v3, v5}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 667
    iget-object v1, p0, Lcom/google/android/material/b/a;->r:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/material/b/a;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 668
    :goto_2
    if-nez v1, :cond_3

    sget-boolean v2, Lcom/google/android/material/b/b;->a:Z

    if-eqz v2, :cond_5

    .line 670
    :cond_3
    if-nez v1, :cond_4

    .line 671
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 672
    :cond_4
    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 675
    :cond_5
    invoke-direct {p0, v0, v5, v3}, Lcom/google/android/material/b/a;->a(Landroid/content/Context;Landroid/graphics/Rect;Landroid/view/View;)V

    .line 677
    iget-object v0, p0, Lcom/google/android/material/b/a;->f:Landroid/graphics/Rect;

    iget v1, p0, Lcom/google/android/material/b/a;->k:F

    iget v2, p0, Lcom/google/android/material/b/a;->l:F

    iget v3, p0, Lcom/google/android/material/b/a;->o:F

    iget v5, p0, Lcom/google/android/material/b/a;->p:F

    invoke-static {v0, v1, v2, v3, v5}, Lcom/google/android/material/b/b;->a(Landroid/graphics/Rect;FFFF)V

    .line 679
    iget-object v0, p0, Lcom/google/android/material/b/a;->d:Lcom/google/android/material/q/g;

    iget v1, p0, Lcom/google/android/material/b/a;->n:F

    invoke-virtual {v0, v1}, Lcom/google/android/material/q/g;->o(F)V

    .line 680
    iget-object v0, p0, Lcom/google/android/material/b/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/google/android/material/b/a;->d:Lcom/google/android/material/q/g;

    iget-object v1, p0, Lcom/google/android/material/b/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/google/android/material/q/g;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_6
    move-object v1, v2

    .line 667
    goto :goto_2
.end method

.method private h()Ljava/lang/String;
    .locals 5

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->c()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/b/a;->m:I

    if-gt v0, v1, :cond_0

    .line 752
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 759
    :goto_0
    return-object v0

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/b/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 755
    if-nez v0, :cond_1

    .line 756
    const-string/jumbo v0, ""

    goto :goto_0

    .line 759
    :cond_1
    sget v1, Lcom/google/android/material/a$j;->mtrl_exceed_max_badge_number_suffix:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/material/b/a;->m:I

    .line 761
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    .line 759
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private i()V
    .locals 6

    .prologue
    .line 767
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-virtual {p0}, Lcom/google/android/material/b/a;->d()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/material/b/a;->m:I

    .line 768
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/material/b/a$a;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/material/b/a;->j:Lcom/google/android/material/b/a$a;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/android/material/b/a;->j:Lcom/google/android/material/b/a$a;

    invoke-static {v0, p1}, Lcom/google/android/material/b/a$a;->a(Lcom/google/android/material/b/a$a;I)I

    .line 413
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lcom/google/android/material/b/a;->d:Lcom/google/android/material/q/g;

    invoke-virtual {v1}, Lcom/google/android/material/q/g;->M()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 415
    iget-object v1, p0, Lcom/google/android/material/b/a;->d:Lcom/google/android/material/q/g;

    invoke-virtual {v1, v0}, Lcom/google/android/material/q/g;->f(Landroid/content/res/ColorStateList;)V

    .line 416
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->invalidateSelf()V

    .line 418
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 388
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/b/a;->q:Ljava/lang/ref/WeakReference;

    .line 389
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/b/a;->r:Ljava/lang/ref/WeakReference;

    .line 390
    invoke-direct {p0}, Lcom/google/android/material/b/a;->g()V

    .line 391
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->invalidateSelf()V

    .line 392
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/android/material/b/a;->j:Lcom/google/android/material/b/a$a;

    invoke-static {v0, p1}, Lcom/google/android/material/b/a$a;->b(Lcom/google/android/material/b/a$a;I)I

    .line 439
    iget-object v0, p0, Lcom/google/android/material/b/a;->e:Lcom/google/android/material/internal/g;

    invoke-virtual {v0}, Lcom/google/android/material/internal/g;->a()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 440
    iget-object v0, p0, Lcom/google/android/material/b/a;->e:Lcom/google/android/material/internal/g;

    invoke-virtual {v0}, Lcom/google/android/material/internal/g;->a()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 441
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->invalidateSelf()V

    .line 443
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/android/material/b/a;->j:Lcom/google/android/material/b/a$a;

    invoke-static {v0}, Lcom/google/android/material/b/a$a;->b(Lcom/google/android/material/b/a$a;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    const/4 v0, 0x0

    .line 463
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/b/a;->j:Lcom/google/android/material/b/a$a;

    invoke-static {v0}, Lcom/google/android/material/b/a$a;->b(Lcom/google/android/material/b/a$a;)I

    move-result v0

    goto :goto_0
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 475
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 476
    iget-object v1, p0, Lcom/google/android/material/b/a;->j:Lcom/google/android/material/b/a$a;

    invoke-static {v1}, Lcom/google/android/material/b/a$a;->b(Lcom/google/android/material/b/a$a;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 477
    iget-object v1, p0, Lcom/google/android/material/b/a;->j:Lcom/google/android/material/b/a$a;

    invoke-static {v1, v0}, Lcom/google/android/material/b/a$a;->c(Lcom/google/android/material/b/a$a;I)I

    .line 478
    iget-object v0, p0, Lcom/google/android/material/b/a;->e:Lcom/google/android/material/internal/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/g;->a(Z)V

    .line 479
    invoke-direct {p0}, Lcom/google/android/material/b/a;->g()V

    .line 480
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->invalidateSelf()V

    .line 482
    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/android/material/b/a;->j:Lcom/google/android/material/b/a$a;

    invoke-static {v0}, Lcom/google/android/material/b/a$a;->a(Lcom/google/android/material/b/a$a;)I

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/android/material/b/a;->j:Lcom/google/android/material/b/a$a;

    invoke-static {v0}, Lcom/google/android/material/b/a$a;->a(Lcom/google/android/material/b/a$a;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 508
    iget-object v0, p0, Lcom/google/android/material/b/a;->j:Lcom/google/android/material/b/a$a;

    invoke-static {v0, p1}, Lcom/google/android/material/b/a$a;->d(Lcom/google/android/material/b/a$a;I)I

    .line 509
    invoke-direct {p0}, Lcom/google/android/material/b/a;->i()V

    .line 510
    iget-object v0, p0, Lcom/google/android/material/b/a;->e:Lcom/google/android/material/internal/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/g;->a(Z)V

    .line 511
    invoke-direct {p0}, Lcom/google/android/material/b/a;->g()V

    .line 512
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->invalidateSelf()V

    .line 514
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 578
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/b/a;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/b/a;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/b/a;->d:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->draw(Landroid/graphics/Canvas;)V

    .line 582
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    invoke-direct {p0, p1}, Lcom/google/android/material/b/a;->a(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->invalidateSelf()V

    .line 596
    return-void
.end method

.method public e(I)V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/android/material/b/a;->j:Lcom/google/android/material/b/a$a;

    invoke-static {v0}, Lcom/google/android/material/b/a$a;->e(Lcom/google/android/material/b/a$a;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 528
    iget-object v0, p0, Lcom/google/android/material/b/a;->j:Lcom/google/android/material/b/a$a;

    invoke-static {v0, p1}, Lcom/google/android/material/b/a$a;->e(Lcom/google/android/material/b/a$a;I)I

    .line 529
    iget-object v0, p0, Lcom/google/android/material/b/a;->q:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/b/a;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/google/android/material/b/a;->q:Ljava/lang/ref/WeakReference;

    .line 531
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/material/b/a;->r:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/b/a;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 530
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/b/a;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 534
    :cond_0
    return-void

    .line 531
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 613
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 630
    :goto_0
    return-object v0

    .line 616
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 617
    iget-object v0, p0, Lcom/google/android/material/b/a;->j:Lcom/google/android/material/b/a$a;

    invoke-static {v0}, Lcom/google/android/material/b/a$a;->g(Lcom/google/android/material/b/a$a;)I

    move-result v0

    if-lez v0, :cond_2

    .line 618
    iget-object v0, p0, Lcom/google/android/material/b/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 619
    if-nez v0, :cond_1

    move-object v0, v1

    .line 620
    goto :goto_0

    .line 623
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/b/a;->j:Lcom/google/android/material/b/a$a;

    .line 625
    invoke-static {v1}, Lcom/google/android/material/b/a$a;->g(Lcom/google/android/material/b/a$a;)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/b/a;->c()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/material/b/a;->c()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 624
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 627
    goto :goto_0

    .line 630
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/b/a;->j:Lcom/google/android/material/b/a$a;

    invoke-static {v0}, Lcom/google/android/material/b/a$a;->h(Lcom/google/android/material/b/a$a;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/google/android/material/b/a;->j:Lcom/google/android/material/b/a$a;

    invoke-static {v0}, Lcom/google/android/material/b/a$a;->f(Lcom/google/android/material/b/a$a;)I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/android/material/b/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/google/android/material/b/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 560
    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    return v0
.end method

.method public onStateChange([I)Z
    .locals 1

    .prologue
    .line 600
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/android/material/b/a;->j:Lcom/google/android/material/b/a$a;

    invoke-static {v0, p1}, Lcom/google/android/material/b/a$a;->f(Lcom/google/android/material/b/a$a;I)I

    .line 554
    iget-object v0, p0, Lcom/google/android/material/b/a;->e:Lcom/google/android/material/internal/g;

    invoke-virtual {v0}, Lcom/google/android/material/internal/g;->a()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 555
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->invalidateSelf()V

    .line 556
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 544
    return-void
.end method
