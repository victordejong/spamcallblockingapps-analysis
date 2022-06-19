.class public final Lcom/google/android/gms/internal/ads/bfm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->aK:Lcom/google/android/gms/internal/ads/ect;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    const-string/jumbo v0, ""

    .line 18
    :goto_0
    return-object v0

    .line 5
    :cond_0
    if-nez p0, :cond_1

    .line 6
    const-string/jumbo v0, ""

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 8
    if-nez v1, :cond_2

    .line 9
    const-string/jumbo v0, ""

    goto :goto_0

    .line 10
    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 11
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 12
    if-eqz v2, :cond_3

    .line 13
    const-string/jumbo v3, "including"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 14
    const-string/jumbo v4, "excluding"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 15
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/ads/bfm;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v4, p1}, Lcom/google/android/gms/internal/ads/bfm;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 16
    const-string/jumbo v0, "effective_ad_unit_id"

    const-string/jumbo v1, ""

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 17
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 18
    :cond_4
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONArray;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 19
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 29
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 21
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 22
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 23
    :try_start_0
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    .line 24
    const/4 v1, 0x1

    goto :goto_0

    .line 26
    :catch_0
    move-exception v2

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v3

    const-string/jumbo v4, "RtbAdapterMap.hasAtleastOneRegexMatch"

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 28
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
