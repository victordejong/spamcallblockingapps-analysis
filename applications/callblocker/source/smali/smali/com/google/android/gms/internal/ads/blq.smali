.class final Lcom/google/android/gms/internal/ads/blq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/jg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/jg",
        "<",
        "Lcom/google/android/gms/internal/ads/bln;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/bln;

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const-string/jumbo v3, "base_url"

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/bln;->c:Lcom/google/android/gms/internal/ads/qc;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/qc;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string/jumbo v3, "signals"

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/bln;->b:Lorg/json/JSONObject;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string/jumbo v3, "body"

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/bln;->a:Lcom/google/android/gms/internal/ads/blu;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/blu;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    const-string/jumbo v3, "headers"

    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/bln;->a:Lcom/google/android/gms/internal/ads/blu;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/blu;->b:Ljava/util/Map;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/ve;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    const-string/jumbo v3, "response_code"

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/bln;->a:Lcom/google/android/gms/internal/ads/blu;

    iget v4, v4, Lcom/google/android/gms/internal/ads/blu;->a:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    const-string/jumbo v3, "latency"

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/bln;->a:Lcom/google/android/gms/internal/ads/blu;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/blu;->d:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 12
    const-string/jumbo v3, "request"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string/jumbo v1, "response"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    const-string/jumbo v1, "flags"

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/bln;->c:Lcom/google/android/gms/internal/ads/qc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/qc;->g()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    return-object v0
.end method
