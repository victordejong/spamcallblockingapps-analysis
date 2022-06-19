.class final synthetic Lcom/google/android/gms/internal/ads/bvf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bvc;

.field private final b:Lcom/google/android/gms/internal/ads/dbt;

.field private final c:Lcom/google/android/gms/internal/ads/dbt;

.field private final d:Lcom/google/android/gms/internal/ads/cpk;

.field private final e:Lcom/google/android/gms/internal/ads/cov;

.field private final f:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bvc;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bvf;->a:Lcom/google/android/gms/internal/ads/bvc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bvf;->b:Lcom/google/android/gms/internal/ads/dbt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bvf;->c:Lcom/google/android/gms/internal/ads/dbt;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bvf;->d:Lcom/google/android/gms/internal/ads/cpk;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bvf;->e:Lcom/google/android/gms/internal/ads/cov;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bvf;->f:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvf;->a:Lcom/google/android/gms/internal/ads/bvc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bvf;->b:Lcom/google/android/gms/internal/ads/dbt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bvf;->c:Lcom/google/android/gms/internal/ads/dbt;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bvf;->d:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bvf;->e:Lcom/google/android/gms/internal/ads/cov;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bvf;->f:Lorg/json/JSONObject;

    .line 1018
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dbt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/bcr;

    .line 1019
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dbt;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/bgy;

    .line 1020
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bvc;->a:Lcom/google/android/gms/internal/ads/bbe;

    new-instance v6, Lcom/google/android/gms/internal/ads/aof;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v4, v7}, Lcom/google/android/gms/internal/ads/aof;-><init>(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/bde;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/bde;-><init>(Lcom/google/android/gms/internal/ads/bcr;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/bbs;

    invoke-direct {v4, v5, v2}, Lcom/google/android/gms/internal/ads/bbs;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/bgy;)V

    .line 1021
    invoke-virtual {v0, v6, v3, v4}, Lcom/google/android/gms/internal/ads/bbe;->a(Lcom/google/android/gms/internal/ads/aof;Lcom/google/android/gms/internal/ads/bde;Lcom/google/android/gms/internal/ads/bbs;)Lcom/google/android/gms/internal/ads/bct;

    move-result-object v0

    .line 1022
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bct;->i()Lcom/google/android/gms/internal/ads/bgz;

    move-result-object v3

    .line 2007
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/bgz;->a:Lcom/google/android/gms/internal/ads/ey;

    if-eqz v4, :cond_0

    .line 2009
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/bgz;->b:Lcom/google/android/gms/internal/ads/bgy;

    const-string v5, "/nativeAdCustomClick"

    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/internal/ads/bgy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 1023
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bct;->j()Lcom/google/android/gms/internal/ads/bhk;

    move-result-object v3

    .line 3056
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/bgy;->a:Lcom/google/android/gms/internal/ads/bhh;

    .line 3010
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/bhk;->a:Lcom/google/android/gms/internal/ads/arj;

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/bhk;->c:Lcom/google/android/gms/internal/ads/ate;

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/bhk;->d:Lcom/google/android/gms/internal/ads/atj;

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/bhk;->e:Lcom/google/android/gms/internal/ads/avz;

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/bhk;->b:Lcom/google/android/gms/internal/ads/asp;

    .line 3011
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/bhj;->a(Lcom/google/android/gms/internal/ads/asp;)Lcom/google/android/gms/ads/internal/overlay/zzx;

    move-result-object v9

    .line 3012
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/bhh;->a(Lcom/google/android/gms/internal/ads/bhh;Lcom/google/android/gms/internal/ads/eir;Lcom/google/android/gms/internal/ads/go;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/ads/gq;Lcom/google/android/gms/ads/internal/overlay/zzx;)V

    .line 3013
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/bhk;->f:Lcom/google/android/gms/internal/ads/cov;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/bhk;->g:Lcom/google/android/gms/internal/ads/coz;

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/ads/bgy;->a(Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)V

    .line 1024
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bct;->k()Lcom/google/android/gms/internal/ads/bgf;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bcr;->v()Lcom/google/android/gms/internal/ads/adt;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4008
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/bgf;->c:Lcom/google/android/gms/internal/ads/ayh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/ayh;->a(Landroid/view/View;)V

    .line 4009
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/bgf;->c:Lcom/google/android/gms/internal/ads/ayh;

    new-instance v4, Lcom/google/android/gms/internal/ads/bge;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/bge;-><init>(Lcom/google/android/gms/internal/ads/adt;)V

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/bgf;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/awl;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 4010
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/bgf;->c:Lcom/google/android/gms/internal/ads/ayh;

    new-instance v4, Lcom/google/android/gms/internal/ads/bgh;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/bgh;-><init>(Lcom/google/android/gms/internal/ads/adt;)V

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/bgf;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/awl;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 4011
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/bgf;->c:Lcom/google/android/gms/internal/ads/ayh;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/bgf;->b:Lcom/google/android/gms/internal/ads/akh;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/bgf;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/awl;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 4012
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/bgf;->b:Lcom/google/android/gms/internal/ads/akh;

    .line 4022
    iput-object v1, v3, Lcom/google/android/gms/internal/ads/akh;->a:Lcom/google/android/gms/internal/ads/adt;

    .line 4013
    new-instance v3, Lcom/google/android/gms/internal/ads/bgg;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/bgg;-><init>(Lcom/google/android/gms/internal/ads/bgf;)V

    const-string v4, "/trackActiveViewUnit"

    invoke-interface {v1, v4, v3}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 4014
    new-instance v3, Lcom/google/android/gms/internal/ads/bgj;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/bgj;-><init>(Lcom/google/android/gms/internal/ads/bgf;)V

    const-string v2, "/untrackActiveViewUnit"

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 1025
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcq;->h()Lcom/google/android/gms/internal/ads/bcf;

    move-result-object v0

    return-object v0
.end method
