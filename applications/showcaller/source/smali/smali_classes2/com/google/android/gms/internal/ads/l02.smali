.class public final Lcom/google/android/gms/internal/ads/l02;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/xw1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/xw1<",
        "Lcom/google/android/gms/internal/ads/fk1;",
        "Lcom/google/android/gms/internal/ads/ok2;",
        "Lcom/google/android/gms/internal/ads/my1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/android/gms/internal/ads/kk1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/kk1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l02;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/l02;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/l02;->c:Lcom/google/android/gms/internal/ads/kk1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/tw1;)V
    .locals 3
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
    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/rj2;->a:Lcom/google/android/gms/internal/ads/oj2;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/oj2;->a:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/xj2;->o:Lcom/google/android/gms/internal/ads/nj2;

    iget v0, v0, Lcom/google/android/gms/internal/ads/nj2;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/tw1;->b:Ljava/lang/Object;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/ok2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/l02;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/xj2;->d:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ej2;->v:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/tw1;->c:Lcom/google/android/gms/internal/ads/j41;

    check-cast v2, Lcom/google/android/gms/internal/ads/y70;

    .line 4
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/ok2;->A(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/y70;)V

    return-void

    :cond_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/tw1;->b:Ljava/lang/Object;

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/ads/ok2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/l02;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/xj2;->d:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ej2;->v:Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/tw1;->c:Lcom/google/android/gms/internal/ads/j41;

    check-cast v2, Lcom/google/android/gms/internal/ads/y70;

    .line 7
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/ok2;->y(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/y70;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/tw1;->a:Ljava/lang/String;

    .line 8
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Fail to load ad from adapter "

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ei0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic b(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/tw1;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l02;->c:Lcom/google/android/gms/internal/ads/kk1;

    new-instance v1, Lcom/google/android/gms/internal/ads/mz0;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/tw1;->a:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/mz0;-><init>(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/hk1;

    new-instance p2, Lcom/google/android/gms/internal/ads/k02;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/k02;-><init>(Lcom/google/android/gms/internal/ads/tw1;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/hk1;-><init>(Lcom/google/android/gms/internal/ads/qc1;)V

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/kk1;->b(Lcom/google/android/gms/internal/ads/mz0;Lcom/google/android/gms/internal/ads/hk1;)Lcom/google/android/gms/internal/ads/gk1;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yy0;->a()Lcom/google/android/gms/internal/ads/y31;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/ju0;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/tw1;->b:Ljava/lang/Object;

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/ads/ok2;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ju0;-><init>(Lcom/google/android/gms/internal/ads/ok2;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/l02;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/m81;->D0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/tw1;->c:Lcom/google/android/gms/internal/ads/j41;

    .line 5
    check-cast p2, Lcom/google/android/gms/internal/ads/my1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/gk1;->m()Lcom/google/android/gms/internal/ads/s02;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/my1;->F6(Lcom/google/android/gms/internal/ads/y70;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/gk1;->h()Lcom/google/android/gms/internal/ads/fk1;

    move-result-object p1

    return-object p1
.end method
