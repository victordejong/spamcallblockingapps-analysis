.class public final Lcom/google/android/gms/internal/ads/bwe;
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
        "Lcom/google/android/gms/internal/ads/buh;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/android/gms/internal/ads/bhx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/bhx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bwe;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bwe;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bwe;->c:Lcom/google/android/gms/internal/ads/bhx;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bsn;)V
    .locals 3
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

    .line 7
    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    .line 8
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cpo;->o:Lcom/google/android/gms/internal/ads/cpa;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cpa;->a:I

    sget v1, Lcom/google/android/gms/internal/ads/cpg;->c:I

    if-ne v0, v1, :cond_0

    .line 9
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/cqe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bwe;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/cov;->u:Lorg/json/JSONObject;

    .line 10
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    check-cast v2, Lcom/google/android/gms/internal/ads/ms;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    :try_start_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cqe;->a:Lcom/google/android/gms/internal/ads/mn;

    .line 1109
    invoke-static {v1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v1

    .line 1110
    invoke-interface {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/mn;->c(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ms;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1113
    :try_start_2
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdpq;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 12
    :cond_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/cqe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bwe;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/cov;->u:Lorg/json/JSONObject;

    .line 13
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    check-cast v2, Lcom/google/android/gms/internal/ads/ms;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2098
    :try_start_3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cqe;->a:Lcom/google/android/gms/internal/ads/mn;

    .line 2099
    invoke-static {v1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v1

    .line 2100
    invoke-interface {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/mn;->b(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ms;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 2103
    :try_start_4
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdpq;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "Fail to load ad from adapter "

    .line 17
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/bsn;->a:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, p3

    :goto_0
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bsn;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdpq;,
            Lcom/google/android/gms/internal/ads/zzcwo;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bwe;->c:Lcom/google/android/gms/internal/ads/bhx;

    new-instance v1, Lcom/google/android/gms/internal/ads/aof;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/bsn;->a:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/aof;-><init>(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/bhv;

    new-instance p2, Lcom/google/android/gms/internal/ads/bwh;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/bwh;-><init>(Lcom/google/android/gms/internal/ads/bsn;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/bhv;-><init>(Lcom/google/android/gms/internal/ads/bap;)V

    .line 21
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/bhx;->a(Lcom/google/android/gms/internal/ads/aof;Lcom/google/android/gms/internal/ads/bhv;)Lcom/google/android/gms/internal/ads/bhw;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/anr;->a()Lcom/google/android/gms/internal/ads/asj;

    move-result-object p2

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/aji;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/cqe;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/aji;-><init>(Lcom/google/android/gms/internal/ads/cqe;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bwe;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/awl;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 24
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    check-cast p2, Lcom/google/android/gms/internal/ads/buh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bhw;->m()Lcom/google/android/gms/internal/ads/bwo;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/buh;->a(Lcom/google/android/gms/internal/ads/ms;)V

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bhw;->h()Lcom/google/android/gms/internal/ads/bhu;

    move-result-object p1

    return-object p1
.end method
