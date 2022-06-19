.class final synthetic Lcom/google/android/gms/internal/ads/fl0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/rz1;

.field private final b:Lcom/google/android/gms/internal/ads/rz1;

.field private final c:Lcom/google/android/gms/internal/ads/rz1;

.field private final d:Lcom/google/android/gms/internal/ads/rz1;

.field private final e:Lcom/google/android/gms/internal/ads/rz1;

.field private final f:Lorg/json/JSONObject;

.field private final g:Lcom/google/android/gms/internal/ads/rz1;

.field private final h:Lcom/google/android/gms/internal/ads/rz1;

.field private final i:Lcom/google/android/gms/internal/ads/rz1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/gl0;Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/rz1;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/rz1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fl0;->a:Lcom/google/android/gms/internal/ads/rz1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/fl0;->b:Lcom/google/android/gms/internal/ads/rz1;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/fl0;->c:Lcom/google/android/gms/internal/ads/rz1;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/fl0;->d:Lcom/google/android/gms/internal/ads/rz1;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/fl0;->e:Lcom/google/android/gms/internal/ads/rz1;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/fl0;->f:Lorg/json/JSONObject;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/fl0;->g:Lcom/google/android/gms/internal/ads/rz1;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/fl0;->h:Lcom/google/android/gms/internal/ads/rz1;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/fl0;->i:Lcom/google/android/gms/internal/ads/rz1;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fl0;->a:Lcom/google/android/gms/internal/ads/rz1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fl0;->b:Lcom/google/android/gms/internal/ads/rz1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fl0;->c:Lcom/google/android/gms/internal/ads/rz1;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fl0;->d:Lcom/google/android/gms/internal/ads/rz1;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/fl0;->e:Lcom/google/android/gms/internal/ads/rz1;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/fl0;->f:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/fl0;->g:Lcom/google/android/gms/internal/ads/rz1;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/fl0;->h:Lcom/google/android/gms/internal/ads/rz1;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/fl0;->i:Lcom/google/android/gms/internal/ads/rz1;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/si0;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/si0;->H(Ljava/util/List;)V

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/g6;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/si0;->M(Lcom/google/android/gms/internal/ads/g6;)V

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/g6;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/si0;->N(Lcom/google/android/gms/internal/ads/g6;)V

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/z5;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/si0;->G(Lcom/google/android/gms/internal/ads/z5;)V

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/ql0;->h(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/si0;->I(Ljava/util/List;)V

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/ql0;->g(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/b2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/si0;->J(Lcom/google/android/gms/internal/ads/b2;)V

    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/jt;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/si0;->P(Lcom/google/android/gms/internal/ads/jt;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/jt;->G()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/si0;->K(Landroid/view/View;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/jt;->e()Lcom/google/android/gms/internal/ads/eu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/si0;->F(Lcom/google/android/gms/internal/ads/m1;)V

    :cond_0
    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/jt;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/si0;->Q(Lcom/google/android/gms/internal/ads/jt;)V

    :cond_1
    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/ul0;

    iget v3, v2, Lcom/google/android/gms/internal/ads/ul0;->a:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/ul0;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ul0;->d:Lcom/google/android/gms/internal/ads/r5;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/si0;->T(Ljava/lang/String;Lcom/google/android/gms/internal/ads/r5;)V

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/ul0;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ul0;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/si0;->S(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method
