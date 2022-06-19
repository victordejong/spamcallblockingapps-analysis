.class public final Lcom/google/android/gms/internal/ads/btm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bss;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bss<",
        "Lcom/google/android/gms/internal/ads/alq;",
        "Lcom/google/android/gms/internal/ads/cqe;",
        "Lcom/google/android/gms/internal/ads/buh;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/amn;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/amn;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/btm;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/btm;->b:Lcom/google/android/gms/internal/ads/amn;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/btm;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/bsn;Lcom/google/android/gms/internal/ads/cov;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bsn<",
            "Lcom/google/android/gms/internal/ads/cqe;",
            "Lcom/google/android/gms/internal/ads/buh;",
            ">;",
            "Lcom/google/android/gms/internal/ads/cov;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdpq;
        }
    .end annotation

    .line 29
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/cqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cqe;->b()Lcom/google/android/gms/internal/ads/mt;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 34
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/mt;->a()Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 35
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/mt;->b()Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/bto;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/bto;-><init>(Lcom/google/android/gms/internal/ads/btm;Landroid/view/View;Lcom/google/android/gms/internal/ads/cov;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zd;->e:Lcom/google/android/gms/internal/ads/dbs;

    .line 2019
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    .line 45
    :try_start_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dbt;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 47
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdpq;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    return-object v0

    .line 40
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdpq;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, "BannerAdapterWrapper interscrollerView should not be null"

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p1

    .line 38
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdpq;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    const-string p1, "getInterscrollerAd should not be null after loadInterscrollerAd loaded ad."

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    .line 33
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdpq;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bsn;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cpk;",
            "Lcom/google/android/gms/internal/ads/cov;",
            "Lcom/google/android/gms/internal/ads/bsn<",
            "Lcom/google/android/gms/internal/ads/cqe;",
            "Lcom/google/android/gms/internal/ads/buh;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdpq;
        }
    .end annotation

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpo;->e:Lcom/google/android/gms/internal/ads/zzvt;

    .line 7
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzvt;->zzciy:Z

    if-eqz v1, :cond_0

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzvt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/btm;->a:Landroid/content/Context;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzvt;->width:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvt;->height:I

    .line 9
    invoke-static {v3, v0}, Lcom/google/android/gms/ads/zza;->zzb(II)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    :goto_0
    move-object v4, v1

    goto :goto_1

    .line 10
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->ey:Lcom/google/android/gms/internal/ads/af;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p2, Lcom/google/android/gms/internal/ads/cov;->ab:Z

    if-eqz v1, :cond_1

    .line 13
    new-instance v1, Lcom/google/android/gms/internal/ads/zzvt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/btm;->a:Landroid/content/Context;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzvt;->width:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvt;->height:I

    .line 14
    invoke-static {v3, v0}, Lcom/google/android/gms/ads/zza;->zzc(II)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btm;->a:Landroid/content/Context;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/cov;->t:Ljava/util/List;

    .line 16
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cps;->a(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v1

    goto :goto_0

    .line 17
    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->ey:Lcom/google/android/gms/internal/ads/af;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/cov;->ab:Z

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/cqe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btm;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/cov;->u:Lorg/json/JSONObject;

    .line 21
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/cov;->r:Lcom/google/android/gms/internal/ads/cpc;

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbh;->zza(Lcom/google/android/gms/ads/internal/util/zzbm;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    move-object v8, p1

    check-cast v8, Lcom/google/android/gms/internal/ads/ms;

    .line 1007
    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cqe;->a:Lcom/google/android/gms/internal/ads/mn;

    .line 1008
    invoke-static {v1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v3

    .line 1009
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/mn;->b(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ms;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1012
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdpq;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 24
    :cond_2
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/cqe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btm;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/cov;->u:Lorg/json/JSONObject;

    .line 25
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/cov;->r:Lcom/google/android/gms/internal/ads/cpc;

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbh;->zza(Lcom/google/android/gms/ads/internal/util/zzbm;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    move-object v8, p1

    check-cast v8, Lcom/google/android/gms/internal/ads/ms;

    .line 1028
    :try_start_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cqe;->a:Lcom/google/android/gms/internal/ads/mn;

    .line 1029
    invoke-static {v1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v3

    .line 1030
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/mn;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ms;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 1033
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdpq;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bsn;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdpq;,
            Lcom/google/android/gms/internal/ads/zzcwo;
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->ey:Lcom/google/android/gms/internal/ads/af;

    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/cov;->ab:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0, p3, p2}, Lcom/google/android/gms/internal/ads/btm;->a(Lcom/google/android/gms/internal/ads/bsn;Lcom/google/android/gms/internal/ads/cov;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/cqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cqe;->a()Landroid/view/View;

    move-result-object v0

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btm;->b:Lcom/google/android/gms/internal/ads/amn;

    new-instance v2, Lcom/google/android/gms/internal/ads/aof;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/bsn;->a:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/aof;-><init>(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/alx;

    const/4 v3, 0x0

    iget-object v4, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/cqe;

    .line 56
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3000
    new-instance v5, Lcom/google/android/gms/internal/ads/btp;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/ads/btp;-><init>(Lcom/google/android/gms/internal/ads/cqe;)V

    .line 56
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/cov;->t:Ljava/util/List;

    const/4 v4, 0x0

    .line 57
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/coy;

    invoke-direct {p1, v0, v3, v5, p2}, Lcom/google/android/gms/internal/ads/alx;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/anq;Lcom/google/android/gms/internal/ads/coy;)V

    .line 58
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/amn;->a(Lcom/google/android/gms/internal/ads/aof;Lcom/google/android/gms/internal/ads/alx;)Lcom/google/android/gms/internal/ads/alt;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/alt;->j()Lcom/google/android/gms/internal/ads/ayh;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/ayh;->a(Landroid/view/View;)V

    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/anr;->a()Lcom/google/android/gms/internal/ads/asj;

    move-result-object p2

    .line 61
    new-instance v0, Lcom/google/android/gms/internal/ads/aji;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/cqe;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/aji;-><init>(Lcom/google/android/gms/internal/ads/cqe;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btm;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/awl;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 62
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    check-cast p2, Lcom/google/android/gms/internal/ads/buh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/anr;->f()Lcom/google/android/gms/internal/ads/bxr;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/buh;->a(Lcom/google/android/gms/internal/ads/ms;)V

    .line 63
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/alt;->h()Lcom/google/android/gms/internal/ads/alq;

    move-result-object p1

    return-object p1
.end method
