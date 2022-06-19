.class public abstract Lcom/google/android/gms/internal/ads/bvs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bsk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bsk<",
        "TAdT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    if-nez p0, :cond_0

    .line 67
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/internal/ads/cpo;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/dbt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cpo;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TAdT;>;"
        }
    .end annotation
.end method

.method public final a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)Z
    .locals 1

    .line 2
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/cov;->u:Lorg/json/JSONObject;

    const-string p2, "pubid"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cpk;",
            "Lcom/google/android/gms/internal/ads/cov;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TAdT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 3
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cov;->u:Lorg/json/JSONObject;

    const-string v3, "pubid"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    .line 6
    new-instance v4, Lcom/google/android/gms/internal/ads/cpq;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/cpq;-><init>()V

    .line 1046
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/cpq;->p:Lcom/google/android/gms/internal/ads/cpd;

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/cpo;->o:Lcom/google/android/gms/internal/ads/cpa;

    .line 2005
    iget v6, v6, Lcom/google/android/gms/internal/ads/cpa;->a:I

    .line 2006
    iput v6, v5, Lcom/google/android/gms/internal/ads/cpd;->a:I

    .line 1047
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    .line 1048
    iput-object v5, v4, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 1050
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/cpo;->e:Lcom/google/android/gms/internal/ads/zzvt;

    .line 1052
    iput-object v5, v4, Lcom/google/android/gms/internal/ads/cpq;->b:Lcom/google/android/gms/internal/ads/zzvt;

    .line 1054
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/cpo;->a:Lcom/google/android/gms/internal/ads/elk;

    .line 1056
    iput-object v5, v4, Lcom/google/android/gms/internal/ads/cpq;->c:Lcom/google/android/gms/internal/ads/elk;

    .line 1058
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/cpo;->f:Ljava/lang/String;

    .line 1060
    iput-object v5, v4, Lcom/google/android/gms/internal/ads/cpq;->d:Ljava/lang/String;

    .line 1062
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/cpo;->b:Lcom/google/android/gms/internal/ads/zzaaz;

    .line 1064
    iput-object v5, v4, Lcom/google/android/gms/internal/ads/cpq;->e:Lcom/google/android/gms/internal/ads/zzaaz;

    .line 1066
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/cpo;->g:Ljava/util/ArrayList;

    .line 1068
    iput-object v5, v4, Lcom/google/android/gms/internal/ads/cpq;->g:Ljava/util/ArrayList;

    .line 1070
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/cpo;->h:Ljava/util/ArrayList;

    .line 1072
    iput-object v5, v4, Lcom/google/android/gms/internal/ads/cpq;->h:Ljava/util/ArrayList;

    .line 1074
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/cpo;->i:Lcom/google/android/gms/internal/ads/zzaei;

    .line 1076
    iput-object v5, v4, Lcom/google/android/gms/internal/ads/cpq;->i:Lcom/google/android/gms/internal/ads/zzaei;

    .line 1078
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/cpo;->j:Lcom/google/android/gms/internal/ads/zzwc;

    .line 1080
    iput-object v5, v4, Lcom/google/android/gms/internal/ads/cpq;->j:Lcom/google/android/gms/internal/ads/zzwc;

    .line 1082
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/cpo;->l:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    .line 1083
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/cpq;->a(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)Lcom/google/android/gms/internal/ads/cpq;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/cpo;->m:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    .line 1084
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/cpq;->a(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)Lcom/google/android/gms/internal/ads/cpq;

    move-result-object v4

    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/cpo;->p:Z

    .line 1086
    iput-boolean v5, v4, Lcom/google/android/gms/internal/ads/cpq;->q:Z

    .line 2016
    iput-object v2, v4, Lcom/google/android/gms/internal/ads/cpq;->d:Ljava/lang/String;

    .line 10
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvq;->zzcih:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/bvs;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 11
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/bvs;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    const-string v6, "gw"

    const/4 v15, 0x1

    .line 12
    invoke-virtual {v9, v6, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/cov;->u:Lorg/json/JSONObject;

    const-string v7, "mad_hac"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 15
    invoke-virtual {v9, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_0
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/cov;->u:Lorg/json/JSONObject;

    const-string v7, "adJson"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v7, "_ad"

    .line 18
    invoke-virtual {v9, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v6, "_noRefresh"

    .line 19
    invoke-virtual {v9, v6, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/cov;->C:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 21
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 22
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 23
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/cov;->C:Lorg/json/JSONObject;

    invoke-virtual {v10, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v7, :cond_2

    .line 25
    invoke-virtual {v9, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_3
    invoke-virtual {v2, v5, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 28
    new-instance v14, Lcom/google/android/gms/internal/ads/zzvq;

    move-object v5, v14

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzvq;->versionCode:I

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-wide v7, v7, Lcom/google/android/gms/internal/ads/zzvq;->zzcia:J

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzvq;->zzcib:I

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzvq;->zzcic:Ljava/util/List;

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-boolean v12, v12, Lcom/google/android/gms/internal/ads/zzvq;->zzcid:Z

    iget-object v13, v3, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget v13, v13, Lcom/google/android/gms/internal/ads/zzvq;->zzadv:I

    iget-object v15, v3, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-boolean v15, v15, Lcom/google/android/gms/internal/ads/zzvq;->zzbns:Z

    move-object v1, v14

    move v14, v15

    iget-object v15, v3, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzvq;->zzcie:Ljava/lang/String;

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzcif:Lcom/google/android/gms/internal/ads/zzaav;

    move-object/from16 v16, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzng:Landroid/location/Location;

    move-object/from16 v17, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzcig:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzcii:Landroid/os/Bundle;

    move-object/from16 v20, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzcij:Ljava/util/List;

    move-object/from16 v21, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzcik:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzcil:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzcim:Z

    move/from16 v24, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzcip:Lcom/google/android/gms/internal/ads/zzvf;

    move-object/from16 v25, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzadw:I

    move/from16 v26, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzadx:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzcin:Ljava/util/List;

    move-object/from16 v28, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzcio:I

    move/from16 v29, v0

    move-object/from16 v19, v2

    invoke-direct/range {v5 .. v29}, Lcom/google/android/gms/internal/ads/zzvq;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzaav;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzvf;ILjava/lang/String;Ljava/util/List;I)V

    .line 3006
    iput-object v1, v4, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 30
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/cpq;->a()Lcom/google/android/gms/internal/ads/cpo;

    move-result-object v0

    .line 33
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v2, p1

    .line 34
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    .line 36
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 37
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/coz;->a:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v6, "nofill_urls"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 38
    iget v5, v3, Lcom/google/android/gms/internal/ads/coz;->c:I

    const-string v6, "refresh_interval"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/coz;->b:Ljava/lang/String;

    const-string v5, "gws_query_id"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "parent_common_config"

    .line 41
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 42
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cpo;->f:Ljava/lang/String;

    .line 44
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "initial_ad_unit_id"

    .line 45
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p2

    .line 46
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/cov;->v:Ljava/lang/String;

    const-string v5, "allocation_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/cov;->c:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "click_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 48
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/cov;->d:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "imp_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 49
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/cov;->o:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "manual_tracking_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/cov;->m:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "fill_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 51
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/cov;->g:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "video_start_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 52
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/cov;->h:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "video_reward_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 53
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/cov;->i:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "video_complete_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 54
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/cov;->j:Ljava/lang/String;

    const-string v5, "transaction_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/cov;->k:Ljava/lang/String;

    const-string v5, "valid_from_timestamp"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/cov;->K:Z

    const-string v5, "is_closable_area_disabled"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/cov;->l:Lcom/google/android/gms/internal/ads/zzavy;

    if-eqz v4, :cond_4

    .line 58
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 59
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/cov;->l:Lcom/google/android/gms/internal/ads/zzavy;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzavy;->zzean:I

    const-string v6, "rb_amount"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cov;->l:Lcom/google/android/gms/internal/ads/zzavy;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzavy;->type:Ljava/lang/String;

    const-string v5, "rb_type"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/Bundle;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string v4, "rewards"

    .line 61
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_4
    const-string v2, "parent_ad_config"

    .line 63
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v2, p0

    .line 66
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/bvs;->a(Lcom/google/android/gms/internal/ads/cpo;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    return-object v0
.end method
