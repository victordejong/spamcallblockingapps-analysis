.class final synthetic Lcom/google/android/gms/internal/ads/bui;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/buj;

.field private final b:Lcom/google/android/gms/internal/ads/cov;

.field private final c:Lcom/google/android/gms/internal/ads/cpk;

.field private final d:Lcom/google/android/gms/internal/ads/biv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/buj;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/biv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bui;->a:Lcom/google/android/gms/internal/ads/buj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bui;->b:Lcom/google/android/gms/internal/ads/cov;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bui;->c:Lcom/google/android/gms/internal/ads/cpk;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bui;->d:Lcom/google/android/gms/internal/ads/biv;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bui;->a:Lcom/google/android/gms/internal/ads/buj;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/bui;->b:Lcom/google/android/gms/internal/ads/cov;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/bui;->c:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bui;->d:Lcom/google/android/gms/internal/ads/biv;

    .line 1020
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/buj;->b:Lcom/google/android/gms/internal/ads/bif;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/buj;->d:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/cpo;->e:Lcom/google/android/gms/internal/ads/zzvt;

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    .line 1021
    invoke-virtual {v4, v5, v12, v6}, Lcom/google/android/gms/internal/ads/bif;->a(Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)Lcom/google/android/gms/internal/ads/adt;

    move-result-object v13

    .line 1022
    iget-boolean v4, v12, Lcom/google/android/gms/internal/ads/cov;->Q:Z

    invoke-interface {v13, v4}, Lcom/google/android/gms/internal/ads/adt;->f(Z)V

    .line 1023
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/buj;->a:Landroid/content/Context;

    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/biv;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 1024
    new-instance v14, Lcom/google/android/gms/internal/ads/zp;

    invoke-direct {v14}, Lcom/google/android/gms/internal/ads/zp;-><init>()V

    .line 1026
    iget-object v15, v1, Lcom/google/android/gms/internal/ads/buj;->c:Lcom/google/android/gms/internal/ads/bai;

    new-instance v11, Lcom/google/android/gms/internal/ads/aof;

    const/4 v10, 0x0

    invoke-direct {v11, v2, v12, v10}, Lcom/google/android/gms/internal/ads/aof;-><init>(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/gms/internal/ads/azj;

    new-instance v8, Lcom/google/android/gms/internal/ads/buq;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/buj;->a:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/buj;->f:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/buj;->d:Lcom/google/android/gms/internal/ads/cpo;

    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/buj;->h:Z

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/buj;->g:Lcom/google/android/gms/internal/ads/hn;

    const/16 v16, 0x0

    move-object v2, v8

    move-object/from16 v17, v5

    move-object v5, v14

    move/from16 v18, v6

    move-object v6, v12

    move-object/from16 v19, v7

    move-object v7, v13

    move-object/from16 v20, v8

    move-object/from16 v8, v19

    move-object/from16 v21, v9

    move/from16 v9, v18

    move-object/from16 v18, v10

    move-object/from16 v10, v17

    move-object v0, v11

    move-object/from16 v11, v16

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/buq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/cpo;ZLcom/google/android/gms/internal/ads/hn;Lcom/google/android/gms/internal/ads/bun;)V

    move-object/from16 v3, v20

    move-object/from16 v2, v21

    invoke-direct {v2, v3, v13}, Lcom/google/android/gms/internal/ads/azj;-><init>(Lcom/google/android/gms/internal/ads/bap;Lcom/google/android/gms/internal/ads/adt;)V

    .line 1027
    invoke-virtual {v15, v0, v2}, Lcom/google/android/gms/internal/ads/bai;->a(Lcom/google/android/gms/internal/ads/aof;Lcom/google/android/gms/internal/ads/azj;)Lcom/google/android/gms/internal/ads/azk;

    move-result-object v0

    .line 1028
    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/ads/zp;->set(Ljava/lang/Object;)Z

    .line 1030
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/anr;->d()Lcom/google/android/gms/internal/ads/asc;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/buk;

    invoke-direct {v3, v13}, Lcom/google/android/gms/internal/ads/buk;-><init>(Lcom/google/android/gms/internal/ads/adt;)V

    .line 1031
    sget-object v4, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    .line 1032
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/awl;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 1034
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/azk;->k()Lcom/google/android/gms/internal/ads/bih;

    move-result-object v2

    .line 1035
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/buj;->h:Z

    if-eqz v3, :cond_0

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/buj;->g:Lcom/google/android/gms/internal/ads/hn;

    goto :goto_0

    :cond_0
    move-object/from16 v10, v18

    :goto_0
    const/4 v3, 0x1

    .line 1036
    invoke-virtual {v2, v13, v3, v10}, Lcom/google/android/gms/internal/ads/bih;->a(Lcom/google/android/gms/internal/ads/adt;ZLcom/google/android/gms/internal/ads/hk;)V

    .line 1038
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/azk;->k()Lcom/google/android/gms/internal/ads/bih;

    iget-object v2, v12, Lcom/google/android/gms/internal/ads/cov;->r:Lcom/google/android/gms/internal/ads/cpc;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cpc;->b:Ljava/lang/String;

    iget-object v3, v12, Lcom/google/android/gms/internal/ads/cov;->r:Lcom/google/android/gms/internal/ads/cpc;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cpc;->a:Ljava/lang/String;

    .line 1039
    invoke-static {v13, v2, v3}, Lcom/google/android/gms/internal/ads/bih;->a(Lcom/google/android/gms/internal/ads/adt;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v2

    .line 1040
    new-instance v3, Lcom/google/android/gms/internal/ads/buo;

    invoke-direct {v3, v1, v13, v12, v0}, Lcom/google/android/gms/internal/ads/buo;-><init>(Lcom/google/android/gms/internal/ads/buj;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/azk;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/buj;->e:Ljava/util/concurrent/Executor;

    .line 2020
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    return-object v0
.end method
