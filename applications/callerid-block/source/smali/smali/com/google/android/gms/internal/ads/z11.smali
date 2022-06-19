.class final Lcom/google/android/gms/internal/ads/z11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/qg0;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/zzbbq;

.field private final c:Lcom/google/android/gms/internal/ads/rz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Lcom/google/android/gms/internal/ads/mf0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/al1;

.field private final e:Lcom/google/android/gms/internal/ads/jt;

.field private final f:Lcom/google/android/gms/internal/ads/sl1;

.field private final g:Lcom/google/android/gms/internal/ads/k9;

.field private final h:Z


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbq;Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/jt;Lcom/google/android/gms/internal/ads/sl1;ZLcom/google/android/gms/internal/ads/k9;Lcom/google/android/gms/internal/ads/y11;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z11;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/z11;->b:Lcom/google/android/gms/internal/ads/zzbbq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/z11;->c:Lcom/google/android/gms/internal/ads/rz1;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/z11;->d:Lcom/google/android/gms/internal/ads/al1;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/z11;->e:Lcom/google/android/gms/internal/ads/jt;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/z11;->f:Lcom/google/android/gms/internal/ads/sl1;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/z11;->g:Lcom/google/android/gms/internal/ads/k9;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/z11;->h:Z

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/z11;->c:Lcom/google/android/gms/internal/ads/rz1;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/kz1;->q(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/mf0;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/z11;->e:Lcom/google/android/gms/internal/ads/jt;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/jt;->Q0(Z)V

    new-instance v2, Lcom/google/android/gms/ads/internal/zzj;

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/z11;->h:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/z11;->g:Lcom/google/android/gms/internal/ads/k9;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/k9;->c(Z)Z

    move-result v4

    move v6, v4

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/z11;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/l1;->k(Landroid/content/Context;)Z

    move-result v7

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/z11;->h:Z

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/z11;->g:Lcom/google/android/gms/internal/ads/k9;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/k9;->d()Z

    move-result v4

    move v8, v4

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/z11;->h:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/z11;->g:Lcom/google/android/gms/internal/ads/k9;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/k9;->e()F

    move-result v4

    move v9, v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_2
    const/4 v10, -0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/z11;->d:Lcom/google/android/gms/internal/ads/al1;

    iget-boolean v11, v4, Lcom/google/android/gms/internal/ads/al1;->J:Z

    const/4 v12, 0x0

    move-object v4, v2

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move/from16 v10, p1

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/ads/internal/zzj;-><init>(ZZZFIZZZ)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->c()Lcom/google/android/gms/ads/internal/overlay/o;

    new-instance v15, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/mf0;->j()Lcom/google/android/gms/internal/ads/gg0;

    move-result-object v6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/z11;->e:Lcom/google/android/gms/internal/ads/jt;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/z11;->d:Lcom/google/android/gms/internal/ads/al1;

    iget v9, v1, Lcom/google/android/gms/internal/ads/al1;->L:I

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/z11;->b:Lcom/google/android/gms/internal/ads/zzbbq;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/al1;->A:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/al1;->r:Lcom/google/android/gms/internal/ads/el1;

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/el1;->b:Ljava/lang/String;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/el1;->a:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/z11;->f:Lcom/google/android/gms/internal/ads/sl1;

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
