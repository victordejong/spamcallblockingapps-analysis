.class public final Lcom/google/android/gms/internal/ads/btq;
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
        "Lcom/google/android/gms/internal/ads/os;",
        "Lcom/google/android/gms/internal/ads/buh;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field b:Landroid/view/View;

.field c:Lcom/google/android/gms/internal/ads/mt;

.field private final d:Lcom/google/android/gms/internal/ads/amn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/amn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/btq;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/btq;->d:Lcom/google/android/gms/internal/ads/amn;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/cov;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdpq;
        }
    .end annotation

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btq;->c:Lcom/google/android/gms/internal/ads/mt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/mt;->a()Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btq;->c:Lcom/google/android/gms/internal/ads/mt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/mt;->b()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 29
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/bts;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/internal/ads/bts;-><init>(Lcom/google/android/gms/internal/ads/btq;Landroid/view/View;Lcom/google/android/gms/internal/ads/cov;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zd;->e:Lcom/google/android/gms/internal/ads/dbs;

    .line 1019
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    .line 31
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

    .line 33
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdpq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-object v0

    .line 26
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdpq;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "BannerRtbAdapterWrapper interscrollerView should not be null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p1

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdpq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static final synthetic a(Lcom/google/android/gms/internal/ads/bsn;)Lcom/google/android/gms/internal/ads/emk;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdpq;
        }
    .end annotation

    .line 51
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/ads/os;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/os;->c()Lcom/google/android/gms/internal/ads/emk;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 53
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdpq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bsn;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cpk;",
            "Lcom/google/android/gms/internal/ads/cov;",
            "Lcom/google/android/gms/internal/ads/bsn<",
            "Lcom/google/android/gms/internal/ads/os;",
            "Lcom/google/android/gms/internal/ads/buh;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdpq;
        }
    .end annotation

    .line 5
    :try_start_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/os;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/cov;->T:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/os;->a(Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->ey:Lcom/google/android/gms/internal/ads/af;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/cov;->ab:Z

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/os;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/cov;->O:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/cov;->u:Lorg/json/JSONObject;

    .line 10
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/btq;->a:Landroid/content/Context;

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/btu;

    invoke-direct {v7, p0, p3, v1}, Lcom/google/android/gms/internal/ads/btu;-><init>(Lcom/google/android/gms/internal/ads/btq;Lcom/google/android/gms/internal/ads/bsn;Lcom/google/android/gms/internal/ads/btv;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    move-object v8, p2

    check-cast v8, Lcom/google/android/gms/internal/ads/ms;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v9, p1, Lcom/google/android/gms/internal/ads/cpo;->e:Lcom/google/android/gms/internal/ads/zzvt;

    .line 12
    invoke-interface/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/os;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/of;Lcom/google/android/gms/internal/ads/ms;Lcom/google/android/gms/internal/ads/zzvt;)V

    return-void

    .line 13
    :cond_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/os;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/cov;->O:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/cov;->u:Lorg/json/JSONObject;

    .line 14
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/btq;->a:Landroid/content/Context;

    .line 15
    invoke-static {p2}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/btu;

    invoke-direct {v7, p0, p3, v1}, Lcom/google/android/gms/internal/ads/btu;-><init>(Lcom/google/android/gms/internal/ads/btq;Lcom/google/android/gms/internal/ads/bsn;Lcom/google/android/gms/internal/ads/btv;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    move-object v8, p2

    check-cast v8, Lcom/google/android/gms/internal/ads/ms;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v9, p1, Lcom/google/android/gms/internal/ads/cpo;->e:Lcom/google/android/gms/internal/ads/zzvt;

    .line 16
    invoke-interface/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/os;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/of;Lcom/google/android/gms/internal/ads/ms;Lcom/google/android/gms/internal/ads/zzvt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 19
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

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->ey:Lcom/google/android/gms/internal/ads/af;

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/cov;->ab:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/btq;->a(Lcom/google/android/gms/internal/ads/cov;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btq;->b:Landroid/view/View;

    .line 41
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btq;->d:Lcom/google/android/gms/internal/ads/amn;

    new-instance v2, Lcom/google/android/gms/internal/ads/aof;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/bsn;->a:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/aof;-><init>(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/alx;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/gms/internal/ads/btt;

    invoke-direct {v4, p3}, Lcom/google/android/gms/internal/ads/btt;-><init>(Lcom/google/android/gms/internal/ads/bsn;)V

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/cov;->t:Ljava/util/List;

    const/4 v5, 0x0

    .line 42
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/coy;

    invoke-direct {p1, v0, v3, v4, p2}, Lcom/google/android/gms/internal/ads/alx;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/anq;Lcom/google/android/gms/internal/ads/coy;)V

    .line 43
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/amn;->a(Lcom/google/android/gms/internal/ads/aof;Lcom/google/android/gms/internal/ads/alx;)Lcom/google/android/gms/internal/ads/alt;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/alt;->j()Lcom/google/android/gms/internal/ads/ayh;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/ayh;->a(Landroid/view/View;)V

    .line 45
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    check-cast p2, Lcom/google/android/gms/internal/ads/buh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/anr;->g()Lcom/google/android/gms/internal/ads/bxk;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/buh;->a(Lcom/google/android/gms/internal/ads/ms;)V

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/alt;->h()Lcom/google/android/gms/internal/ads/alq;

    move-result-object p1

    return-object p1
.end method
