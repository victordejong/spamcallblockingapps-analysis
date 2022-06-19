.class final Lcom/google/android/gms/internal/ads/k01;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/qg0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbbq;

.field private final b:Lcom/google/android/gms/internal/ads/rz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Lcom/google/android/gms/internal/ads/e10;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/al1;

.field private final d:Lcom/google/android/gms/internal/ads/jt;

.field private final e:Lcom/google/android/gms/internal/ads/sl1;

.field private final f:Lcom/google/android/gms/internal/ads/k9;

.field private final g:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbq;Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/jt;Lcom/google/android/gms/internal/ads/sl1;ZLcom/google/android/gms/internal/ads/k9;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbbq;",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Lcom/google/android/gms/internal/ads/e10;",
            ">;",
            "Lcom/google/android/gms/internal/ads/al1;",
            "Lcom/google/android/gms/internal/ads/jt;",
            "Lcom/google/android/gms/internal/ads/sl1;",
            "Z",
            "Lcom/google/android/gms/internal/ads/k9;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/k01;->a:Lcom/google/android/gms/internal/ads/zzbbq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/k01;->b:Lcom/google/android/gms/internal/ads/rz1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/k01;->c:Lcom/google/android/gms/internal/ads/al1;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/k01;->d:Lcom/google/android/gms/internal/ads/jt;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/k01;->e:Lcom/google/android/gms/internal/ads/sl1;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/k01;->g:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/k01;->f:Lcom/google/android/gms/internal/ads/k9;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/k01;->b:Lcom/google/android/gms/internal/ads/rz1;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/kz1;->q(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/e10;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/k01;->d:Lcom/google/android/gms/internal/ads/jt;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/jt;->Q0(Z)V

    new-instance v2, Lcom/google/android/gms/ads/internal/zzj;

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/k01;->g:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/k01;->f:Lcom/google/android/gms/internal/ads/k9;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/k9;->c(Z)Z

    move-result v4

    move v5, v4

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/k01;->g:Z

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/k01;->f:Lcom/google/android/gms/internal/ads/k9;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/k9;->d()Z

    move-result v4

    move v7, v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_1
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/k01;->g:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/k01;->f:Lcom/google/android/gms/internal/ads/k9;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/k9;->e()F

    move-result v4

    move v8, v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_2
    const/4 v6, 0x1

    const/4 v9, -0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/k01;->c:Lcom/google/android/gms/internal/ads/al1;

    iget-boolean v11, v4, Lcom/google/android/gms/internal/ads/al1;->J:Z

    const/4 v12, 0x0

    move-object v4, v2

    move/from16 v10, p1

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/ads/internal/zzj;-><init>(ZZZFIZZZ)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->c()Lcom/google/android/gms/ads/internal/overlay/o;

    new-instance v15, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/e10;->j()Lcom/google/android/gms/internal/ads/gg0;

    move-result-object v6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/k01;->d:Lcom/google/android/gms/internal/ads/jt;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/k01;->c:Lcom/google/android/gms/internal/ads/al1;

    iget v1, v1, Lcom/google/android/gms/internal/ads/al1;->L:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    :goto_3
    move v9, v1

    goto :goto_4

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/k01;->e:Lcom/google/android/gms/internal/ads/sl1;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/sl1;->j:Lcom/google/android/gms/internal/ads/zzzd;

    if-eqz v1, :cond_5

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzzd;->b:I

    if-ne v1, v3, :cond_4

    const/4 v1, 0x7

    const/4 v9, 0x7

    goto :goto_4

    :cond_4
    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    const/4 v1, 0x6

    const/4 v9, 0x6

    goto :goto_4

    :cond_5
    const-string v1, "Error setting app open orientation; no targeting orientation available."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/po;->a(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/k01;->c:Lcom/google/android/gms/internal/ads/al1;

    iget v1, v1, Lcom/google/android/gms/internal/ads/al1;->L:I

    goto :goto_3

    :goto_4
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/k01;->a:Lcom/google/android/gms/internal/ads/zzbbq;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/k01;->c:Lcom/google/android/gms/internal/ads/al1;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/al1;->A:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/al1;->r:Lcom/google/android/gms/internal/ads/el1;

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/el1;->b:Ljava/lang/String;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/el1;->a:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/k01;->e:Lcom/google/android/gms/internal/ads/sl1;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/sl1;->f:Ljava/lang/String;

    move-object v4, v15

    move-object v12, v2

    move-object v2, v15

    move-object v15, v1

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/hz2;Lcom/google/android/gms/ads/internal/overlay/q;Lcom/google/android/gms/ads/internal/overlay/w;Lcom/google/android/gms/internal/ads/jt;ILcom/google/android/gms/internal/ads/zzbbq;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/internal/overlay/o;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
