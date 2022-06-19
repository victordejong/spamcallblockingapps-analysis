.class final Lcom/google/android/gms/internal/ads/ty1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qc1;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final c:Lcom/google/android/gms/internal/ads/r03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/mb1;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/ej2;

.field private final e:Lcom/google/android/gms/internal/ads/wn0;

.field private final f:Lcom/google/android/gms/internal/ads/xj2;

.field private final g:Lcom/google/android/gms/internal/ads/q20;

.field private final h:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/xj2;ZLcom/google/android/gms/internal/ads/q20;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzcgz;",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/mb1;",
            ">;",
            "Lcom/google/android/gms/internal/ads/ej2;",
            "Lcom/google/android/gms/internal/ads/wn0;",
            "Lcom/google/android/gms/internal/ads/xj2;",
            "Z",
            "Lcom/google/android/gms/internal/ads/q20;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ty1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ty1;->b:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ty1;->c:Lcom/google/android/gms/internal/ads/r03;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ty1;->d:Lcom/google/android/gms/internal/ads/ej2;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ty1;->e:Lcom/google/android/gms/internal/ads/wn0;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/ty1;->f:Lcom/google/android/gms/internal/ads/xj2;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/ty1;->g:Lcom/google/android/gms/internal/ads/q20;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/ty1;->h:Z

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/l31;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ty1;->c:Lcom/google/android/gms/internal/ads/r03;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/k03;->r(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/mb1;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ty1;->e:Lcom/google/android/gms/internal/ads/wn0;

    const/4 v3, 0x1

    .line 2
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/wn0;->Y0(Z)V

    .line 3
    new-instance v2, Lcom/google/android/gms/ads/internal/zzj;

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/ty1;->h:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ty1;->g:Lcom/google/android/gms/internal/ads/q20;

    .line 4
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/q20;->c(Z)Z

    move-result v4

    move v6, v4

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 5
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ty1;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/c2;->l(Landroid/content/Context;)Z

    move-result v7

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/ty1;->h:Z

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ty1;->g:Lcom/google/android/gms/internal/ads/q20;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/q20;->d()Z

    move-result v4

    move v8, v4

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/ty1;->h:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ty1;->g:Lcom/google/android/gms/internal/ads/q20;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/q20;->e()F

    move-result v4

    move v9, v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_2
    const/4 v10, -0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ty1;->d:Lcom/google/android/gms/internal/ads/ej2;

    .line 6
    iget-boolean v11, v4, Lcom/google/android/gms/internal/ads/ej2;->K:Z

    const/4 v12, 0x0

    move-object v4, v2

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move/from16 v10, p1

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/ads/internal/zzj;-><init>(ZZZFIZZZ)V

    if-eqz p3, :cond_3

    .line 7
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/l31;->a()V

    .line 8
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->c()Lcom/google/android/gms/ads/internal/overlay/m;

    new-instance v15, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/mb1;->j()Lcom/google/android/gms/internal/ads/gc1;

    move-result-object v6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/ty1;->e:Lcom/google/android/gms/internal/ads/wn0;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ty1;->d:Lcom/google/android/gms/internal/ads/ej2;

    iget v9, v1, Lcom/google/android/gms/internal/ads/ej2;->M:I

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/ty1;->b:Lcom/google/android/gms/internal/ads/zzcgz;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/ej2;->B:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ej2;->s:Lcom/google/android/gms/internal/ads/kj2;

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/kj2;->b:Ljava/lang/String;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/kj2;->a:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ty1;->f:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/xj2;->f:Ljava/lang/String;

    move-object v4, v15

    move-object v12, v2

    move-object v2, v15

    move-object v15, v1

    move-object/from16 v16, p3

    invoke-direct/range {v4 .. v16}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/kq;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/ads/internal/overlay/u;Lcom/google/android/gms/internal/ads/wn0;ILcom/google/android/gms/internal/ads/zzcgz;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/l31;)V

    move-object/from16 v1, p2

    .line 10
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/internal/overlay/m;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
