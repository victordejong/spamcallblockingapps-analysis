.class public final Lcom/google/android/gms/internal/ads/bzy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cah",
        "<",
        "Lcom/google/android/gms/internal/ads/cae",
        "<",
        "Landroid/os/Bundle;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/crs;

.field private final b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/crs;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bzy;->a:Lcom/google/android/gms/internal/ads/crs;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bzy;->b:Landroid/content/Context;

    .line 4
    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONArray;)Landroid/os/Bundle;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move v1, v2

    .line 7
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 9
    const-string/jumbo v3, "bk"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 10
    const-string/jumbo v3, "sk"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 11
    const-string/jumbo v3, "type"

    const/4 v7, -0x1

    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 12
    packed-switch v0, :pswitch_data_0

    move v3, v2

    .line 18
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v3, :cond_1

    .line 20
    const-string/jumbo v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 21
    array-length v4, v0

    const/4 v7, 0x2

    if-gt v4, v7, :cond_0

    array-length v4, v0

    if-nez v4, :cond_2

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_2
    if-eqz v0, :cond_1

    .line 31
    sget-object v4, Lcom/google/android/gms/internal/ads/cad;->a:[I

    add-int/lit8 v3, v3, -0x1

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_1

    .line 42
    :cond_1
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 13
    :pswitch_0
    sget v0, Lcom/google/android/gms/internal/ads/cac;->a:I

    move v3, v0

    goto :goto_1

    .line 14
    :pswitch_1
    sget v0, Lcom/google/android/gms/internal/ads/cac;->b:I

    move v3, v0

    goto :goto_1

    .line 15
    :pswitch_2
    sget v0, Lcom/google/android/gms/internal/ads/cac;->c:I

    move v3, v0

    goto :goto_1

    .line 23
    :cond_2
    array-length v4, v0

    if-ne v4, v10, :cond_3

    .line 24
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 25
    aget-object v0, v0, v2

    .line 28
    :goto_4
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 26
    :cond_3
    aget-object v4, v0, v2

    invoke-virtual {p0, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 27
    aget-object v0, v0, v10

    goto :goto_4

    .line 32
    :pswitch_3
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 33
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 34
    :pswitch_4
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    .line 35
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 36
    :cond_4
    instance-of v3, v0, Ljava/lang/Long;

    if-eqz v3, :cond_5

    .line 37
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_3

    .line 38
    :cond_5
    instance-of v3, v0, Ljava/lang/Float;

    if-eqz v3, :cond_1

    .line 39
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_3

    .line 40
    :pswitch_5
    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 41
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    .line 43
    :cond_6
    return-object v5

    .line 12
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 31
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/cae",
            "<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bzy;->a:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/cab;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/cab;-><init>(Lcom/google/android/gms/internal/ads/bzy;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method final synthetic b()Lcom/google/android/gms/internal/ads/cae;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cW:Lcom/google/android/gms/internal/ads/ect;

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/String;

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 55
    :goto_0
    return-object v0

    .line 49
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bzy;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/bzy;->a(Landroid/content/Context;Lorg/json/JSONArray;)Landroid/os/Bundle;

    move-result-object v1

    .line 55
    new-instance v0, Lcom/google/android/gms/internal/ads/caa;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/caa;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string/jumbo v2, "JSON parsing error"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 53
    goto :goto_0
.end method
