.class final Lcom/google/android/gms/internal/ads/bwv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bap;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/bif;

.field private final c:Lcom/google/android/gms/internal/ads/cpo;

.field private final d:Lcom/google/android/gms/internal/ads/zzbar;

.field private final e:Lcom/google/android/gms/internal/ads/cov;

.field private final f:Lcom/google/android/gms/internal/ads/dbt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/bhw;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/ads/adt;

.field private final h:Lcom/google/android/gms/internal/ads/hn;

.field private final i:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bif;Lcom/google/android/gms/internal/ads/cpo;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/hn;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/bif;",
            "Lcom/google/android/gms/internal/ads/cpo;",
            "Lcom/google/android/gms/internal/ads/zzbar;",
            "Lcom/google/android/gms/internal/ads/cov;",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/bhw;",
            ">;",
            "Lcom/google/android/gms/internal/ads/adt;",
            "Lcom/google/android/gms/internal/ads/hn;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bwv;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bwv;->b:Lcom/google/android/gms/internal/ads/bif;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bwv;->c:Lcom/google/android/gms/internal/ads/cpo;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bwv;->d:Lcom/google/android/gms/internal/ads/zzbar;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bwv;->e:Lcom/google/android/gms/internal/ads/cov;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bwv;->f:Lcom/google/android/gms/internal/ads/dbt;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/bwv;->g:Lcom/google/android/gms/internal/ads/adt;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/bwv;->h:Lcom/google/android/gms/internal/ads/hn;

    .line 10
    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/bwv;->i:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bif;Lcom/google/android/gms/internal/ads/cpo;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/hn;ZLcom/google/android/gms/internal/ads/bww;)V
    .locals 0

    .line 52
    invoke-direct/range {p0 .. p9}, Lcom/google/android/gms/internal/ads/bwv;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bif;Lcom/google/android/gms/internal/ads/cpo;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/hn;Z)V

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;)V
    .locals 21

    move-object/from16 v1, p0

    .line 12
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/bwv;->f:Lcom/google/android/gms/internal/ads/dbt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbh;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bhw;

    .line 13
    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/bwv;->e:Lcom/google/android/gms/internal/ads/cov;

    .line 14
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/bwv;->g:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/adt;->R()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 15
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/bwv;->g:Lcom/google/android/gms/internal/ads/adt;

    :goto_0
    move-object v11, v2

    goto :goto_2

    .line 16
    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->av:Lcom/google/android/gms/internal/ads/af;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 18
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 19
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/bwv;->g:Lcom/google/android/gms/internal/ads/adt;

    goto :goto_0

    .line 20
    :cond_1
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/bwv;->b:Lcom/google/android/gms/internal/ads/bif;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/bwv;->c:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/cpo;->e:Lcom/google/android/gms/internal/ads/zzvt;

    const/4 v6, 0x0

    .line 1011
    invoke-virtual {v3, v5, v6, v6}, Lcom/google/android/gms/internal/ads/bif;->a(Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)Lcom/google/android/gms/internal/ads/adt;

    move-result-object v3

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bhw;->k()Lcom/google/android/gms/internal/ads/ays;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/hz;->a(Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/hy;)V

    .line 22
    new-instance v5, Lcom/google/android/gms/internal/ads/biv;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/biv;-><init>()V

    .line 23
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/bwv;->a:Landroid/content/Context;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/ads/biv;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bhw;->l()Lcom/google/android/gms/internal/ads/bih;

    move-result-object v7

    .line 26
    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/bwv;->i:Z

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/bwv;->h:Lcom/google/android/gms/internal/ads/hn;

    goto :goto_1

    :cond_2
    move-object v8, v6

    .line 27
    :goto_1
    invoke-virtual {v7, v3, v4, v8}, Lcom/google/android/gms/internal/ads/bih;->a(Lcom/google/android/gms/internal/ads/adt;ZLcom/google/android/gms/internal/ads/hk;)V

    .line 29
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/adt;->B()Lcom/google/android/gms/internal/ads/afe;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/bwy;

    invoke-direct {v8, v5, v3}, Lcom/google/android/gms/internal/ads/bwy;-><init>(Lcom/google/android/gms/internal/ads/biv;Lcom/google/android/gms/internal/ads/adt;)V

    .line 30
    invoke-interface {v7, v8}, Lcom/google/android/gms/internal/ads/afe;->a(Lcom/google/android/gms/internal/ads/afd;)V

    .line 31
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/adt;->B()Lcom/google/android/gms/internal/ads/afe;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2000
    new-instance v7, Lcom/google/android/gms/internal/ads/bwx;

    invoke-direct {v7, v3}, Lcom/google/android/gms/internal/ads/bwx;-><init>(Lcom/google/android/gms/internal/ads/adt;)V

    .line 31
    invoke-interface {v5, v7}, Lcom/google/android/gms/internal/ads/afe;->a(Lcom/google/android/gms/internal/ads/afg;)V

    .line 32
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/cov;->r:Lcom/google/android/gms/internal/ads/cpc;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/cpc;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cov;->r:Lcom/google/android/gms/internal/ads/cpc;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cpc;->a:Ljava/lang/String;

    invoke-interface {v3, v5, v2, v6}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbfu; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v3

    .line 39
    :goto_2
    invoke-interface {v11, v4}, Lcom/google/android/gms/internal/ads/adt;->b(Z)V

    .line 40
    new-instance v2, Lcom/google/android/gms/ads/internal/zzk;

    .line 41
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/bwv;->i:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 42
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/bwv;->h:Lcom/google/android/gms/internal/ads/hn;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/hn;->b(Z)Z

    move-result v3

    move v13, v3

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    .line 44
    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/bwv;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzj;->zzba(Landroid/content/Context;)Z

    move-result v14

    .line 45
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/bwv;->i:Z

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/bwv;->h:Lcom/google/android/gms/internal/ads/hn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/hn;->a()Z

    move-result v3

    move v15, v3

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    .line 46
    :goto_4
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/bwv;->i:Z

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/bwv;->h:Lcom/google/android/gms/internal/ads/hn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/hn;->b()F

    move-result v3

    move/from16 v16, v3

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    const/16 v16, 0x0

    :goto_5
    const/16 v17, -0x1

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/bwv;->e:Lcom/google/android/gms/internal/ads/cov;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/cov;->J:Z

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/bwv;->e:Lcom/google/android/gms/internal/ads/cov;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/cov;->K:Z

    move-object v12, v2

    move/from16 v18, p1

    move/from16 v19, v3

    move/from16 v20, v5

    invoke-direct/range {v12 .. v20}, Lcom/google/android/gms/ads/internal/zzk;-><init>(ZZZFIZZZ)V

    .line 47
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzku()Lcom/google/android/gms/ads/internal/overlay/zzo;

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v8, 0x0

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bhw;->j()Lcom/google/android/gms/internal/ads/bag;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/bwv;->e:Lcom/google/android/gms/internal/ads/cov;

    iget v12, v0, Lcom/google/android/gms/internal/ads/cov;->L:I

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/bwv;->d:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/bwv;->e:Lcom/google/android/gms/internal/ads/cov;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/cov;->A:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/bwv;->e:Lcom/google/android/gms/internal/ads/cov;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cov;->r:Lcom/google/android/gms/internal/ads/cpc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpc;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/bwv;->e:Lcom/google/android/gms/internal/ads/cov;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/cov;->r:Lcom/google/android/gms/internal/ads/cpc;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/cpc;->a:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/bwv;->c:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/cpo;->f:Ljava/lang/String;

    move-object v7, v3

    move-object v15, v2

    move-object/from16 v16, v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    invoke-direct/range {v7 .. v18}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/eir;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzx;Lcom/google/android/gms/internal/ads/adt;ILcom/google/android/gms/internal/ads/zzbar;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    .line 50
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, ""

    .line 37
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
