.class Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;
.super Lcom/callapp/contacts/widget/SingleAndMultiOnTouchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->a(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/Runnable;

.field final synthetic f:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

.field private final g:I

.field private final h:I

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:I


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->f:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->b:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->c:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->e:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/callapp/contacts/widget/SingleAndMultiOnTouchListener;-><init>()V

    .line 339
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0701f9

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->g:I

    .line 340
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701fc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->h:I

    const/4 p1, -0x1

    .line 341
    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->i:I

    .line 342
    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->j:I

    return-void
.end method

.method private synthetic a(DLandroid/graphics/Bitmap;)V
    .locals 7

    .line 373
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->f:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->d(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    move-result-object v1

    iget v2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->i:I

    iget v3, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->j:I

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->b(IIDLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic lambda$3lFkrGUxdRIN3798Zn88n5w94-o(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;DLandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->a(DLandroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/MotionEvent;Z)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 349
    iget v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->i:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v2, v4, :cond_0

    iget v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->j:I

    if-ne v2, v4, :cond_0

    new-array v2, v5, [I

    .line 351
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 352
    aget v4, v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/2addr v7, v5

    add-int/2addr v4, v7

    iput v4, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->i:I

    .line 353
    aget v2, v2, v6

    iput v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->j:I

    .line 354
    iget-object v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->f:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->m:I

    .line 356
    :cond_0
    iget v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->i:I

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    sub-float/2addr v2, v4

    float-to-double v7, v2

    iget v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->j:I

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    sub-float/2addr v2, v4

    float-to-double v9, v2

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    .line 357
    iget v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->h:I

    int-to-double v9, v2

    cmpg-double v4, v7, v9

    if-gtz v4, :cond_1

    int-to-double v7, v2

    :cond_1
    move-wide v12, v7

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_8

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_2

    goto/16 :goto_0

    .line 382
    :cond_2
    iget v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->g:I

    int-to-double v3, v2

    cmpl-double v5, v12, v3

    if-ltz v5, :cond_3

    add-int/lit8 v2, v2, 0xa

    int-to-double v2, v2

    cmpg-double v4, v12, v2

    if-gtz v4, :cond_3

    .line 383
    invoke-static {v1, v6}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 385
    :cond_3
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->f:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->d(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    move-result-object v1

    iget v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->i:I

    iget v3, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->j:I

    double-to-float v4, v12

    iget-object v5, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a(IIFLandroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 369
    :cond_4
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->c:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->k:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v4, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->l:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    sub-float/2addr v1, v2

    .line 1392
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v4, v5

    .line 1393
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1394
    iget v4, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->m:I

    int-to-float v5, v4

    cmpl-float v1, v1, v5

    if-gtz v1, :cond_5

    int-to-float v1, v4

    cmpl-float v1, v2, v1

    if-gtz v1, :cond_5

    const/4 v3, 0x1

    :cond_5
    if-eqz v3, :cond_6

    .line 372
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->f:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->d(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    move-result-object v1

    iget-object v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->b:Landroid/graphics/Bitmap;

    new-instance v3, Lcom/callapp/contacts/activity/contact/details/incallfragment/-$$Lambda$InCallActionFragment$5$3lFkrGUxdRIN3798Zn88n5w94-o;

    invoke-direct {v3, v0, v12, v13, v2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/-$$Lambda$InCallActionFragment$5$3lFkrGUxdRIN3798Zn88n5w94-o;-><init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;DLandroid/graphics/Bitmap;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v3, v4, v5}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 375
    :cond_6
    iget v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->g:I

    int-to-double v1, v1

    cmpl-double v3, v12, v1

    if-lez v3, :cond_7

    .line 376
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->f:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->d(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    move-result-object v9

    iget v10, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->i:I

    iget v11, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->j:I

    iget-object v14, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->b:Landroid/graphics/Bitmap;

    iget-object v15, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->e:Ljava/lang/Runnable;

    invoke-virtual/range {v9 .. v15}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a(IIDLandroid/graphics/Bitmap;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 378
    :cond_7
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->f:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->d(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    move-result-object v9

    iget v10, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->i:I

    iget v11, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->j:I

    iget-object v14, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->b:Landroid/graphics/Bitmap;

    invoke-virtual/range {v9 .. v14}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->b(IIDLandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 360
    :cond_8
    invoke-static {v1, v6}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 361
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->f:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->d(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    move-result-object v1

    const v2, 0x7f060088

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->setPaintColor(I)V

    .line 362
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->f:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->d(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    move-result-object v1

    iget-object v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->setCoverImageView(Landroid/widget/ImageView;)V

    .line 363
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->f:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->d(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    move-result-object v9

    iget v10, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->i:I

    iget v11, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->j:I

    iget-object v14, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->b:Landroid/graphics/Bitmap;

    invoke-virtual/range {v9 .. v14}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a(IIDLandroid/graphics/Bitmap;)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->k:F

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->l:F

    .line 366
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->c:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return v6
.end method

.method public final a(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
