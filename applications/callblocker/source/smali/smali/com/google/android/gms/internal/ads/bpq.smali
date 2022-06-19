.class public abstract Lcom/google/android/gms/internal/ads/bpq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bmv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bmv",
        "<TAdT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 67
    if-nez p0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/internal/ads/chh;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/crt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/chh;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TAdT;>;"
        }
    .end annotation
.end method

.method public final a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)Z
    .locals 3

    .prologue
    .line 2
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/cgr;->s:Lorg/json/JSONObject;

    const-string/jumbo v1, "pubid"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)Lcom/google/android/gms/internal/ads/crt;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/chd;",
            "Lcom/google/android/gms/internal/ads/cgr;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TAdT;>;"
        }
    .end annotation

    .prologue
    .line 3
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cgr;->s:Lorg/json/JSONObject;

    const-string/jumbo v3, "pubid"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    move-object/from16 v25, v0

    .line 6
    new-instance v3, Lcom/google/android/gms/internal/ads/chj;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/chj;-><init>()V

    .line 7
    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/chj;->a(Lcom/google/android/gms/internal/ads/chh;)Lcom/google/android/gms/internal/ads/chj;

    move-result-object v3

    .line 8
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/chj;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/chj;

    move-result-object v26

    .line 10
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dya;->m:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/bpq;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v16

    .line 11
    const-string/jumbo v2, "com.google.ads.mediation.admob.AdMobAdapter"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/bpq;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 12
    const-string/jumbo v2, "gw"

    const/4 v3, 0x1

    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cgr;->s:Lorg/json/JSONObject;

    const-string/jumbo v3, "mad_hac"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    const-string/jumbo v3, "mad_hac"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cgr;->s:Lorg/json/JSONObject;

    const-string/jumbo v3, "adJson"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    const-string/jumbo v3, "_ad"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_1
    const-string/jumbo v2, "_noRefresh"

    const/4 v3, 0x1

    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cgr;->A:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 21
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 22
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 23
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/cgr;->A:Lorg/json/JSONObject;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 24
    if-eqz v2, :cond_2

    .line 25
    invoke-virtual {v6, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_3
    const-string/jumbo v2, "com.google.ads.mediation.admob.AdMobAdapter"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 28
    new-instance v2, Lcom/google/android/gms/internal/ads/dya;

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget v3, v3, Lcom/google/android/gms/internal/ads/dya;->a:I

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/dya;->b:J

    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget v7, v7, Lcom/google/android/gms/internal/ads/dya;->d:I

    move-object/from16 v0, v25

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/dya;->e:Ljava/util/List;

    move-object/from16 v0, v25

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-boolean v9, v9, Lcom/google/android/gms/internal/ads/dya;->f:Z

    move-object/from16 v0, v25

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget v10, v10, Lcom/google/android/gms/internal/ads/dya;->g:I

    move-object/from16 v0, v25

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-boolean v11, v11, Lcom/google/android/gms/internal/ads/dya;->h:Z

    move-object/from16 v0, v25

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/dya;->i:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/dya;->j:Lcom/google/android/gms/internal/ads/eck;

    move-object/from16 v0, v25

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/dya;->k:Landroid/location/Location;

    move-object/from16 v0, v25

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/dya;->l:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dya;->n:Landroid/os/Bundle;

    move-object/from16 v17, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dya;->o:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dya;->p:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dya;->q:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/dya;->r:Z

    move/from16 v21, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dya;->s:Lcom/google/android/gms/internal/ads/dxu;

    move-object/from16 v22, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/gms/internal/ads/dya;->t:I

    move/from16 v23, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dya;->u:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dya;->v:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-direct/range {v2 .. v25}, Lcom/google/android/gms/internal/ads/dya;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/eck;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/dxu;ILjava/lang/String;Ljava/util/List;)V

    .line 29
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/chj;->a(Lcom/google/android/gms/internal/ads/dya;)Lcom/google/android/gms/internal/ads/chj;

    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/chj;->e()Lcom/google/android/gms/internal/ads/chh;

    move-result-object v2

    .line 33
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 34
    const-string/jumbo v4, "parent_common_config"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/chd;->b:Lcom/google/android/gms/internal/ads/cha;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/cha;->b:Lcom/google/android/gms/internal/ads/cgs;

    .line 36
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 37
    const-string/jumbo v7, "nofill_urls"

    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, v5, Lcom/google/android/gms/internal/ads/cgs;->a:Ljava/util/List;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 38
    const-string/jumbo v7, "refresh_interval"

    iget v8, v5, Lcom/google/android/gms/internal/ads/cgs;->c:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    const-string/jumbo v7, "gws_query_id"

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/cgs;->b:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 42
    const-string/jumbo v4, "parent_ad_config"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/chh;->f:Ljava/lang/String;

    .line 44
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 45
    const-string/jumbo v7, "initial_ad_unit_id"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string/jumbo v5, "allocation_id"

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/cgr;->t:Ljava/lang/String;

    invoke-virtual {v6, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string/jumbo v5, "click_urls"

    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/cgr;->c:Ljava/util/List;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v5, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 48
    const-string/jumbo v5, "imp_urls"

    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/cgr;->d:Ljava/util/List;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v5, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 49
    const-string/jumbo v5, "manual_tracking_urls"

    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/cgr;->n:Ljava/util/List;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v5, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 50
    const-string/jumbo v5, "fill_urls"

    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/cgr;->m:Ljava/util/List;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v5, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 51
    const-string/jumbo v5, "video_start_urls"

    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/cgr;->g:Ljava/util/List;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v5, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 52
    const-string/jumbo v5, "video_reward_urls"

    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/cgr;->h:Ljava/util/List;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v5, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 53
    const-string/jumbo v5, "video_complete_urls"

    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/cgr;->i:Ljava/util/List;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v5, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 54
    const-string/jumbo v5, "transaction_id"

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/cgr;->j:Ljava/lang/String;

    invoke-virtual {v6, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo v5, "valid_from_timestamp"

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/cgr;->k:Ljava/lang/String;

    invoke-virtual {v6, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string/jumbo v5, "is_closable_area_disabled"

    move-object/from16 v0, p2

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/cgr;->G:Z

    invoke-virtual {v6, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/cgr;->l:Lcom/google/android/gms/internal/ads/rr;

    if-eqz v5, :cond_4

    .line 58
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 59
    const-string/jumbo v7, "rb_amount"

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/cgr;->l:Lcom/google/android/gms/internal/ads/rr;

    iget v8, v8, Lcom/google/android/gms/internal/ads/rr;->b:I

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    const-string/jumbo v7, "rb_type"

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/cgr;->l:Lcom/google/android/gms/internal/ads/rr;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/rr;->a:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string/jumbo v7, "rewards"

    const/4 v8, 0x1

    new-array v8, v8, [Landroid/os/Bundle;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 63
    :cond_4
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 66
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/bpq;->a(Lcom/google/android/gms/internal/ads/chh;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v2

    return-object v2
.end method
