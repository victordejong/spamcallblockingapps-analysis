.class public final Lcom/google/android/gms/internal/ads/bvh;
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
        "Lcom/google/android/gms/internal/ads/cqe;",
        "Lcom/google/android/gms/internal/ads/buh;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/bbe;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bbe;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bvh;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bvh;->b:Lcom/google/android/gms/internal/ads/bbe;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bvh;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/cpk;I)Z
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cpo;->g:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
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
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/cqe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bvh;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/cov;->u:Lorg/json/JSONObject;

    .line 7
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/cov;->r:Lcom/google/android/gms/internal/ads/cpc;

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzbh;->zza(Lcom/google/android/gms/ads/internal/util/zzbm;)Ljava/lang/String;

    move-result-object v7

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    move-object v8, p2

    check-cast v8, Lcom/google/android/gms/internal/ads/ms;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v9, p2, Lcom/google/android/gms/internal/ads/cpo;->i:Lcom/google/android/gms/internal/ads/zzaei;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v10, p1, Lcom/google/android/gms/internal/ads/cpo;->g:Ljava/util/ArrayList;

    .line 1065
    :try_start_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/cqe;->a:Lcom/google/android/gms/internal/ads/mn;

    .line 1066
    invoke-static {v1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v4

    .line 1067
    invoke-interface/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/mn;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ms;Lcom/google/android/gms/internal/ads/zzaei;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1070
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdpq;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bsn;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdpq;,
            Lcom/google/android/gms/internal/ads/zzcwo;
        }
    .end annotation

    .line 13
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/cqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cqe;->d()Lcom/google/android/gms/internal/ads/nb;

    move-result-object v0

    .line 14
    iget-object v1, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/cqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cqe;->e()Lcom/google/android/gms/internal/ads/nc;

    move-result-object v1

    .line 15
    iget-object v2, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/cqe;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/cqe;->h()Lcom/google/android/gms/internal/ads/nh;

    move-result-object v2

    const/4 v3, 0x6

    if-eqz v2, :cond_0

    .line 16
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/bvh;->a(Lcom/google/android/gms/internal/ads/cpk;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 17
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/bcr;->a(Lcom/google/android/gms/internal/ads/nh;)Lcom/google/android/gms/internal/ads/bcr;

    move-result-object v3

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 19
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/bvh;->a(Lcom/google/android/gms/internal/ads/cpk;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bcr;->b(Lcom/google/android/gms/internal/ads/nb;)Lcom/google/android/gms/internal/ads/bcr;

    move-result-object v3

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v4, 0x2

    .line 22
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/bvh;->a(Lcom/google/android/gms/internal/ads/cpk;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bcr;->a(Lcom/google/android/gms/internal/ads/nb;)Lcom/google/android/gms/internal/ads/bcr;

    move-result-object v3

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 24
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/bvh;->a(Lcom/google/android/gms/internal/ads/cpk;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 25
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bcr;->b(Lcom/google/android/gms/internal/ads/nc;)Lcom/google/android/gms/internal/ads/bcr;

    move-result-object v3

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    const/4 v3, 0x1

    .line 26
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/bvh;->a(Lcom/google/android/gms/internal/ads/cpk;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 27
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bcr;->a(Lcom/google/android/gms/internal/ads/nc;)Lcom/google/android/gms/internal/ads/bcr;

    move-result-object v3

    .line 29
    :goto_0
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/cpo;->g:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/bcr;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 31
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 33
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bvh;->b:Lcom/google/android/gms/internal/ads/bbe;

    new-instance v5, Lcom/google/android/gms/internal/ads/aof;

    iget-object v6, p3, Lcom/google/android/gms/internal/ads/bsn;->a:Ljava/lang/String;

    invoke-direct {v5, p1, p2, v6}, Lcom/google/android/gms/internal/ads/aof;-><init>(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/bde;

    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/bde;-><init>(Lcom/google/android/gms/internal/ads/bcr;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/beq;

    invoke-direct {p2, v1, v0, v2}, Lcom/google/android/gms/internal/ads/beq;-><init>(Lcom/google/android/gms/internal/ads/nc;Lcom/google/android/gms/internal/ads/nb;Lcom/google/android/gms/internal/ads/nh;)V

    .line 34
    invoke-virtual {v4, v5, p1, p2}, Lcom/google/android/gms/internal/ads/bbe;->a(Lcom/google/android/gms/internal/ads/aof;Lcom/google/android/gms/internal/ads/bde;Lcom/google/android/gms/internal/ads/beq;)Lcom/google/android/gms/internal/ads/bcs;

    move-result-object p1

    .line 35
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    check-cast p2, Lcom/google/android/gms/internal/ads/buh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/anr;->f()Lcom/google/android/gms/internal/ads/bxr;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/buh;->a(Lcom/google/android/gms/internal/ads/ms;)V

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/anr;->a()Lcom/google/android/gms/internal/ads/asj;

    move-result-object p2

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/aji;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/internal/ads/cqe;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/aji;-><init>(Lcom/google/android/gms/internal/ads/cqe;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/bvh;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, p3}, Lcom/google/android/gms/internal/ads/awl;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bcq;->h()Lcom/google/android/gms/internal/ads/bcf;

    move-result-object p1

    return-object p1

    .line 32
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcwo;

    sget-object p2, Lcom/google/android/gms/internal/ads/cqj;->zzhov:Lcom/google/android/gms/internal/ads/cqj;

    const-string p3, "No corresponding native ad listener"

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcwo;-><init>(Lcom/google/android/gms/internal/ads/cqj;Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcwo;

    sget-object p2, Lcom/google/android/gms/internal/ads/cqj;->zzhov:Lcom/google/android/gms/internal/ads/cqj;

    const-string p3, "No native ad mappers"

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcwo;-><init>(Lcom/google/android/gms/internal/ads/cqj;Ljava/lang/String;)V

    throw p1
.end method
