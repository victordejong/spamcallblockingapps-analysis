.class final synthetic Lcom/google/android/gms/internal/ads/aot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/css;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aor;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aot;->a:Lcom/google/android/gms/internal/ads/aor;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aot;->a:Lcom/google/android/gms/internal/ads/aor;

    check-cast p1, Lcom/google/android/gms/internal/ads/cpk;

    .line 1063
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aor;->b:Lcom/google/android/gms/internal/ads/aiw;

    .line 2005
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cpi;->c:Ljava/util/List;

    .line 2006
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/cph;

    .line 2007
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/aiw;->a:Ljava/util/Map;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/cph;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2008
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/aiw;->a:Ljava/util/Map;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/cph;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/aix;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cph;->b:Lorg/json/JSONObject;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/aix;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 2009
    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/aiw;->b:Ljava/util/Map;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/cph;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2010
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/aiw;->b:Ljava/util/Map;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/cph;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/aiy;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cph;->b:Lorg/json/JSONObject;

    .line 2011
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2012
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2013
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2014
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 2016
    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2019
    :cond_3
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/aiy;->a(Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    return-object p1
.end method
