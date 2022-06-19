.class final synthetic Lcom/google/android/gms/internal/ads/bsz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bta;

.field private final b:Lcom/google/android/gms/internal/ads/cpk;

.field private final c:Lcom/google/android/gms/internal/ads/cov;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bta;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bsz;->a:Lcom/google/android/gms/internal/ads/bta;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bsz;->b:Lcom/google/android/gms/internal/ads/cpk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bsz;->c:Lcom/google/android/gms/internal/ads/cov;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 13

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bsz;->a:Lcom/google/android/gms/internal/ads/bta;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bsz;->b:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bsz;->c:Lcom/google/android/gms/internal/ads/cov;

    .line 1012
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/bta;->b:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cov;->t:Ljava/util/List;

    .line 1013
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/cps;->a(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v2

    .line 1014
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/bta;->c:Lcom/google/android/gms/internal/ads/bif;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    .line 1015
    invoke-virtual {v3, v2, v1, v4}, Lcom/google/android/gms/internal/ads/bif;->a(Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)Lcom/google/android/gms/internal/ads/adt;

    move-result-object v3

    .line 1016
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bta;->a:Lcom/google/android/gms/internal/ads/akt;

    new-instance v4, Lcom/google/android/gms/internal/ads/aof;

    const/4 v12, 0x0

    invoke-direct {v4, v0, v1, v12}, Lcom/google/android/gms/internal/ads/aof;-><init>(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ako;

    .line 1017
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v6

    .line 1018
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/cps;->a(Lcom/google/android/gms/internal/ads/zzvt;)Lcom/google/android/gms/internal/ads/coy;

    move-result-object v8

    iget v9, v1, Lcom/google/android/gms/internal/ads/cov;->U:I

    iget-boolean v10, v1, Lcom/google/android/gms/internal/ads/cov;->Y:Z

    iget-boolean v11, v1, Lcom/google/android/gms/internal/ads/cov;->J:Z

    move-object v5, v0

    move-object v7, v3

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/ako;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/coy;IZZ)V

    .line 1019
    invoke-virtual {p1, v4, v0}, Lcom/google/android/gms/internal/ads/akt;->a(Lcom/google/android/gms/internal/ads/aof;Lcom/google/android/gms/internal/ads/ako;)Lcom/google/android/gms/internal/ads/akk;

    move-result-object p1

    .line 1021
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/akk;->i()Lcom/google/android/gms/internal/ads/bih;

    move-result-object v0

    const/4 v2, 0x0

    .line 1022
    invoke-virtual {v0, v3, v2, v12}, Lcom/google/android/gms/internal/ads/bih;->a(Lcom/google/android/gms/internal/ads/adt;ZLcom/google/android/gms/internal/ads/hk;)V

    .line 1024
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/anr;->d()Lcom/google/android/gms/internal/ads/asc;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/btc;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/btc;-><init>(Lcom/google/android/gms/internal/ads/adt;)V

    .line 1025
    sget-object v4, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    .line 1026
    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/internal/ads/awl;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 1028
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/akk;->i()Lcom/google/android/gms/internal/ads/bih;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/cov;->r:Lcom/google/android/gms/internal/ads/cpc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpc;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cov;->r:Lcom/google/android/gms/internal/ads/cpc;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cpc;->a:Ljava/lang/String;

    .line 1029
    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/ads/bih;->a(Lcom/google/android/gms/internal/ads/adt;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    .line 1030
    new-instance v1, Lcom/google/android/gms/internal/ads/btb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/btb;-><init>(Lcom/google/android/gms/internal/ads/akk;)V

    .line 1031
    sget-object p1, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    .line 2020
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
