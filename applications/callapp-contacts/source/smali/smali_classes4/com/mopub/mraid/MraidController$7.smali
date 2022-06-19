.class final Lcom/mopub/mraid/MraidController$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mraid/MraidController;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/mopub/mraid/MraidController;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidController;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/mopub/mraid/MraidController$7;->c:Lcom/mopub/mraid/MraidController;

    iput-object p2, p0, Lcom/mopub/mraid/MraidController$7;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/mopub/mraid/MraidController$7;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 448
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$7;->c:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->q(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 449
    iget-object v1, p0, Lcom/mopub/mraid/MraidController$7;->c:Lcom/mopub/mraid/MraidController;

    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->r(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/c;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1064
    iget-object v3, v1, Lcom/mopub/mraid/c;->a:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1065
    iget-object v0, v1, Lcom/mopub/mraid/c;->a:Landroid/graphics/Rect;

    iget-object v2, v1, Lcom/mopub/mraid/c;->b:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lcom/mopub/mraid/c;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 453
    iget-object v1, p0, Lcom/mopub/mraid/MraidController$7;->c:Lcom/mopub/mraid/MraidController;

    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->s(Lcom/mopub/mraid/MraidController;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 454
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 455
    iget-object v2, p0, Lcom/mopub/mraid/MraidController$7;->c:Lcom/mopub/mraid/MraidController;

    invoke-static {v2}, Lcom/mopub/mraid/MraidController;->r(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/c;

    move-result-object v2

    aget v3, v0, v4

    const/4 v5, 0x1

    aget v6, v0, v5

    .line 456
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 457
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1079
    iget-object v8, v2, Lcom/mopub/mraid/c;->c:Landroid/graphics/Rect;

    add-int/2addr v7, v3

    add-int/2addr v1, v6

    invoke-virtual {v8, v3, v6, v7, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1080
    iget-object v1, v2, Lcom/mopub/mraid/c;->c:Landroid/graphics/Rect;

    iget-object v3, v2, Lcom/mopub/mraid/c;->d:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v3}, Lcom/mopub/mraid/c;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 459
    iget-object v1, p0, Lcom/mopub/mraid/MraidController$7;->c:Lcom/mopub/mraid/MraidController;

    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->t(Lcom/mopub/mraid/MraidController;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 460
    iget-object v1, p0, Lcom/mopub/mraid/MraidController$7;->c:Lcom/mopub/mraid/MraidController;

    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->r(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/c;

    move-result-object v1

    aget v2, v0, v4

    aget v3, v0, v5

    iget-object v6, p0, Lcom/mopub/mraid/MraidController$7;->c:Lcom/mopub/mraid/MraidController;

    .line 461
    invoke-static {v6}, Lcom/mopub/mraid/MraidController;->u(Lcom/mopub/mraid/MraidController;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/mopub/mraid/MraidController$7;->c:Lcom/mopub/mraid/MraidController;

    .line 462
    invoke-static {v7}, Lcom/mopub/mraid/MraidController;->v(Lcom/mopub/mraid/MraidController;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    .line 1109
    iget-object v8, v1, Lcom/mopub/mraid/c;->g:Landroid/graphics/Rect;

    add-int/2addr v6, v2

    add-int/2addr v7, v3

    invoke-virtual {v8, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1110
    iget-object v2, v1, Lcom/mopub/mraid/c;->g:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/mopub/mraid/c;->h:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/mopub/mraid/c;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 464
    iget-object v1, p0, Lcom/mopub/mraid/MraidController$7;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 465
    iget-object v1, p0, Lcom/mopub/mraid/MraidController$7;->c:Lcom/mopub/mraid/MraidController;

    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->r(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/c;

    move-result-object v1

    aget v2, v0, v4

    aget v0, v0, v5

    iget-object v3, p0, Lcom/mopub/mraid/MraidController$7;->a:Landroid/view/View;

    .line 466
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/mopub/mraid/MraidController$7;->a:Landroid/view/View;

    .line 467
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 2094
    iget-object v5, v1, Lcom/mopub/mraid/c;->e:Landroid/graphics/Rect;

    add-int/2addr v3, v2

    add-int/2addr v4, v0

    invoke-virtual {v5, v2, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2095
    iget-object v0, v1, Lcom/mopub/mraid/c;->e:Landroid/graphics/Rect;

    iget-object v2, v1, Lcom/mopub/mraid/c;->f:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lcom/mopub/mraid/c;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 470
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$7;->c:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->i(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController$7;->c:Lcom/mopub/mraid/MraidController;

    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->r(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->notifyScreenMetrics(Lcom/mopub/mraid/c;)V

    .line 471
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$7;->c:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->h(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$7;->c:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->h(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController$7;->c:Lcom/mopub/mraid/MraidController;

    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->r(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->notifyScreenMetrics(Lcom/mopub/mraid/c;)V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$7;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 476
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
