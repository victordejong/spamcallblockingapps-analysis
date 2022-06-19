.class public Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/video/c/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a;
    }
.end annotation


# static fields
.field public static b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public static d:I


# instance fields
.field public a:I

.field public c:I

.field public e:Lcom/bytedance/sdk/openadsdk/video/c/a;

.field public f:Ljava/lang/Class;

.field public g:Landroid/view/TextureView;

.field public h:Landroid/view/SurfaceView;

.field private i:Z

.field private j:Ljava/util/Timer;

.field private k:Landroid/media/AudioManager;

.field private l:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a;

.field private m:J

.field private n:Lcom/bytedance/sdk/openadsdk/video/b/a;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v0, -0x1

    .line 84
    sput v0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->f:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/video/c/a;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->e:Lcom/bytedance/sdk/openadsdk/video/c/a;

    .line 132
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/video/c/a;->a(Landroid/content/Context;)V

    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->e:Lcom/bytedance/sdk/openadsdk/video/c/a;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->i:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/video/c/a;->b(Z)V

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->e:Lcom/bytedance/sdk/openadsdk/video/c/a;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->o:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/video/c/a;->a(Z)V

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->e:Lcom/bytedance/sdk/openadsdk/video/c/a;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/video/c/a;->a(Lcom/bytedance/sdk/openadsdk/video/c/a$a;)V

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->e:Lcom/bytedance/sdk/openadsdk/video/c/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->n:Lcom/bytedance/sdk/openadsdk/video/b/a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/video/c/a;->a(Lcom/bytedance/sdk/openadsdk/video/b/a;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 148
    :goto_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->o:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->j()V

    goto :goto_1

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->k()V

    .line 153
    :goto_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->k:Landroid/media/AudioManager;

    .line 154
    sget-object v1, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 155
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/video/d/d;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 156
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->c()V

    return-void
.end method

.method public a(IJJ)V
    .locals 3

    .line 406
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->m:J

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onProgress:  progress ="

    aput-object v2, v0, v1

    .line 407
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, "  position = "

    aput-object v1, v0, p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const/4 p1, 0x4

    const-string p2, "  duration="

    aput-object p2, v0, p1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    const-string p1, "PlayerLayout"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "video_new onStateNormal "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 189
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "PlayerLayout"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->c:I

    .line 191
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->m()V

    .line 192
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->e:Lcom/bytedance/sdk/openadsdk/video/c/a;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/video/c/a;->b()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "video_new onStatePreparing "

    aput-object v2, v0, v1

    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "PlayerLayout"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->c:I

    .line 200
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->n()V

    return-void
.end method

.method public d()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "video_new onStatePreparingPlaying "

    aput-object v2, v0, v1

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "PlayerLayout"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 206
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->c:I

    return-void
.end method

.method public e()V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "video_new onStatePreparingChangeUrl "

    aput-object v3, v1, v2

    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "PlayerLayout"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->c:I

    .line 212
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->a()V

    return-void
.end method

.method public f()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "video_new onStatePlaying seekToInAdvance="

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 264
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "PlayerLayout"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->c:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    .line 266
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->a:I

    if-eqz v0, :cond_0

    .line 267
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->e:Lcom/bytedance/sdk/openadsdk/video/c/a;

    invoke-virtual {v4, v0}, Lcom/bytedance/sdk/openadsdk/video/c/a;->a(I)V

    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "video_new onStatePlaying seekTo"

    aput-object v3, v0, v2

    .line 268
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->a:I

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->e:Lcom/bytedance/sdk/openadsdk/video/c/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/video/c/a;->a(I)V

    :cond_1
    :goto_0
    const/4 v0, 0x5

    .line 275
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->c:I

    .line 276
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->l()V

    return-void
.end method

.method public g()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "video_new onStatePause "

    aput-object v2, v0, v1

    .line 280
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "PlayerLayout"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 281
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->c:I

    .line 282
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->m()V

    return-void
.end method

.method public getCurrentPositionWhenPlaying()J
    .locals 4

    .line 417
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->c:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 419
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->e:Lcom/bytedance/sdk/openadsdk/video/c/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/video/c/a;->c()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v1, v0

    :cond_1
    return-wide v1

    :catch_0
    move-exception v0

    .line 421
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return-wide v1
.end method

.method public getDuration()J
    .locals 2

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->e:Lcom/bytedance/sdk/openadsdk/video/c/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/video/c/a;->d()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 433
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public h()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "video_new onStateError "

    aput-object v2, v0, v1

    .line 286
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "PlayerLayout"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x8

    .line 287
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->c:I

    .line 288
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->m()V

    return-void
.end method

.method public i()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "video_new onStateAutoComplete "

    aput-object v2, v0, v1

    .line 292
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "PlayerLayout"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x7

    .line 293
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->c:I

    .line 294
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->m()V

    return-void
.end method

.method public j()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "video_new addTextureView "

    aput-object v2, v0, v1

    .line 300
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "PlayerLayout"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/video/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->removeAllViews()V

    .line 302
    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->g:Landroid/view/TextureView;

    .line 304
    new-instance v1, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$2;-><init>(Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 331
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 336
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->g:Landroid/view/TextureView;

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public k()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "video_new addSurfaceView "

    aput-object v2, v0, v1

    .line 341
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "PlayerLayout"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/video/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->removeAllViews()V

    .line 343
    new-instance v0, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->h:Landroid/view/SurfaceView;

    .line 344
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$3;-><init>(Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 374
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->h:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 375
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->h:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 378
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 383
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->h:Landroid/view/SurfaceView;

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public l()V
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "startProgressTimer: "

    aput-object v2, v0, v1

    .line 388
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "PlayerLayout"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->m()V

    .line 390
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->j:Ljava/util/Timer;

    .line 391
    new-instance v2, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a;-><init>(Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->l:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a;

    .line 392
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->j:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x12c

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public m()V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->j:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->l:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a;

    if-eqz v0, :cond_1

    .line 400
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a;->cancel()Z

    :cond_1
    return-void
.end method

.method public n()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 412
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->m:J

    return-void
.end method

.method public o()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "video_new reset "

    aput-object v2, v0, v1

    .line 518
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "PlayerLayout"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->m()V

    .line 520
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->b()V

    .line 521
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->removeAllViews()V

    .line 522
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 523
    sget-object v1, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 524
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/video/d/d;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 525
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->e:Lcom/bytedance/sdk/openadsdk/video/c/a;

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/video/c/a;->b()V

    :cond_0
    return-void
.end method

.method public setMediaInterface(Ljava/lang/Class;)V
    .locals 0

    .line 183
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->o()V

    .line 184
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->f:Ljava/lang/Class;

    return-void
.end method

.method public setState(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 556
    :pswitch_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->h()V

    return-void

    .line 559
    :pswitch_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->i()V

    goto :goto_0

    .line 553
    :pswitch_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->g()V

    return-void

    .line 550
    :pswitch_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->f()V

    return-void

    .line 544
    :pswitch_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->d()V

    return-void

    .line 547
    :pswitch_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->e()V

    return-void

    .line 541
    :pswitch_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->c()V

    return-void

    .line 538
    :pswitch_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->b()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
