.class public Ld2/x3;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Ld2/z0;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld2/x3$k;,
        Ld2/x3$h;,
        Ld2/x3$g;,
        Ld2/x3$j;,
        Ld2/x3$i;
    }
.end annotation


# static fields
.field public static R:Z = false


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Ld2/d4;

.field public J:Ld2/f4;

.field public K:Ld2/f4;

.field public L:Ld2/j0;

.field public M:Ld2/t0;

.field public N:Landroid/widget/ImageView;

.field public O:Ld2/x3$k;

.field public final P:Ljava/lang/Object;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 21
    iput-object p1, p0, Ld2/x3;->c:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Ld2/x3;->d:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Ld2/x3;->f:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Ld2/x3;->g:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Ld2/x3;->h:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Ld2/x3;->i:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Ld2/x3;->j:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Ld2/x3;->k:Ljava/lang/String;

    .line 29
    new-instance p1, Ld2/d4;

    invoke-direct {p1}, Ld2/d4;-><init>()V

    .line 30
    iput-object p1, p0, Ld2/x3;->I:Ld2/d4;

    .line 31
    new-instance p1, Ld2/f4;

    invoke-direct {p1}, Ld2/f4;-><init>()V

    .line 32
    iput-object p1, p0, Ld2/x3;->J:Ld2/f4;

    .line 33
    new-instance p1, Ld2/f4;

    invoke-direct {p1}, Ld2/f4;-><init>()V

    .line 34
    iput-object p1, p0, Ld2/x3;->K:Ld2/f4;

    .line 35
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/x3;->P:Ljava/lang/Object;

    .line 36
    iput p2, p0, Ld2/x3;->u:I

    .line 37
    iput-boolean p3, p0, Ld2/x3;->A:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ld2/t0;IILd2/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Ld2/x3;->c:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Ld2/x3;->d:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Ld2/x3;->f:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Ld2/x3;->g:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Ld2/x3;->h:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Ld2/x3;->i:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Ld2/x3;->j:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Ld2/x3;->k:Ljava/lang/String;

    .line 10
    new-instance p1, Ld2/d4;

    invoke-direct {p1}, Ld2/d4;-><init>()V

    .line 11
    iput-object p1, p0, Ld2/x3;->I:Ld2/d4;

    .line 12
    new-instance p1, Ld2/f4;

    invoke-direct {p1}, Ld2/f4;-><init>()V

    .line 13
    iput-object p1, p0, Ld2/x3;->J:Ld2/f4;

    .line 14
    new-instance p1, Ld2/f4;

    invoke-direct {p1}, Ld2/f4;-><init>()V

    .line 15
    iput-object p1, p0, Ld2/x3;->K:Ld2/f4;

    .line 16
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/x3;->P:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Ld2/x3;->M:Ld2/t0;

    .line 18
    invoke-virtual {p0, p2, p3, p4, p5}, Ld2/x3;->j(Ld2/t0;IILd2/j0;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 19
    invoke-virtual {p0, p1, p2}, Ld2/x3;->m(ZLd2/t0;)V

    return-void
.end method

.method public static k(Ld2/x3;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld2/x3;->L:Ld2/j0;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    .line 3
    iget v1, p0, Ld2/x3;->l:I

    const-string v2, "id"

    invoke-static {v0, v2, v1}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 4
    iget-object v1, p0, Ld2/x3;->e:Ljava/lang/String;

    const-string v2, "ad_session_id"

    invoke-static {v0, v2, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5
    iget-object v1, p0, Ld2/x3;->L:Ld2/j0;

    .line 6
    iget v1, v1, Ld2/j0;->j:I

    const-string v2, "container_id"

    .line 7
    invoke-static {v0, v2, v1}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v1, "code"

    .line 8
    invoke-static {v0, v1, p1}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string p1, "error"

    .line 9
    invoke-static {v0, p1, p2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "url"

    .line 10
    invoke-static {v0, p1, p3}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 11
    new-instance p1, Ld2/t0;

    iget-object p0, p0, Ld2/x3;->L:Ld2/j0;

    .line 12
    iget p0, p0, Ld2/j0;->k:I

    const-string p3, "WebView.on_error"

    .line 13
    invoke-direct {p1, p3, p0, v0}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {p1}, Ld2/t0;->b()V

    :cond_0
    const-string p0, "onReceivedError: "

    .line 14
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 15
    invoke-static {p2, p2, p0, p1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    return-void
.end method

.method public static l(Ld2/x3;Ld2/f4;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 3
    instance-of v1, v0, Ld2/w;

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p0

    invoke-virtual {p0}, Ld2/f1;->l()Ld2/k0;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Ld2/k0;->a(Landroid/content/Context;Ld2/f4;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget p1, p0, Ld2/x3;->u:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    .line 6
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p0

    invoke-virtual {p0}, Ld2/f1;->p()Ld2/h0;

    move-result-object p0

    const-string p1, "Unable to communicate with controller, disabling AdColony."

    .line 7
    invoke-virtual {p0, v0, v0, p1, v0}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 8
    invoke-static {}, Ld2/b;->i()Z

    goto :goto_0

    .line 9
    :cond_1
    iget p1, p0, Ld2/x3;->v:I

    if-lez p1, :cond_2

    .line 10
    iput-boolean v0, p0, Ld2/x3;->y:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static p(Ld2/x3;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 2
    :try_start_0
    new-instance v0, Ld2/d4;

    invoke-direct {v0, p1}, Ld2/d4;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->p()Ld2/h0;

    move-result-object v0

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, p0, p0, p1, v1}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 9
    new-instance v0, Ld2/d4;

    invoke-direct {v0}, Ld2/d4;-><init>()V

    .line 10
    :goto_0
    invoke-virtual {v0}, Ld2/d4;->c()I

    move-result p1

    if-ge p0, p1, :cond_0

    .line 11
    invoke-virtual {v0, p0}, Ld2/d4;->d(I)Ld2/f4;

    move-result-object p1

    .line 12
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v1

    invoke-virtual {v1}, Ld2/f1;->q()Ld2/u0;

    move-result-object v1

    invoke-virtual {v1, p1}, Ld2/u0;->f(Ld2/f4;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld2/x3;->D:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ld2/x3;->E:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-static {}, Ld2/t;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ld2/x3;->B:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ld2/x3;->D:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ld2/x3;->E:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ld2/x3;->g()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld2/x3;->A:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld2/x3$f;

    invoke-direct {v0, p0}, Ld2/x3$f;-><init>(Ld2/x3;)V

    invoke-static {v0}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Ld2/x3;->u:I

    return v0
.end method

.method public e(Ld2/f4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/x3;->P:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ld2/x3;->E:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Ld2/x3;->q(Ld2/f4;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Ld2/x3;->I:Ld2/d4;

    invoke-virtual {v1, p1}, Ld2/d4;->a(Ld2/f4;)Ld2/d4;

    .line 5
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f()V
    .locals 5

    .line 1
    iget-object v0, p0, Ld2/x3;->N:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->m()Ld2/b2;

    move-result-object v0

    invoke-virtual {v0}, Ld2/b2;->g()Landroid/graphics/Rect;

    move-result-object v0

    .line 3
    iget-boolean v1, p0, Ld2/x3;->H:Z

    if-eqz v1, :cond_0

    .line 4
    iget v1, p0, Ld2/x3;->m:I

    iget v2, p0, Ld2/x3;->q:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 6
    :goto_0
    iget-boolean v2, p0, Ld2/x3;->H:Z

    if-eqz v2, :cond_1

    .line 7
    iget v0, p0, Ld2/x3;->o:I

    iget v2, p0, Ld2/x3;->s:I

    add-int/2addr v0, v2

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 9
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/a;->c()F

    move-result v2

    .line 10
    iget v3, p0, Ld2/x3;->w:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    .line 11
    iget v4, p0, Ld2/x3;->x:I

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-int v2, v4

    sub-int/2addr v1, v3

    sub-int/2addr v0, v2

    .line 12
    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v4, v3, v2, v1, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 13
    iget-object v0, p0, Ld2/x3;->N:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public g()V
    .locals 3

    const-string v0, ""

    .line 1
    iget-object v1, p0, Ld2/x3;->P:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    iget-object v2, p0, Ld2/x3;->I:Ld2/d4;

    invoke-virtual {v2}, Ld2/d4;->c()I

    move-result v2

    if-lez v2, :cond_1

    .line 3
    iget-boolean v2, p0, Ld2/x3;->y:Z

    if-eqz v2, :cond_0

    .line 4
    iget-object v0, p0, Ld2/x3;->I:Ld2/d4;

    invoke-virtual {v0}, Ld2/d4;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_0
    new-instance v2, Ld2/d4;

    invoke-direct {v2}, Ld2/d4;-><init>()V

    .line 6
    iput-object v2, p0, Ld2/x3;->I:Ld2/d4;

    .line 7
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    new-instance v1, Ld2/x3$a;

    invoke-direct {v1, p0, v0}, Ld2/x3$a;-><init>(Ld2/x3;Ljava/lang/String;)V

    invoke-static {v1}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->l()Ld2/k0;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ld2/x3;->y()Ld2/q;

    move-result-object v1

    .line 3
    iget-object v0, v0, Ld2/k0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    iget-object v2, p0, Ld2/x3;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/k;

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p0, Ld2/x3;->K:Ld2/f4;

    invoke-virtual {v2}, Ld2/f4;->e()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Ld2/x3;->K:Ld2/f4;

    const-string v3, "ad_type"

    .line 6
    invoke-virtual {v2, v3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "video"

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    iget-object v2, p0, Ld2/x3;->K:Ld2/f4;

    .line 9
    invoke-virtual {v2}, Ld2/f4;->e()I

    move-result v3

    if-lez v3, :cond_1

    .line 10
    new-instance v3, Ld2/t1;

    iget-object v4, v1, Ld2/q;->g:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Ld2/t1;-><init>(Ld2/f4;Ljava/lang/String;)V

    iput-object v3, v1, Ld2/q;->e:Ld2/t1;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 11
    iget-object v2, p0, Ld2/x3;->K:Ld2/f4;

    invoke-virtual {v2}, Ld2/f4;->e()I

    move-result v2

    if-lez v2, :cond_1

    .line 12
    new-instance v2, Ld2/t1;

    iget-object v3, p0, Ld2/x3;->K:Ld2/f4;

    iget-object v4, p0, Ld2/x3;->e:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ld2/t1;-><init>(Ld2/f4;Ljava/lang/String;)V

    .line 13
    iput-object v2, v0, Ld2/k;->c:Ld2/t1;

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    .line 14
    :cond_2
    iget-object v1, v1, Ld2/q;->e:Ld2/t1;

    :goto_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 15
    iget-object v1, v0, Ld2/k;->c:Ld2/t1;

    :cond_3
    if-eqz v1, :cond_4

    .line 16
    iget v0, v1, Ld2/t1;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Ld2/x3;->F:Z

    const-string v0, ""

    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 19
    :try_start_0
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ld2/f1;->o()Ld2/h3;

    move-result-object v0

    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, p2, v1}, Ld2/h3;->a(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-static {p2, p1}, Li4/d;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 24
    invoke-virtual {p0, p2}, Ld2/x3;->n(Ljava/lang/Exception;)Z

    :cond_4
    return-object p1
.end method

.method public i(Ld2/t0;)V
    .locals 4

    .line 1
    iget-object v0, p1, Ld2/t0;->b:Ld2/f4;

    const-string v1, "x"

    .line 2
    invoke-static {v0, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ld2/x3;->m:I

    const-string v1, "y"

    .line 3
    invoke-static {v0, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ld2/x3;->o:I

    const-string v1, "width"

    .line 4
    invoke-static {v0, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ld2/x3;->q:I

    const-string v1, "height"

    .line 5
    invoke-static {v0, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ld2/x3;->s:I

    .line 6
    invoke-virtual {p0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 7
    iget v1, p0, Ld2/x3;->m:I

    iget v2, p0, Ld2/x3;->o:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 8
    iget v1, p0, Ld2/x3;->q:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 9
    iget v1, p0, Ld2/x3;->s:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-boolean v0, p0, Ld2/x3;->z:Z

    if-eqz v0, :cond_0

    .line 12
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    const/4 v1, 0x1

    const-string v2, "success"

    .line 13
    invoke-static {v0, v2, v1}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 14
    iget v1, p0, Ld2/x3;->u:I

    const-string v2, "id"

    invoke-static {v0, v2, v1}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 15
    invoke-virtual {p1, v0}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object p1

    invoke-virtual {p1}, Ld2/t0;->b()V

    .line 16
    :cond_0
    invoke-virtual {p0}, Ld2/x3;->f()V

    return-void
.end method

.method public j(Ld2/t0;IILd2/j0;)V
    .locals 4

    .line 1
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v0, "url"

    .line 2
    invoke-virtual {p1, v0}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iput-object v0, p0, Ld2/x3;->a:Ljava/lang/String;

    const-string v1, ""

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "data"

    .line 5
    invoke-virtual {p1, v0}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Ld2/x3;->a:Ljava/lang/String;

    :cond_0
    const-string v0, "base_url"

    .line 7
    invoke-virtual {p1, v0}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    iput-object v0, p0, Ld2/x3;->d:Ljava/lang/String;

    const-string v0, "custom_js"

    .line 9
    invoke-virtual {p1, v0}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iput-object v0, p0, Ld2/x3;->c:Ljava/lang/String;

    const-string v0, "ad_session_id"

    .line 11
    invoke-virtual {p1, v0}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    iput-object v0, p0, Ld2/x3;->e:Ljava/lang/String;

    const-string v0, "info"

    .line 13
    invoke-virtual {p1, v0}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object v0

    .line 14
    iput-object v0, p0, Ld2/x3;->J:Ld2/f4;

    const-string v0, "mraid_filepath"

    .line 15
    invoke-virtual {p1, v0}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    iput-object v0, p0, Ld2/x3;->g:Ljava/lang/String;

    const-string v0, "use_mraid_module"

    .line 17
    invoke-static {p1, v0}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->q()Ld2/u0;

    move-result-object v0

    invoke-virtual {v0}, Ld2/u0;->g()I

    move-result v0

    goto :goto_0

    .line 19
    :cond_1
    iget v0, p0, Ld2/x3;->v:I

    :goto_0
    iput v0, p0, Ld2/x3;->v:I

    const-string v0, "ad_choices_filepath"

    .line 20
    invoke-virtual {p1, v0}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    iput-object v0, p0, Ld2/x3;->h:Ljava/lang/String;

    const-string v0, "ad_choices_url"

    .line 22
    invoke-virtual {p1, v0}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    iput-object v0, p0, Ld2/x3;->i:Ljava/lang/String;

    const-string v0, "disable_ad_choices"

    .line 24
    invoke-static {p1, v0}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ld2/x3;->G:Z

    const-string v0, "ad_choices_snap_to_webview"

    .line 25
    invoke-static {p1, v0}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ld2/x3;->H:Z

    const-string v0, "ad_choices_width"

    .line 26
    invoke-static {p1, v0}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ld2/x3;->w:I

    const-string v0, "ad_choices_height"

    .line 27
    invoke-static {p1, v0}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ld2/x3;->x:I

    .line 28
    iget-object v0, p0, Ld2/x3;->K:Ld2/f4;

    invoke-virtual {v0}, Ld2/f4;->e()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "iab"

    .line 29
    invoke-virtual {p1, v0}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object v0

    .line 30
    iput-object v0, p0, Ld2/x3;->K:Ld2/f4;

    .line 31
    :cond_2
    iget-boolean v0, p0, Ld2/x3;->A:Z

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Ld2/x3;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 32
    iget v0, p0, Ld2/x3;->v:I

    if-lez v0, :cond_3

    const-string v0, "script src=\"file://"

    .line 33
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ld2/x3;->g:Ljava/lang/String;

    const-string v3, "\""

    invoke-static {v0, v1, v3}, Landroid/support/v4/media/b;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v1, p0, Ld2/x3;->a:Ljava/lang/String;

    const-string v3, "script\\s*src\\s*=\\s*\"mraid.js\""

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ld2/x3;->J:Ld2/f4;

    const-string v3, "device_info"

    .line 35
    invoke-virtual {v1, v3}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object v1

    const-string v3, "iab_filepath"

    .line 36
    invoke-virtual {v1, v3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {p0, v0, v1}, Ld2/x3;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld2/x3;->a:Ljava/lang/String;

    goto :goto_1

    .line 38
    :cond_3
    :try_start_0
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->o()Ld2/h3;

    move-result-object v0

    iget-object v1, p0, Ld2/x3;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ld2/h3;->a(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld2/x3;->f:Ljava/lang/String;

    const-string v0, "bridge.os_name\\s*=\\s*\"\"\\s*;"

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bridge.os_name = \"\";\nvar ADC_DEVICE_INFO = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ld2/x3;->J:Ld2/f4;

    .line 41
    invoke-virtual {v3}, Ld2/f4;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    iget-object v3, p0, Ld2/x3;->f:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld2/x3;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {p0, v0}, Ld2/x3;->o(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 44
    invoke-virtual {p0, v0}, Ld2/x3;->o(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 45
    invoke-virtual {p0, v0}, Ld2/x3;->o(Ljava/lang/Exception;)V

    .line 46
    :cond_4
    :goto_1
    iput p2, p0, Ld2/x3;->l:I

    .line 47
    iput-object p4, p0, Ld2/x3;->L:Ld2/j0;

    if-ltz p3, :cond_5

    .line 48
    iput p3, p0, Ld2/x3;->u:I

    goto :goto_2

    .line 49
    :cond_5
    invoke-virtual {p0}, Ld2/x3;->t()V

    :goto_2
    const-string p2, "width"

    .line 50
    invoke-static {p1, p2}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Ld2/x3;->q:I

    const-string p2, "height"

    .line 51
    invoke-static {p1, p2}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Ld2/x3;->s:I

    const-string p2, "x"

    .line 52
    invoke-static {p1, p2}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Ld2/x3;->m:I

    const-string p2, "y"

    .line 53
    invoke-static {p1, p2}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Ld2/x3;->o:I

    .line 54
    iget p3, p0, Ld2/x3;->q:I

    iput p3, p0, Ld2/x3;->r:I

    .line 55
    iget p3, p0, Ld2/x3;->s:I

    iput p3, p0, Ld2/x3;->t:I

    .line 56
    iput p2, p0, Ld2/x3;->p:I

    .line 57
    iget p2, p0, Ld2/x3;->m:I

    iput p2, p0, Ld2/x3;->n:I

    const-string p2, "enable_messages"

    .line 58
    invoke-static {p1, p2}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Ld2/x3;->z:Z

    if-eqz p1, :cond_7

    :cond_6
    const/4 v2, 0x1

    :cond_7
    iput-boolean v2, p0, Ld2/x3;->y:Z

    .line 59
    invoke-virtual {p0}, Ld2/x3;->u()V

    return-void
.end method

.method public m(ZLd2/t0;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Ld2/x3;->z:Z

    .line 2
    iget-object v0, p0, Ld2/x3;->M:Ld2/t0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 3
    :goto_0
    iput-object p2, p0, Ld2/x3;->M:Ld2/t0;

    .line 4
    iget-object p2, p2, Ld2/t0;->b:Ld2/f4;

    const-string v0, "is_display_module"

    .line 5
    invoke-static {p2, v0}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ld2/x3;->A:Z

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setFocusable(Z)V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 8
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    if-eqz p1, :cond_3

    .line 11
    iput-boolean v0, p0, Ld2/x3;->y:Z

    const-string v3, "filepath"

    .line 12
    invoke-virtual {p2, v3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "interstitial_html"

    .line 13
    invoke-virtual {p2, v4}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 14
    iput-object v4, p0, Ld2/x3;->j:Ljava/lang/String;

    const-string v4, "mraid_filepath"

    .line 15
    invoke-virtual {p2, v4}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 16
    iput-object v4, p0, Ld2/x3;->g:Ljava/lang/String;

    const-string v4, "base_url"

    .line 17
    invoke-virtual {p2, v4}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 18
    iput-object v4, p0, Ld2/x3;->d:Ljava/lang/String;

    const-string v4, "iab"

    .line 19
    invoke-virtual {p2, v4}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object v4

    .line 20
    iput-object v4, p0, Ld2/x3;->K:Ld2/f4;

    const-string v4, "info"

    .line 21
    invoke-virtual {p2, v4}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object v4

    .line 22
    iput-object v4, p0, Ld2/x3;->J:Ld2/f4;

    const-string v4, "ad_session_id"

    .line 23
    invoke-virtual {p2, v4}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 24
    iput-object p2, p0, Ld2/x3;->e:Ljava/lang/String;

    .line 25
    iput-object v3, p0, Ld2/x3;->b:Ljava/lang/String;

    .line 26
    sget-boolean p2, Ld2/x3;->R:Z

    if-eqz p2, :cond_1

    iget p2, p0, Ld2/x3;->u:I

    if-ne p2, v0, :cond_1

    const-string p2, "android_asset/ADCController.js"

    .line 27
    iput-object p2, p0, Ld2/x3;->b:Ljava/lang/String;

    .line 28
    :cond_1
    iget-object p2, p0, Ld2/x3;->j:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "file:///"

    .line 29
    invoke-static {p2}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v3, p0, Ld2/x3;->b:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    const-string p2, ""

    .line 30
    :goto_1
    iput-object p2, p0, Ld2/x3;->a:Ljava/lang/String;

    .line 31
    :cond_3
    new-instance p2, Ld2/x3$i;

    const/4 v3, 0x0

    invoke-direct {p2, p0, v3}, Ld2/x3$i;-><init>(Ld2/x3;Ld2/y3;)V

    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 32
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    .line 33
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 34
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 35
    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 36
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 37
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 38
    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 39
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 40
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 41
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    const/16 p2, 0x17

    if-lt v2, p2, :cond_4

    .line 42
    new-instance v0, Ld2/x3$h;

    invoke-direct {v0, p0, v3}, Ld2/x3$h;-><init>(Ld2/x3;Ld2/y3;)V

    const-string v3, "NativeLayer"

    invoke-virtual {p0, v0, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 43
    :cond_4
    new-instance v0, Ld2/x3$g;

    invoke-direct {v0, p0, v3}, Ld2/x3$g;-><init>(Ld2/x3;Ld2/y3;)V

    const-string v3, "NativeLayer"

    invoke-virtual {p0, v0, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    if-lt v2, p2, :cond_5

    .line 44
    new-instance p2, Ld2/y3;

    invoke-direct {p2, p0}, Ld2/y3;-><init>(Ld2/x3;)V

    goto :goto_3

    .line 45
    :cond_5
    new-instance p2, Ld2/z3;

    invoke-direct {p2, p0}, Ld2/z3;-><init>(Ld2/x3;)V

    .line 46
    :goto_3
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const-string p2, ""

    .line 47
    iget-boolean v0, p0, Ld2/x3;->A:Z

    const-string v2, ".html"

    if-eqz v0, :cond_a

    .line 48
    :try_start_0
    iget-object v0, p0, Ld2/x3;->j:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 49
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Ld2/x3;->b:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v4, 0x400

    new-array v5, v4, [B

    .line 51
    :goto_4
    invoke-virtual {v0, v5, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_6

    .line 52
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5, v1, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 53
    :cond_6
    iget-object v1, p0, Ld2/x3;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 55
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<html><script>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</script></html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :goto_5
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catchall_0
    move-exception p2

    .line 57
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p2

    :cond_8
    const-string v0, "script\\s*src\\s*=\\s*\"mraid.js\""

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "script src=\"file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ld2/x3;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    iget-object v2, p0, Ld2/x3;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    :goto_7
    iget-object v0, p0, Ld2/x3;->M:Ld2/t0;

    .line 61
    iget-object v0, v0, Ld2/t0;->b:Ld2/f4;

    const-string v2, "info"

    .line 62
    invoke-virtual {v0, v2}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object v0

    const-string v2, "metadata"

    .line 63
    invoke-virtual {v0, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Ld2/e4;->k(Ljava/lang/String;)Ld2/f4;

    move-result-object v2

    const-string v3, "iab_filepath"

    .line 65
    invoke-virtual {v2, v3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {p0, v1, v2}, Ld2/x3;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "var\\s*ADC_DEVICE_INFO\\s*=\\s*null\\s*;"

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "var ADC_DEVICE_INFO = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 69
    iget-object v0, p0, Ld2/x3;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 70
    iget-object p2, p0, Ld2/x3;->d:Ljava/lang/String;

    goto :goto_8

    .line 71
    :cond_9
    iget-object p2, p0, Ld2/x3;->a:Ljava/lang/String;

    :goto_8
    move-object v4, p2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v6, "text/html"

    move-object v3, p0

    .line 72
    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :catch_0
    move-exception p2

    .line 73
    invoke-virtual {p0, p2}, Ld2/x3;->n(Ljava/lang/Exception;)Z

    goto :goto_a

    :catch_1
    move-exception p2

    .line 74
    invoke-virtual {p0, p2}, Ld2/x3;->n(Ljava/lang/Exception;)Z

    goto :goto_a

    :catch_2
    move-exception p2

    .line 75
    invoke-virtual {p0, p2}, Ld2/x3;->n(Ljava/lang/Exception;)Z

    goto :goto_a

    .line 76
    :cond_a
    iget-object p2, p0, Ld2/x3;->a:Ljava/lang/String;

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "file"

    if-nez p2, :cond_c

    iget-object p2, p0, Ld2/x3;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    goto :goto_9

    .line 77
    :cond_b
    iget-object v4, p0, Ld2/x3;->d:Ljava/lang/String;

    iget-object v5, p0, Ld2/x3;->a:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v6, "text/html"

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 78
    :cond_c
    :goto_9
    iget-object p2, p0, Ld2/x3;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_d

    iget-object p2, p0, Ld2/x3;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 79
    iget-object v1, p0, Ld2/x3;->a:Ljava/lang/String;

    const-string p2, "<html><script src=\""

    invoke-static {p2}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Ld2/x3;->a:Ljava/lang/String;

    const-string v2, "\"></script></html>"

    invoke-static {p2, v0, v2}, Landroid/support/v4/media/b;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, "text/html"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 80
    :cond_d
    iget-object p2, p0, Ld2/x3;->a:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_a
    if-nez p1, :cond_e

    .line 81
    invoke-virtual {p0}, Ld2/x3;->t()V

    .line 82
    invoke-virtual {p0}, Ld2/x3;->z()V

    :cond_e
    if-nez p1, :cond_f

    .line 83
    iget-boolean p1, p0, Ld2/x3;->y:Z

    if-eqz p1, :cond_11

    .line 84
    :cond_f
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p1

    invoke-virtual {p1}, Ld2/f1;->q()Ld2/u0;

    move-result-object p1

    .line 85
    iget-object p2, p1, Ld2/u0;->a:Ljava/util/ArrayList;

    monitor-enter p2

    .line 86
    :try_start_5
    iget v0, p0, Ld2/x3;->v:I

    if-lez v0, :cond_10

    goto :goto_b

    .line 87
    :cond_10
    iget v0, p0, Ld2/x3;->u:I

    .line 88
    :goto_b
    iget-object v1, p1, Ld2/u0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, p1, Ld2/u0;->b:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p1}, Ld2/u0;->i()V

    .line 91
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 92
    :cond_11
    iget-object p1, p0, Ld2/x3;->c:Ljava/lang/String;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 93
    iget-object p1, p0, Ld2/x3;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ld2/x3;->r(Ljava/lang/String;)V

    :cond_12
    return-void

    :catchall_2
    move-exception p1

    .line 94
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method public final n(Ljava/lang/Exception;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " during metadata injection w/ metadata = "

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object p1, p0, Ld2/x3;->J:Ld2/f4;

    const-string v1, "metadata"

    .line 6
    invoke-virtual {p1, v1}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->p()Ld2/h0;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v1, p1, v2}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 11
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p1

    invoke-virtual {p1}, Ld2/f1;->l()Ld2/k0;

    move-result-object p1

    .line 12
    iget-object p1, p1, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    iget-object v0, p0, Ld2/x3;->J:Ld2/f4;

    const-string v2, "ad_session_id"

    .line 14
    invoke-virtual {v0, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld2/q;

    if-nez p1, :cond_0

    return v1

    .line 16
    :cond_0
    invoke-virtual {p1}, Ld2/q;->c()Z

    move-result p1

    return p1
.end method

.method public final o(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " during metadata injection w/ metadata = "

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object p1, p0, Ld2/x3;->J:Ld2/f4;

    const-string v1, "metadata"

    .line 6
    invoke-virtual {p1, v1}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->p()Ld2/h0;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v1, p1, v2}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 11
    new-instance p1, Ld2/f4;

    invoke-direct {p1}, Ld2/f4;-><init>()V

    .line 12
    iget-object v0, p0, Ld2/x3;->e:Ljava/lang/String;

    const-string v1, "id"

    invoke-static {p1, v1, v0}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 13
    new-instance v0, Ld2/t0;

    iget-object v1, p0, Ld2/x3;->L:Ld2/j0;

    .line 14
    iget v1, v1, Ld2/j0;->k:I

    const-string v2, "AdSession.on_error"

    .line 15
    invoke-direct {v0, v2, v1, p1}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v0}, Ld2/t0;->b()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Ld2/x3;->w()Ld2/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v2, v0, Ld2/j;->n:Z

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ld2/f4;

    invoke-direct {v2}, Ld2/f4;-><init>()V

    .line 5
    iget-object v3, p0, Ld2/x3;->e:Ljava/lang/String;

    const-string v4, "ad_session_id"

    invoke-static {v2, v4, v3}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    new-instance v3, Ld2/t0;

    const-string v4, "WebView.on_first_click"

    invoke-direct {v3, v4, v1, v2}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v3}, Ld2/t0;->b()V

    .line 7
    invoke-virtual {v0, v1}, Ld2/j;->setUserInteraction(Z)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Ld2/x3;->y()Ld2/q;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    iput-boolean v1, v0, Ld2/q;->m:Z

    .line 10
    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final q(Ld2/f4;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ld2/x3;->y:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Ld2/x3;->O:Ld2/x3$k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget-object p1, p1, Ld2/f4;->a:Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    iget-object p1, p0, Ld2/x3;->O:Ld2/x3$k;

    .line 9
    iget-object p1, p1, Ld2/x3$k;->a:[Ljava/lang/Object;

    aget-object p1, p1, v1

    check-cast p1, Landroid/webkit/WebMessagePort;

    .line 10
    new-instance v1, Landroid/webkit/WebMessage;

    .line 11
    monitor-enter v0

    .line 12
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-direct {v1, v2}, Landroid/webkit/WebMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebMessagePort;->postMessage(Landroid/webkit/WebMessage;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 14
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 15
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_0
    const-string p1, "Sending message before event messaging is initialized"

    const/4 v0, 0x1

    .line 16
    invoke-static {v1, v0, p1, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ld2/x3;->C:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "Ignoring call to execute_js as WebView has been destroyed."

    .line 2
    invoke-static {p1}, Landroidx/recyclerview/widget/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v2, 0x1

    .line 3
    invoke-static {v1, v0, p1, v2}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Device reporting incorrect OS version, evaluateJavascript "

    const-string v0, "is not available. Disabling AdColony."

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->p()Ld2/h0;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1, v1, p1, v1}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 8
    invoke-static {}, Ld2/b;->i()Z

    :goto_0
    return-void
.end method

.method public s(Ld2/t0;)Z
    .locals 2

    .line 1
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v0, "id"

    .line 2
    invoke-static {p1, v0}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Ld2/x3;->l:I

    if-ne v0, v1, :cond_0

    const-string v0, "container_id"

    .line 3
    invoke-static {p1, v0}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Ld2/x3;->L:Ld2/j0;

    .line 4
    iget v1, v1, Ld2/j0;->j:I

    if-ne v0, v1, :cond_0

    const-string v0, "ad_session_id"

    .line 5
    invoke-virtual {p1, v0}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Ld2/x3;->L:Ld2/j0;

    .line 7
    iget-object v0, v0, Ld2/j0;->l:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public t()V
    .locals 6

    .line 1
    iget-object v0, p0, Ld2/x3;->L:Ld2/j0;

    .line 2
    iget-object v0, v0, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 3
    new-instance v1, Ld2/x3$b;

    invoke-direct {v1, p0}, Ld2/x3$b;-><init>(Ld2/x3;)V

    const-string v2, "WebView.set_visible"

    invoke-static {v2, v1}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Ld2/x3;->L:Ld2/j0;

    .line 5
    iget-object v0, v0, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 6
    new-instance v1, Ld2/x3$c;

    invoke-direct {v1, p0}, Ld2/x3$c;-><init>(Ld2/x3;)V

    const-string v3, "WebView.set_bounds"

    invoke-static {v3, v1}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Ld2/x3;->L:Ld2/j0;

    .line 8
    iget-object v0, v0, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 9
    new-instance v1, Ld2/x3$d;

    invoke-direct {v1, p0}, Ld2/x3$d;-><init>(Ld2/x3;)V

    const-string v4, "WebView.execute_js"

    invoke-static {v4, v1}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Ld2/x3;->L:Ld2/j0;

    .line 11
    iget-object v0, v0, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 12
    new-instance v1, Ld2/x3$e;

    invoke-direct {v1, p0}, Ld2/x3$e;-><init>(Ld2/x3;)V

    const-string v5, "WebView.set_transparent"

    invoke-static {v5, v1}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Ld2/x3;->L:Ld2/j0;

    .line 14
    iget-object v0, v0, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Ld2/x3;->L:Ld2/j0;

    .line 17
    iget-object v0, v0, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Ld2/x3;->L:Ld2/j0;

    .line 20
    iget-object v0, v0, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Ld2/x3;->L:Ld2/j0;

    .line 23
    iget-object v0, v0, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public u()V
    .locals 4

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->l()Ld2/k0;

    move-result-object v0

    iget-object v1, p0, Ld2/x3;->e:Ljava/lang/String;

    iget-object v2, p0, Ld2/x3;->L:Ld2/j0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v3, Ld2/s0;

    invoke-direct {v3, v0, v1, p0, v2}, Ld2/s0;-><init>(Ld2/k0;Ljava/lang/String;Ld2/x3;Ld2/j0;)V

    invoke-static {v3}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->l()Ld2/k0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ld2/x3;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/q;

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "unknown"

    goto :goto_1

    .line 5
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v2, v0, Ld2/q;->h:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, ""

    .line 7
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v0, v0, Ld2/q;->i:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final w()Ld2/j;
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/x3;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->l()Ld2/k0;

    move-result-object v0

    .line 3
    iget-object v0, v0, Ld2/k0;->f:Ljava/util/Map;

    .line 4
    iget-object v1, p0, Ld2/x3;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/j;

    :goto_0
    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ld2/x3;->y()Ld2/q;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ld2/x3;->y()Ld2/q;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ld2/x3;->y()Ld2/q;

    move-result-object v0

    .line 4
    iget-object v0, v0, Ld2/q;->j:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6
    :cond_2
    invoke-virtual {p0}, Ld2/x3;->w()Ld2/j;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {p0}, Ld2/x3;->w()Ld2/j;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p0}, Ld2/x3;->w()Ld2/j;

    move-result-object v0

    invoke-virtual {v0}, Ld2/j;->getClickOverride()Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public final y()Ld2/q;
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/x3;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->l()Ld2/k0;

    move-result-object v0

    .line 3
    iget-object v0, v0, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    iget-object v1, p0, Ld2/x3;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/q;

    :goto_0
    return-object v0
.end method

.method public z()V
    .locals 4

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Ld2/x3;->q:I

    iget v2, p0, Ld2/x3;->s:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3
    iget v1, p0, Ld2/x3;->m:I

    iget v2, p0, Ld2/x3;->o:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 4
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 5
    iget-object v1, p0, Ld2/x3;->L:Ld2/j0;

    invoke-virtual {v1, p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v0, p0, Ld2/x3;->h:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld2/x3;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Ld2/x3;->L:Ld2/j0;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ld2/x3;->G:Z

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, -0x1

    .line 10
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 12
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Ld2/x3;->N:Landroid/widget/ImageView;

    .line 13
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Ld2/x3;->h:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 14
    iget-object v0, p0, Ld2/x3;->N:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object v0, p0, Ld2/x3;->N:Landroid/widget/ImageView;

    new-instance v1, Ld2/b4;

    invoke-direct {v1, p0}, Ld2/b4;-><init>(Ld2/x3;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-virtual {p0}, Ld2/x3;->f()V

    .line 17
    iget-object v0, p0, Ld2/x3;->N:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
