.class final synthetic Lcom/google/android/gms/internal/ads/bws;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bwp;

.field private final b:Lcom/google/android/gms/internal/ads/cov;

.field private final c:Lcom/google/android/gms/internal/ads/cpk;

.field private final d:Lcom/google/android/gms/internal/ads/biv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bwp;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/biv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bws;->a:Lcom/google/android/gms/internal/ads/bwp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bws;->b:Lcom/google/android/gms/internal/ads/cov;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bws;->c:Lcom/google/android/gms/internal/ads/cpk;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bws;->d:Lcom/google/android/gms/internal/ads/biv;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bws;->a:Lcom/google/android/gms/internal/ads/bwp;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/bws;->b:Lcom/google/android/gms/internal/ads/cov;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/bws;->c:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bws;->d:Lcom/google/android/gms/internal/ads/biv;

    .line 1020
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/bwp;->b:Lcom/google/android/gms/internal/ads/bif;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/bwp;->d:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/cpo;->e:Lcom/google/android/gms/internal/ads/zzvt;

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    .line 1021
    invoke-virtual {v4, v5, v13, v6}, Lcom/google/android/gms/internal/ads/bif;->a(Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)Lcom/google/android/gms/internal/ads/adt;

    move-result-object v14

    .line 1022
    iget-boolean v4, v13, Lcom/google/android/gms/internal/ads/cov;->Q:Z

    invoke-interface {v14, v4}, Lcom/google/android/gms/internal/ads/adt;->f(Z)V

    .line 1023
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/bwp;->a:Landroid/content/Context;

    invoke-interface {v14}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/biv;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 1024
    new-instance v15, Lcom/google/android/gms/internal/ads/zp;

    invoke-direct {v15}, Lcom/google/android/gms/internal/ads/zp;-><init>()V

    .line 1026
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/bwp;->c:Lcom/google/android/gms/internal/ads/bhx;

    new-instance v11, Lcom/google/android/gms/internal/ads/aof;

    const/4 v10, 0x0

    invoke-direct {v11, v2, v13, v10}, Lcom/google/android/gms/internal/ads/aof;-><init>(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/gms/internal/ads/bhv;

    new-instance v8, Lcom/google/android/gms/internal/ads/bwv;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/bwp;->a:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/bwp;->b:Lcom/google/android/gms/internal/ads/bif;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/bwp;->d:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/bwp;->f:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/bwp;->g:Lcom/google/android/gms/internal/ads/hn;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/bwp;->h:Z

    const/16 v16, 0x0

    move/from16 v17, v2

    move-object v2, v8

    move-object/from16 v18, v7

    move-object v7, v13

    move-object/from16 v19, v8

    move-object v8, v15

    move-object/from16 v20, v9

    move-object v9, v14

    move-object/from16 v21, v10

    move-object/from16 v10, v18

    move-object v0, v11

    move/from16 v11, v17

    move-object/from16 v17, v13

    move-object v13, v12

    move-object/from16 v12, v16

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/ads/bwv;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bif;Lcom/google/android/gms/internal/ads/cpo;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/hn;ZLcom/google/android/gms/internal/ads/bww;)V

    move-object/from16 v3, v19

    move-object/from16 v2, v20

    invoke-direct {v2, v3, v14}, Lcom/google/android/gms/internal/ads/bhv;-><init>(Lcom/google/android/gms/internal/ads/bap;Lcom/google/android/gms/internal/ads/adt;)V

    .line 1027
    invoke-virtual {v13, v0, v2}, Lcom/google/android/gms/internal/ads/bhx;->a(Lcom/google/android/gms/internal/ads/aof;Lcom/google/android/gms/internal/ads/bhv;)Lcom/google/android/gms/internal/ads/bhw;

    move-result-object v0

    .line 1028
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/ads/zp;->set(Ljava/lang/Object;)Z

    .line 1029
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bhw;->k()Lcom/google/android/gms/internal/ads/ays;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/ads/hz;->a(Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/hy;)V

    .line 1031
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/anr;->d()Lcom/google/android/gms/internal/ads/asc;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/bwu;

    invoke-direct {v3, v14}, Lcom/google/android/gms/internal/ads/bwu;-><init>(Lcom/google/android/gms/internal/ads/adt;)V

    .line 1032
    sget-object v4, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    .line 1033
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/awl;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 1035
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bhw;->l()Lcom/google/android/gms/internal/ads/bih;

    move-result-object v2

    .line 1036
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/bwp;->h:Z

    if-eqz v3, :cond_0

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/bwp;->g:Lcom/google/android/gms/internal/ads/hn;

    goto :goto_0

    :cond_0
    move-object/from16 v10, v21

    :goto_0
    const/4 v3, 0x1

    .line 1037
    invoke-virtual {v2, v14, v3, v10}, Lcom/google/android/gms/internal/ads/bih;->a(Lcom/google/android/gms/internal/ads/adt;ZLcom/google/android/gms/internal/ads/hk;)V

    .line 1039
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bhw;->l()Lcom/google/android/gms/internal/ads/bih;

    move-object/from16 v2, v17

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/cov;->r:Lcom/google/android/gms/internal/ads/cpc;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cpc;->b:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/cov;->r:Lcom/google/android/gms/internal/ads/cpc;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/cpc;->a:Ljava/lang/String;

    .line 1040
    invoke-static {v14, v3, v4}, Lcom/google/android/gms/internal/ads/bih;->a(Lcom/google/android/gms/internal/ads/adt;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v3

    .line 1041
    new-instance v4, Lcom/google/android/gms/internal/ads/bwt;

    invoke-direct {v4, v1, v14, v2, v0}, Lcom/google/android/gms/internal/ads/bwt;-><init>(Lcom/google/android/gms/internal/ads/bwp;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bhw;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/bwp;->e:Ljava/util/concurrent/Executor;

    .line 2020
    invoke-static {v3, v4, v0}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    return-object v0
.end method
