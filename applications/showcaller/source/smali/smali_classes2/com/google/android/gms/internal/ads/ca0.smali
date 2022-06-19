.class public final Lcom/google/android/gms/internal/ads/ca0;
.super Lcom/google/android/gms/internal/ads/q90;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final d:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

.field private e:Lcom/google/android/gms/ads/mediation/l;

.field private f:Lcom/google/android/gms/ads/mediation/q;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/q90;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ca0;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ca0;->d:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    return-void
.end method

.method private final F6(Lcom/google/android/gms/internal/ads/zzbdg;)Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbdg;->p:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca0;->d:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .line 3
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    return-object p1
.end method

.method private static final G6(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Server parameters: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 3
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 4
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_2

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    .line 6
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 7
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    move-object v0, p0

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    const-string v0, ""

    .line 10
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method private static final H6(Lcom/google/android/gms/internal/ads/zzbdg;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->i:Z

    if-nez p0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    invoke-static {}, Lcom/google/android/gms/internal/ads/xh0;->k()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final I6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbdg;->x:Ljava/lang/String;

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "max_ad_content_rating"

    .line 3
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method


# virtual methods
.method public final B0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ca0;->g:Ljava/lang/String;

    return-void
.end method

.method public final F5(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/i90;Lcom/google/android/gms/internal/ads/y70;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 1
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/y90;

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 2
    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/y90;-><init>(Lcom/google/android/gms/internal/ads/ca0;Lcom/google/android/gms/internal/ads/i90;Lcom/google/android/gms/internal/ads/y70;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/ca0;->d:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v15, Lcom/google/android/gms/ads/mediation/m;

    .line 3
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/content/Context;

    .line 4
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/ca0;->G6(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 5
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/ca0;->F6(Lcom/google/android/gms/internal/ads/zzbdg;)Landroid/os/Bundle;

    move-result-object v8

    .line 6
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/ca0;->H6(Lcom/google/android/gms/internal/ads/zzbdg;)Z

    move-result v9

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzbdg;->n:Landroid/location/Location;

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzbdg;->j:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzbdg;->w:I

    .line 7
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/ca0;->I6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/ca0;->g:Ljava/lang/String;

    move-object v4, v15

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/ads/mediation/m;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3, v15, v2}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbInterstitialAd(Lcom/google/android/gms/ads/mediation/m;Lcom/google/android/gms/ads/mediation/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v2, "Adapter failed to render interstitial ad."

    .line 9
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final O4(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/u90;)V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/aa0;

    invoke-direct {v0, p0, p6}, Lcom/google/android/gms/internal/ads/aa0;-><init>(Lcom/google/android/gms/internal/ads/ca0;Lcom/google/android/gms/internal/ads/u90;)V

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/ca0;->d:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v1, Lcom/google/android/gms/ads/mediation/j;

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "rewarded_interstitial"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "interstitial"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "rewarded"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "native"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_4
    const-string v2, "banner"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_5

    if-eq p2, v6, :cond_4

    if-eq p2, v5, :cond_3

    if-eq p2, v4, :cond_2

    if-ne p2, v3, :cond_1

    .line 3
    :try_start_1
    sget-object p2, Lcom/google/android/gms/ads/AdFormat;->h:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_2

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Internal Error"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    sget-object p2, Lcom/google/android/gms/ads/AdFormat;->g:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_2

    .line 7
    :cond_3
    sget-object p2, Lcom/google/android/gms/ads/AdFormat;->f:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_2

    .line 8
    :cond_4
    sget-object p2, Lcom/google/android/gms/ads/AdFormat;->e:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_2

    .line 9
    :cond_5
    sget-object p2, Lcom/google/android/gms/ads/AdFormat;->d:Lcom/google/android/gms/ads/AdFormat;

    .line 10
    :goto_2
    invoke-direct {v1, p2, p4}, Lcom/google/android/gms/ads/mediation/j;-><init>(Lcom/google/android/gms/ads/AdFormat;Landroid/os/Bundle;)V

    new-instance p2, Ljava/util/ArrayList;

    .line 11
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/google/android/gms/ads/mediation/rtb/a;

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget v1, p5, Lcom/google/android/gms/internal/ads/zzbdl;->h:I

    iget v2, p5, Lcom/google/android/gms/internal/ads/zzbdl;->e:I

    iget-object p5, p5, Lcom/google/android/gms/internal/ads/zzbdl;->d:Ljava/lang/String;

    .line 14
    invoke-static {v1, v2, p5}, Lcom/google/android/gms/ads/a0;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/f;

    move-result-object p5

    invoke-direct {p4, p1, p2, p3, p5}, Lcom/google/android/gms/ads/mediation/rtb/a;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/gms/ads/f;)V

    .line 15
    invoke-virtual {p6, p4, v0}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->collectSignals(Lcom/google/android/gms/ads/mediation/rtb/a;Lcom/google/android/gms/ads/mediation/rtb/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "Error generating signals for RTB"

    .line 16
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_4
        -0x3ebdafe9 -> :sswitch_3
        -0xe47b3f2 -> :sswitch_2
        0x240b672c -> :sswitch_1
        0x71ef0bbd -> :sswitch_0
    .end sparse-switch
.end method

.method public final Y4(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/l90;Lcom/google/android/gms/internal/ads/y70;Lcom/google/android/gms/internal/ads/zzblv;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 1
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/z90;

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 2
    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/z90;-><init>(Lcom/google/android/gms/internal/ads/ca0;Lcom/google/android/gms/internal/ads/l90;Lcom/google/android/gms/internal/ads/y70;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/ca0;->d:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v15, Lcom/google/android/gms/ads/mediation/o;

    .line 3
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/content/Context;

    .line 4
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/ca0;->G6(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 5
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/ca0;->F6(Lcom/google/android/gms/internal/ads/zzbdg;)Landroid/os/Bundle;

    move-result-object v8

    .line 6
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/ca0;->H6(Lcom/google/android/gms/internal/ads/zzbdg;)Z

    move-result v9

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzbdg;->n:Landroid/location/Location;

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzbdg;->j:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzbdg;->w:I

    .line 7
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/ca0;->I6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/ca0;->g:Ljava/lang/String;

    move-object v4, v15

    move-object/from16 v6, p1

    move-object v0, v15

    move-object/from16 v15, p7

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/ads/mediation/o;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzblv;)V

    .line 8
    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbNativeAd(Lcom/google/android/gms/ads/mediation/o;Lcom/google/android/gms/ads/mediation/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v2, "Adapter failed to render native ad."

    .line 9
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final b3(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/f90;Lcom/google/android/gms/internal/ads/y70;Lcom/google/android/gms/internal/ads/zzbdl;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p7

    .line 1
    :try_start_0
    new-instance v3, Lcom/google/android/gms/internal/ads/x90;

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 2
    invoke-direct {v3, v1, v4, v5}, Lcom/google/android/gms/internal/ads/x90;-><init>(Lcom/google/android/gms/internal/ads/ca0;Lcom/google/android/gms/internal/ads/f90;Lcom/google/android/gms/internal/ads/y70;)V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/ca0;->d:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v15, Lcom/google/android/gms/ads/mediation/h;

    .line 3
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/content/Context;

    .line 4
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/ca0;->G6(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 5
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/ca0;->F6(Lcom/google/android/gms/internal/ads/zzbdg;)Landroid/os/Bundle;

    move-result-object v9

    .line 6
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/ca0;->H6(Lcom/google/android/gms/internal/ads/zzbdg;)Z

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzbdg;->n:Landroid/location/Location;

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzbdg;->j:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzbdg;->w:I

    .line 7
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/ca0;->I6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;)Ljava/lang/String;

    move-result-object v14

    iget v0, v2, Lcom/google/android/gms/internal/ads/zzbdl;->h:I

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzbdl;->e:I

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbdl;->d:Ljava/lang/String;

    .line 8
    invoke-static {v0, v5, v2}, Lcom/google/android/gms/ads/a0;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/f;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/ca0;->g:Ljava/lang/String;

    move-object v5, v15

    move-object/from16 v7, p1

    move-object v1, v15

    move-object v15, v0

    move-object/from16 v16, v2

    invoke-direct/range {v5 .. v16}, Lcom/google/android/gms/ads/mediation/h;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Lcom/google/android/gms/ads/f;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v4, v1, v3}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbInterscrollerAd(Lcom/google/android/gms/ads/mediation/h;Lcom/google/android/gms/ads/mediation/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Adapter failed to render interscroller ad."

    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/zzbya;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca0;->d:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/a;->getVersionInfo()Lcom/google/android/gms/ads/mediation/w;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbya;->k0(Lcom/google/android/gms/ads/mediation/w;)Lcom/google/android/gms/internal/ads/zzbya;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/internal/ads/ju;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca0;->d:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/y;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/y;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/y;->getVideoController()Lcom/google/android/gms/internal/ads/ju;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, ""

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v2
.end method

.method public final f2(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/o90;Lcom/google/android/gms/internal/ads/y70;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 1
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/ba0;

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/ba0;-><init>(Lcom/google/android/gms/internal/ads/ca0;Lcom/google/android/gms/internal/ads/o90;Lcom/google/android/gms/internal/ads/y70;)V

    .line 2
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/ca0;->d:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v15, Lcom/google/android/gms/ads/mediation/r;

    .line 3
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/content/Context;

    .line 4
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/ca0;->G6(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 5
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/ca0;->F6(Lcom/google/android/gms/internal/ads/zzbdg;)Landroid/os/Bundle;

    move-result-object v8

    .line 6
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/ca0;->H6(Lcom/google/android/gms/internal/ads/zzbdg;)Z

    move-result v9

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzbdg;->n:Landroid/location/Location;

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzbdg;->j:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzbdg;->w:I

    .line 7
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/ca0;->I6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/ca0;->g:Ljava/lang/String;

    move-object v4, v15

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/ads/mediation/r;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3, v15, v2}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbRewardedInterstitialAd(Lcom/google/android/gms/ads/mediation/r;Lcom/google/android/gms/ads/mediation/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v2, "Adapter failed to render rewarded interstitial ad."

    .line 9
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final j3(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/l90;Lcom/google/android/gms/internal/ads/y70;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/ca0;->Y4(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/l90;Lcom/google/android/gms/internal/ads/y70;Lcom/google/android/gms/internal/ads/zzblv;)V

    return-void
.end method

.method public final q5(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/o90;Lcom/google/android/gms/internal/ads/y70;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 1
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/ba0;

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/ba0;-><init>(Lcom/google/android/gms/internal/ads/ca0;Lcom/google/android/gms/internal/ads/o90;Lcom/google/android/gms/internal/ads/y70;)V

    .line 2
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/ca0;->d:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v15, Lcom/google/android/gms/ads/mediation/r;

    .line 3
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/content/Context;

    .line 4
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/ca0;->G6(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 5
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/ca0;->F6(Lcom/google/android/gms/internal/ads/zzbdg;)Landroid/os/Bundle;

    move-result-object v8

    .line 6
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/ca0;->H6(Lcom/google/android/gms/internal/ads/zzbdg;)Z

    move-result v9

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzbdg;->n:Landroid/location/Location;

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzbdg;->j:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzbdg;->w:I

    .line 7
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/ca0;->I6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/ca0;->g:Ljava/lang/String;

    move-object v4, v15

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/ads/mediation/r;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3, v15, v2}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbRewardedAd(Lcom/google/android/gms/ads/mediation/r;Lcom/google/android/gms/ads/mediation/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v2, "Adapter failed to render rewarded ad."

    .line 9
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final x3(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/f90;Lcom/google/android/gms/internal/ads/y70;Lcom/google/android/gms/internal/ads/zzbdl;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p7

    .line 1
    :try_start_0
    new-instance v3, Lcom/google/android/gms/internal/ads/w90;

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 2
    invoke-direct {v3, v1, v4, v5}, Lcom/google/android/gms/internal/ads/w90;-><init>(Lcom/google/android/gms/internal/ads/ca0;Lcom/google/android/gms/internal/ads/f90;Lcom/google/android/gms/internal/ads/y70;)V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/ca0;->d:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v15, Lcom/google/android/gms/ads/mediation/h;

    .line 3
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/content/Context;

    .line 4
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/ca0;->G6(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 5
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/ca0;->F6(Lcom/google/android/gms/internal/ads/zzbdg;)Landroid/os/Bundle;

    move-result-object v9

    .line 6
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/ca0;->H6(Lcom/google/android/gms/internal/ads/zzbdg;)Z

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzbdg;->n:Landroid/location/Location;

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzbdg;->j:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzbdg;->w:I

    .line 7
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/ca0;->I6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;)Ljava/lang/String;

    move-result-object v14

    iget v0, v2, Lcom/google/android/gms/internal/ads/zzbdl;->h:I

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzbdl;->e:I

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbdl;->d:Ljava/lang/String;

    .line 8
    invoke-static {v0, v5, v2}, Lcom/google/android/gms/ads/a0;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/f;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/ca0;->g:Ljava/lang/String;

    move-object v5, v15

    move-object/from16 v7, p1

    move-object v1, v15

    move-object v15, v0

    move-object/from16 v16, v2

    invoke-direct/range {v5 .. v16}, Lcom/google/android/gms/ads/mediation/h;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Lcom/google/android/gms/ads/f;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v4, v1, v3}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbBannerAd(Lcom/google/android/gms/ads/mediation/h;Lcom/google/android/gms/ads/mediation/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Adapter failed to render banner ad."

    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final y5(Lcom/google/android/gms/dynamic/a;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca0;->f:Lcom/google/android/gms/ads/mediation/q;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/q;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final z0(Lcom/google/android/gms/dynamic/a;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca0;->e:Lcom/google/android/gms/ads/mediation/l;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/l;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzbya;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca0;->d:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/a;->getSDKVersionInfo()Lcom/google/android/gms/ads/mediation/w;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbya;->k0(Lcom/google/android/gms/ads/mediation/w;)Lcom/google/android/gms/internal/ads/zzbya;

    move-result-object v0

    return-object v0
.end method
