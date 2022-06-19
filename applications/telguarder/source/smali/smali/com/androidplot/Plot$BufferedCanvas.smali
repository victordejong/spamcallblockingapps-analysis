.class Lcom/androidplot/Plot$BufferedCanvas;
.super Ljava/lang/Object;
.source "Plot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/Plot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferedCanvas"
.end annotation


# instance fields
.field private volatile bgBuffer:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field private volatile fgBuffer:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->canvas:Landroid/graphics/Canvas;

    return-void
.end method

.method synthetic constructor <init>(Lcom/androidplot/Plot$1;)V
    .locals 0

    .line 213
    invoke-direct {p0}, Lcom/androidplot/Plot$BufferedCanvas;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->fgBuffer:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public declared-synchronized getCanvas()Landroid/graphics/Canvas;
    .locals 2

    monitor-enter p0

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->bgBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/androidplot/Plot$BufferedCanvas;->bgBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 270
    iget-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->canvas:Landroid/graphics/Canvas;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 272
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public recycle()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->bgBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->bgBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 250
    iput-object v1, p0, Lcom/androidplot/Plot$BufferedCanvas;->bgBuffer:Landroid/graphics/Bitmap;

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->fgBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->fgBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 255
    iput-object v1, p0, Lcom/androidplot/Plot$BufferedCanvas;->fgBuffer:Landroid/graphics/Bitmap;

    .line 258
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public declared-synchronized resize(II)V
    .locals 3

    monitor-enter p0

    if-lez p2, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->bgBuffer:Landroid/graphics/Bitmap;

    .line 235
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->fgBuffer:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 237
    :catch_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal argument passed to Bitmap.createBitmap.  width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 230
    iput-object p1, p0, Lcom/androidplot/Plot$BufferedCanvas;->bgBuffer:Landroid/graphics/Bitmap;

    .line 231
    iput-object p1, p0, Lcom/androidplot/Plot$BufferedCanvas;->fgBuffer:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized swap()V
    .locals 2

    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->bgBuffer:Landroid/graphics/Bitmap;

    .line 224
    iget-object v1, p0, Lcom/androidplot/Plot$BufferedCanvas;->fgBuffer:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/androidplot/Plot$BufferedCanvas;->bgBuffer:Landroid/graphics/Bitmap;

    .line 225
    iput-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->fgBuffer:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
