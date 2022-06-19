.class public final Lcom/google/android/gms/internal/ads/yo1;
.super Lcom/google/android/gms/internal/ads/i30;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/bp1;

.field private final e:Lcom/google/android/gms/internal/ads/wo1;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/internal/ads/ro1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bp1;Lcom/google/android/gms/internal/ads/wo1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/i30;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yo1;->f:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yo1;->d:Lcom/google/android/gms/internal/ads/bp1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yo1;->e:Lcom/google/android/gms/internal/ads/wo1;

    return-void
.end method

.method private static E6(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzbdg;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzbdg;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/uq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/uq;-><init>()V

    const-string v1, "ad_request"

    move-object/from16 v2, p0

    .line 2
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uq;->a()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Landroid/util/JsonReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 6
    :try_start_0
    invoke-virtual {v2}, Landroid/util/JsonReader;->beginObject()V

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "tagForChildDirectedTreatment"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_1
    const-string v3, "maxAdContentRating"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    goto :goto_2

    :sswitch_2
    const-string v3, "keywords"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_3
    const-string v3, "httpTimeoutMillis"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    goto :goto_2

    :sswitch_4
    const-string v3, "tagForUnderAgeOfConsent"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_5
    const-string v3, "isTestDevice"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_2

    :sswitch_6
    const-string v3, "extras"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, -0x1

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 10
    :try_start_1
    invoke-virtual {v2}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 11
    :pswitch_0
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/uq;->h(I)Lcom/google/android/gms/internal/ads/uq;

    goto :goto_0

    .line 13
    :pswitch_1
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 14
    sget-object v3, Lcom/google/android/gms/ads/q;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/uq;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/uq;

    goto :goto_0

    .line 16
    :pswitch_2
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/uq;->f(I)Lcom/google/android/gms/internal/ads/uq;

    goto/16 :goto_0

    .line 18
    :cond_3
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/uq;->f(I)Lcom/google/android/gms/internal/ads/uq;

    goto/16 :goto_0

    .line 19
    :pswitch_3
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 20
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/uq;->e(I)Lcom/google/android/gms/internal/ads/uq;

    goto/16 :goto_0

    .line 21
    :cond_4
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/uq;->e(I)Lcom/google/android/gms/internal/ads/uq;

    goto/16 :goto_0

    .line 22
    :pswitch_4
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/uq;->d(Z)Lcom/google/android/gms/internal/ads/uq;

    goto/16 :goto_0

    .line 24
    :pswitch_5
    invoke-virtual {v2}, Landroid/util/JsonReader;->beginArray()V

    new-instance v1, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    :goto_3
    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 27
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 29
    :cond_5
    invoke-virtual {v2}, Landroid/util/JsonReader;->endArray()V

    .line 30
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/uq;->c(Ljava/util/List;)Lcom/google/android/gms/internal/ads/uq;

    goto/16 :goto_0

    .line 31
    :pswitch_6
    invoke-virtual {v2}, Landroid/util/JsonReader;->beginObject()V

    new-instance v1, Landroid/os/Bundle;

    .line 32
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 33
    :goto_4
    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 34
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 37
    :cond_6
    invoke-virtual {v2}, Landroid/util/JsonReader;->endObject()V

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/uq;->b(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/uq;

    goto/16 :goto_0

    .line 39
    :cond_7
    invoke-virtual {v2}, Landroid/util/JsonReader;->endObject()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    const-string v1, "Ad Request json was malformed, parsing ended early."

    .line 40
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ei0;->a(Ljava/lang/String;)V

    .line 41
    :goto_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uq;->a()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdg;->p:Landroid/os/Bundle;

    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 42
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdg;->f:Landroid/os/Bundle;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbdg;->p:Landroid/os/Bundle;

    .line 43
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8
    move-object v8, v1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdg;

    move-object v4, v1

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzbdg;->d:I

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzbdg;->e:J

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzbdg;->g:I

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzbdg;->h:Ljava/util/List;

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzbdg;->i:Z

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzbdg;->j:I

    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzbdg;->k:Z

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzbdg;->l:Ljava/lang/String;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzbdg;->m:Lcom/google/android/gms/internal/ads/zzbio;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbdg;->n:Landroid/location/Location;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbdg;->o:Ljava/lang/String;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbdg;->p:Landroid/os/Bundle;

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbdg;->q:Landroid/os/Bundle;

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbdg;->r:Ljava/util/List;

    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbdg;->s:Ljava/lang/String;

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbdg;->t:Ljava/lang/String;

    move-object/from16 v22, v2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzbdg;->u:Z

    move/from16 v23, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbdg;->v:Lcom/google/android/gms/internal/ads/zzbcx;

    move-object/from16 v24, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzbdg;->w:I

    move/from16 v25, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbdg;->x:Ljava/lang/String;

    move-object/from16 v26, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbdg;->y:Ljava/util/List;

    move-object/from16 v27, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzbdg;->z:I

    move/from16 v28, v2

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbdg;->A:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 44
    invoke-direct/range {v4 .. v29}, Lcom/google/android/gms/internal/ads/zzbdg;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzbio;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzbcx;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x4cd5119d -> :sswitch_6
        -0x3203e9ae -> :sswitch_5
        -0x2bb75c13 -> :sswitch_4
        -0x5f434a1 -> :sswitch_3
        0x1f2e9faa -> :sswitch_2
        0x239f260f -> :sswitch_1
        0x54230b03 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final B(Ljava/lang/String;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->J6:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received H5 gmsg: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/String;

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/c2;->r(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "action"

    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "H5 gmsg did not contain an action"

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->a(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x2283a781

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v1, v2, :cond_4

    const v2, 0x33ebcb90

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "initialize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const-string v1, "dispose_all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v1, -0x1

    :goto_2
    if-eqz v1, :cond_16

    if-eq v1, v5, :cond_14

    const-string v1, "obj_id"

    .line 13
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 14
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v3, "create_rewarded_ad"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x3

    goto :goto_4

    :sswitch_1
    const-string v3, "dispose"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x6

    goto :goto_4

    :sswitch_2
    const-string v3, "load_interstitial_ad"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :sswitch_3
    const-string v5, "create_interstitial_ad"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_4

    :sswitch_4
    const-string v3, "load_rewarded_ad"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x4

    goto :goto_4

    :sswitch_5
    const-string v3, "show_rewarded_ad"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x5

    goto :goto_4

    :sswitch_6
    const-string v3, "show_interstitial_ad"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v3, -0x1

    :goto_4
    const-string v4, "Could not create H5 ad, missing ad unit id"

    const-string v5, " with ad unit "

    const-string v6, "Could not create H5 ad, object ID already exists"

    const-string v7, "ad_unit"

    const-string v8, "Could not show H5 ad, object ID does not exist"

    const-string v9, "Could not load H5 ad, object ID does not exist"

    const-string v10, "Could not create H5 ad, too many existing objects"

    packed-switch v3, :pswitch_data_0

    const-string p1, "H5 gmsg contained invalid action: "

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    :pswitch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yo1;->f:Ljava/util/Map;

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/ro1;

    if-nez p1, :cond_7

    const-string p1, "Could not dispose H5 ad, object ID does not exist"

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->a(Ljava/lang/String;)V

    return-void

    .line 19
    :cond_7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ro1;->c()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yo1;->f:Ljava/util/Map;

    .line 20
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x24

    .line 21
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Disposed H5 ad #"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yo1;->f:Ljava/util/Map;

    .line 22
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/ro1;

    if-nez p1, :cond_8

    .line 23
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/ei0;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yo1;->e:Lcom/google/android/gms/internal/ads/wo1;

    .line 24
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/wo1;->j(J)V

    return-void

    .line 25
    :cond_8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ro1;->b()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo1;->f:Ljava/util/Map;

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ro1;

    if-nez v0, :cond_9

    .line 27
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/ei0;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yo1;->e:Lcom/google/android/gms/internal/ads/wo1;

    .line 28
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/wo1;->j(J)V

    return-void

    .line 29
    :cond_9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yo1;->E6(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ro1;->a(Lcom/google/android/gms/internal/ads/zzbdg;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo1;->f:Ljava/util/Map;

    .line 30
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sget-object v3, Lcom/google/android/gms/internal/ads/kw;->K6:Lcom/google/android/gms/internal/ads/cw;

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v0, v3, :cond_a

    .line 33
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yo1;->e:Lcom/google/android/gms/internal/ads/wo1;

    .line 34
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/wo1;->c(J)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo1;->f:Ljava/util/Map;

    .line 35
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 36
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/ei0;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yo1;->e:Lcom/google/android/gms/internal/ads/wo1;

    .line 37
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/wo1;->c(J)V

    return-void

    .line 38
    :cond_b
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 40
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yo1;->e:Lcom/google/android/gms/internal/ads/wo1;

    .line 41
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/wo1;->c(J)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo1;->d:Lcom/google/android/gms/internal/ads/bp1;

    .line 42
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bp1;->e()Lcom/google/android/gms/internal/ads/so1;

    move-result-object v0

    .line 43
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/so1;->a(J)Lcom/google/android/gms/internal/ads/so1;

    .line 44
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/so1;->r(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/so1;

    .line 45
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/so1;->zza()Lcom/google/android/gms/internal/ads/to1;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/to1;->b()Lcom/google/android/gms/internal/ads/hp1;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/yo1;->f:Ljava/util/Map;

    .line 47
    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo1;->e:Lcom/google/android/gms/internal/ads/wo1;

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/wo1;->b(J)V

    .line 49
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x37

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Created H5 rewarded #"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yo1;->f:Ljava/util/Map;

    .line 50
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/ro1;

    if-nez p1, :cond_d

    .line 51
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/ei0;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yo1;->e:Lcom/google/android/gms/internal/ads/wo1;

    .line 52
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/wo1;->d(J)V

    return-void

    .line 53
    :cond_d
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ro1;->b()V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo1;->f:Ljava/util/Map;

    .line 54
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ro1;

    if-nez v0, :cond_e

    .line 55
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/ei0;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yo1;->e:Lcom/google/android/gms/internal/ads/wo1;

    .line 56
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/wo1;->d(J)V

    return-void

    .line 57
    :cond_e
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yo1;->E6(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ro1;->a(Lcom/google/android/gms/internal/ads/zzbdg;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo1;->f:Ljava/util/Map;

    .line 58
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sget-object v3, Lcom/google/android/gms/internal/ads/kw;->K6:Lcom/google/android/gms/internal/ads/cw;

    .line 59
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v3

    .line 60
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v0, v3, :cond_f

    .line 61
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yo1;->e:Lcom/google/android/gms/internal/ads/wo1;

    .line 62
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/wo1;->c(J)V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo1;->f:Ljava/util/Map;

    .line 63
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 64
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/ei0;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yo1;->e:Lcom/google/android/gms/internal/ads/wo1;

    .line 65
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/wo1;->c(J)V

    return-void

    .line 66
    :cond_10
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 68
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yo1;->e:Lcom/google/android/gms/internal/ads/wo1;

    .line 69
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/wo1;->c(J)V

    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo1;->d:Lcom/google/android/gms/internal/ads/bp1;

    .line 70
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bp1;->e()Lcom/google/android/gms/internal/ads/so1;

    move-result-object v0

    .line 71
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/so1;->a(J)Lcom/google/android/gms/internal/ads/so1;

    .line 72
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/so1;->r(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/so1;

    .line 73
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/so1;->zza()Lcom/google/android/gms/internal/ads/to1;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/to1;->zza()Lcom/google/android/gms/internal/ads/dp1;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/yo1;->f:Ljava/util/Map;

    .line 75
    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo1;->e:Lcom/google/android/gms/internal/ads/wo1;

    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/wo1;->b(J)V

    .line 77
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x3b

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Created H5 interstitial #"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    return-void

    .line 78
    :cond_12
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    nop

    .line 79
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "H5 gmsg did not contain a valid object id: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_13
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->a(Ljava/lang/String;)V

    return-void

    .line 80
    :cond_14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yo1;->f:Ljava/util/Map;

    .line 81
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ro1;

    .line 82
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ro1;->c()V

    goto :goto_7

    :cond_15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yo1;->f:Ljava/util/Map;

    .line 83
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void

    :cond_16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yo1;->f:Ljava/util/Map;

    .line 84
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yo1;->e:Lcom/google/android/gms/internal/ads/wo1;

    .line 85
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wo1;->a()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6abfbf2c -> :sswitch_6
        -0x4b7b584e -> :sswitch_5
        -0xf5303e5 -> :sswitch_4
        0x177a28d3 -> :sswitch_3
        0x22e638bd -> :sswitch_2
        0x63a5261f -> :sswitch_1
        0x7db86731 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo1;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
