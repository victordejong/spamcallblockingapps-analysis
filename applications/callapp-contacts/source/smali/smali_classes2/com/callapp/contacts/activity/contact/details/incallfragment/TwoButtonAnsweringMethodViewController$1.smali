.class Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;
.super Lcom/callapp/contacts/widget/SingleAndMultiOnTouchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->a(ILjava/lang/Runnable;)Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;

.field private final d:I

.field private final e:I

.field private f:I

.field private g:I

.field private h:F

.field private i:F

.field private j:I


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;ILjava/lang/Runnable;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->c:Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;

    iput p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->a:I

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/callapp/contacts/widget/SingleAndMultiOnTouchListener;-><init>()V

    .line 73
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701fb

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->d:I

    .line 74
    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->e:I

    const/4 p1, -0x1

    .line 75
    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->f:I

    .line 76
    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->g:I

    return-void
.end method

.method private synthetic a(D)V
    .locals 7

    .line 106
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->c:Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->a(Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;)Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    move-result-object v1

    iget v2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->f:I

    iget v3, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->g:I

    const/4 v6, 0x0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->b(IIDLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic lambda$WBdJIC_57mKQocV3uZM2kMl0eK0(Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->a(D)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/MotionEvent;Z)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 83
    iget v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->f:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v2, v4, :cond_0

    iget v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->g:I

    if-ne v2, v4, :cond_0

    new-array v2, v5, [I

    .line 85
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 86
    aget v4, v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/2addr v7, v5

    add-int/2addr v4, v7

    iput v4, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->f:I

    .line 87
    aget v2, v2, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v2, v4

    iput v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->g:I

    .line 88
    iget-object v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->c:Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->j:I

    .line 90
    :cond_0
    iget v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->f:I

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    sub-float/2addr v2, v4

    float-to-double v7, v2

    iget v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->g:I

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    sub-float/2addr v2, v4

    float-to-double v9, v2

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    .line 91
    iget v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->d:I

    int-to-double v9, v2

    cmpl-double v4, v7, v9

    if-ltz v4, :cond_1

    int-to-double v7, v2

    :cond_1
    move-wide v12, v7

    .line 92
    const-class v2, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_8

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_2

    goto/16 :goto_0

    .line 115
    :cond_2
    iget v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->d:I

    int-to-double v2, v2

    cmpl-double v5, v12, v2

    if-ltz v5, :cond_3

    .line 116
    invoke-static {v1, v6}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 118
    :cond_3
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->c:Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->a(Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;)Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    move-result-object v1

    iget v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->f:I

    iget v3, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->g:I

    double-to-float v5, v12

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a(IIFLandroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 103
    :cond_4
    iget v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->h:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v4, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->i:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    sub-float/2addr v1, v2

    .line 1125
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v4, v5

    .line 1126
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1127
    iget v4, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->j:I

    int-to-float v5, v4

    cmpl-float v1, v1, v5

    if-gtz v1, :cond_5

    int-to-float v1, v4

    cmpl-float v1, v2, v1

    if-gtz v1, :cond_5

    const/4 v3, 0x1

    :cond_5
    if-eqz v3, :cond_6

    .line 105
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->c:Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->a(Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;)Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/contact/details/incallfragment/-$$Lambda$TwoButtonAnsweringMethodViewController$1$WBdJIC_57mKQocV3uZM2kMl0eK0;

    invoke-direct {v2, v0, v12, v13}, Lcom/callapp/contacts/activity/contact/details/incallfragment/-$$Lambda$TwoButtonAnsweringMethodViewController$1$WBdJIC_57mKQocV3uZM2kMl0eK0;-><init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;D)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 108
    :cond_6
    iget v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->d:I

    int-to-double v1, v1

    cmpl-double v3, v12, v1

    if-ltz v3, :cond_7

    .line 109
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->c:Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->a(Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;)Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    move-result-object v9

    iget v10, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->f:I

    iget v11, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->g:I

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->b:Ljava/lang/Runnable;

    invoke-virtual/range {v9 .. v15}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a(IIDLandroid/graphics/Bitmap;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 111
    :cond_7
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->c:Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->a(Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;)Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    move-result-object v9

    iget v10, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->f:I

    iget v11, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->g:I

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->b(IIDLandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 95
    :cond_8
    invoke-static {v1, v6}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 96
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->c:Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->a(Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;)Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->setCoverImageView(Landroid/widget/ImageView;)V

    .line 97
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->c:Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->a(Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;)Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    move-result-object v1

    iget v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->a:I

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->setPaintColor(I)V

    .line 98
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->c:Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->a(Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;)Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    move-result-object v7

    iget v8, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->f:I

    iget v9, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->g:I

    iget v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->e:I

    int-to-double v10, v1

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a(IIDLandroid/graphics/Bitmap;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->h:F

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;->i:F

    :goto_0
    return v6
.end method

.method public final a(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
