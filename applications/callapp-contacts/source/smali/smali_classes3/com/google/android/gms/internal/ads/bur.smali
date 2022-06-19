.class public final Lcom/google/android/gms/internal/ads/bur;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bss;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bss<",
        "Lcom/google/android/gms/internal/ads/azi;",
        "Lcom/google/android/gms/internal/ads/cqe;",
        "Lcom/google/android/gms/internal/ads/buh;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/zzbar;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/bai;

.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/bai;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bur;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bur;->a:Lcom/google/android/gms/internal/ads/zzbar;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bur;->c:Lcom/google/android/gms/internal/ads/bai;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bur;->d:Ljava/util/concurrent/Executor;

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
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/cqe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bur;->b:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/cov;->u:Lorg/json/JSONObject;

    .line 8
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/cov;->r:Lcom/google/android/gms/internal/ads/cpc;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbh;->zza(Lcom/google/android/gms/ads/internal/util/zzbm;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/ms;

    .line 1034
    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cqe;->a:Lcom/google/android/gms/internal/ads/mn;

    .line 1035
    invoke-static {v1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v3

    .line 1036
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/mn;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ms;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1039
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdpq;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bsn;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdpq;,
            Lcom/google/android/gms/internal/ads/zzcwo;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bur;->c:Lcom/google/android/gms/internal/ads/bai;

    new-instance v1, Lcom/google/android/gms/internal/ads/aof;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/bsn;->a:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/aof;-><init>(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/azj;

    new-instance p2, Lcom/google/android/gms/internal/ads/buu;

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/buu;-><init>(Lcom/google/android/gms/internal/ads/bur;Lcom/google/android/gms/internal/ads/bsn;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/azj;-><init>(Lcom/google/android/gms/internal/ads/bap;)V

    .line 14
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/bai;->a(Lcom/google/android/gms/internal/ads/aof;Lcom/google/android/gms/internal/ads/azj;)Lcom/google/android/gms/internal/ads/azk;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/anr;->a()Lcom/google/android/gms/internal/ads/asj;

    move-result-object p2

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/aji;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/cqe;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/aji;-><init>(Lcom/google/android/gms/internal/ads/cqe;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bur;->d:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/awl;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 17
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    check-cast p2, Lcom/google/android/gms/internal/ads/buh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/anr;->f()Lcom/google/android/gms/internal/ads/bxr;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/buh;->a(Lcom/google/android/gms/internal/ads/ms;)V

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/azk;->h()Lcom/google/android/gms/internal/ads/azi;

    move-result-object p1

    return-object p1
.end method
