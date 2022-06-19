.class final synthetic Lcom/google/android/gms/internal/ads/btg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/btd;

.field private final b:Lcom/google/android/gms/internal/ads/cpk;

.field private final c:Lcom/google/android/gms/internal/ads/cov;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/btd;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/btg;->a:Lcom/google/android/gms/internal/ads/btd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/btg;->b:Lcom/google/android/gms/internal/ads/cpk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/btg;->c:Lcom/google/android/gms/internal/ads/cov;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 9

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/btg;->a:Lcom/google/android/gms/internal/ads/btd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btg;->b:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btg;->c:Lcom/google/android/gms/internal/ads/cov;

    .line 1019
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/btd;->b:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cov;->t:Ljava/util/List;

    .line 1020
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/cps;->a(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v2

    .line 1021
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/btd;->c:Lcom/google/android/gms/internal/ads/bif;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    .line 1022
    invoke-virtual {v3, v2, v1, v4}, Lcom/google/android/gms/internal/ads/bif;->a(Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)Lcom/google/android/gms/internal/ads/adt;

    move-result-object v3

    .line 1023
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/cov;->Q:Z

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/adt;->f(Z)V

    .line 1024
    sget-object v4, Lcom/google/android/gms/internal/ads/aq;->ey:Lcom/google/android/gms/internal/ads/af;

    .line 1025
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v4

    .line 1026
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/cov;->ab:Z

    if-eqz v4, :cond_0

    .line 1027
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/btd;->b:Landroid/content/Context;

    .line 1028
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzbos;->a(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/internal/ads/cov;)Lcom/google/android/gms/internal/ads/zzbos;

    move-result-object v4

    goto :goto_0

    .line 1029
    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/ads/zzcjr;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/btd;->b:Landroid/content/Context;

    .line 1030
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v6

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/btd;->f:Lcom/google/android/gms/internal/ads/cxu;

    invoke-interface {v7, v1}, Lcom/google/android/gms/internal/ads/cxu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/ads/internal/util/zzad;

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzcjr;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/ads/internal/util/zzad;)V

    .line 1031
    :goto_0
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/btd;->a:Lcom/google/android/gms/internal/ads/amn;

    new-instance v6, Lcom/google/android/gms/internal/ads/aof;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v1, v7}, Lcom/google/android/gms/internal/ads/aof;-><init>(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/alx;

    .line 1032
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2000
    new-instance v8, Lcom/google/android/gms/internal/ads/btf;

    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/ads/btf;-><init>(Lcom/google/android/gms/internal/ads/adt;)V

    .line 1033
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/cps;->a(Lcom/google/android/gms/internal/ads/zzvt;)Lcom/google/android/gms/internal/ads/coy;

    move-result-object v2

    invoke-direct {v0, v4, v3, v8, v2}, Lcom/google/android/gms/internal/ads/alx;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/anq;Lcom/google/android/gms/internal/ads/coy;)V

    .line 1034
    invoke-virtual {v5, v6, v0}, Lcom/google/android/gms/internal/ads/amn;->a(Lcom/google/android/gms/internal/ads/aof;Lcom/google/android/gms/internal/ads/alx;)Lcom/google/android/gms/internal/ads/alt;

    move-result-object v0

    .line 1036
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/alt;->i()Lcom/google/android/gms/internal/ads/bih;

    move-result-object v2

    const/4 v4, 0x0

    .line 1037
    invoke-virtual {v2, v3, v4, v7}, Lcom/google/android/gms/internal/ads/bih;->a(Lcom/google/android/gms/internal/ads/adt;ZLcom/google/android/gms/internal/ads/hk;)V

    .line 1039
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/anr;->d()Lcom/google/android/gms/internal/ads/asc;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/ads/bti;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/bti;-><init>(Lcom/google/android/gms/internal/ads/adt;)V

    .line 1040
    sget-object v5, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    .line 1041
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/awl;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 1043
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/alt;->i()Lcom/google/android/gms/internal/ads/bih;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cov;->r:Lcom/google/android/gms/internal/ads/cpc;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cpc;->b:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/cov;->r:Lcom/google/android/gms/internal/ads/cpc;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/cpc;->a:Ljava/lang/String;

    .line 1044
    invoke-static {v3, v2, v4}, Lcom/google/android/gms/internal/ads/bih;->a(Lcom/google/android/gms/internal/ads/adt;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v2

    .line 1045
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/cov;->H:Z

    if-eqz v1, :cond_1

    .line 1046
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/bth;->a(Lcom/google/android/gms/internal/ads/adt;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/btd;->e:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1, v4}, Lcom/google/android/gms/internal/ads/dbt;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1047
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/btk;

    invoke-direct {v1, p1, v3}, Lcom/google/android/gms/internal/ads/btk;-><init>(Lcom/google/android/gms/internal/ads/btd;Lcom/google/android/gms/internal/ads/adt;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/btd;->e:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1, p1}, Lcom/google/android/gms/internal/ads/dbt;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1048
    new-instance p1, Lcom/google/android/gms/internal/ads/btj;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/btj;-><init>(Lcom/google/android/gms/internal/ads/alt;)V

    .line 1049
    sget-object v0, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    .line 2020
    invoke-static {v2, p1, v0}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
