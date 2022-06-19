.class public final Lcom/google/android/gms/internal/ads/bwj;
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
        "Lcom/google/android/gms/internal/ads/os;",
        "Lcom/google/android/gms/internal/ads/buh;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/bhx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bhx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bwj;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bwj;->b:Lcom/google/android/gms/internal/ads/bhx;

    return-void
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
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpo;->o:Lcom/google/android/gms/internal/ads/cpa;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cpa;->a:I

    sget v1, Lcom/google/android/gms/internal/ads/cpg;->c:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 8
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/os;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/cov;->O:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/cov;->u:Lorg/json/JSONObject;

    .line 9
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bwj;->a:Landroid/content/Context;

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/bwl;

    invoke-direct {v8, p0, p3, v2}, Lcom/google/android/gms/internal/ads/bwl;-><init>(Lcom/google/android/gms/internal/ads/bwj;Lcom/google/android/gms/internal/ads/bsn;Lcom/google/android/gms/internal/ads/bwi;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    move-object v9, p1

    check-cast v9, Lcom/google/android/gms/internal/ads/ms;

    .line 11
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/os;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/oq;Lcom/google/android/gms/internal/ads/ms;)V

    return-void

    .line 12
    :cond_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/os;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/cov;->O:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/cov;->u:Lorg/json/JSONObject;

    .line 13
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bwj;->a:Landroid/content/Context;

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/bwl;

    invoke-direct {v8, p0, p3, v2}, Lcom/google/android/gms/internal/ads/bwl;-><init>(Lcom/google/android/gms/internal/ads/bwj;Lcom/google/android/gms/internal/ads/bsn;Lcom/google/android/gms/internal/ads/bwi;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    move-object v9, p1

    check-cast v9, Lcom/google/android/gms/internal/ads/ms;

    .line 15
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/os;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/oq;Lcom/google/android/gms/internal/ads/ms;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Remote exception loading a rewarded RTB ad"

    .line 18
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bsn;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdpq;,
            Lcom/google/android/gms/internal/ads/zzcwo;
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/bus;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/os;

    const/4 v2, 0x1

    invoke-direct {v0, p2, v1, v2}, Lcom/google/android/gms/internal/ads/bus;-><init>(Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/os;Z)V

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bwj;->b:Lcom/google/android/gms/internal/ads/bhx;

    new-instance v2, Lcom/google/android/gms/internal/ads/aof;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/bsn;->a:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/aof;-><init>(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/bhv;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/bhv;-><init>(Lcom/google/android/gms/internal/ads/bap;)V

    .line 23
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/bhx;->a(Lcom/google/android/gms/internal/ads/aof;Lcom/google/android/gms/internal/ads/bhv;)Lcom/google/android/gms/internal/ads/bhw;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/anr;->d()Lcom/google/android/gms/internal/ads/asc;

    move-result-object p2

    .line 1022
    iput-object p2, v0, Lcom/google/android/gms/internal/ads/bus;->a:Lcom/google/android/gms/internal/ads/asc;

    .line 25
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    check-cast p2, Lcom/google/android/gms/internal/ads/buh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bhw;->n()Lcom/google/android/gms/internal/ads/bxh;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/buh;->a(Lcom/google/android/gms/internal/ads/ms;)V

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bhw;->h()Lcom/google/android/gms/internal/ads/bhu;

    move-result-object p1

    return-object p1
.end method
