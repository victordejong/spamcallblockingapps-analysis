.class final synthetic Lcom/google/android/gms/internal/ads/bbc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/baz;

.field private final b:Lcom/google/android/gms/internal/ads/chd;

.field private final c:Lcom/google/android/gms/internal/ads/cgr;

.field private final d:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/baz;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bbc;->a:Lcom/google/android/gms/internal/ads/baz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bbc;->b:Lcom/google/android/gms/internal/ads/chd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bbc;->c:Lcom/google/android/gms/internal/ads/cgr;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bbc;->d:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbc;->a:Lcom/google/android/gms/internal/ads/baz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bbc;->b:Lcom/google/android/gms/internal/ads/chd;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bbc;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bbc;->d:Lorg/json/JSONObject;

    .line 3
    new-instance v5, Lcom/google/android/gms/internal/ads/ayx;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/ayx;-><init>()V

    .line 4
    const-string/jumbo v0, "template_id"

    const/4 v6, -0x1

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/ayx;->a(I)V

    .line 5
    const-string/jumbo v0, "custom_template_id"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/ayx;->a(Ljava/lang/String;)V

    .line 7
    const-string/jumbo v0, "omid_settings"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    const-string/jumbo v6, "omid_partner_name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    :goto_0
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/ayx;->b(Ljava/lang/String;)V

    .line 12
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    .line 13
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/chh;->g:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ayx;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqm;

    .line 15
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ayx;->a()I

    move-result v1

    const/16 v2, 0x20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Invalid template ID: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    move-object v0, v1

    .line 10
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ayx;->a()I

    move-result v2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_3

    .line 17
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ayx;->u()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqm;

    const-string/jumbo v1, "No custom template id for custom template ad response."

    invoke-direct {v0, v1, v7}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 19
    :cond_2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->h:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ayx;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqm;

    const-string/jumbo v1, "Unexpected custom template id in the response."

    invoke-direct {v0, v1, v7}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 21
    :cond_3
    const-string/jumbo v0, "rating"

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-virtual {v4, v0, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/ads/ayx;->a(D)V

    .line 22
    const-string/jumbo v2, "headline"

    const-string/jumbo v0, "headline"

    .line 23
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/cgr;->E:Z

    .line 24
    if-eqz v3, :cond_4

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    invoke-static {}, Lcom/google/android/gms/internal/ads/ve;->c()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    :cond_4
    invoke-virtual {v5, v2, v0}, Lcom/google/android/gms/internal/ads/ayx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string/jumbo v0, "body"

    const-string/jumbo v2, "body"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Lcom/google/android/gms/internal/ads/ayx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string/jumbo v0, "call_to_action"

    const-string/jumbo v2, "call_to_action"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Lcom/google/android/gms/internal/ads/ayx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string/jumbo v0, "store"

    const-string/jumbo v2, "store"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Lcom/google/android/gms/internal/ads/ayx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string/jumbo v0, "price"

    const-string/jumbo v2, "price"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Lcom/google/android/gms/internal/ads/ayx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string/jumbo v0, "advertiser"

    const-string/jumbo v2, "advertiser"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/internal/ads/ayx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-object v5
.end method
