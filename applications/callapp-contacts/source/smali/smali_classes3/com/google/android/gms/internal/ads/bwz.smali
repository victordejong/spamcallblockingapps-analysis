.class public final Lcom/google/android/gms/internal/ads/bwz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bss;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bss<",
        "Lcom/google/android/gms/internal/ads/bhu;",
        "Lcom/google/android/gms/internal/ads/cqe;",
        "Lcom/google/android/gms/internal/ads/bug;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/bhx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/bhx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bwz;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bwz;->a:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bwz;->c:Lcom/google/android/gms/internal/ads/bhx;

    return-void
.end method

.method static c(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bsn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cpk;",
            "Lcom/google/android/gms/internal/ads/cov;",
            "Lcom/google/android/gms/internal/ads/bsn<",
            "Lcom/google/android/gms/internal/ads/cqe;",
            "Lcom/google/android/gms/internal/ads/bug;",
            ">;)V"
        }
    .end annotation

    .line 15
    :try_start_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/cqe;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cov;->u:Lorg/json/JSONObject;

    .line 16
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/cqe;->a(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Fail to load ad from adapter "

    .line 20
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/bsn;->a:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bsn;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cpk;",
            "Lcom/google/android/gms/internal/ads/cov;",
            "Lcom/google/android/gms/internal/ads/bsn<",
            "Lcom/google/android/gms/internal/ads/cqe;",
            "Lcom/google/android/gms/internal/ads/bug;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdpq;
        }
    .end annotation

    .line 6
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/cqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cqe;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/bxb;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/bxb;-><init>(Lcom/google/android/gms/internal/ads/bwz;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bsn;)V

    .line 8
    iget-object v1, p3, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    check-cast v1, Lcom/google/android/gms/internal/ads/bug;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/bug;->a(Lcom/google/android/gms/internal/ads/ayv;)V

    .line 9
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/cqe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bwz;->b:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    move-object v6, p1

    check-cast v6, Lcom/google/android/gms/internal/ads/uf;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/cov;->u:Lorg/json/JSONObject;

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1048
    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cqe;->a:Lcom/google/android/gms/internal/ads/mn;

    .line 1049
    invoke-static {v1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v3

    const/4 v5, 0x0

    .line 1050
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/mn;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/uf;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1053
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdpq;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 13
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/bwz;->c(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bsn;)V

    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bsn;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdpq;,
            Lcom/google/android/gms/internal/ads/zzcwo;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bwz;->c:Lcom/google/android/gms/internal/ads/bhx;

    new-instance v1, Lcom/google/android/gms/internal/ads/aof;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/bsn;->a:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/aof;-><init>(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/bhv;

    new-instance p2, Lcom/google/android/gms/internal/ads/bxc;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/bxc;-><init>(Lcom/google/android/gms/internal/ads/bsn;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/bhv;-><init>(Lcom/google/android/gms/internal/ads/bap;)V

    .line 24
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/bhx;->a(Lcom/google/android/gms/internal/ads/aof;Lcom/google/android/gms/internal/ads/bhv;)Lcom/google/android/gms/internal/ads/bhw;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/anr;->a()Lcom/google/android/gms/internal/ads/asj;

    move-result-object p2

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/aji;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/cqe;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/aji;-><init>(Lcom/google/android/gms/internal/ads/cqe;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bwz;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/awl;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/anr;->b()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v6

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/anr;->c()Lcom/google/android/gms/internal/ads/arj;

    move-result-object v5

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bhw;->i()Lcom/google/android/gms/internal/ads/atj;

    move-result-object v4

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bhw;->k()Lcom/google/android/gms/internal/ads/ays;

    move-result-object v7

    .line 32
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    check-cast p2, Lcom/google/android/gms/internal/ads/bug;

    new-instance p3, Lcom/google/android/gms/internal/ads/bxd;

    move-object v2, p3

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/bxd;-><init>(Lcom/google/android/gms/internal/ads/bwz;Lcom/google/android/gms/internal/ads/atj;Lcom/google/android/gms/internal/ads/arj;Lcom/google/android/gms/internal/ads/asp;Lcom/google/android/gms/internal/ads/ays;)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/bug;->a(Lcom/google/android/gms/internal/ads/uf;)V

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bhw;->h()Lcom/google/android/gms/internal/ads/bhu;

    move-result-object p1

    return-object p1
.end method
