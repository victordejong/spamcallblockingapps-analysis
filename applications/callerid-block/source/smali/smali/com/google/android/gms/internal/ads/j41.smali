.class final Lcom/google/android/gms/internal/ads/j41;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/qg0;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/so0;

.field private final c:Lcom/google/android/gms/internal/ads/sl1;

.field private final d:Lcom/google/android/gms/internal/ads/zzbbq;

.field private final e:Lcom/google/android/gms/internal/ads/al1;

.field private final f:Lcom/google/android/gms/internal/ads/rz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Lcom/google/android/gms/internal/ads/vn0;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/ads/jt;

.field private final h:Lcom/google/android/gms/internal/ads/k9;

.field private final i:Z


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/so0;Lcom/google/android/gms/internal/ads/sl1;Lcom/google/android/gms/internal/ads/zzbbq;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/jt;Lcom/google/android/gms/internal/ads/k9;ZLcom/google/android/gms/internal/ads/g41;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/j41;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/j41;->b:Lcom/google/android/gms/internal/ads/so0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/j41;->c:Lcom/google/android/gms/internal/ads/sl1;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/j41;->d:Lcom/google/android/gms/internal/ads/zzbbq;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/j41;->e:Lcom/google/android/gms/internal/ads/al1;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/j41;->f:Lcom/google/android/gms/internal/ads/rz1;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/j41;->g:Lcom/google/android/gms/internal/ads/jt;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/j41;->h:Lcom/google/android/gms/internal/ads/k9;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/j41;->i:Z

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;)V
    .locals 21

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/j41;->f:Lcom/google/android/gms/internal/ads/rz1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kz1;->q(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/vn0;

    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/j41;->e:Lcom/google/android/gms/internal/ads/al1;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/j41;->g:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/jt;->L()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    :goto_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/j41;->g:Lcom/google/android/gms/internal/ads/jt;

    move-object v11, v2

    goto :goto_2

    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/ads/m3;->u0:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/j41;->b:Lcom/google/android/gms/internal/ads/so0;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/j41;->c:Lcom/google/android/gms/internal/ads/sl1;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/sl1;->e:Lcom/google/android/gms/internal/ads/zzyx;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v6}, Lcom/google/android/gms/internal/ads/so0;->a(Lcom/google/android/gms/internal/ads/zzyx;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/dl1;)Lcom/google/android/gms/internal/ads/jt;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vn0;->k()Lcom/google/android/gms/internal/ads/af0;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/x9;->b(Lcom/google/android/gms/internal/ads/jt;Lcom/google/android/gms/internal/ads/w9;)V

    new-instance v5, Lcom/google/android/gms/internal/ads/vo0;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/vo0;-><init>()V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/j41;->a:Landroid/content/Context;

    move-object v8, v3

    check-cast v8, Landroid/view/View;

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/ads/vo0;->a(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vn0;->l()Lcom/google/android/gms/internal/ads/ro0;

    move-result-object v7

    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/j41;->i:Z

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/j41;->h:Lcom/google/android/gms/internal/ads/k9;

    goto :goto_1

    :cond_2
    move-object v8, v6

    :goto_1
    invoke-virtual {v7, v3, v4, v8}, Lcom/google/android/gms/internal/ads/ro0;->i(Lcom/google/android/gms/internal/ads/jt;ZLcom/google/android/gms/internal/ads/k9;)V

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/jt;->b1()Lcom/google/android/gms/internal/ads/wu;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/h41;

    invoke-direct {v8, v5, v3}, Lcom/google/android/gms/internal/ads/h41;-><init>(Lcom/google/android/gms/internal/ads/vo0;Lcom/google/android/gms/internal/ads/jt;)V

    invoke-interface {v7, v8}, Lcom/google/android/gms/internal/ads/wu;->k0(Lcom/google/android/gms/internal/ads/uu;)V

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/jt;->b1()Lcom/google/android/gms/internal/ads/wu;

    move-result-object v5

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/i41;->a(Lcom/google/android/gms/internal/ads/jt;)Lcom/google/android/gms/internal/ads/vu;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/google/android/gms/internal/ads/wu;->U(Lcom/google/android/gms/internal/ads/vu;)V

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/al1;->r:Lcom/google/android/gms/internal/ads/el1;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/el1;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/el1;->a:Ljava/lang/String;

    invoke-interface {v3, v5, v2, v6}, Lcom/google/android/gms/internal/ads/jt;->W0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbgq; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v3

    :goto_2
    invoke-interface {v11, v4}, Lcom/google/android/gms/internal/ads/jt;->Q0(Z)V

    new-instance v2, Lcom/google/android/gms/ads/internal/zzj;

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/j41;->i:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/j41;->h:Lcom/google/android/gms/internal/ads/k9;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/k9;->c(Z)Z

    move-result v3

    move v13, v3

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/j41;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/l1;->k(Landroid/content/Context;)Z

    move-result v14

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/j41;->i:Z

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/j41;->h:Lcom/google/android/gms/internal/ads/k9;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/k9;->d()Z

    move-result v3

    move v15, v3

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    :goto_4
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/j41;->i:Z

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/j41;->h:Lcom/google/android/gms/internal/ads/k9;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/k9;->e()F

    move-result v3

    move/from16 v16, v3

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    const/16 v16, 0x0

    :goto_5
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/j41;->e:Lcom/google/android/gms/internal/ads/al1;

    const/16 v17, -0x1

    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/al1;->J:Z

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/al1;->K:Z

    move-object v12, v2

    move/from16 v18, p1

    move/from16 v19, v5

    move/from16 v20, v3

    invoke-direct/range {v12 .. v20}, Lcom/google/android/gms/ads/internal/zzj;-><init>(ZZZFIZZZ)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->c()Lcom/google/android/gms/ads/internal/overlay/o;

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vn0;->j()Lcom/google/android/gms/internal/ads/gg0;

    move-result-object v9

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/j41;->e:Lcom/google/android/gms/internal/ads/al1;

    iget v12, v0, Lcom/google/android/gms/internal/ads/al1;->L:I

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/j41;->d:Lcom/google/android/gms/internal/ads/zzbbq;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/al1;->A:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/al1;->r:Lcom/google/android/gms/internal/ads/el1;

    const/4 v8, 0x0

    const/4 v10, 0x0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/el1;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/el1;->a:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/j41;->c:Lcom/google/android/gms/internal/ads/sl1;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/sl1;->f:Ljava/lang/String;

    move-object v7, v3

    move-object v15, v2

    move-object/from16 v16, v5

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    invoke-direct/range {v7 .. v18}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/hz2;Lcom/google/android/gms/ads/internal/overlay/q;Lcom/google/android/gms/ads/internal/overlay/w;Lcom/google/android/gms/internal/ads/jt;ILcom/google/android/gms/internal/ads/zzbbq;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/ads/internal/overlay/o;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, ""

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
