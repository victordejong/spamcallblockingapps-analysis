.class public Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/SizableStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResizeContainer"
.end annotation


# instance fields
.field private closeControl:Landroid/view/View;

.field private contentRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/millennialmedia/internal/SizableStateManager;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/SizableStateManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->this$0:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private calculateCloseAreaRect(Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const-string v1, "center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    sget v3, Lcom/millennialmedia/internal/SizableStateManager;->closeAreaSize:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_0
    const-string v1, "top"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    :goto_0
    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_1
    const-string v1, "bottom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sget v2, Lcom/millennialmedia/internal/SizableStateManager;->closeAreaSize:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_2
    :goto_1
    const-string v1, "left"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget p1, p2, Landroid/graphics/Rect;->left:I

    :goto_2
    iput p1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_3

    :cond_3
    const-string v1, "right"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p2, Landroid/graphics/Rect;->right:I

    sget p2, Lcom/millennialmedia/internal/SizableStateManager;->closeAreaSize:I

    sub-int/2addr p1, p2

    goto :goto_2

    :cond_4
    :goto_3
    iget p1, v0, Landroid/graphics/Rect;->left:I

    sget p2, Lcom/millennialmedia/internal/SizableStateManager;->closeAreaSize:I

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method


# virtual methods
.method public attachCloseControl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->closeControl:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->closeControl:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->closeControl:Landroid/view/View;

    new-instance v0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer$1;-><init>(Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->closeControl:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v0, Lcom/millennialmedia/internal/SizableStateManager;->closeAreaSize:I

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v0, "top-right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xb

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    :cond_1
    const-string v0, "top-center"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0xe

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    :cond_2
    const-string v0, "bottom-left"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0xc

    if-eqz v0, :cond_3

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    :cond_3
    const-string v0, "bottom-center"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    :cond_4
    const-string v0, "bottom-right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_5
    const-string v0, "center"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->closeControl:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->closeControl:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    return-void
.end method

.method public close()V
    .locals 2

    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/SizableStateManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "close must be called on the UI thread"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->this$0:Lcom/millennialmedia/internal/SizableStateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/SizableStateManager;->restoreDefaultState(Z)V

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    return-void
.end method

.method public resize(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)Z
    .locals 5

    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/SizableStateManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "resize must be called on the UI thread"

    :goto_0
    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->contentRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getContentDimensions(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->contentRect:Landroid/graphics/Rect;

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->this$0:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-static {v2}, Lcom/millennialmedia/internal/SizableStateManager;->access$100(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->getViewPositionOnScreen(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->offsetX:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->this$0:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-static {v2}, Lcom/millennialmedia/internal/SizableStateManager;->access$100(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->access$200(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->offsetX:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->this$0:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-static {v2}, Lcom/millennialmedia/internal/SizableStateManager;->access$100(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->access$200(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/graphics/Point;

    move-result-object v2

    :goto_1
    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->offsetY:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->width:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->height:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-boolean v2, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->allowOffScreen:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->contentRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->shiftRectOnScreen(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->contentRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/millennialmedia/internal/SizableStateManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Resized view would not appear on screen"

    goto :goto_0

    :cond_3
    iget-object v2, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->customClosePosition:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->calculateCloseAreaRect(Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->contentRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/millennialmedia/internal/SizableStateManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Close area would not appear on screen"

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->this$0:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-static {v2}, Lcom/millennialmedia/internal/SizableStateManager;->access$300(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$SizableListener;

    move-result-object v2

    iget v3, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->width:I

    iget v4, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->height:I

    invoke-interface {v2, v3, v4}, Lcom/millennialmedia/internal/SizableStateManager$SizableListener;->onResizing(II)V

    iget-object v2, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->this$0:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-static {v2}, Lcom/millennialmedia/internal/SizableStateManager;->access$100(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    move-result-object v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->this$0:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-virtual {v2, p1}, Lcom/millennialmedia/internal/SizableStateManager;->saveDefaultState(Landroid/view/View;)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->getDecorView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/millennialmedia/internal/SizableStateManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unable to resize to root view"

    goto/16 :goto_0

    :cond_5
    invoke-static {p0, p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-static {v2, p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->this$0:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-static {v1}, Lcom/millennialmedia/internal/SizableStateManager;->access$100(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->access$400(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_6
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->width:I

    iget v3, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p2, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->customClosePosition:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->attachCloseControl(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->this$0:Lcom/millennialmedia/internal/SizableStateManager;

    sget-object v0, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_RESIZED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    invoke-static {p2, p1, v0}, Lcom/millennialmedia/internal/SizableStateManager;->access$500(Lcom/millennialmedia/internal/SizableStateManager;Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$SizableState;)V

    const/4 p1, 0x1

    return p1
.end method

.method public shiftRectOnScreen(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    :goto_0
    sub-int/2addr v1, v0

    goto :goto_1

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-ge v0, v3, :cond_2

    sub-int v2, v3, v0

    goto :goto_2

    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-le v0, p2, :cond_3

    sub-int v2, p2, v0

    :cond_3
    :goto_2
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method
