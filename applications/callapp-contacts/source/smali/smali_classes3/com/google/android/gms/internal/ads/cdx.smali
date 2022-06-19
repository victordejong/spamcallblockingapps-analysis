.class final synthetic Lcom/google/android/gms/internal/ads/cdx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cdy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cdy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cdx;->a:Lcom/google/android/gms/internal/ads/cdy;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdx;->a:Lcom/google/android/gms/internal/ads/cdy;

    .line 1008
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cdy;->a:Lcom/google/android/gms/internal/ads/bji;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cdy;->c:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cpo;->f:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/cdy;->b:Ljava/lang/String;

    .line 2010
    sget-object v4, Lcom/google/android/gms/internal/ads/aq;->ce:Lcom/google/android/gms/internal/ads/af;

    .line 2011
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v4

    .line 2012
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    move-object v6, v5

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_0

    if-nez v3, :cond_2

    goto :goto_0

    .line 2016
    :cond_2
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/bji;->d:Z

    if-nez v4, :cond_3

    .line 2017
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bji;->a()V

    .line 2018
    :cond_3
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/bji;->a:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_4

    goto :goto_0

    .line 2021
    :cond_4
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    if-eqz v6, :cond_5

    goto :goto_1

    .line 2024
    :cond_5
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bji;->e:Lorg/json/JSONObject;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/bjl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_0

    .line 2027
    :cond_6
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/json/JSONObject;

    .line 1009
    :goto_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cdy;->a:Lcom/google/android/gms/internal/ads/bji;

    .line 2028
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->cf:Lcom/google/android/gms/internal/ads/af;

    .line 2029
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 2030
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    .line 2032
    :cond_7
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/bji;->b:Lorg/json/JSONObject;

    .line 1010
    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ads/cdv;

    invoke-direct {v0, v6, v5}, Lcom/google/android/gms/internal/ads/cdv;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-object v0
.end method
