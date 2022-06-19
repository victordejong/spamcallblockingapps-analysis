.class public final Lcom/google/android/gms/internal/ads/baz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/crs;

.field private final b:Lcom/google/android/gms/internal/ads/bbe;

.field private final c:Lcom/google/android/gms/internal/ads/bbo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/crs;Lcom/google/android/gms/internal/ads/bbe;Lcom/google/android/gms/internal/ads/bbo;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/baz;->a:Lcom/google/android/gms/internal/ads/crs;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/baz;->b:Lcom/google/android/gms/internal/ads/bbe;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/baz;->c:Lcom/google/android/gms/internal/ads/bbo;

    .line 5
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/crt;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/chd;",
            "Lcom/google/android/gms/internal/ads/cgr;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/ayx;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baz;->a:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/bbc;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/bbc;-><init>(Lcom/google/android/gms/internal/ads/baz;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lorg/json/JSONObject;)V

    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baz;->b:Lcom/google/android/gms/internal/ads/bbe;

    const-string/jumbo v1, "images"

    .line 9
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/internal/ads/bbe;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v3

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baz;->b:Lcom/google/android/gms/internal/ads/bbe;

    const-string/jumbo v1, "secondary_image"

    .line 11
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/internal/ads/bbe;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v5

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baz;->b:Lcom/google/android/gms/internal/ads/bbe;

    const-string/jumbo v1, "app_icon"

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/internal/ads/bbe;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v4

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baz;->b:Lcom/google/android/gms/internal/ads/bbe;

    const-string/jumbo v1, "attribution"

    .line 14
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/internal/ads/bbe;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v6

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baz;->b:Lcom/google/android/gms/internal/ads/bbe;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/bbe;->c(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v8

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baz;->b:Lcom/google/android/gms/internal/ads/bbe;

    .line 18
    const-string/jumbo v1, "enable_omid"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v9

    .line 31
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baz;->c:Lcom/google/android/gms/internal/ads/bbo;

    const-string/jumbo v1, "custom_assets"

    .line 32
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/internal/ads/bbo;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v10

    .line 33
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/crt;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v5, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    const/4 v1, 0x4

    aput-object v6, v0, v1

    const/4 v1, 0x5

    aput-object v8, v0, v1

    const/4 v1, 0x6

    aput-object v9, v0, v1

    const/4 v1, 0x7

    aput-object v10, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a([Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/crm;

    move-result-object v11

    new-instance v0, Lcom/google/android/gms/internal/ads/bbb;

    move-object v1, p0

    move-object v7, p3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/bbb;-><init>(Lcom/google/android/gms/internal/ads/baz;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/baz;->a:Lcom/google/android/gms/internal/ads/crs;

    .line 34
    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/internal/ads/crm;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 35
    return-object v0

    .line 21
    :cond_0
    const-string/jumbo v1, "omid_settings"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v9

    goto :goto_0

    .line 24
    :cond_1
    const-string/jumbo v7, "omid_html"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 26
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v9

    goto :goto_0

    .line 28
    :cond_2
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v7

    new-instance v9, Lcom/google/android/gms/internal/ads/bbi;

    invoke-direct {v9, v0, v1}, Lcom/google/android/gms/internal/ads/bbi;-><init>(Lcom/google/android/gms/internal/ads/bbe;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->e:Lcom/google/android/gms/internal/ads/crs;

    .line 29
    invoke-static {v7, v9, v0}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v9

    goto :goto_0
.end method
