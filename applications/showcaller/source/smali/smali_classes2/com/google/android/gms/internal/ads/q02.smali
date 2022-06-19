.class public final Lcom/google/android/gms/internal/ads/q02;
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
        "Lcom/google/android/gms/internal/ads/r90;",
        "Lcom/google/android/gms/internal/ads/my1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/kk1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/kk1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/q02;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/q02;->b:Lcom/google/android/gms/internal/ads/kk1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/tw1;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/rj2;",
            "Lcom/google/android/gms/internal/ads/ej2;",
            "Lcom/google/android/gms/internal/ads/tw1<",
            "Lcom/google/android/gms/internal/ads/r90;",
            "Lcom/google/android/gms/internal/ads/my1;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/tw1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/r90;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/ej2;->V:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/r90;->B0(Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/rj2;->a:Lcom/google/android/gms/internal/ads/oj2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/oj2;->a:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xj2;->o:Lcom/google/android/gms/internal/ads/nj2;

    iget v0, v0, Lcom/google/android/gms/internal/ads/nj2;->a:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/tw1;->b:Ljava/lang/Object;

    .line 3
    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/r90;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/ej2;->Q:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ej2;->v:Lorg/json/JSONObject;

    .line 4
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/rj2;->a:Lcom/google/android/gms/internal/ads/oj2;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/oj2;->a:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/xj2;->d:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/q02;->a:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/n02;

    invoke-direct {v8, p0, p3, v2}, Lcom/google/android/gms/internal/ads/n02;-><init>(Lcom/google/android/gms/internal/ads/q02;Lcom/google/android/gms/internal/ads/tw1;Lcom/google/android/gms/internal/ads/p02;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/tw1;->c:Lcom/google/android/gms/internal/ads/j41;

    move-object v9, p1

    check-cast v9, Lcom/google/android/gms/internal/ads/y70;

    .line 6
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/r90;->f2(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/o90;Lcom/google/android/gms/internal/ads/y70;)V

    return-void

    :cond_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/tw1;->b:Ljava/lang/Object;

    .line 7
    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/r90;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/ej2;->Q:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ej2;->v:Lorg/json/JSONObject;

    .line 8
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/rj2;->a:Lcom/google/android/gms/internal/ads/oj2;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/oj2;->a:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/xj2;->d:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/q02;->a:Landroid/content/Context;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/n02;

    invoke-direct {v8, p0, p3, v2}, Lcom/google/android/gms/internal/ads/n02;-><init>(Lcom/google/android/gms/internal/ads/q02;Lcom/google/android/gms/internal/ads/tw1;Lcom/google/android/gms/internal/ads/p02;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/tw1;->c:Lcom/google/android/gms/internal/ads/j41;

    move-object v9, p1

    check-cast v9, Lcom/google/android/gms/internal/ads/y70;

    .line 10
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/r90;->q5(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/o90;Lcom/google/android/gms/internal/ads/y70;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Remote exception loading a rewarded RTB ad"

    .line 11
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/o1;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic b(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/tw1;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/wy1;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/tw1;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/r90;

    const/4 v2, 0x1

    invoke-direct {v0, p2, v1, v2}, Lcom/google/android/gms/internal/ads/wy1;-><init>(Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/r90;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/q02;->b:Lcom/google/android/gms/internal/ads/kk1;

    new-instance v2, Lcom/google/android/gms/internal/ads/mz0;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/tw1;->a:Ljava/lang/String;

    .line 2
    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/mz0;-><init>(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/hk1;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/hk1;-><init>(Lcom/google/android/gms/internal/ads/qc1;)V

    .line 3
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/kk1;->b(Lcom/google/android/gms/internal/ads/mz0;Lcom/google/android/gms/internal/ads/hk1;)Lcom/google/android/gms/internal/ads/gk1;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yy0;->d()Lcom/google/android/gms/internal/ads/q31;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/wy1;->b(Lcom/google/android/gms/internal/ads/q31;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/tw1;->c:Lcom/google/android/gms/internal/ads/j41;

    .line 5
    check-cast p2, Lcom/google/android/gms/internal/ads/my1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/gk1;->n()Lcom/google/android/gms/internal/ads/m12;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/my1;->F6(Lcom/google/android/gms/internal/ads/y70;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/gk1;->h()Lcom/google/android/gms/internal/ads/fk1;

    move-result-object p1

    return-object p1
.end method
