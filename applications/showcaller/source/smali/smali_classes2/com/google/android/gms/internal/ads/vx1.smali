.class public final Lcom/google/android/gms/internal/ads/vx1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/xw1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/xw1<",
        "Lcom/google/android/gms/internal/ads/xw0;",
        "Lcom/google/android/gms/internal/ads/ok2;",
        "Lcom/google/android/gms/internal/ads/my1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/vx0;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/vx0;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vx1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vx1;->b:Lcom/google/android/gms/internal/ads/vx0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vx1;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/tw1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/rj2;",
            "Lcom/google/android/gms/internal/ads/ej2;",
            "Lcom/google/android/gms/internal/ads/tw1<",
            "Lcom/google/android/gms/internal/ads/ok2;",
            "Lcom/google/android/gms/internal/ads/my1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/rj2;->a:Lcom/google/android/gms/internal/ads/oj2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/oj2;->a:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xj2;->e:Lcom/google/android/gms/internal/ads/zzbdl;

    .line 2
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbdl;->q:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vx1;->a:Landroid/content/Context;

    .line 3
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzbdl;->h:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbdl;->e:I

    .line 4
    invoke-static {v3, v0}, Lcom/google/android/gms/ads/a0;->b(II)Lcom/google/android/gms/ads/f;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/f;)V

    :goto_0
    move-object v4, v1

    goto :goto_1

    .line 5
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->B5:Lcom/google/android/gms/internal/ads/cw;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p2, Lcom/google/android/gms/internal/ads/ej2;->d0:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vx1;->a:Landroid/content/Context;

    .line 8
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzbdl;->h:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbdl;->e:I

    .line 9
    invoke-static {v3, v0}, Lcom/google/android/gms/ads/a0;->c(II)Lcom/google/android/gms/ads/f;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/f;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vx1;->a:Landroid/content/Context;

    .line 10
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/ej2;->u:Ljava/util/List;

    .line 11
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/bk2;->b(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v1

    goto :goto_0

    .line 12
    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->B5:Lcom/google/android/gms/internal/ads/cw;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/ej2;->d0:Z

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/tw1;->b:Ljava/lang/Object;

    .line 15
    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/ok2;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vx1;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/rj2;->a:Lcom/google/android/gms/internal/ads/oj2;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/oj2;->a:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/xj2;->d:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/ej2;->v:Lorg/json/JSONObject;

    .line 16
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/ej2;->s:Lcom/google/android/gms/internal/ads/kj2;

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/x0;->l(Lcom/google/android/gms/internal/ads/kj2;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/tw1;->c:Lcom/google/android/gms/internal/ads/j41;

    move-object v8, p1

    check-cast v8, Lcom/google/android/gms/internal/ads/y70;

    .line 18
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/ok2;->e(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/y70;)V

    return-void

    :cond_2
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/tw1;->b:Ljava/lang/Object;

    .line 19
    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/ok2;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vx1;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/rj2;->a:Lcom/google/android/gms/internal/ads/oj2;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/oj2;->a:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/xj2;->d:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/ej2;->v:Lorg/json/JSONObject;

    .line 20
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/ej2;->s:Lcom/google/android/gms/internal/ads/kj2;

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/x0;->l(Lcom/google/android/gms/internal/ads/kj2;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/tw1;->c:Lcom/google/android/gms/internal/ads/j41;

    move-object v8, p1

    check-cast v8, Lcom/google/android/gms/internal/ads/y70;

    .line 22
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/ok2;->j(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/y70;)V

    return-void
.end method

.method public final bridge synthetic b(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/tw1;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->B5:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/ej2;->d0:Z

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/tw1;->b:Ljava/lang/Object;

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/ads/ok2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ok2;->f()Lcom/google/android/gms/internal/ads/b80;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/b80;->a()Lcom/google/android/gms/dynamic/a;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/b80;->d()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_3

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/ux1;

    invoke-direct {v3, p0, v2, p2}, Lcom/google/android/gms/internal/ads/ux1;-><init>(Lcom/google/android/gms/internal/ads/vx1;Landroid/view/View;Lcom/google/android/gms/internal/ads/ej2;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/qi0;->e:Lcom/google/android/gms/internal/ads/s03;

    .line 8
    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    .line 9
    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 10
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfaw;

    .line 11
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzfaw;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 12
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfaw;

    new-instance p2, Ljava/lang/Exception;

    const-string p3, "BannerAdapterWrapper interscrollerView should not be null"

    .line 13
    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzfaw;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p1

    .line 14
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfaw;

    .line 15
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzfaw;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    const-string p1, "getInterscrollerAd should not be null after loadInterscrollerAd loaded ad."

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfaw;

    new-instance p3, Ljava/lang/Exception;

    .line 17
    invoke-direct {p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzfaw;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 18
    :cond_2
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/tw1;->b:Ljava/lang/Object;

    .line 19
    check-cast v0, Lcom/google/android/gms/internal/ads/ok2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ok2;->d()Landroid/view/View;

    move-result-object v2

    .line 20
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vx1;->b:Lcom/google/android/gms/internal/ads/vx0;

    new-instance v3, Lcom/google/android/gms/internal/ads/mz0;

    iget-object v4, p3, Lcom/google/android/gms/internal/ads/tw1;->a:Ljava/lang/String;

    .line 21
    invoke-direct {v3, p1, p2, v4}, Lcom/google/android/gms/internal/ads/mz0;-><init>(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/ex0;

    iget-object v4, p3, Lcom/google/android/gms/internal/ads/tw1;->b:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/ok2;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/tx1;->a(Lcom/google/android/gms/internal/ads/ok2;)Lcom/google/android/gms/internal/ads/vy0;

    move-result-object v4

    .line 22
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ej2;->u:Ljava/util/List;

    const/4 v5, 0x0

    .line 23
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/hj2;

    invoke-direct {p1, v2, v1, v4, p2}, Lcom/google/android/gms/internal/ads/ex0;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/vy0;Lcom/google/android/gms/internal/ads/hj2;)V

    .line 24
    invoke-virtual {v0, v3, p1}, Lcom/google/android/gms/internal/ads/vx0;->d(Lcom/google/android/gms/internal/ads/mz0;Lcom/google/android/gms/internal/ads/ex0;)Lcom/google/android/gms/internal/ads/yw0;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yw0;->j()Lcom/google/android/gms/internal/ads/la1;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/la1;->S0(Landroid/view/View;)V

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yy0;->a()Lcom/google/android/gms/internal/ads/y31;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/ju0;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/tw1;->b:Ljava/lang/Object;

    .line 27
    check-cast v1, Lcom/google/android/gms/internal/ads/ok2;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ju0;-><init>(Lcom/google/android/gms/internal/ads/ok2;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vx1;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/m81;->D0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/tw1;->c:Lcom/google/android/gms/internal/ads/j41;

    .line 28
    check-cast p2, Lcom/google/android/gms/internal/ads/my1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yy0;->f()Lcom/google/android/gms/internal/ads/u12;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/my1;->F6(Lcom/google/android/gms/internal/ads/y70;)V

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yw0;->h()Lcom/google/android/gms/internal/ads/xw0;

    move-result-object p1

    return-object p1
.end method

.method final synthetic c(Landroid/view/View;Lcom/google/android/gms/internal/ads/ej2;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/vx1;->a:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzcwv;->a(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/internal/ads/ej2;)Lcom/google/android/gms/internal/ads/zzcwv;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method
