.class final Lcom/google/android/gms/internal/ads/b12;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qc1;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/bl1;

.field private final c:Lcom/google/android/gms/internal/ads/xj2;

.field private final d:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final e:Lcom/google/android/gms/internal/ads/ej2;

.field private final f:Lcom/google/android/gms/internal/ads/r03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/gk1;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/ads/wn0;

.field private final h:Lcom/google/android/gms/internal/ads/q20;

.field private final i:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bl1;Lcom/google/android/gms/internal/ads/xj2;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/q20;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/bl1;",
            "Lcom/google/android/gms/internal/ads/xj2;",
            "Lcom/google/android/gms/internal/ads/zzcgz;",
            "Lcom/google/android/gms/internal/ads/ej2;",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/gk1;",
            ">;",
            "Lcom/google/android/gms/internal/ads/wn0;",
            "Lcom/google/android/gms/internal/ads/q20;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/b12;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/b12;->b:Lcom/google/android/gms/internal/ads/bl1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/b12;->c:Lcom/google/android/gms/internal/ads/xj2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/b12;->d:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/b12;->e:Lcom/google/android/gms/internal/ads/ej2;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/b12;->f:Lcom/google/android/gms/internal/ads/r03;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/b12;->g:Lcom/google/android/gms/internal/ads/wn0;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/b12;->h:Lcom/google/android/gms/internal/ads/q20;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/b12;->i:Z

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/l31;)V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/b12;->f:Lcom/google/android/gms/internal/ads/r03;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->r(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/gk1;

    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/b12;->e:Lcom/google/android/gms/internal/ads/ej2;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/b12;->g:Lcom/google/android/gms/internal/ads/wn0;

    .line 2
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/wn0;->B0()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/b12;->g:Lcom/google/android/gms/internal/ads/wn0;

    :goto_0
    move-object v11, v2

    goto :goto_2

    .line 3
    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/ads/kw;->y0:Lcom/google/android/gms/internal/ads/cw;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/b12;->g:Lcom/google/android/gms/internal/ads/wn0;

    goto :goto_0

    :cond_1
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/b12;->b:Lcom/google/android/gms/internal/ads/bl1;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/b12;->c:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/xj2;->e:Lcom/google/android/gms/internal/ads/zzbdl;

    const/4 v6, 0x0

    .line 6
    invoke-virtual {v3, v5, v6, v6}, Lcom/google/android/gms/internal/ads/bl1;->b(Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;)Lcom/google/android/gms/internal/ads/wn0;

    move-result-object v3

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/gk1;->k()Lcom/google/android/gms/internal/ads/za1;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/e30;->b(Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/d30;)V

    new-instance v5, Lcom/google/android/gms/internal/ads/el1;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/el1;-><init>()V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/b12;->a:Landroid/content/Context;

    .line 8
    move-object v8, v3

    check-cast v8, Landroid/view/View;

    .line 9
    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/ads/el1;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/gk1;->l()Lcom/google/android/gms/internal/ads/al1;

    move-result-object v7

    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/b12;->i:Z

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/b12;->h:Lcom/google/android/gms/internal/ads/q20;

    goto :goto_1

    :cond_2
    move-object v8, v6

    .line 11
    :goto_1
    invoke-virtual {v7, v3, v4, v8}, Lcom/google/android/gms/internal/ads/al1;->i(Lcom/google/android/gms/internal/ads/wn0;ZLcom/google/android/gms/internal/ads/q20;)V

    .line 12
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/z02;

    invoke-direct {v8, v5, v3}, Lcom/google/android/gms/internal/ads/z02;-><init>(Lcom/google/android/gms/internal/ads/el1;Lcom/google/android/gms/internal/ads/wn0;)V

    .line 13
    invoke-interface {v7, v8}, Lcom/google/android/gms/internal/ads/jp0;->f0(Lcom/google/android/gms/internal/ads/hp0;)V

    .line 14
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object v5

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/a12;->a(Lcom/google/android/gms/internal/ads/wn0;)Lcom/google/android/gms/internal/ads/ip0;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/google/android/gms/internal/ads/jp0;->V(Lcom/google/android/gms/internal/ads/ip0;)V

    .line 15
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ej2;->s:Lcom/google/android/gms/internal/ads/kj2;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/kj2;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/kj2;->a:Ljava/lang/String;

    invoke-interface {v3, v5, v2, v6}, Lcom/google/android/gms/internal/ads/wn0;->b1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcmw; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v3

    .line 16
    :goto_2
    invoke-interface {v11, v4}, Lcom/google/android/gms/internal/ads/wn0;->Y0(Z)V

    .line 17
    new-instance v2, Lcom/google/android/gms/ads/internal/zzj;

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/b12;->i:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/b12;->h:Lcom/google/android/gms/internal/ads/q20;

    .line 18
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/q20;->c(Z)Z

    move-result v3

    move v13, v3

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    .line 19
    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/b12;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/c2;->l(Landroid/content/Context;)Z

    move-result v14

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/b12;->i:Z

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/b12;->h:Lcom/google/android/gms/internal/ads/q20;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/q20;->d()Z

    move-result v3

    move v15, v3

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    :goto_4
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/b12;->i:Z

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/b12;->h:Lcom/google/android/gms/internal/ads/q20;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/q20;->e()F

    move-result v3

    move/from16 v16, v3

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    const/16 v16, 0x0

    :goto_5
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/b12;->e:Lcom/google/android/gms/internal/ads/ej2;

    const/16 v17, -0x1

    .line 20
    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/ej2;->K:Z

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/ej2;->L:Z

    move-object v12, v2

    move/from16 v18, p1

    move/from16 v19, v5

    move/from16 v20, v3

    invoke-direct/range {v12 .. v20}, Lcom/google/android/gms/ads/internal/zzj;-><init>(ZZZFIZZZ)V

    if-eqz p3, :cond_6

    .line 21
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/l31;->a()V

    .line 22
    :cond_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->c()Lcom/google/android/gms/ads/internal/overlay/m;

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/gk1;->j()Lcom/google/android/gms/internal/ads/gc1;

    move-result-object v9

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/b12;->e:Lcom/google/android/gms/internal/ads/ej2;

    iget v12, v0, Lcom/google/android/gms/internal/ads/ej2;->M:I

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/b12;->d:Lcom/google/android/gms/internal/ads/zzcgz;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/ej2;->B:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ej2;->s:Lcom/google/android/gms/internal/ads/kj2;

    const/4 v8, 0x0

    const/4 v10, 0x0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/kj2;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kj2;->a:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/b12;->c:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/xj2;->f:Ljava/lang/String;

    move-object v7, v3

    move-object v15, v2

    move-object/from16 v16, v5

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    move-object/from16 v19, p3

    invoke-direct/range {v7 .. v19}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/kq;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/ads/internal/overlay/u;Lcom/google/android/gms/internal/ads/wn0;ILcom/google/android/gms/internal/ads/zzcgz;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/l31;)V

    move-object/from16 v0, p2

    .line 24
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/ads/internal/overlay/m;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, ""

    .line 25
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
