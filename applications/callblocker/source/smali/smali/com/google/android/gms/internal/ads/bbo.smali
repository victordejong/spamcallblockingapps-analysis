.class public final Lcom/google/android/gms/internal/ads/bbo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/gms/internal/ads/bbe;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/bbe;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bbo;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bbo;->b:Lcom/google/android/gms/internal/ads/bbe;

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/bbt;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 6
    if-nez v3, :cond_0

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    .line 8
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v2, v1

    .line 10
    :goto_1
    if-ge v2, v5, :cond_4

    .line 11
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 12
    if-eqz v6, :cond_1

    .line 13
    const-string/jumbo v0, "name"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 14
    if-eqz v7, :cond_1

    .line 15
    const-string/jumbo v0, "type"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    const-string/jumbo v8, "string"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 17
    const/4 v0, 0x1

    .line 21
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 27
    :goto_3
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 18
    :cond_2
    const-string/jumbo v8, "image"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    const/4 v0, 0x2

    goto :goto_2

    :cond_3
    move v0, v1

    .line 20
    goto :goto_2

    .line 22
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/bbt;

    const-string/jumbo v8, "string_value"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v7, v6}, Lcom/google/android/gms/internal/ads/bbt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_3

    .line 23
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbo;->b:Lcom/google/android/gms/internal/ads/bbe;

    const-string/jumbo v8, "image_value"

    .line 24
    invoke-virtual {v0, v6, v8}, Lcom/google/android/gms/internal/ads/bbe;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    new-instance v6, Lcom/google/android/gms/internal/ads/bbq;

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/bbq;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/bbo;->a:Ljava/util/concurrent/Executor;

    .line 25
    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_3

    .line 30
    :cond_4
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/bbr;->a:Lcom/google/android/gms/internal/ads/coe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bbo;->a:Ljava/util/concurrent/Executor;

    .line 31
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
