.class final Lcom/google/android/gms/internal/ads/lr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zt<",
        "Lcom/google/android/gms/internal/ads/lc;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/kv;

.field private final synthetic b:Ljava/lang/Object;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/zp;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/ls;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ls;Lcom/google/android/gms/internal/ads/kv;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lr;->d:Lcom/google/android/gms/internal/ads/ls;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lr;->a:Lcom/google/android/gms/internal/ads/kv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/lr;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/lr;->c:Lcom/google/android/gms/internal/ads/zp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/lc;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lr;->d:Lcom/google/android/gms/internal/ads/ls;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lr;->a:Lcom/google/android/gms/internal/ads/kv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lr;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/lr;->c:Lcom/google/android/gms/internal/ads/zp;

    .line 2014
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzj;->zzzr()Ljava/lang/String;

    move-result-object v4

    .line 2015
    sget-object v5, Lcom/google/android/gms/internal/ads/gs;->p:Lcom/google/android/gms/internal/ads/hu;

    new-instance v6, Lcom/google/android/gms/internal/ads/lt;

    invoke-direct {v6, v0, v1, v3}, Lcom/google/android/gms/internal/ads/lt;-><init>(Lcom/google/android/gms/internal/ads/ls;Lcom/google/android/gms/internal/ads/kv;Lcom/google/android/gms/internal/ads/zp;)V

    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/internal/ads/hu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hw;)V

    .line 2016
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "id"

    .line 2017
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "args"

    .line 2018
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/ls;->b:Lcom/google/android/gms/internal/ads/lk;

    invoke-interface {v6, v2}, Lcom/google/android/gms/internal/ads/lk;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v5, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2019
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ls;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v5}, Lcom/google/android/gms/internal/ads/lc;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2022
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z

    const-string v0, "Unable to invokeJavascript"

    .line 2023
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2024
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/kv;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 2026
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/kv;->a()V

    .line 2027
    throw p1
.end method
