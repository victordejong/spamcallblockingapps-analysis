.class public final Lcom/google/android/gms/internal/ads/ll;
.super Lcom/google/android/gms/internal/ads/ks;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/internal/ads/lm;

.field private c:Lcom/google/android/gms/internal/ads/rm;

.field private d:Lcom/google/android/gms/dynamic/a;

.field private e:Lcom/google/android/gms/ads/mediation/o;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/a;)V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ks;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/mediation/f;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ks;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    .line 3
    return-void
.end method

.method private final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 392
    const-string/jumbo v1, "Server parameters: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    .line 393
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 394
    if-eqz p1, :cond_2

    .line 395
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 396
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 397
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 399
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 409
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 392
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 401
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    if-eqz v1, :cond_3

    .line 402
    const-string/jumbo v1, "adJson"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    if-eqz p2, :cond_3

    .line 404
    const-string/jumbo v1, "tagForChildDirectedTreatment"

    iget v2, p2, Lcom/google/android/gms/internal/ads/dya;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 405
    :cond_3
    const-string/jumbo v1, "max_ad_content_rating"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 406
    return-object v0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/ku;)Lcom/google/android/gms/ads/mediation/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ku;",
            ")",
            "Lcom/google/android/gms/ads/mediation/d",
            "<",
            "Lcom/google/android/gms/ads/mediation/o;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    new-instance v0, Lcom/google/android/gms/internal/ads/ln;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/ln;-><init>(Lcom/google/android/gms/internal/ads/ll;Lcom/google/android/gms/internal/ads/ku;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ll;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 411
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dya;->u:Ljava/lang/String;

    .line 412
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 413
    const-string/jumbo v2, "max_ad_content_rating"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 416
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dya;)Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dya;->f:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/xr;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final b(Lcom/google/android/gms/internal/ads/dya;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 417
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dya;->m:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dya;->m:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 419
    if-eqz v0, :cond_0

    .line 421
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/dynamic/a;
    .locals 4

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-nez v0, :cond_0

    .line 8
    const-class v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " #009 Class mismatch: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 12
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 13
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;->getBannerView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    .prologue
    .line 363
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 364
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/android/gms/ads/mediation/u;

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/ads/mediation/u;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/u;->a(Landroid/content/Context;)V

    .line 366
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V
    .locals 6

    .prologue
    .line 58
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ll;->a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V

    .line 59
    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/rm;Ljava/lang/String;)V
    .locals 15

    .prologue
    .line 138
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v2, v2, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-eqz v2, :cond_2

    .line 139
    const-string/jumbo v2, "Initialize rewarded video adapter."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    move-object v12, v0

    .line 141
    const/4 v2, 0x0

    .line 142
    const/4 v13, 0x0

    .line 143
    const/4 v3, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/gms/internal/ads/ll;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 144
    if-eqz p2, :cond_5

    .line 145
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dya;->e:Ljava/util/List;

    if-eqz v2, :cond_0

    new-instance v5, Ljava/util/HashSet;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dya;->e:Ljava/util/List;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 146
    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/ads/li;

    .line 147
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/dya;->b:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    .line 148
    const/4 v3, 0x0

    .line 149
    :goto_1
    move-object/from16 v0, p2

    iget v4, v0, Lcom/google/android/gms/internal/ads/dya;->d:I

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dya;->k:Landroid/location/Location;

    .line 150
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/ll;->a(Lcom/google/android/gms/internal/ads/dya;)Z

    move-result v7

    move-object/from16 v0, p2

    iget v8, v0, Lcom/google/android/gms/internal/ads/dya;->g:I

    move-object/from16 v0, p2

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/dya;->r:Z

    move-object/from16 v0, p2

    iget v10, v0, Lcom/google/android/gms/internal/ads/dya;->t:I

    .line 151
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ll;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/li;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZILjava/lang/String;)V

    .line 152
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dya;->m:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    .line 153
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dya;->m:Landroid/os/Bundle;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    move-object v4, v2

    .line 155
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    new-instance v6, Lcom/google/android/gms/internal/ads/rn;

    move-object/from16 v0, p4

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/ads/rn;-><init>(Lcom/google/android/gms/internal/ads/rm;)V

    move-object v2, v12

    move-object/from16 v5, p3

    move-object v7, v14

    .line 156
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/e;Ljava/lang/String;Lcom/google/android/gms/ads/reward/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 171
    :goto_3
    return-void

    .line 145
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 149
    :cond_1
    new-instance v3, Ljava/util/Date;

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/dya;->b:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 158
    :catch_0
    move-exception v2

    .line 159
    const-string/jumbo v3, ""

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    .line 161
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v2, v2, Lcom/google/android/gms/ads/mediation/a;

    if-nez v2, :cond_3

    .line 162
    const-class v2, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    .line 163
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/ads/mediation/a;

    .line 164
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    .line 165
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1a

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " or "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " #009 Class mismatch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 167
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    .line 168
    :cond_3
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->d:Lcom/google/android/gms/dynamic/a;

    .line 169
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->c:Lcom/google/android/gms/internal/ads/rm;

    .line 170
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/rm;->a(Lcom/google/android/gms/dynamic/a;)V

    goto/16 :goto_3

    :cond_4
    move-object v8, v13

    move-object v4, v2

    goto/16 :goto_2

    :cond_5
    move-object v8, v13

    move-object v4, v2

    goto/16 :goto_2
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V
    .locals 13

    .prologue
    .line 60
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v2, v2, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-nez v2, :cond_0

    .line 61
    const-class v2, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 62
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    .line 63
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x16

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " #009 Class mismatch: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 65
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    .line 66
    :cond_0
    const-string/jumbo v2, "Requesting interstitial ad from adapter."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    .line 67
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    move-object v12, v0

    .line 68
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/dya;->e:Ljava/util/List;

    if-eqz v2, :cond_1

    new-instance v5, Ljava/util/HashSet;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/dya;->e:Ljava/util/List;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 69
    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/ads/li;

    .line 70
    iget-wide v6, p2, Lcom/google/android/gms/internal/ads/dya;->b:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    .line 71
    const/4 v3, 0x0

    .line 72
    :goto_1
    iget v4, p2, Lcom/google/android/gms/internal/ads/dya;->d:I

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/dya;->k:Landroid/location/Location;

    .line 73
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ll;->a(Lcom/google/android/gms/internal/ads/dya;)Z

    move-result v7

    iget v8, p2, Lcom/google/android/gms/internal/ads/dya;->g:I

    iget-boolean v9, p2, Lcom/google/android/gms/internal/ads/dya;->r:Z

    iget v10, p2, Lcom/google/android/gms/internal/ads/dya;->t:I

    .line 74
    move-object/from16 v0, p3

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/ll;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/li;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZILjava/lang/String;)V

    .line 75
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/dya;->m:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    .line 76
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/dya;->m:Landroid/os/Bundle;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 79
    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    new-instance v5, Lcom/google/android/gms/internal/ads/lm;

    move-object/from16 v0, p5

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ads/lm;-><init>(Lcom/google/android/gms/internal/ads/ku;)V

    .line 80
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v0, p2, v1}, Lcom/google/android/gms/internal/ads/ll;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    move-object v3, v12

    move-object v7, v2

    .line 81
    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;->requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/l;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/e;Landroid/os/Bundle;)V

    .line 82
    return-void

    .line 68
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 72
    :cond_2
    new-instance v3, Ljava/util/Date;

    iget-wide v6, p2, Lcom/google/android/gms/internal/ads/dya;->b:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 83
    :catch_0
    move-exception v2

    .line 84
    const-string/jumbo v3, ""

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    .line 77
    :cond_3
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;Lcom/google/android/gms/internal/ads/bl;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/a;",
            "Lcom/google/android/gms/internal/ads/dya;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/ku;",
            "Lcom/google/android/gms/internal/ads/bl;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v4, v4, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    if-nez v4, :cond_0

    .line 95
    const-class v4, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    .line 96
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    .line 97
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x16

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " #009 Class mismatch: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 99
    new-instance v4, Landroid/os/RemoteException;

    invoke-direct {v4}, Landroid/os/RemoteException;-><init>()V

    throw v4

    .line 100
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    move-object/from16 v16, v0

    .line 101
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dya;->e:Ljava/util/List;

    if-eqz v4, :cond_1

    new-instance v7, Ljava/util/HashSet;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dya;->e:Ljava/util/List;

    invoke-direct {v7, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 102
    :goto_0
    new-instance v4, Lcom/google/android/gms/internal/ads/lq;

    .line 103
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/dya;->b:J

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-nez v5, :cond_2

    .line 104
    const/4 v5, 0x0

    .line 105
    :goto_1
    move-object/from16 v0, p2

    iget v6, v0, Lcom/google/android/gms/internal/ads/dya;->d:I

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dya;->k:Landroid/location/Location;

    .line 106
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/ll;->a(Lcom/google/android/gms/internal/ads/dya;)Z

    move-result v9

    move-object/from16 v0, p2

    iget v10, v0, Lcom/google/android/gms/internal/ads/dya;->g:I

    move-object/from16 v0, p2

    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/dya;->r:Z

    move-object/from16 v0, p2

    iget v14, v0, Lcom/google/android/gms/internal/ads/dya;->t:I

    .line 107
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ll;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/internal/ads/lq;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZILcom/google/android/gms/internal/ads/bl;Ljava/util/List;ZILjava/lang/String;)V

    .line 108
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dya;->m:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    .line 109
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dya;->m:Landroid/os/Bundle;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 111
    :goto_2
    new-instance v5, Lcom/google/android/gms/internal/ads/lm;

    move-object/from16 v0, p5

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ads/lm;-><init>(Lcom/google/android/gms/internal/ads/ku;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/ll;->b:Lcom/google/android/gms/internal/ads/lm;

    .line 113
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/ll;->b:Lcom/google/android/gms/internal/ads/lm;

    .line 114
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/ll;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    move-object/from16 v5, v16

    move-object v9, v4

    .line 115
    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;->requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/n;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/t;Landroid/os/Bundle;)V

    .line 116
    return-void

    .line 101
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 105
    :cond_2
    new-instance v5, Ljava/util/Date;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/dya;->b:J

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 117
    :catch_0
    move-exception v4

    .line 118
    const-string/jumbo v5, ""

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    new-instance v4, Landroid/os/RemoteException;

    invoke-direct {v4}, Landroid/os/RemoteException;-><init>()V

    throw v4

    .line 110
    :cond_3
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dyd;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V
    .locals 7

    .prologue
    .line 18
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/ll;->a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dyd;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V

    .line 19
    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dyd;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V
    .locals 15

    .prologue
    .line 20
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v4, v4, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-nez v4, :cond_0

    .line 21
    const-class v4, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    .line 22
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    .line 23
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x16

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " #009 Class mismatch: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 25
    new-instance v4, Landroid/os/RemoteException;

    invoke-direct {v4}, Landroid/os/RemoteException;-><init>()V

    throw v4

    .line 26
    :cond_0
    const-string/jumbo v4, "Requesting banner ad from adapter."

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    .line 27
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    move-object v14, v0

    .line 28
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dya;->e:Ljava/util/List;

    if-eqz v4, :cond_1

    new-instance v7, Ljava/util/HashSet;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dya;->e:Ljava/util/List;

    invoke-direct {v7, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 29
    :goto_0
    new-instance v4, Lcom/google/android/gms/internal/ads/li;

    .line 30
    move-object/from16 v0, p3

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/dya;->b:J

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-nez v5, :cond_2

    .line 31
    const/4 v5, 0x0

    .line 32
    :goto_1
    move-object/from16 v0, p3

    iget v6, v0, Lcom/google/android/gms/internal/ads/dya;->d:I

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dya;->k:Landroid/location/Location;

    .line 33
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/ll;->a(Lcom/google/android/gms/internal/ads/dya;)Z

    move-result v9

    move-object/from16 v0, p3

    iget v10, v0, Lcom/google/android/gms/internal/ads/dya;->g:I

    move-object/from16 v0, p3

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/dya;->r:Z

    move-object/from16 v0, p3

    iget v12, v0, Lcom/google/android/gms/internal/ads/dya;->t:I

    .line 34
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ll;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v4 .. v13}, Lcom/google/android/gms/internal/ads/li;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZILjava/lang/String;)V

    .line 35
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dya;->m:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    .line 36
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dya;->m:Landroid/os/Bundle;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 38
    :goto_2
    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/dyd;->m:Z

    if-eqz v5, :cond_4

    .line 39
    move-object/from16 v0, p2

    iget v5, v0, Lcom/google/android/gms/internal/ads/dyd;->e:I

    move-object/from16 v0, p2

    iget v6, v0, Lcom/google/android/gms/internal/ads/dyd;->b:I

    .line 40
    invoke-static {v5, v6}, Lcom/google/android/gms/ads/s;->a(II)Lcom/google/android/gms/ads/e;

    move-result-object v9

    .line 43
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    new-instance v7, Lcom/google/android/gms/internal/ads/lm;

    move-object/from16 v0, p6

    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/ads/lm;-><init>(Lcom/google/android/gms/internal/ads/ku;)V

    .line 44
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/ll;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    move-object v5, v14

    move-object v10, v4

    .line 45
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;->requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/h;Landroid/os/Bundle;Lcom/google/android/gms/ads/e;Lcom/google/android/gms/ads/mediation/e;Landroid/os/Bundle;)V

    .line 46
    return-void

    .line 28
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 32
    :cond_2
    new-instance v5, Ljava/util/Date;

    move-object/from16 v0, p3

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/dya;->b:J

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 47
    :catch_0
    move-exception v4

    .line 48
    const-string/jumbo v5, ""

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    new-instance v4, Landroid/os/RemoteException;

    invoke-direct {v4}, Landroid/os/RemoteException;-><init>()V

    throw v4

    .line 37
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 41
    :cond_4
    :try_start_1
    move-object/from16 v0, p2

    iget v5, v0, Lcom/google/android/gms/internal/ads/dyd;->e:I

    move-object/from16 v0, p2

    iget v6, v0, Lcom/google/android/gms/internal/ads/dyd;->b:I

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dyd;->a:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/google/android/gms/ads/s;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/e;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_3
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/gd;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/a;",
            "Lcom/google/android/gms/internal/ads/gd;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/gl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/a;

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 369
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/lk;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/ads/lk;-><init>(Lcom/google/android/gms/internal/ads/ll;Lcom/google/android/gms/internal/ads/gd;)V

    .line 370
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 371
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/gl;

    .line 372
    new-instance v5, Lcom/google/android/gms/ads/mediation/i;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/gl;->a:Ljava/lang/String;

    .line 373
    const/4 v1, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 378
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 373
    :sswitch_0
    const-string/jumbo v7, "banner"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v7, "interstitial"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v7, "rewarded"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v7, "native"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    .line 374
    :pswitch_0
    sget-object v1, Lcom/google/android/gms/ads/a;->a:Lcom/google/android/gms/ads/a;

    .line 379
    :goto_2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/gl;->b:Landroid/os/Bundle;

    invoke-direct {v5, v1, v0}, Lcom/google/android/gms/ads/mediation/i;-><init>(Lcom/google/android/gms/ads/a;Landroid/os/Bundle;)V

    .line 380
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 375
    :pswitch_1
    sget-object v1, Lcom/google/android/gms/ads/a;->b:Lcom/google/android/gms/ads/a;

    goto :goto_2

    .line 376
    :pswitch_2
    sget-object v1, Lcom/google/android/gms/ads/a;->c:Lcom/google/android/gms/ads/a;

    goto :goto_2

    .line 377
    :pswitch_3
    sget-object v1, Lcom/google/android/gms/ads/a;->d:Lcom/google/android/gms/ads/a;

    goto :goto_2

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/mediation/a;

    .line 383
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/ads/mediation/a;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/b;Ljava/util/List;)V

    .line 384
    return-void

    .line 373
    nop

    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_0
        -0x3ebdafe9 -> :sswitch_3
        -0xe47b3f2 -> :sswitch_2
        0x240b672c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/rm;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/a;",
            "Lcom/google/android/gms/internal/ads/rm;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;

    if-nez v0, :cond_0

    .line 173
    const-class v0, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;

    .line 174
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    .line 175
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " #009 Class mismatch: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 177
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 178
    :cond_0
    const-string/jumbo v0, "Initialize rewarded video adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;

    .line 180
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 182
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/ll;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 183
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string/jumbo v1, "Could not initialize rewarded video adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 186
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    new-instance v3, Lcom/google/android/gms/internal/ads/rn;

    invoke-direct {v3, p2}, Lcom/google/android/gms/internal/ads/rn;-><init>(Lcom/google/android/gms/internal/ads/rm;)V

    .line 187
    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/reward/mediation/a;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/ll;->a(Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 194
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v2, v2, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-eqz v2, :cond_3

    .line 195
    const-string/jumbo v2, "Requesting rewarded video ad from adapter."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    .line 196
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    move-object v12, v0

    .line 197
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/dya;->e:Ljava/util/List;

    if-eqz v2, :cond_0

    new-instance v5, Ljava/util/HashSet;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/dya;->e:Ljava/util/List;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 198
    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/ads/li;

    .line 199
    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/dya;->b:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    move-object v3, v13

    .line 201
    :goto_1
    iget v4, p1, Lcom/google/android/gms/internal/ads/dya;->d:I

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/dya;->k:Landroid/location/Location;

    .line 202
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ll;->a(Lcom/google/android/gms/internal/ads/dya;)Z

    move-result v7

    iget v8, p1, Lcom/google/android/gms/internal/ads/dya;->g:I

    iget-boolean v9, p1, Lcom/google/android/gms/internal/ads/dya;->r:Z

    iget v10, p1, Lcom/google/android/gms/internal/ads/dya;->t:I

    .line 203
    move-object/from16 v0, p2

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ll;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/li;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZILjava/lang/String;)V

    .line 204
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/dya;->m:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    .line 205
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/dya;->m:Landroid/os/Bundle;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 208
    :goto_2
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/ads/ll;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 209
    invoke-interface {v12, v2, v4, v3}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->loadAd(Lcom/google/android/gms/ads/mediation/e;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 222
    :goto_3
    return-void

    :cond_0
    move-object v5, v13

    .line 197
    goto :goto_0

    .line 201
    :cond_1
    new-instance v3, Ljava/util/Date;

    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/dya;->b:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 211
    :catch_0
    move-exception v2

    .line 212
    const-string/jumbo v3, ""

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_2
    move-object v3, v13

    .line 206
    goto :goto_2

    .line 214
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v2, v2, Lcom/google/android/gms/ads/mediation/a;

    if-nez v2, :cond_4

    .line 215
    const-class v2, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    .line 216
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/ads/mediation/a;

    .line 217
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    .line 218
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1a

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " or "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " #009 Class mismatch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 220
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    .line 221
    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ll;->d:Lcom/google/android/gms/dynamic/a;

    new-instance v4, Lcom/google/android/gms/internal/ads/lp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/ads/mediation/a;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ll;->c:Lcom/google/android/gms/internal/ads/rm;

    invoke-direct {v4, v2, v5}, Lcom/google/android/gms/internal/ads/lp;-><init>(Lcom/google/android/gms/ads/mediation/a;Lcom/google/android/gms/internal/ads/rm;)V

    move-object/from16 v0, p2

    invoke-virtual {p0, v3, p1, v0, v4}, Lcom/google/android/gms/internal/ads/ll;->b(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V

    goto/16 :goto_3
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/v;

    if-nez v0, :cond_0

    .line 311
    const-class v0, Lcom/google/android/gms/ads/mediation/v;

    .line 312
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    .line 313
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " #009 Class mismatch: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    .line 321
    :goto_0
    return-void

    .line 316
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/mediation/v;

    .line 317
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/v;->onImmersiveModeUpdated(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-nez v0, :cond_0

    .line 330
    const-class v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 331
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    .line 332
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " #009 Class mismatch: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 334
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 335
    :cond_0
    const-string/jumbo v0, "Showing interstitial from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 337
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;->showInterstitial()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/dynamic/a;)V
    .locals 4

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/a;

    if-nez v0, :cond_0

    .line 300
    const-class v0, Lcom/google/android/gms/ads/mediation/a;

    .line 301
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    .line 302
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " #009 Class mismatch: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 304
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 305
    :cond_0
    const-string/jumbo v0, "Show rewarded ad from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->e:Lcom/google/android/gms/ads/mediation/o;

    if-eqz v0, :cond_1

    .line 307
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ll;->e:Lcom/google/android/gms/ads/mediation/o;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/o;->a(Landroid/content/Context;)V

    return-void

    .line 308
    :cond_1
    const-string/jumbo v0, "Can not show null mediation rewarded ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;)V

    .line 309
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V
    .locals 15

    .prologue
    .line 257
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v2, v2, Lcom/google/android/gms/ads/mediation/a;

    if-nez v2, :cond_0

    .line 258
    const-class v2, Lcom/google/android/gms/ads/mediation/a;

    .line 259
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    .line 260
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x16

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " #009 Class mismatch: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 262
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    .line 263
    :cond_0
    const-string/jumbo v2, "Requesting rewarded ad from adapter."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    .line 264
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/ads/mediation/a;

    move-object v13, v0

    .line 266
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ll;->a(Lcom/google/android/gms/internal/ads/ku;)Lcom/google/android/gms/ads/mediation/d;

    move-result-object v14

    .line 267
    new-instance v2, Lcom/google/android/gms/ads/mediation/p;

    .line 268
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    .line 269
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v5}, Lcom/google/android/gms/internal/ads/ll;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 270
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ll;->b(Lcom/google/android/gms/internal/ads/dya;)Landroid/os/Bundle;

    move-result-object v6

    .line 271
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/ll;->a(Lcom/google/android/gms/internal/ads/dya;)Z

    move-result v7

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dya;->k:Landroid/location/Location;

    move-object/from16 v0, p2

    iget v9, v0, Lcom/google/android/gms/internal/ads/dya;->g:I

    move-object/from16 v0, p2

    iget v10, v0, Lcom/google/android/gms/internal/ads/dya;->t:I

    .line 272
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ll;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, ""

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/ads/mediation/p;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v13, v2, v14}, Lcom/google/android/gms/ads/mediation/a;->loadRewardedAd(Lcom/google/android/gms/ads/mediation/p;Lcom/google/android/gms/ads/mediation/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    return-void

    .line 275
    :catch_0
    move-exception v2

    .line 276
    const-string/jumbo v3, ""

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/f;

    if-nez v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 344
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/mediation/f;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/f;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 348
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final c(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V
    .locals 15

    .prologue
    .line 278
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v2, v2, Lcom/google/android/gms/ads/mediation/a;

    if-nez v2, :cond_0

    .line 279
    const-class v2, Lcom/google/android/gms/ads/mediation/a;

    .line 280
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    .line 281
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x16

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " #009 Class mismatch: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 283
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    .line 284
    :cond_0
    const-string/jumbo v2, "Requesting rewarded interstitial ad from adapter."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    .line 285
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/ads/mediation/a;

    move-object v13, v0

    .line 287
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ll;->a(Lcom/google/android/gms/internal/ads/ku;)Lcom/google/android/gms/ads/mediation/d;

    move-result-object v14

    .line 288
    new-instance v2, Lcom/google/android/gms/ads/mediation/p;

    .line 289
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    .line 290
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v5}, Lcom/google/android/gms/internal/ads/ll;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 291
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ll;->b(Lcom/google/android/gms/internal/ads/dya;)Landroid/os/Bundle;

    move-result-object v6

    .line 292
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/ll;->a(Lcom/google/android/gms/internal/ads/dya;)Z

    move-result v7

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dya;->k:Landroid/location/Location;

    move-object/from16 v0, p2

    iget v9, v0, Lcom/google/android/gms/internal/ads/dya;->g:I

    move-object/from16 v0, p2

    iget v10, v0, Lcom/google/android/gms/internal/ads/dya;->t:I

    .line 293
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ll;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, ""

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/ads/mediation/p;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v13, v2, v14}, Lcom/google/android/gms/ads/mediation/a;->zza(Lcom/google/android/gms/ads/mediation/p;Lcom/google/android/gms/ads/mediation/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    return-void

    .line 296
    :catch_0
    move-exception v2

    .line 297
    const-string/jumbo v3, ""

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/f;

    if-nez v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 351
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/mediation/f;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/f;->onPause()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 355
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/f;

    if-nez v0, :cond_0

    .line 359
    :goto_0
    return-void

    .line 358
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/mediation/f;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/f;->onResume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final f()V
    .locals 5

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-eqz v0, :cond_0

    .line 224
    const-string/jumbo v0, "Show rewarded video ad from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    .line 226
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->showVideo()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/a;

    if-nez v0, :cond_1

    .line 232
    const-class v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    .line 233
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/ads/mediation/a;

    .line 234
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    .line 235
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1a

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " or "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " #009 Class mismatch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 237
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->e:Lcom/google/android/gms/ads/mediation/o;

    if-eqz v0, :cond_2

    .line 239
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ll;->e:Lcom/google/android/gms/ads/mediation/o;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->d:Lcom/google/android/gms/dynamic/a;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/o;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 240
    :cond_2
    const-string/jumbo v0, "Can not show null mediated rewarded ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;)V

    .line 241
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final g()Z
    .locals 5

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-eqz v0, :cond_0

    .line 243
    const-string/jumbo v0, "Check if adapter is initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    .line 245
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->isInitialized()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 256
    :goto_0
    return v0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/a;

    if-nez v0, :cond_1

    .line 250
    const-class v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    .line 251
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/ads/mediation/a;

    .line 252
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    .line 253
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1a

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " or "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " #009 Class mismatch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 255
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->c:Lcom/google/android/gms/internal/ads/rm;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Lcom/google/android/gms/internal/ads/kx;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->b:Lcom/google/android/gms/internal/ads/lm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lm;->a()Lcom/google/android/gms/ads/mediation/q;

    move-result-object v0

    .line 122
    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/r;

    if-eqz v1, :cond_0

    .line 123
    new-instance v1, Lcom/google/android/gms/internal/ads/lo;

    check-cast v0, Lcom/google/android/gms/ads/mediation/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/lo;-><init>(Lcom/google/android/gms/ads/mediation/r;)V

    move-object v0, v1

    .line 124
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Lcom/google/android/gms/internal/ads/ld;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->b:Lcom/google/android/gms/internal/ads/lm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lm;->a()Lcom/google/android/gms/ads/mediation/q;

    move-result-object v0

    .line 130
    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/s;

    if-eqz v1, :cond_0

    .line 131
    new-instance v1, Lcom/google/android/gms/internal/ads/lr;

    check-cast v0, Lcom/google/android/gms/ads/mediation/s;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/lr;-><init>(Lcom/google/android/gms/ads/mediation/s;)V

    move-object v0, v1

    .line 132
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzbgx;

    if-nez v0, :cond_0

    .line 51
    const-class v0, Lcom/google/android/gms/internal/ads/zzbgx;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " #009 Class mismatch: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    :goto_0
    return-object v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgx;

    .line 57
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgx;->zzti()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public final k()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzbgz;

    if-nez v0, :cond_0

    .line 87
    const-class v0, Lcom/google/android/gms/internal/ads/zzbgz;

    .line 88
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " #009 Class mismatch: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    :goto_0
    return-object v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgz;

    .line 93
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->getInterstitialAdapterInfo()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public final l()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;

    return v0
.end method

.method public final n()Lcom/google/android/gms/internal/ads/cr;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->b:Lcom/google/android/gms/internal/ads/lm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lm;->c()Lcom/google/android/gms/ads/b/i;

    move-result-object v0

    .line 134
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/cw;

    if-eqz v1, :cond_0

    .line 135
    check-cast v0, Lcom/google/android/gms/internal/ads/cw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cw;->b()Lcom/google/android/gms/internal/ads/cr;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()Lcom/google/android/gms/internal/ads/eba;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 322
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/y;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 328
    :goto_0
    return-object v0

    .line 324
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/mediation/y;

    .line 325
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/y;->getVideoController()Lcom/google/android/gms/internal/ads/eba;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    const-string/jumbo v2, ""

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 328
    goto :goto_0
.end method

.method public final p()Lcom/google/android/gms/internal/ads/le;
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->b:Lcom/google/android/gms/internal/ads/lm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lm;->b()Lcom/google/android/gms/ads/mediation/w;

    move-result-object v1

    .line 126
    if-eqz v1, :cond_0

    .line 127
    new-instance v0, Lcom/google/android/gms/internal/ads/ly;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ly;-><init>(Lcom/google/android/gms/ads/mediation/w;)V

    .line 128
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Lcom/google/android/gms/internal/ads/nb;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/a;

    if-nez v0, :cond_0

    .line 386
    const/4 v0, 0x0

    .line 387
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/mediation/a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/a;->getVersionInfo()Lcom/google/android/gms/ads/mediation/x;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nb;->a(Lcom/google/android/gms/ads/mediation/x;)Lcom/google/android/gms/internal/ads/nb;

    move-result-object v0

    goto :goto_0
.end method

.method public final r()Lcom/google/android/gms/internal/ads/nb;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/a;

    if-nez v0, :cond_0

    .line 389
    const/4 v0, 0x0

    .line 390
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ll;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/mediation/a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/a;->getSDKVersionInfo()Lcom/google/android/gms/ads/mediation/x;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nb;->a(Lcom/google/android/gms/ads/mediation/x;)Lcom/google/android/gms/internal/ads/nb;

    move-result-object v0

    goto :goto_0
.end method
