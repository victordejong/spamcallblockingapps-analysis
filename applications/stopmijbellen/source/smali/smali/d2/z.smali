.class public Ld2/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# instance fields
.field public final synthetic a:Ld2/j0;


# direct methods
.method public constructor <init>(Ld2/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/z;->a:Ld2/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ld2/z;->a:Ld2/j0;

    invoke-virtual {v0, p1}, Ld2/j0;->b(Ld2/t0;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Ld2/z;->a:Ld2/j0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v2, "id"

    .line 4
    invoke-static {v1, v2}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v1

    .line 5
    iget-object v2, v0, Ld2/j0;->g:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 6
    iget-object v3, v0, Ld2/j0;->a:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld2/r3;

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    if-nez v3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, v3, Ld2/r3;->K:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {v3}, Ld2/r3;->e()V

    .line 9
    :cond_2
    iget-object p1, v3, Ld2/r3;->G:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_3

    .line 10
    iput-boolean v1, v3, Ld2/r3;->x:Z

    .line 11
    :cond_3
    iget-object p1, v3, Ld2/r3;->M:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 12
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 13
    :cond_4
    :goto_0
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->l()Ld2/k0;

    move-result-object v0

    .line 14
    iget-object p1, p1, Ld2/t0;->a:Ljava/lang/String;

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ld2/k0;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method
