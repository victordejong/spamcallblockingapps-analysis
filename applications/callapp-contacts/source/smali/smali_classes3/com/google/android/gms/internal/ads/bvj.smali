.class public final Lcom/google/android/gms/internal/ads/bvj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bss;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bss<",
        "Lcom/google/android/gms/internal/ads/bcf;",
        "Lcom/google/android/gms/internal/ads/os;",
        "Lcom/google/android/gms/internal/ads/buh;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/google/android/gms/internal/ads/nh;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/bbe;

.field private final d:Lcom/google/android/gms/internal/ads/zzbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bbe;Lcom/google/android/gms/internal/ads/zzbar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bvj;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bvj;->c:Lcom/google/android/gms/internal/ads/bbe;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bvj;->d:Lcom/google/android/gms/internal/ads/zzbar;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bsn;)V
    .locals 11
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

    .line 6
    :try_start_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/os;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/cov;->T:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/os;->a(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvj;->d:Lcom/google/android/gms/internal/ads/zzbar;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbar;->zzekb:I

    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->be:Lcom/google/android/gms/internal/ads/af;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 10
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/os;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/cov;->O:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/cov;->u:Lorg/json/JSONObject;

    .line 11
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bvj;->b:Landroid/content/Context;

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/bvl;

    invoke-direct {v8, p0, p3, v2}, Lcom/google/android/gms/internal/ads/bvl;-><init>(Lcom/google/android/gms/internal/ads/bvj;Lcom/google/android/gms/internal/ads/bsn;Lcom/google/android/gms/internal/ads/bvm;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    move-object v9, p1

    check-cast v9, Lcom/google/android/gms/internal/ads/ms;

    .line 13
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/os;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/ol;Lcom/google/android/gms/internal/ads/ms;)V

    return-void

    .line 14
    :cond_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/os;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/cov;->O:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/cov;->u:Lorg/json/JSONObject;

    .line 15
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bvj;->b:Landroid/content/Context;

    .line 16
    invoke-static {p2}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/bvl;

    invoke-direct {v8, p0, p3, v2}, Lcom/google/android/gms/internal/ads/bvl;-><init>(Lcom/google/android/gms/internal/ads/bvj;Lcom/google/android/gms/internal/ads/bsn;Lcom/google/android/gms/internal/ads/bvm;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    move-object v9, p2

    check-cast v9, Lcom/google/android/gms/internal/ads/ms;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v10, p1, Lcom/google/android/gms/internal/ads/cpo;->i:Lcom/google/android/gms/internal/ads/zzaei;

    .line 17
    invoke-interface/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/os;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/ol;Lcom/google/android/gms/internal/ads/ms;Lcom/google/android/gms/internal/ads/zzaei;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 20
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdpq;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bsn;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdpq;,
            Lcom/google/android/gms/internal/ads/zzcwo;
        }
    .end annotation

    .line 23
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpo;->g:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvj;->a:Lcom/google/android/gms/internal/ads/nh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bcr;->a(Lcom/google/android/gms/internal/ads/nh;)Lcom/google/android/gms/internal/ads/bcr;

    move-result-object v0

    .line 27
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cpo;->g:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bvj;->c:Lcom/google/android/gms/internal/ads/bbe;

    new-instance v2, Lcom/google/android/gms/internal/ads/aof;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/bsn;->a:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/aof;-><init>(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/bde;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/bde;-><init>(Lcom/google/android/gms/internal/ads/bcr;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/beq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvj;->a:Lcom/google/android/gms/internal/ads/nh;

    const/4 v3, 0x0

    invoke-direct {p2, v3, v3, v0}, Lcom/google/android/gms/internal/ads/beq;-><init>(Lcom/google/android/gms/internal/ads/nc;Lcom/google/android/gms/internal/ads/nb;Lcom/google/android/gms/internal/ads/nh;)V

    .line 32
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/bbe;->a(Lcom/google/android/gms/internal/ads/aof;Lcom/google/android/gms/internal/ads/bde;Lcom/google/android/gms/internal/ads/beq;)Lcom/google/android/gms/internal/ads/bcs;

    move-result-object p1

    .line 33
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    check-cast p2, Lcom/google/android/gms/internal/ads/buh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/anr;->g()Lcom/google/android/gms/internal/ads/bxk;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/buh;->a(Lcom/google/android/gms/internal/ads/ms;)V

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bcq;->h()Lcom/google/android/gms/internal/ads/bcf;

    move-result-object p1

    return-object p1

    .line 30
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcwo;

    sget-object p2, Lcom/google/android/gms/internal/ads/cqj;->zzhov:Lcom/google/android/gms/internal/ads/cqj;

    const-string p3, "No corresponding native ad listener"

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcwo;-><init>(Lcom/google/android/gms/internal/ads/cqj;Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcwo;

    sget-object p2, Lcom/google/android/gms/internal/ads/cqj;->zzhow:Lcom/google/android/gms/internal/ads/cqj;

    const-string p3, "Unified must be used for RTB."

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcwo;-><init>(Lcom/google/android/gms/internal/ads/cqj;Ljava/lang/String;)V

    throw p1
.end method
