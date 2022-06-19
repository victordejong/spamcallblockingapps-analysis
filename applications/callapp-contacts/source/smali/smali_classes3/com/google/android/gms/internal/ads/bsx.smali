.class final Lcom/google/android/gms/internal/ads/bsx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bap;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbar;

.field private final b:Lcom/google/android/gms/internal/ads/dbt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/ald;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/cov;

.field private final d:Lcom/google/android/gms/internal/ads/adt;

.field private final e:Lcom/google/android/gms/internal/ads/cpo;

.field private final f:Lcom/google/android/gms/internal/ads/hn;

.field private final g:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/cpo;ZLcom/google/android/gms/internal/ads/hn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbar;",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/ald;",
            ">;",
            "Lcom/google/android/gms/internal/ads/cov;",
            "Lcom/google/android/gms/internal/ads/adt;",
            "Lcom/google/android/gms/internal/ads/cpo;",
            "Z",
            "Lcom/google/android/gms/internal/ads/hn;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bsx;->a:Lcom/google/android/gms/internal/ads/zzbar;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bsx;->b:Lcom/google/android/gms/internal/ads/dbt;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bsx;->c:Lcom/google/android/gms/internal/ads/cov;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bsx;->d:Lcom/google/android/gms/internal/ads/adt;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bsx;->e:Lcom/google/android/gms/internal/ads/cpo;

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/bsx;->g:Z

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/bsx;->f:Lcom/google/android/gms/internal/ads/hn;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    .line 10
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bsx;->b:Lcom/google/android/gms/internal/ads/dbt;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dbh;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/ald;

    .line 11
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/bsx;->d:Lcom/google/android/gms/internal/ads/adt;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/adt;->b(Z)V

    .line 12
    new-instance v2, Lcom/google/android/gms/ads/internal/zzk;

    .line 13
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/bsx;->g:Z

    if-eqz v4, :cond_0

    .line 14
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/bsx;->f:Lcom/google/android/gms/internal/ads/hn;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/hn;->b(Z)Z

    move-result v4

    move v5, v4

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    const/4 v6, 0x1

    .line 16
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/bsx;->g:Z

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/bsx;->f:Lcom/google/android/gms/internal/ads/hn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/hn;->a()Z

    move-result v4

    move v7, v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 17
    :goto_1
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/bsx;->g:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/bsx;->f:Lcom/google/android/gms/internal/ads/hn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/hn;->b()F

    move-result v4

    move v8, v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_2
    const/4 v9, -0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/bsx;->c:Lcom/google/android/gms/internal/ads/cov;

    iget-boolean v11, v4, Lcom/google/android/gms/internal/ads/cov;->J:Z

    const/4 v12, 0x0

    move-object v4, v2

    move/from16 v10, p1

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/ads/internal/zzk;-><init>(ZZZFIZZZ)V

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzku()Lcom/google/android/gms/ads/internal/overlay/zzo;

    new-instance v15, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v5, 0x0

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ald;->j()Lcom/google/android/gms/internal/ads/bag;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/bsx;->d:Lcom/google/android/gms/internal/ads/adt;

    .line 21
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bsx;->c:Lcom/google/android/gms/internal/ads/cov;

    iget v1, v1, Lcom/google/android/gms/internal/ads/cov;->L:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    .line 22
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bsx;->c:Lcom/google/android/gms/internal/ads/cov;

    iget v1, v1, Lcom/google/android/gms/internal/ads/cov;->L:I

    :goto_3
    move v9, v1

    goto :goto_4

    .line 23
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bsx;->e:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cpo;->j:Lcom/google/android/gms/internal/ads/zzwc;

    if-eqz v1, :cond_5

    .line 24
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bsx;->e:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cpo;->j:Lcom/google/android/gms/internal/ads/zzwc;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzwc;->orientation:I

    if-ne v1, v3, :cond_4

    const/4 v1, 0x7

    const/4 v9, 0x7

    goto :goto_4

    .line 26
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bsx;->e:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cpo;->j:Lcom/google/android/gms/internal/ads/zzwc;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzwc;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    const/4 v1, 0x6

    const/4 v9, 0x6

    goto :goto_4

    :cond_5
    const-string v1, "Error setting app open orientation; no targeting orientation available."

    .line 28
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    .line 29
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bsx;->c:Lcom/google/android/gms/internal/ads/cov;

    iget v1, v1, Lcom/google/android/gms/internal/ads/cov;->L:I

    goto :goto_3

    .line 30
    :goto_4
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/bsx;->a:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bsx;->c:Lcom/google/android/gms/internal/ads/cov;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/cov;->A:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bsx;->c:Lcom/google/android/gms/internal/ads/cov;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cov;->r:Lcom/google/android/gms/internal/ads/cpc;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/cpc;->b:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bsx;->c:Lcom/google/android/gms/internal/ads/cov;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cov;->r:Lcom/google/android/gms/internal/ads/cpc;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/cpc;->a:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bsx;->e:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cpo;->f:Ljava/lang/String;

    move-object v4, v15

    move-object v12, v2

    move-object v2, v15

    move-object v15, v1

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/eir;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzx;Lcom/google/android/gms/internal/ads/adt;ILcom/google/android/gms/internal/ads/zzbar;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p2

    .line 32
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
