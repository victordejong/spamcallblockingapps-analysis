.class public Lcom/kedlin/cca/ui/HelpOverlayView;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kedlin/cca/ui/HelpOverlayView$i;,
        Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;,
        Lcom/kedlin/cca/ui/HelpOverlayView$h;
    }
.end annotation


# static fields
.field public static final r:I

.field public static final s:I

.field public static t:Z

.field public static final u:I

.field public static v:F

.field public static w:I


# instance fields
.field public a:Ljava/lang/Runnable;

.field public b:Ljava/lang/Runnable;

.field public final c:Landroid/os/Handler;

.field public d:Landroid/webkit/WebView;

.field public f:Landroid/graphics/Bitmap;

.field public g:Landroid/graphics/Paint;

.field public h:I

.field public j:I

.field public k:Landroid/view/View;

.field public l:Landroid/os/Handler;

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kedlin/cca/ui/HelpOverlayView$i;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public o:Lcom/kedlin/cca/ui/HelpOverlayViewContainer;

.field public p:Ljava/util/concurrent/ScheduledExecutorService;

.field public q:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x1e

    invoke-static {v0}, Loe1;->c(I)I

    const/16 v0, 0x5a

    invoke-static {v0}, Loe1;->c(I)I

    const/16 v0, 0x10

    invoke-static {v0}, Loe1;->c(I)I

    move-result v1

    sput v1, Lcom/kedlin/cca/ui/HelpOverlayView;->r:I

    invoke-static {v0}, Loe1;->c(I)I

    move-result v0

    sput v0, Lcom/kedlin/cca/ui/HelpOverlayView;->s:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kedlin/cca/ui/HelpOverlayView;->t:Z

    const/16 v0, 0x8

    invoke-static {v0}, Loe1;->c(I)I

    move-result v0

    sput v0, Lcom/kedlin/cca/ui/HelpOverlayView;->u:I

    const/high16 v0, 0x41800000    # 16.0f

    sput v0, Lcom/kedlin/cca/ui/HelpOverlayView;->v:F

    const/4 v0, 0x3

    sput v0, Lcom/kedlin/cca/ui/HelpOverlayView;->w:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kedlin/cca/ui/HelpOverlayViewContainer;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->a:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->b:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->c:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->l:Landroid/os/Handler;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->p:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/HelpOverlayView;->u(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->o:Lcom/kedlin/cca/ui/HelpOverlayViewContainer;

    return-void
.end method

.method public static synthetic a(Lcom/kedlin/cca/ui/HelpOverlayView;)Lcom/kedlin/cca/ui/HelpOverlayViewContainer;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->o:Lcom/kedlin/cca/ui/HelpOverlayViewContainer;

    return-object p0
.end method

.method public static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Lcom/kedlin/cca/ui/HelpOverlayView;->t:Z

    return p0
.end method

.method public static synthetic c(Lcom/kedlin/cca/ui/HelpOverlayView;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->d:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static synthetic d(Lcom/kedlin/cca/ui/HelpOverlayView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/HelpOverlayView;->r()V

    return-void
.end method

.method public static synthetic e(Lcom/kedlin/cca/ui/HelpOverlayView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/HelpOverlayView;->y()V

    return-void
.end method

.method public static synthetic f(Lcom/kedlin/cca/ui/HelpOverlayView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->l:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic g(Lcom/kedlin/cca/ui/HelpOverlayView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->k:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic h(Lcom/kedlin/cca/ui/HelpOverlayView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->c:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic i(Lcom/kedlin/cca/ui/HelpOverlayView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/HelpOverlayView;->z()V

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/kedlin/cca/ui/HelpOverlayView$e;

    invoke-direct {v0, p0}, Lcom/kedlin/cca/ui/HelpOverlayView$e;-><init>(Lcom/kedlin/cca/ui/HelpOverlayView;)V

    return-object v0
.end method

.method public B()V
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->q:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    invoke-virtual {p0}, Lcom/kedlin/cca/ui/HelpOverlayView;->r()V

    iget-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    return-void
.end method

.method public j(Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;II)V
    .locals 9

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/kedlin/cca/ui/HelpOverlayView;->n(Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;IILjava/lang/Boolean;I)V

    return-void
.end method

.method public k(Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;III)V
    .locals 9

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/kedlin/cca/ui/HelpOverlayView;->n(Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;IILjava/lang/Boolean;I)V

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/kedlin/cca/ui/HelpOverlayView;->t:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:///android_asset/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->d:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    new-instance v1, Landroid/webkit/WebView;

    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->d:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->d:Landroid/webkit/WebView;

    new-instance v2, Lcom/kedlin/cca/ui/HelpOverlayView$b;

    invoke-direct {v2, p0}, Lcom/kedlin/cca/ui/HelpOverlayView$b;-><init>(Lcom/kedlin/cca/ui/HelpOverlayView;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->d:Landroid/webkit/WebView;

    new-instance v2, Lcom/kedlin/cca/ui/HelpOverlayView$c;

    invoke-direct {v2, p0}, Lcom/kedlin/cca/ui/HelpOverlayView$c;-><init>(Lcom/kedlin/cca/ui/HelpOverlayView;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->d:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v1, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->d:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->d:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->d:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public m(Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;II)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/kedlin/cca/ui/HelpOverlayView;->n(Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;IILjava/lang/Boolean;I)V

    return-void
.end method

.method public final n(Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;IILjava/lang/Boolean;I)V
    .locals 13

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v10, p0

    iget-object v11, v10, Lcom/kedlin/cca/ui/HelpOverlayView;->m:Ljava/util/ArrayList;

    new-instance v12, Lcom/kedlin/cca/ui/HelpOverlayView$i;

    invoke-static/range {p5 .. p5}, Loe1;->c(I)I

    move-result v6

    invoke-static/range {p6 .. p6}, Loe1;->c(I)I

    move-result v7

    invoke-static/range {p8 .. p8}, Loe1;->c(I)I

    move-result v9

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/kedlin/cca/ui/HelpOverlayView$i;-><init>(Lcom/kedlin/cca/ui/HelpOverlayView;Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;IILjava/lang/Boolean;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    :goto_0
    move-object v10, p0

    return-void
.end method

.method public o(Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;II)V
    .locals 9

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/kedlin/cca/ui/HelpOverlayView;->n(Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;IILjava/lang/Boolean;I)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->h:I

    iput p2, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->j:I

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/HelpOverlayView;->z()V

    return-void
.end method

.method public final p(Landroid/graphics/Canvas;IIILcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;Landroid/graphics/Rect;)Z
    .locals 14

    move-object v7, p0

    move/from16 v8, p3

    move-object/from16 v9, p5

    const/4 v10, 0x0

    if-eqz v9, :cond_5

    iget-object v0, v9, Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;->a:Lcom/kedlin/cca/ui/HelpOverlayView$h;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sget-object v2, Lcom/kedlin/cca/ui/HelpOverlayView$g;->a:[I

    iget-object v3, v9, Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;->a:Lcom/kedlin/cca/ui/HelpOverlayView$h;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_1

    :pswitch_0
    iget v2, v9, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget v5, v9, Landroid/graphics/Point;->y:I

    sub-int v5, v8, v5

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v8, v5

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v11

    sub-int/2addr v5, v11

    int-to-float v5, v5

    iget v11, v9, Landroid/graphics/Point;->x:I

    sub-int v11, p2, v11

    add-int v11, p2, v11

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    int-to-float v11, v11

    int-to-float v12, v8

    invoke-virtual {v0, v2, v5, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget v2, v9, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    iget v5, v9, Landroid/graphics/Point;->y:I

    sget v11, Lcom/kedlin/cca/ui/HelpOverlayView;->u:I

    add-int/2addr v5, v11

    sub-int v11, p2, p4

    invoke-virtual {v1, v2, v5, v11, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual/range {p0 .. p6}, Lcom/kedlin/cca/ui/HelpOverlayView;->q(Landroid/graphics/Canvas;IIILcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    :pswitch_2
    iget v2, v9, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    int-to-float v4, v8

    iget v11, v9, Landroid/graphics/Point;->x:I

    sub-int v11, p2, v11

    add-int v11, p2, v11

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v8

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v8

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    invoke-virtual {v0, v2, v4, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget v2, v9, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sub-int v4, p2, p4

    iget v11, v9, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int/2addr v11, v12

    sget v12, Lcom/kedlin/cca/ui/HelpOverlayView;->u:I

    sub-int/2addr v11, v12

    invoke-virtual {v1, v2, v8, v4, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {p0 .. p6}, Lcom/kedlin/cca/ui/HelpOverlayView;->q(Landroid/graphics/Canvas;IIILcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    :pswitch_4
    iget v2, v9, Landroid/graphics/Point;->x:I

    sub-int v2, v2, p2

    sub-int v2, p2, v2

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v8

    iget v5, v9, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v5, v11

    int-to-float v5, v5

    iget v11, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v11, v8

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v8

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {v0, v2, v3, v5, v11}, Landroid/graphics/RectF;->set(FFFF)V

    add-int v2, p2, p4

    iget v3, v9, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    iget v5, v9, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v11

    sub-int/2addr v5, v11

    sget v11, Lcom/kedlin/cca/ui/HelpOverlayView;->u:I

    sub-int/2addr v5, v11

    invoke-virtual {v1, v2, v8, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v3, 0x0

    goto :goto_1

    :pswitch_5
    invoke-virtual/range {p0 .. p6}, Lcom/kedlin/cca/ui/HelpOverlayView;->q(Landroid/graphics/Canvas;IIILcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    :pswitch_6
    iget v2, v9, Landroid/graphics/Point;->x:I

    sub-int v2, v2, p2

    sub-int v2, p2, v2

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v9, Landroid/graphics/Point;->y:I

    sub-int v3, v8, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v8, v3

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v9, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v4, v11

    int-to-float v4, v4

    int-to-float v11, v8

    invoke-virtual {v0, v2, v3, v4, v11}, Landroid/graphics/RectF;->set(FFFF)V

    add-int v2, p2, p4

    iget v3, v9, Landroid/graphics/Point;->y:I

    sget v4, Lcom/kedlin/cca/ui/HelpOverlayView;->u:I

    add-int/2addr v3, v4

    iget v4, v9, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v4, v11

    invoke-virtual {v1, v2, v3, v4, v8}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v3, 0x0

    :goto_0
    const/high16 v4, 0x42b40000    # 90.0f

    goto :goto_1

    :pswitch_7
    invoke-virtual/range {p0 .. p6}, Lcom/kedlin/cca/ui/HelpOverlayView;->q(Landroid/graphics/Canvas;IIILcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/kedlin/cca/ui/HelpOverlayView;->w(Landroid/graphics/Rect;)Z

    move-result v2

    const/4 v11, 0x1

    if-eqz v2, :cond_3

    sget-object v0, Lcom/kedlin/cca/ui/HelpOverlayView$h;->a:Lcom/kedlin/cca/ui/HelpOverlayView$h;

    sget-object v1, Lcom/kedlin/cca/ui/HelpOverlayView$h;->b:Lcom/kedlin/cca/ui/HelpOverlayView$h;

    sget-object v2, Lcom/kedlin/cca/ui/HelpOverlayView$h;->c:Lcom/kedlin/cca/ui/HelpOverlayView$h;

    sget-object v3, Lcom/kedlin/cca/ui/HelpOverlayView$h;->d:Lcom/kedlin/cca/ui/HelpOverlayView$h;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kedlin/cca/ui/HelpOverlayView$h;

    new-instance v5, Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;

    invoke-direct {v5, v9}, Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;-><init>(Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;)V

    iput-object v0, v5, Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;->a:Lcom/kedlin/cca/ui/HelpOverlayView$h;

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/kedlin/cca/ui/HelpOverlayView;->q(Landroid/graphics/Canvas;IIILcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v11

    :cond_2
    return v10

    :cond_3
    iget-object v2, v7, Lcom/kedlin/cca/ui/HelpOverlayView;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v5, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v5

    div-float/2addr v2, v1

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v5, v9, Landroid/graphics/Point;->x:I

    sub-int v5, p2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v5, v8

    int-to-float v5, v5

    div-float/2addr v1, v5

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    const-wide v12, 0x4066800000000000L    # 180.0

    mul-double v8, v8, v12

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v12

    double-to-float v1, v8

    div-float/2addr v1, v2

    cmpg-float v2, v4, v6

    if-gez v2, :cond_4

    const/4 v2, -0x1

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float v1, v1, v5

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    :goto_2
    int-to-float v2, v2

    mul-float v2, v2, v1

    add-float v1, v3, v2

    sub-float v2, v4, v2

    const/4 v3, 0x0

    iget-object v4, v7, Lcom/kedlin/cca/ui/HelpOverlayView;->g:Landroid/graphics/Paint;

    move-object/from16 p2, v0

    move/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, v3

    move-object/from16 p6, v4

    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return v11

    :cond_5
    :goto_3
    return v10

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Landroid/graphics/Canvas;IIILcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;Landroid/graphics/Rect;)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p5

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    sget v5, Lcom/kedlin/cca/ui/HelpOverlayView;->u:I

    sget v6, Lcom/kedlin/cca/ui/HelpOverlayView;->w:I

    div-int/lit8 v6, v6, 0x2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    sget-object v9, Lcom/kedlin/cca/ui/HelpOverlayView$g;->a:[I

    iget-object v10, v3, Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;->a:Lcom/kedlin/cca/ui/HelpOverlayView$h;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const/high16 v11, 0x43340000    # 180.0f

    const/high16 v12, -0x3d4c0000    # -90.0f

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eq v9, v14, :cond_4

    const/4 v14, 0x5

    if-eq v9, v14, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v9, v3, Landroid/graphics/Point;->y:I

    if-ge v9, v2, :cond_1

    return v15

    :cond_1
    int-to-float v9, v1

    add-int v2, v2, p4

    int-to-float v14, v2

    invoke-virtual {v4, v9, v14}, Landroid/graphics/Path;->moveTo(FF)V

    iget v14, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    sub-int v14, v14, v16

    sub-int/2addr v14, v5

    int-to-float v14, v14

    invoke-virtual {v4, v9, v14}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v14, Landroid/graphics/Rect;

    sub-int v15, v1, v6

    add-int v10, v1, v6

    iget v13, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    sub-int v13, v13, v17

    invoke-direct {v14, v15, v2, v10, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v3, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_2

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v2, v10

    if-ge v1, v2, :cond_2

    goto/16 :goto_3

    :cond_2
    iget v2, v3, Landroid/graphics/Point;->x:I

    if-lt v2, v1, :cond_3

    iget v2, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v2, v10

    mul-int/lit8 v10, v5, 0x2

    sub-int/2addr v2, v10

    int-to-float v2, v2

    add-int/2addr v10, v1

    int-to-float v10, v10

    iget v13, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v8, v9, v2, v10, v13}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v4, v8, v11, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v2, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v5

    goto :goto_0

    :cond_3
    mul-int/lit8 v2, v5, 0x2

    sub-int v10, v1, v2

    int-to-float v10, v10

    iget v11, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    sub-int/2addr v11, v2

    int-to-float v2, v11

    iget v11, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {v8, v10, v2, v9, v11}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v2, v3, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/2addr v2, v9

    add-int/2addr v2, v5

    :goto_0
    new-instance v5, Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    iget v10, v8, Landroid/graphics/RectF;->top:F

    float-to-int v10, v10

    iget v11, v8, Landroid/graphics/RectF;->right:F

    float-to-int v11, v11

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    invoke-direct {v5, v9, v10, v11, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-float v5, v2

    iget v8, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v4, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v5, Landroid/graphics/Rect;

    iget v8, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    sub-int/2addr v8, v6

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v3, v9

    add-int/2addr v3, v6

    invoke-direct {v5, v2, v8, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_2

    :cond_4
    iget v9, v3, Landroid/graphics/Point;->y:I

    if-le v9, v2, :cond_5

    const/4 v9, 0x0

    return v9

    :cond_5
    int-to-float v9, v1

    sub-int v2, v2, p4

    int-to-float v10, v2

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    iget v10, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v10, v5

    int-to-float v10, v10

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v10, Landroid/graphics/Rect;

    sub-int v13, v1, v6

    iget v14, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    add-int v15, v1, v6

    invoke-direct {v10, v13, v14, v15, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v3, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_6

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v2, v10

    if-ge v1, v2, :cond_6

    goto/16 :goto_3

    :cond_6
    iget v2, v3, Landroid/graphics/Point;->x:I

    if-lt v2, v1, :cond_7

    iget v2, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v2, v10

    int-to-float v2, v2

    mul-int/lit8 v10, v5, 0x2

    add-int v12, v1, v10

    int-to-float v12, v12

    iget v13, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    add-int/2addr v13, v10

    int-to-float v10, v13

    invoke-virtual {v8, v9, v2, v12, v10}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v4, v8, v11, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v2, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v5

    goto :goto_1

    :cond_7
    mul-int/lit8 v2, v5, 0x2

    sub-int v10, v1, v2

    int-to-float v10, v10

    iget v11, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v11, v13

    int-to-float v11, v11

    iget v13, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    add-int/2addr v13, v2

    int-to-float v2, v13

    invoke-virtual {v8, v10, v11, v9, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v2, 0x0

    invoke-virtual {v4, v8, v2, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v2, v3, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/2addr v2, v9

    add-int/2addr v2, v5

    :goto_1
    new-instance v5, Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    iget v10, v8, Landroid/graphics/RectF;->top:F

    float-to-int v10, v10

    iget v11, v8, Landroid/graphics/RectF;->right:F

    float-to-int v11, v11

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    invoke-direct {v5, v9, v10, v11, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-float v5, v2

    iget v8, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v4, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v5, Landroid/graphics/Rect;

    iget v8, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    sub-int/2addr v8, v6

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v3, v9

    add-int/2addr v3, v6

    invoke-direct {v5, v2, v8, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_2
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    iget-object v1, v0, Lcom/kedlin/cca/ui/HelpOverlayView;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lcom/kedlin/cca/ui/HelpOverlayView;->g:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v1, 0x1

    return v1
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->f:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public final s(Landroid/graphics/Canvas;)Landroid/graphics/Rect;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/kedlin/cca/ui/HelpOverlayView;->n:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/16 v7, 0xa

    if-lt v6, v7, :cond_0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ge v6, v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/kedlin/cca/ui/HelpOverlayView;->n:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " vs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/graphics/Rect;

    iget v6, v0, Lcom/kedlin/cca/ui/HelpOverlayView;->h:I

    iget v7, v0, Lcom/kedlin/cca/ui/HelpOverlayView;->j:I

    invoke-direct {v4, v6, v7, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    new-array v4, v4, [I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x2

    new-array v7, v6, [I

    aput v5, v7, v5

    aput v5, v4, v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    add-int/lit8 v12, v9, 0x1

    iget v13, v11, Landroid/graphics/Rect;->top:I

    aput v13, v4, v9

    add-int/lit8 v9, v12, 0x1

    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    aput v13, v4, v12

    add-int/lit8 v12, v10, 0x1

    iget v13, v11, Landroid/graphics/Rect;->left:I

    aput v13, v7, v10

    add-int/lit8 v10, v12, 0x1

    iget v11, v11, Landroid/graphics/Rect;->right:I

    aput v11, v7, v12

    goto :goto_1

    :cond_3
    iget v8, v0, Lcom/kedlin/cca/ui/HelpOverlayView;->j:I

    aput v8, v4, v9

    iget v8, v0, Lcom/kedlin/cca/ui/HelpOverlayView;->h:I

    aput v8, v7, v10

    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    invoke-static {v7}, Ljava/util/Arrays;->sort([I)V

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_7

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v6, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    new-instance v12, Landroid/graphics/Rect;

    aget v13, v7, v8

    iget v14, v11, Landroid/graphics/Rect;->left:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    aget v14, v4, v9

    iget v15, v11, Landroid/graphics/Rect;->top:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    aget v15, v7, v8

    iget v5, v11, Landroid/graphics/Rect;->left:I

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    aget v15, v4, v9

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-static {v15, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-direct {v12, v13, v14, v5, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v12}, Lcom/kedlin/cca/ui/HelpOverlayView;->v(Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    :cond_5
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x0

    goto :goto_2

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Count candidate for webview: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int v4, v4, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    mul-int v5, v5, v6

    if-le v4, v5, :cond_8

    move-object v2, v3

    goto :goto_5

    :cond_9
    new-instance v1, Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sget v5, Lcom/kedlin/cca/ui/HelpOverlayView;->r:I

    add-int/2addr v3, v5

    iget v6, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget v6, Lcom/kedlin/cca/ui/HelpOverlayView;->s:I

    add-int/2addr v4, v6

    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v8, v0, Lcom/kedlin/cca/ui/HelpOverlayView;->h:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int/2addr v7, v5

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Lcom/kedlin/cca/ui/HelpOverlayView;->j:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v2, v6

    invoke-direct {v1, v3, v4, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public setContainer(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->o:Lcom/kedlin/cca/ui/HelpOverlayViewContainer;

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/kedlin/cca/ui/HelpOverlayView;->y()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public t()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/kedlin/cca/ui/HelpOverlayView$f;

    invoke-direct {v0, p0}, Lcom/kedlin/cca/ui/HelpOverlayView$f;-><init>(Lcom/kedlin/cca/ui/HelpOverlayView;)V

    return-object v0
.end method

.method public final u(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->m:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->n:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->k:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "Cannot get root view"

    invoke-static {p0, v0}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->k:Landroid/view/View;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    const/4 v0, 0x2

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    sput v0, Lcom/kedlin/cca/ui/HelpOverlayView;->v:F

    mul-float p1, p1, v1

    const v0, 0x46e29000    # 29000.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    sput p1, Lcom/kedlin/cca/ui/HelpOverlayView;->w:I

    const/16 v0, 0x8

    if-le p1, v0, :cond_1

    sput v0, Lcom/kedlin/cca/ui/HelpOverlayView;->w:I

    :cond_1
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->g:Landroid/graphics/Paint;

    sget v1, Lcom/kedlin/cca/ui/HelpOverlayView;->w:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->g:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    new-instance p1, Lcom/kedlin/cca/ui/HelpOverlayView$a;

    invoke-direct {p1, p0}, Lcom/kedlin/cca/ui/HelpOverlayView$a;-><init>(Lcom/kedlin/cca/ui/HelpOverlayView;)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final v(Landroid/graphics/Rect;)Z
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final w(Landroid/graphics/Rect;)Z
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-static {v1, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final x(IIILandroid/graphics/Rect;Lcom/kedlin/cca/ui/HelpOverlayView$h;II)Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;
    .locals 3

    new-instance v0, Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;

    invoke-direct {v0}, Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;-><init>()V

    sget-object v1, Lcom/kedlin/cca/ui/HelpOverlayView$g;->a:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    sub-int/2addr p1, p3

    sub-int/2addr p1, p6

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p6

    sub-int/2addr p1, p6

    goto :goto_4

    :pswitch_1
    sub-int/2addr p1, p3

    sub-int/2addr p1, p6

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p3

    sub-int/2addr p1, p3

    goto :goto_1

    :pswitch_2
    sub-int/2addr p1, p3

    sub-int/2addr p1, p6

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p6

    sub-int/2addr p1, p6

    goto :goto_0

    :pswitch_3
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    add-int/2addr p1, p6

    iput p1, v0, Landroid/graphics/Point;->x:I

    add-int/2addr p2, p3

    add-int/2addr p2, p7

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p2, p1

    goto :goto_5

    :pswitch_4
    add-int/2addr p1, p3

    add-int/2addr p1, p6

    :goto_0
    iput p1, v0, Landroid/graphics/Point;->x:I

    add-int/2addr p2, p3

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p1

    goto :goto_2

    :pswitch_5
    add-int/2addr p1, p3

    add-int/2addr p1, p6

    :goto_1
    iput p1, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    :goto_2
    add-int/2addr p2, p1

    add-int/2addr p2, p7

    goto :goto_5

    :pswitch_6
    add-int/2addr p1, p3

    goto :goto_3

    :pswitch_7
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    :goto_3
    add-int/2addr p1, p6

    :goto_4
    iput p1, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr p2, p3

    sub-int/2addr p2, p7

    :goto_5
    iput p2, v0, Landroid/graphics/Point;->y:I

    :goto_6
    iput-object p5, v0, Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;->a:Lcom/kedlin/cca/ui/HelpOverlayView$h;

    new-instance p1, Landroid/graphics/Rect;

    iget p2, v0, Landroid/graphics/Point;->x:I

    sget p3, Lcom/kedlin/cca/ui/HelpOverlayView;->u:I

    sub-int/2addr p2, p3

    iget p5, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p6

    sub-int/2addr p5, p6

    sub-int/2addr p5, p3

    iget p6, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    add-int/2addr p6, p4

    add-int/2addr p6, p3

    iget p4, v0, Landroid/graphics/Point;->y:I

    add-int/2addr p4, p3

    invoke-direct {p1, p2, p5, p6, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p2, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->n:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final y()V
    .locals 21

    move-object/from16 v8, p0

    iget v0, v8, Lcom/kedlin/cca/ui/HelpOverlayView;->h:I

    if-eqz v0, :cond_10

    iget v0, v8, Lcom/kedlin/cca/ui/HelpOverlayView;->j:I

    if-eqz v0, :cond_10

    iget-object v0, v8, Lcom/kedlin/cca/ui/HelpOverlayView;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Cannot get root view"

    invoke-static {v8, v0}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, v8, Lcom/kedlin/cca/ui/HelpOverlayView;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v8, Lcom/kedlin/cca/ui/HelpOverlayView;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v0, v9}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, v8, Lcom/kedlin/cca/ui/HelpOverlayView;->h:I

    iget v2, v8, Lcom/kedlin/cca/ui/HelpOverlayView;->j:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v8, Lcom/kedlin/cca/ui/HelpOverlayView;->f:Landroid/graphics/Bitmap;

    new-instance v10, Landroid/graphics/Canvas;

    iget-object v1, v8, Lcom/kedlin/cca/ui/HelpOverlayView;->f:Landroid/graphics/Bitmap;

    invoke-direct {v10, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, v8, Lcom/kedlin/cca/ui/HelpOverlayView;->f:Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {v10, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12, v9}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13, v9}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, -0x1

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget v0, Lcom/kedlin/cca/ui/HelpOverlayView;->v:F

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    const/4 v15, 0x2

    new-array v0, v15, [I

    new-array v1, v15, [I

    new-array v2, v15, [I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a02c9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    :cond_3
    new-instance v3, Landroid/graphics/Rect;

    aget v4, v2, v11

    aget v5, v2, v9

    aget v6, v2, v11

    iget v7, v8, Lcom/kedlin/cca/ui/HelpOverlayView;->h:I

    add-int/2addr v6, v7

    aget v7, v2, v11

    iget v15, v8, Lcom/kedlin/cca/ui/HelpOverlayView;->j:I

    add-int/2addr v7, v15

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, v8, Lcom/kedlin/cca/ui/HelpOverlayView;->m:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kedlin/cca/ui/HelpOverlayView$i;

    iget-object v6, v5, Lcom/kedlin/cca/ui/HelpOverlayView$i;->a:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v6, Landroid/graphics/Rect;

    aget v7, v0, v11

    aget v17, v0, v9

    aget v18, v2, v9

    sub-int v15, v17, v18

    aget v17, v0, v11

    iget-object v11, v5, Lcom/kedlin/cca/ui/HelpOverlayView$i;->a:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int v11, v17, v11

    aget v17, v0, v9

    aget v19, v2, v9

    sub-int v17, v17, v19

    iget-object v9, v5, Lcom/kedlin/cca/ui/HelpOverlayView$i;->a:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int v9, v17, v9

    invoke-direct {v6, v7, v15, v11, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v7, v5, Lcom/kedlin/cca/ui/HelpOverlayView$i;->b:Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    const/4 v7, 0x1

    aget v9, v1, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    aput v9, v1, v7

    const/4 v9, 0x0

    aget v11, v1, v9

    aget v15, v1, v7

    aget v17, v2, v7

    sub-int v15, v15, v17

    aget v17, v1, v9

    iget-object v9, v5, Lcom/kedlin/cca/ui/HelpOverlayView$i;->b:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    add-int v9, v17, v9

    aget v17, v1, v7

    aget v20, v2, v7

    sub-int v17, v17, v20

    iget-object v7, v5, Lcom/kedlin/cca/ui/HelpOverlayView$i;->b:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    add-int v7, v17, v7

    invoke-virtual {v3, v11, v15, v9, v7}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/16 v9, 0xa

    mul-int/lit8 v7, v7, 0xa

    div-int/lit16 v7, v7, 0xc8

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    mul-int/lit8 v11, v11, 0xa

    div-int/lit16 v11, v11, 0xc8

    new-instance v9, Landroid/graphics/Rect;

    iget v15, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v15, v11

    move-object/from16 v17, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v7

    move-object/from16 v20, v1

    iget v1, v6, Landroid/graphics/Rect;->right:I

    const/16 v16, 0x2

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v1, v11

    iget v11, v6, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v11, v7

    invoke-direct {v9, v15, v0, v1, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v9}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, v5, Lcom/kedlin/cca/ui/HelpOverlayView$i;->n:Z

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    const/4 v9, 0x1

    :goto_1
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/kedlin/cca/ui/HelpOverlayView$i;->n:Z

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iput v0, v5, Lcom/kedlin/cca/ui/HelpOverlayView$i;->j:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iput v0, v5, Lcom/kedlin/cca/ui/HelpOverlayView$i;->k:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/2addr v7, v1

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v5, Lcom/kedlin/cca/ui/HelpOverlayView$i;->l:I

    iget v1, v5, Lcom/kedlin/cca/ui/HelpOverlayView$i;->m:I

    if-lez v1, :cond_5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v5, Lcom/kedlin/cca/ui/HelpOverlayView$i;->l:I

    :cond_5
    iget-object v0, v8, Lcom/kedlin/cca/ui/HelpOverlayView;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    goto :goto_1

    :cond_6
    iget-object v0, v8, Lcom/kedlin/cca/ui/HelpOverlayView;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/kedlin/cca/ui/HelpOverlayView$i;

    iget-boolean v0, v15, Lcom/kedlin/cca/ui/HelpOverlayView$i;->n:Z

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    iget-object v0, v15, Lcom/kedlin/cca/ui/HelpOverlayView$i;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v13, v0, v2, v1, v14}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v1, v15, Lcom/kedlin/cca/ui/HelpOverlayView$i;->j:I

    iget v2, v15, Lcom/kedlin/cca/ui/HelpOverlayView$i;->k:I

    iget v3, v15, Lcom/kedlin/cca/ui/HelpOverlayView$i;->l:I

    iget-object v5, v15, Lcom/kedlin/cca/ui/HelpOverlayView$i;->h:Lcom/kedlin/cca/ui/HelpOverlayView$h;

    iget v6, v15, Lcom/kedlin/cca/ui/HelpOverlayView$i;->f:I

    iget v7, v15, Lcom/kedlin/cca/ui/HelpOverlayView$i;->g:I

    move-object/from16 v0, p0

    move-object v4, v14

    invoke-virtual/range {v0 .. v7}, Lcom/kedlin/cca/ui/HelpOverlayView;->x(IIILandroid/graphics/Rect;Lcom/kedlin/cca/ui/HelpOverlayView$h;II)Lcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;

    move-result-object v5

    iget-object v0, v15, Lcom/kedlin/cca/ui/HelpOverlayView$i;->c:Ljava/lang/String;

    iget v1, v5, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v5, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v10, v0, v1, v2, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v2, v15, Lcom/kedlin/cca/ui/HelpOverlayView$i;->j:I

    iget v3, v15, Lcom/kedlin/cca/ui/HelpOverlayView$i;->k:I

    iget v4, v15, Lcom/kedlin/cca/ui/HelpOverlayView$i;->l:I

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/kedlin/cca/ui/HelpOverlayView;->p(Landroid/graphics/Canvas;IIILcom/kedlin/cca/ui/HelpOverlayView$DirectionPoint;Landroid/graphics/Rect;)Z

    goto :goto_2

    :cond_8
    iget-object v0, v8, Lcom/kedlin/cca/ui/HelpOverlayView;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kedlin/cca/ui/HelpOverlayView$i;

    iget-boolean v2, v1, Lcom/kedlin/cca/ui/HelpOverlayView$i;->n:Z

    if-nez v2, :cond_9

    goto :goto_3

    :cond_9
    iget-object v2, v1, Lcom/kedlin/cca/ui/HelpOverlayView$i;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v1, Lcom/kedlin/cca/ui/HelpOverlayView$i;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, v1, Lcom/kedlin/cca/ui/HelpOverlayView$i;->d:Ljava/lang/Boolean;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_4

    :cond_a
    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_b

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v6, v2, v4

    if-lez v6, :cond_b

    const/4 v7, 0x1

    goto :goto_4

    :cond_b
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_c

    iget v2, v1, Lcom/kedlin/cca/ui/HelpOverlayView$i;->j:I

    int-to-float v2, v2

    iget v3, v1, Lcom/kedlin/cca/ui/HelpOverlayView$i;->k:I

    int-to-float v3, v3

    iget v4, v1, Lcom/kedlin/cca/ui/HelpOverlayView$i;->l:I

    int-to-float v4, v4

    iget-object v5, v8, Lcom/kedlin/cca/ui/HelpOverlayView;->g:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v2, v1, Lcom/kedlin/cca/ui/HelpOverlayView$i;->j:I

    int-to-float v2, v2

    iget v3, v1, Lcom/kedlin/cca/ui/HelpOverlayView$i;->k:I

    int-to-float v3, v3

    iget v1, v1, Lcom/kedlin/cca/ui/HelpOverlayView$i;->l:I

    int-to-float v1, v1

    invoke-virtual {v10, v2, v3, v1, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v5, 0x2

    goto :goto_3

    :cond_c
    new-instance v2, Landroid/graphics/RectF;

    iget v3, v1, Lcom/kedlin/cca/ui/HelpOverlayView$i;->j:I

    iget-object v4, v1, Lcom/kedlin/cca/ui/HelpOverlayView$i;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v1, Lcom/kedlin/cca/ui/HelpOverlayView$i;->k:I

    iget-object v6, v1, Lcom/kedlin/cca/ui/HelpOverlayView$i;->a:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/2addr v6, v5

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iget v6, v1, Lcom/kedlin/cca/ui/HelpOverlayView$i;->j:I

    iget-object v7, v1, Lcom/kedlin/cca/ui/HelpOverlayView$i;->a:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/2addr v7, v5

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v1, Lcom/kedlin/cca/ui/HelpOverlayView$i;->k:I

    iget-object v1, v1, Lcom/kedlin/cca/ui/HelpOverlayView$i;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/2addr v1, v5

    add-int/2addr v7, v1

    int-to-float v1, v7

    invoke-direct {v2, v3, v4, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget v1, Lcom/kedlin/cca/ui/HelpOverlayView;->u:I

    int-to-float v3, v1

    int-to-float v4, v1

    iget-object v6, v8, Lcom/kedlin/cca/ui/HelpOverlayView;->g:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    int-to-float v3, v1

    int-to-float v1, v1

    invoke-virtual {v10, v2, v3, v1, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, v8, Lcom/kedlin/cca/ui/HelpOverlayView;->f:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_e
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, v8, Lcom/kedlin/cca/ui/HelpOverlayView;->f:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_5
    sget-boolean v0, Lcom/kedlin/cca/ui/HelpOverlayView;->t:Z

    if-eqz v0, :cond_10

    iget-object v0, v8, Lcom/kedlin/cca/ui/HelpOverlayView;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_10

    const-string v0, "FreeRegion"

    invoke-static {v0}, Lj91;->C(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Lcom/kedlin/cca/ui/HelpOverlayView;->s(Landroid/graphics/Canvas;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0}, Lj91;->E(Ljava/lang/String;)Ljava/lang/Long;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_f

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_f

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, v8, Lcom/kedlin/cca/ui/HelpOverlayView;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lcom/kedlin/cca/ui/HelpOverlayView;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_6

    :cond_f
    iget-object v0, v8, Lcom/kedlin/cca/ui/HelpOverlayView;->d:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_10
    :goto_6
    return-void
.end method

.method public final z()V
    .locals 5

    iget-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->q:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->p:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/kedlin/cca/ui/HelpOverlayView$d;

    invoke-direct {v1, p0}, Lcom/kedlin/cca/ui/HelpOverlayView$d;-><init>(Lcom/kedlin/cca/ui/HelpOverlayView;)V

    const-wide/16 v2, 0x64

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView;->q:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
