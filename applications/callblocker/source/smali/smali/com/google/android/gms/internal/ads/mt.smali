.class public final Lcom/google/android/gms/internal/ads/mt;
.super Lcom/google/android/gms/internal/ads/mm;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

.field private b:Lcom/google/android/gms/ads/mediation/j;

.field private c:Lcom/google/android/gms/ads/mediation/o;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/mm;-><init>()V

    .line 2
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mt;->d:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mt;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    .line 4
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/mi;Lcom/google/android/gms/internal/ads/ku;)Lcom/google/android/gms/ads/mediation/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/mi;",
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
    .line 117
    new-instance v0, Lcom/google/android/gms/internal/ads/mz;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/mz;-><init>(Lcom/google/android/gms/internal/ads/mt;Lcom/google/android/gms/internal/ads/mi;Lcom/google/android/gms/internal/ads/ku;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dya;->u:Ljava/lang/String;

    .line 133
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 134
    const-string/jumbo v2, "max_ad_content_rating"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dya;)Z
    .locals 1

    .prologue
    .line 131
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
    .line 138
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dya;->m:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dya;->m:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mt;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 118
    const-string/jumbo v1, "Server parameters: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 119
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    if-eqz p0, :cond_2

    .line 121
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 122
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 123
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 127
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/nb;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mt;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/a;->getVersionInfo()Lcom/google/android/gms/ads/mediation/x;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nb;->a(Lcom/google/android/gms/ads/mediation/x;)Lcom/google/android/gms/internal/ads/nb;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/dyd;Lcom/google/android/gms/internal/ads/mo;)V
    .locals 8

    .prologue
    .line 89
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/mx;

    invoke-direct {v1, p0, p6}, Lcom/google/android/gms/internal/ads/mx;-><init>(Lcom/google/android/gms/internal/ads/mt;Lcom/google/android/gms/internal/ads/mo;)V

    .line 90
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mt;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    .line 92
    new-instance v3, Lcom/google/android/gms/ads/mediation/i;

    .line 93
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Internal Error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-string/jumbo v1, "Error generating signals for RTB"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 93
    :sswitch_0
    :try_start_1
    const-string/jumbo v4, "banner"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "interstitial"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "rewarded"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "native"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 94
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/ads/a;->a:Lcom/google/android/gms/ads/a;

    .line 99
    :goto_1
    invoke-direct {v3, v0, p4}, Lcom/google/android/gms/ads/mediation/i;-><init>(Lcom/google/android/gms/ads/a;Landroid/os/Bundle;)V

    .line 100
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v3, Lcom/google/android/gms/ads/mediation/rtb/a;

    .line 103
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget v5, p5, Lcom/google/android/gms/internal/ads/dyd;->e:I

    iget v6, p5, Lcom/google/android/gms/internal/ads/dyd;->b:I

    iget-object v7, p5, Lcom/google/android/gms/internal/ads/dyd;->a:Ljava/lang/String;

    .line 104
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/ads/s;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/e;

    move-result-object v5

    invoke-direct {v3, v0, v4, p3, v5}, Lcom/google/android/gms/ads/mediation/rtb/a;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/gms/ads/e;)V

    .line 106
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->collectSignals(Lcom/google/android/gms/ads/mediation/rtb/a;Lcom/google/android/gms/ads/mediation/rtb/b;)V

    .line 107
    return-void

    .line 95
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/ads/a;->b:Lcom/google/android/gms/ads/a;

    goto :goto_1

    .line 96
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/ads/a;->c:Lcom/google/android/gms/ads/a;

    goto :goto_1

    .line 97
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/ads/a;->d:Lcom/google/android/gms/ads/a;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 93
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

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mt;->d:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/mb;Lcom/google/android/gms/internal/ads/ku;Lcom/google/android/gms/internal/ads/dyd;)V
    .locals 17

    .prologue
    .line 5
    :try_start_0
    new-instance v15, Lcom/google/android/gms/internal/ads/mw;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v15, v0, v1, v2}, Lcom/google/android/gms/internal/ads/mw;-><init>(Lcom/google/android/gms/internal/ads/mt;Lcom/google/android/gms/internal/ads/mb;Lcom/google/android/gms/internal/ads/ku;)V

    .line 6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mt;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    move-object/from16 v16, v0

    new-instance v3, Lcom/google/android/gms/ads/mediation/g;

    .line 7
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 8
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 9
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/mt;->b(Lcom/google/android/gms/internal/ads/dya;)Landroid/os/Bundle;

    move-result-object v7

    .line 10
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/mt;->a(Lcom/google/android/gms/internal/ads/dya;)Z

    move-result v8

    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/dya;->k:Landroid/location/Location;

    move-object/from16 v0, p3

    iget v10, v0, Lcom/google/android/gms/internal/ads/dya;->g:I

    move-object/from16 v0, p3

    iget v11, v0, Lcom/google/android/gms/internal/ads/dya;->t:I

    .line 11
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/mt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p7

    iget v5, v0, Lcom/google/android/gms/internal/ads/dyd;->e:I

    move-object/from16 v0, p7

    iget v13, v0, Lcom/google/android/gms/internal/ads/dyd;->b:I

    move-object/from16 v0, p7

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/dyd;->a:Ljava/lang/String;

    .line 12
    invoke-static {v5, v13, v14}, Lcom/google/android/gms/ads/s;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/e;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/mt;->d:Ljava/lang/String;

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/ads/mediation/g;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Lcom/google/android/gms/ads/e;Ljava/lang/String;)V

    .line 13
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v15}, Lcom/google/android/gms/ads/mediation/a;->loadBannerAd(Lcom/google/android/gms/ads/mediation/g;Lcom/google/android/gms/ads/mediation/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-void

    .line 15
    :catch_0
    move-exception v3

    .line 16
    const-string/jumbo v4, "Adapter failed to render banner ad."

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    new-instance v3, Landroid/os/RemoteException;

    invoke-direct {v3}, Landroid/os/RemoteException;-><init>()V

    throw v3
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/mc;Lcom/google/android/gms/internal/ads/ku;)V
    .locals 15

    .prologue
    .line 18
    :try_start_0
    new-instance v13, Lcom/google/android/gms/internal/ads/mv;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v13, p0, v0, v1}, Lcom/google/android/gms/internal/ads/mv;-><init>(Lcom/google/android/gms/internal/ads/mt;Lcom/google/android/gms/internal/ads/mc;Lcom/google/android/gms/internal/ads/ku;)V

    .line 19
    iget-object v14, p0, Lcom/google/android/gms/internal/ads/mt;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v2, Lcom/google/android/gms/ads/mediation/k;

    .line 20
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 21
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 22
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/mt;->b(Lcom/google/android/gms/internal/ads/dya;)Landroid/os/Bundle;

    move-result-object v6

    .line 23
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/mt;->a(Lcom/google/android/gms/internal/ads/dya;)Z

    move-result v7

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dya;->k:Landroid/location/Location;

    move-object/from16 v0, p3

    iget v9, v0, Lcom/google/android/gms/internal/ads/dya;->g:I

    move-object/from16 v0, p3

    iget v10, v0, Lcom/google/android/gms/internal/ads/dya;->t:I

    .line 24
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/mt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/mt;->d:Ljava/lang/String;

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/ads/mediation/k;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v14, v2, v13}, Lcom/google/android/gms/ads/mediation/a;->loadInterstitialAd(Lcom/google/android/gms/ads/mediation/k;Lcom/google/android/gms/ads/mediation/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return-void

    .line 27
    :catch_0
    move-exception v2

    .line 28
    const-string/jumbo v3, "Adapter failed to render interstitial ad."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/mh;Lcom/google/android/gms/internal/ads/ku;)V
    .locals 15

    .prologue
    .line 56
    :try_start_0
    new-instance v13, Lcom/google/android/gms/internal/ads/my;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v13, p0, v0, v1}, Lcom/google/android/gms/internal/ads/my;-><init>(Lcom/google/android/gms/internal/ads/mt;Lcom/google/android/gms/internal/ads/mh;Lcom/google/android/gms/internal/ads/ku;)V

    .line 57
    iget-object v14, p0, Lcom/google/android/gms/internal/ads/mt;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v2, Lcom/google/android/gms/ads/mediation/m;

    .line 58
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 59
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 60
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/mt;->b(Lcom/google/android/gms/internal/ads/dya;)Landroid/os/Bundle;

    move-result-object v6

    .line 61
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/mt;->a(Lcom/google/android/gms/internal/ads/dya;)Z

    move-result v7

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dya;->k:Landroid/location/Location;

    move-object/from16 v0, p3

    iget v9, v0, Lcom/google/android/gms/internal/ads/dya;->g:I

    move-object/from16 v0, p3

    iget v10, v0, Lcom/google/android/gms/internal/ads/dya;->t:I

    .line 62
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/mt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/mt;->d:Ljava/lang/String;

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/ads/mediation/m;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v14, v2, v13}, Lcom/google/android/gms/ads/mediation/a;->loadNativeAd(Lcom/google/android/gms/ads/mediation/m;Lcom/google/android/gms/ads/mediation/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-void

    .line 65
    :catch_0
    move-exception v2

    .line 66
    const-string/jumbo v3, "Adapter failed to render rewarded ad."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/mi;Lcom/google/android/gms/internal/ads/ku;)V
    .locals 15

    .prologue
    .line 30
    .line 31
    :try_start_0
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/mt;->a(Lcom/google/android/gms/internal/ads/mi;Lcom/google/android/gms/internal/ads/ku;)Lcom/google/android/gms/ads/mediation/d;

    move-result-object v13

    .line 32
    iget-object v14, p0, Lcom/google/android/gms/internal/ads/mt;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v2, Lcom/google/android/gms/ads/mediation/p;

    .line 33
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 34
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 35
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/mt;->b(Lcom/google/android/gms/internal/ads/dya;)Landroid/os/Bundle;

    move-result-object v6

    .line 36
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/mt;->a(Lcom/google/android/gms/internal/ads/dya;)Z

    move-result v7

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dya;->k:Landroid/location/Location;

    move-object/from16 v0, p3

    iget v9, v0, Lcom/google/android/gms/internal/ads/dya;->g:I

    move-object/from16 v0, p3

    iget v10, v0, Lcom/google/android/gms/internal/ads/dya;->t:I

    .line 37
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/mt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/mt;->d:Ljava/lang/String;

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/ads/mediation/p;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v14, v2, v13}, Lcom/google/android/gms/ads/mediation/a;->loadRewardedAd(Lcom/google/android/gms/ads/mediation/p;Lcom/google/android/gms/ads/mediation/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-void

    .line 40
    :catch_0
    move-exception v2

    .line 41
    const-string/jumbo v3, "Adapter failed to render rewarded ad."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
.end method

.method public final a([Ljava/lang/String;[Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/ads/nb;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mt;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/a;->getSDKVersionInfo()Lcom/google/android/gms/ads/mediation/x;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nb;->a(Lcom/google/android/gms/ads/mediation/x;)Lcom/google/android/gms/internal/ads/nb;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/mi;Lcom/google/android/gms/internal/ads/ku;)V
    .locals 15

    .prologue
    .line 43
    .line 44
    :try_start_0
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/mt;->a(Lcom/google/android/gms/internal/ads/mi;Lcom/google/android/gms/internal/ads/ku;)Lcom/google/android/gms/ads/mediation/d;

    move-result-object v13

    .line 45
    iget-object v14, p0, Lcom/google/android/gms/internal/ads/mt;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v2, Lcom/google/android/gms/ads/mediation/p;

    .line 46
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 47
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 48
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/mt;->b(Lcom/google/android/gms/internal/ads/dya;)Landroid/os/Bundle;

    move-result-object v6

    .line 49
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/mt;->a(Lcom/google/android/gms/internal/ads/dya;)Z

    move-result v7

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dya;->k:Landroid/location/Location;

    move-object/from16 v0, p3

    iget v9, v0, Lcom/google/android/gms/internal/ads/dya;->g:I

    move-object/from16 v0, p3

    iget v10, v0, Lcom/google/android/gms/internal/ads/dya;->t:I

    .line 50
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/mt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/mt;->d:Ljava/lang/String;

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/ads/mediation/p;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v14, v2, v13}, Lcom/google/android/gms/ads/mediation/a;->zza(Lcom/google/android/gms/ads/mediation/p;Lcom/google/android/gms/ads/mediation/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return-void

    .line 53
    :catch_0
    move-exception v2

    .line 54
    const-string/jumbo v3, "Adapter failed to render rewarded interstitial ad."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
.end method

.method public final b(Lcom/google/android/gms/dynamic/a;)Z
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mt;->b:Lcom/google/android/gms/ads/mediation/j;

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    .line 70
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mt;->b:Lcom/google/android/gms/ads/mediation/j;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/j;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final c()Lcom/google/android/gms/internal/ads/eba;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mt;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/y;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 88
    :goto_0
    return-object v0

    .line 84
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mt;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    check-cast v0, Lcom/google/android/gms/ads/mediation/y;

    .line 85
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/y;->getVideoController()Lcom/google/android/gms/internal/ads/eba;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    const-string/jumbo v2, ""

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 88
    goto :goto_0
.end method

.method public final c(Lcom/google/android/gms/dynamic/a;)Z
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mt;->c:Lcom/google/android/gms/ads/mediation/o;

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    .line 77
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mt;->c:Lcom/google/android/gms/ads/mediation/o;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/o;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
