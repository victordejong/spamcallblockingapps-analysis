.class public Lcom/google/android/gms/ads/query/QueryInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zzhva:Lcom/google/android/gms/internal/ads/end;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/end;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/query/QueryInfo;->zzhva:Lcom/google/android/gms/internal/ads/end;

    return-void
.end method

.method public static generate(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V
    .locals 4

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/ru;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object p2, v1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest;->zzdt()Lcom/google/android/gms/internal/ads/emr;

    move-result-object p2

    :goto_0
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/ru;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/internal/ads/emr;)V

    .line 2011
    iget-object p0, v0, Lcom/google/android/gms/internal/ads/ru;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ru;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/xo;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "Internal Error, query info generator is null."

    .line 2013
    invoke-virtual {p3, p0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 2015
    :cond_1
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/ru;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    .line 2016
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/ru;->c:Lcom/google/android/gms/internal/ads/emr;

    if-nez p2, :cond_2

    .line 2017
    new-instance p2, Lcom/google/android/gms/internal/ads/eja;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/eja;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/eja;->a()Lcom/google/android/gms/internal/ads/zzvq;

    move-result-object p2

    goto :goto_1

    .line 2018
    :cond_2
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/ru;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ru;->c:Lcom/google/android/gms/internal/ads/emr;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/ads/ejb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/emr;)Lcom/google/android/gms/internal/ads/zzvq;

    move-result-object p2

    .line 2019
    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzazi;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/ru;->b:Lcom/google/android/gms/ads/AdFormat;

    .line 2020
    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdFormat;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3, v1, p2}, Lcom/google/android/gms/internal/ads/zzazi;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/zzvq;)V

    .line 2021
    :try_start_0
    new-instance p2, Lcom/google/android/gms/internal/ads/rt;

    invoke-direct {p2, v0, p3}, Lcom/google/android/gms/internal/ads/rt;-><init>(Lcom/google/android/gms/internal/ads/ru;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V

    invoke-interface {p0, p1, v2, p2}, Lcom/google/android/gms/internal/ads/xo;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/zzazi;Lcom/google/android/gms/internal/ads/xn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "Internal Error."

    .line 2024
    invoke-virtual {p3, p0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/query/QueryInfo;->zzhva:Lcom/google/android/gms/internal/ads/end;

    .line 1005
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/end;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryBundle()Landroid/os/Bundle;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/query/QueryInfo;->zzhva:Lcom/google/android/gms/internal/ads/end;

    .line 1013
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/end;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/end;->a(Lcom/google/android/gms/ads/query/QueryInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
