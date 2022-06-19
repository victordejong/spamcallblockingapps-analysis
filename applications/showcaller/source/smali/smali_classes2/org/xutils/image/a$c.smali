.class final Lorg/xutils/image/a$c;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/image/a;->m(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic d:Lorg/xutils/common/Callback$CommonCallback;

.field final synthetic e:Landroid/widget/ImageView;

.field final synthetic f:Lorg/xutils/image/ImageOptions;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/xutils/common/Callback$CommonCallback;Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/image/a$c;->d:Lorg/xutils/common/Callback$CommonCallback;

    iput-object p2, p0, Lorg/xutils/image/a$c;->e:Landroid/widget/ImageView;

    iput-object p3, p0, Lorg/xutils/image/a$c;->f:Lorg/xutils/image/ImageOptions;

    iput-object p4, p0, Lorg/xutils/image/a$c;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/xutils/image/a$c;->d:Lorg/xutils/common/Callback$CommonCallback;

    instance-of v1, v0, Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lorg/xutils/common/Callback$ProgressCallback;

    invoke-interface {v0}, Lorg/xutils/common/Callback$ProgressCallback;->onWaiting()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/xutils/image/a$c;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/xutils/image/a$c;->f:Lorg/xutils/image/ImageOptions;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lorg/xutils/image/ImageOptions;->getPlaceholderScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 5
    iget-object v0, p0, Lorg/xutils/image/a$c;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/xutils/image/a$c;->f:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1, v0}, Lorg/xutils/image/ImageOptions;->getFailureDrawable(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/xutils/image/a$c;->d:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_2

    .line 7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lorg/xutils/image/a$c;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_2
    iget-object v0, p0, Lorg/xutils/image/a$c;->d:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_4

    .line 9
    :try_start_1
    invoke-interface {v0}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 10
    :try_start_2
    iget-object v1, p0, Lorg/xutils/image/a$c;->d:Lorg/xutils/common/Callback$CommonCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    .line 11
    :try_start_3
    invoke-interface {v1, v0, v2}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 12
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 13
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/xutils/image/a$c;->d:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_4

    .line 14
    :try_start_5
    invoke-interface {v0}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void

    :catchall_3
    move-exception v0

    .line 16
    iget-object v1, p0, Lorg/xutils/image/a$c;->d:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v1, :cond_5

    .line 17
    :try_start_6
    invoke-interface {v1}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :cond_5
    :goto_2
    throw v0
.end method
