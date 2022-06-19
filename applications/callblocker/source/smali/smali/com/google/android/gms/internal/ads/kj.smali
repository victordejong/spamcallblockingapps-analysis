.class public final Lcom/google/android/gms/internal/ads/kj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/kk;",
            ">;"
        }
    .end annotation
.end field

.field private final b:J

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Z

.field private final i:Ljava/lang/String;

.field private final j:J

.field private final k:Ljava/lang/String;

.field private final l:I

.field private final m:I

.field private final n:J

.field private final o:Z

.field private final p:Z

.field private final q:Z

.field private final r:Z

.field private s:I

.field private t:I

.field private u:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 13

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const-wide/16 v6, -0x1

    const/4 v12, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-string/jumbo v1, "Mediation Response JSON: "

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 4
    :cond_0
    const-string/jumbo v0, "ad_networks"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 5
    new-instance v9, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    move v3, v4

    .line 8
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 9
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/kk;

    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/kk;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    const-string/jumbo v10, "banner"

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/kk;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 15
    if-eqz v10, :cond_1

    .line 16
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/kj;->u:Z

    .line 17
    :cond_1
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    if-gez v3, :cond_3

    .line 19
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 20
    const-string/jumbo v11, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    .line 24
    :goto_2
    if-eqz v0, :cond_3

    move v3, v1

    .line 26
    :cond_3
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 3
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 23
    goto :goto_2

    .line 27
    :cond_6
    iput v3, p0, Lcom/google/android/gms/internal/ads/kj;->s:I

    .line 28
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/kj;->t:I

    .line 29
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kj;->a:Ljava/util/List;

    .line 30
    const-string/jumbo v0, "qdata"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kj;->i:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "fs_model_type"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/kj;->m:I

    .line 32
    const-string/jumbo v0, "timeout_ms"

    invoke-virtual {p1, v0, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/kj;->n:J

    .line 33
    const-string/jumbo v0, "settings"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 34
    if-eqz v3, :cond_9

    .line 35
    const-string/jumbo v0, "ad_network_timeout_millis"

    invoke-virtual {v3, v0, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/kj;->b:J

    .line 36
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->u()Lcom/google/android/gms/internal/ads/km;

    const-string/jumbo v0, "click_urls"

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/km;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kj;->c:Ljava/util/List;

    .line 38
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->u()Lcom/google/android/gms/internal/ads/km;

    const-string/jumbo v0, "imp_urls"

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/km;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kj;->d:Ljava/util/List;

    .line 40
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->u()Lcom/google/android/gms/internal/ads/km;

    const-string/jumbo v0, "downloaded_imp_urls"

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/km;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kj;->e:Ljava/util/List;

    .line 41
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->u()Lcom/google/android/gms/internal/ads/km;

    const-string/jumbo v0, "nofill_urls"

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/km;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kj;->f:Ljava/util/List;

    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->u()Lcom/google/android/gms/internal/ads/km;

    const-string/jumbo v0, "remote_ping_urls"

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/km;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kj;->g:Ljava/util/List;

    .line 44
    const-string/jumbo v0, "render_in_browser"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/kj;->h:Z

    .line 45
    const-string/jumbo v0, "refresh"

    invoke-virtual {v3, v0, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 47
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_7

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    :goto_4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/kj;->j:J

    .line 48
    const-string/jumbo v0, "rewards"

    .line 49
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/rr;->a(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/ads/rr;

    move-result-object v0

    .line 50
    if-nez v0, :cond_8

    .line 51
    iput-object v12, p0, Lcom/google/android/gms/internal/ads/kj;->k:Ljava/lang/String;

    .line 52
    iput v2, p0, Lcom/google/android/gms/internal/ads/kj;->l:I

    .line 55
    :goto_5
    const-string/jumbo v0, "use_displayed_impression"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/kj;->o:Z

    .line 56
    const-string/jumbo v0, "allow_pub_rendered_attribution"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/kj;->p:Z

    .line 57
    const-string/jumbo v0, "allow_pub_owned_ad_view"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/kj;->q:Z

    .line 58
    const-string/jumbo v0, "allow_custom_click_gesture"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/kj;->r:Z

    .line 74
    :goto_6
    return-void

    :cond_7
    move-wide v0, v6

    .line 47
    goto :goto_4

    .line 53
    :cond_8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/rr;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/kj;->k:Ljava/lang/String;

    .line 54
    iget v0, v0, Lcom/google/android/gms/internal/ads/rr;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/kj;->l:I

    goto :goto_5

    .line 60
    :cond_9
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/kj;->b:J

    .line 61
    iput-object v12, p0, Lcom/google/android/gms/internal/ads/kj;->c:Ljava/util/List;

    .line 62
    iput-object v12, p0, Lcom/google/android/gms/internal/ads/kj;->d:Ljava/util/List;

    .line 63
    iput-object v12, p0, Lcom/google/android/gms/internal/ads/kj;->e:Ljava/util/List;

    .line 64
    iput-object v12, p0, Lcom/google/android/gms/internal/ads/kj;->f:Ljava/util/List;

    .line 65
    iput-object v12, p0, Lcom/google/android/gms/internal/ads/kj;->g:Ljava/util/List;

    .line 66
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/kj;->j:J

    .line 67
    iput-object v12, p0, Lcom/google/android/gms/internal/ads/kj;->k:Ljava/lang/String;

    .line 68
    iput v2, p0, Lcom/google/android/gms/internal/ads/kj;->l:I

    .line 69
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/kj;->o:Z

    .line 70
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/kj;->h:Z

    .line 71
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/kj;->p:Z

    .line 72
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/kj;->q:Z

    .line 73
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/kj;->r:Z

    goto :goto_6

    .line 12
    :catch_0
    move-exception v0

    goto/16 :goto_3
.end method
