.class public Lorg/xutils/image/GifDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GifDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field private d:I

.field private e:I

.field private volatile f:Z

.field private final g:Landroid/graphics/Movie;

.field private final h:I

.field private final i:J


# direct methods
.method public constructor <init>(Landroid/graphics/Movie;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0x12c

    .line 2
    iput v0, p0, Lorg/xutils/image/GifDrawable;->e:I

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xutils/image/GifDrawable;->i:J

    .line 4
    iput-object p1, p0, Lorg/xutils/image/GifDrawable;->g:Landroid/graphics/Movie;

    .line 5
    iput p2, p0, Lorg/xutils/image/GifDrawable;->d:I

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Movie;->duration()I

    move-result p1

    iput p1, p0, Lorg/xutils/image/GifDrawable;->h:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    :try_start_0
    iget v0, p0, Lorg/xutils/image/GifDrawable;->h:I

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/xutils/image/GifDrawable;->i:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    iget v0, p0, Lorg/xutils/image/GifDrawable;->h:I

    rem-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lorg/xutils/image/GifDrawable;->g:Landroid/graphics/Movie;

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 3
    iget-object v0, p0, Lorg/xutils/image/GifDrawable;->g:Landroid/graphics/Movie;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 4
    invoke-virtual {p0}, Lorg/xutils/image/GifDrawable;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public getByteCount()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/xutils/image/GifDrawable;->d:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/xutils/image/GifDrawable;->g:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    iget-object v1, p0, Lorg/xutils/image/GifDrawable;->g:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    move-result v1

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/xutils/image/GifDrawable;->d:I

    .line 3
    :cond_0
    iget v0, p0, Lorg/xutils/image/GifDrawable;->d:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/xutils/image/GifDrawable;->h:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/image/GifDrawable;->g:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/image/GifDrawable;->g:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    return v0
.end method

.method public getMovie()Landroid/graphics/Movie;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/image/GifDrawable;->g:Landroid/graphics/Movie;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/image/GifDrawable;->g:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0
.end method

.method public getRate()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/xutils/image/GifDrawable;->e:I

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/xutils/image/GifDrawable;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/xutils/image/GifDrawable;->h:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public run()V
    .locals 4

    .line 1
    iget v0, p0, Lorg/xutils/image/GifDrawable;->h:I

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lorg/xutils/image/GifDrawable;->e:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setRate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/xutils/image/GifDrawable;->e:I

    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/xutils/image/GifDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/xutils/image/GifDrawable;->f:Z

    .line 3
    invoke-virtual {p0}, Lorg/xutils/image/GifDrawable;->run()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/xutils/image/GifDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/xutils/image/GifDrawable;->f:Z

    .line 3
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
