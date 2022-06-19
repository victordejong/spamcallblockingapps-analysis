.class public Ljx;
.super Landroid/view/TextureView;
.source ""

# interfaces
.implements Lkx;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public a:Landroid/view/Surface;

.field public b:Lkx$a;

.field public c:Luw;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "VideoTextureView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Luw;)Z
    .locals 2

    iput-object p1, p0, Ljx;->c:Luw;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljx;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljx;->a:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Luw;->G(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Ljx$a;

    invoke-direct {v0, p0}, Ljx$a;-><init>(Ljx;)V

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lg8;->i(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Ljx;->a:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Lkx$a;)V
    .locals 0

    iput-object p1, p0, Ljx;->b:Lkx$a;

    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    iget-object v0, p0, Ljx;->c:Luw;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Luw;->x()Landroidx/media2/common/VideoSize;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->d()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljx;->c:Luw;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Luw;->x()Landroidx/media2/common/VideoSize;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/common/VideoSize;->c()I

    move-result v1

    :cond_1
    if-eqz v0, :cond_c

    if-nez v1, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_4

    if-ne v3, v4, :cond_4

    mul-int v2, v0, p2

    mul-int v3, p1, v1

    if-ge v2, v3, :cond_3

    div-int p1, v2, v1

    goto :goto_2

    :cond_3
    if-le v2, v3, :cond_b

    div-int p2, v3, v0

    goto :goto_2

    :cond_4
    const/high16 v5, 0x1000000

    const/high16 v6, -0x80000000

    if-ne v2, v4, :cond_6

    mul-int v1, v1, p1

    div-int/2addr v1, v0

    if-ne v3, v6, :cond_5

    if-le v1, p2, :cond_5

    or-int/2addr p2, v5

    goto :goto_2

    :cond_5
    move p2, v1

    goto :goto_2

    :cond_6
    if-ne v3, v4, :cond_8

    mul-int v0, v0, p2

    div-int/2addr v0, v1

    if-ne v2, v6, :cond_7

    if-le v0, p1, :cond_7

    or-int/2addr p1, v5

    goto :goto_2

    :cond_7
    move p1, v0

    goto :goto_2

    :cond_8
    if-ne v3, v6, :cond_9

    if-le v1, p2, :cond_9

    mul-int v3, p2, v0

    div-int/2addr v3, v1

    goto :goto_1

    :cond_9
    move v3, v0

    move p2, v1

    :goto_1
    if-ne v2, v6, :cond_a

    if-le v3, p1, :cond_a

    mul-int v1, v1, p1

    div-int p2, v1, v0

    goto :goto_2

    :cond_a
    move p1, v3

    :cond_b
    :goto_2
    invoke-virtual {p0, p1, p2}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    return-void

    :cond_c
    :goto_3
    invoke-static {v0, p1}, Landroid/view/TextureView;->getDefaultSize(II)I

    move-result p1

    invoke-static {v1, p2}, Landroid/view/TextureView;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Ljx;->a:Landroid/view/Surface;

    iget-object p1, p0, Ljx;->b:Lkx$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2, p3}, Lkx$a;->a(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    iget-object p1, p0, Ljx;->b:Lkx$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lkx$a;->b(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Ljx;->a:Landroid/view/Surface;

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p1, p0, Ljx;->b:Lkx$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2, p3}, Lkx$a;->d(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
