.class final synthetic Lcom/google/android/gms/internal/ads/eh1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/fh1;

.field private final b:Lcom/google/android/gms/internal/ads/r03;

.field private final c:Lcom/google/android/gms/internal/ads/r03;

.field private final d:Lcom/google/android/gms/internal/ads/r03;

.field private final e:Lcom/google/android/gms/internal/ads/r03;

.field private final f:Lcom/google/android/gms/internal/ads/r03;

.field private final g:Lorg/json/JSONObject;

.field private final h:Lcom/google/android/gms/internal/ads/r03;

.field private final i:Lcom/google/android/gms/internal/ads/r03;

.field private final j:Lcom/google/android/gms/internal/ads/r03;

.field private final k:Lcom/google/android/gms/internal/ads/r03;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/fh1;Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/r03;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/r03;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eh1;->a:Lcom/google/android/gms/internal/ads/fh1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/eh1;->b:Lcom/google/android/gms/internal/ads/r03;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/eh1;->c:Lcom/google/android/gms/internal/ads/r03;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/eh1;->d:Lcom/google/android/gms/internal/ads/r03;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/eh1;->e:Lcom/google/android/gms/internal/ads/r03;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/eh1;->f:Lcom/google/android/gms/internal/ads/r03;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/eh1;->g:Lorg/json/JSONObject;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/eh1;->h:Lcom/google/android/gms/internal/ads/r03;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/eh1;->i:Lcom/google/android/gms/internal/ads/r03;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/eh1;->j:Lcom/google/android/gms/internal/ads/r03;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/eh1;->k:Lcom/google/android/gms/internal/ads/r03;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eh1;->b:Lcom/google/android/gms/internal/ads/r03;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eh1;->c:Lcom/google/android/gms/internal/ads/r03;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eh1;->d:Lcom/google/android/gms/internal/ads/r03;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eh1;->e:Lcom/google/android/gms/internal/ads/r03;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/eh1;->f:Lcom/google/android/gms/internal/ads/r03;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/eh1;->g:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eh1;->h:Lcom/google/android/gms/internal/ads/r03;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/eh1;->i:Lcom/google/android/gms/internal/ads/r03;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/eh1;->j:Lcom/google/android/gms/internal/ads/r03;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/eh1;->k:Lcom/google/android/gms/internal/ads/r03;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/re1;

    .line 2
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/re1;->L(Ljava/util/List;)V

    .line 3
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/gz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/re1;->R(Lcom/google/android/gms/internal/ads/gz;)V

    .line 4
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/gz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/re1;->S(Lcom/google/android/gms/internal/ads/gz;)V

    .line 5
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/yy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/re1;->K(Lcom/google/android/gms/internal/ads/yy;)V

    .line 6
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/th1;->j(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/re1;->M(Ljava/util/List;)V

    .line 7
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/th1;->i(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/xu;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/re1;->N(Lcom/google/android/gms/internal/ads/xu;)V

    .line 9
    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/wn0;

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/re1;->U(Lcom/google/android/gms/internal/ads/wn0;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/wn0;->D()Landroid/view/View;

    move-result-object v2

    .line 11
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/re1;->O(Landroid/view/View;)V

    .line 12
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/wn0;->f()Lcom/google/android/gms/internal/ads/ro0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/re1;->J(Lcom/google/android/gms/internal/ads/ju;)V

    .line 13
    :cond_0
    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/wn0;

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/re1;->V(Lcom/google/android/gms/internal/ads/wn0;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/wn0;->D()Landroid/view/View;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/re1;->P(Landroid/view/View;)V

    .line 16
    :cond_1
    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/wn0;

    if-eqz v1, :cond_2

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/re1;->W(Lcom/google/android/gms/internal/ads/wn0;)V

    .line 18
    :cond_2
    invoke-interface {v9}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/xh1;

    .line 19
    iget v3, v2, Lcom/google/android/gms/internal/ads/xh1;->a:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    .line 20
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/xh1;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/xh1;->d:Lcom/google/android/gms/internal/ads/ry;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/re1;->Z(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ry;)V

    goto :goto_0

    .line 21
    :cond_3
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/xh1;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/xh1;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/re1;->Y(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-object v0
.end method
