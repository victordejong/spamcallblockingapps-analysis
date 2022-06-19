.class public final Lcom/google/android/gms/internal/ads/axw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/azh;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/azg;

.field private final c:Lorg/json/JSONObject;

.field private final d:Lcom/google/android/gms/internal/ads/bcy;

.field private final e:Lcom/google/android/gms/internal/ads/ayx;

.field private final f:Lcom/google/android/gms/internal/ads/ctl;

.field private final g:Lcom/google/android/gms/internal/ads/aqh;

.field private final h:Lcom/google/android/gms/internal/ads/apo;

.field private final i:Lcom/google/android/gms/internal/ads/cgr;

.field private final j:Lcom/google/android/gms/internal/ads/yd;

.field private final k:Lcom/google/android/gms/internal/ads/chh;

.field private final l:Lcom/google/android/gms/internal/ads/ajb;

.field private final m:Lcom/google/android/gms/internal/ads/azy;

.field private final n:Lcom/google/android/gms/common/util/e;

.field private final o:Lcom/google/android/gms/internal/ads/aup;

.field private final p:Lcom/google/android/gms/internal/ads/clj;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Landroid/graphics/Point;

.field private v:Landroid/graphics/Point;

.field private w:J

.field private x:J

.field private y:Lcom/google/android/gms/internal/ads/eah;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/azg;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/bcy;Lcom/google/android/gms/internal/ads/ayx;Lcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/internal/ads/aqh;Lcom/google/android/gms/internal/ads/apo;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/chh;Lcom/google/android/gms/internal/ads/ajb;Lcom/google/android/gms/internal/ads/azy;Lcom/google/android/gms/common/util/e;Lcom/google/android/gms/internal/ads/aup;Lcom/google/android/gms/internal/ads/clj;)V
    .locals 4

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/axw;->q:Z

    .line 3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/axw;->s:Z

    .line 4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/axw;->t:Z

    .line 5
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/axw;->u:Landroid/graphics/Point;

    .line 6
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/axw;->v:Landroid/graphics/Point;

    .line 7
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/axw;->w:J

    .line 8
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/axw;->x:J

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/axw;->a:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/axw;->b:Lcom/google/android/gms/internal/ads/azg;

    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/axw;->c:Lorg/json/JSONObject;

    .line 12
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/axw;->d:Lcom/google/android/gms/internal/ads/bcy;

    .line 13
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/axw;->e:Lcom/google/android/gms/internal/ads/ayx;

    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/axw;->f:Lcom/google/android/gms/internal/ads/ctl;

    .line 15
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/axw;->g:Lcom/google/android/gms/internal/ads/aqh;

    .line 16
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/axw;->h:Lcom/google/android/gms/internal/ads/apo;

    .line 17
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/axw;->i:Lcom/google/android/gms/internal/ads/cgr;

    .line 18
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/axw;->j:Lcom/google/android/gms/internal/ads/yd;

    .line 19
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/axw;->k:Lcom/google/android/gms/internal/ads/chh;

    .line 20
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->l:Lcom/google/android/gms/internal/ads/ajb;

    .line 21
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->m:Lcom/google/android/gms/internal/ads/azy;

    .line 22
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->n:Lcom/google/android/gms/common/util/e;

    .line 23
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->o:Lcom/google/android/gms/internal/ads/aup;

    .line 24
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->p:Lcom/google/android/gms/internal/ads/clj;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/axw;)Lcom/google/android/gms/internal/ads/aqh;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->g:Lcom/google/android/gms/internal/ads/aqh;

    return-object v0
.end method

.method private final a(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V
    .locals 10

    .prologue
    .line 117
    const-string/jumbo v2, "performClick must be called on the main UI thread."

    invoke-static {v2}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 118
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 119
    const-string/jumbo v2, "ad"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/axw;->c:Lorg/json/JSONObject;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string/jumbo v2, "asset_view_signal"

    invoke-virtual {v3, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string/jumbo v2, "ad_view_signal"

    invoke-virtual {v3, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string/jumbo v2, "click_signal"

    move-object/from16 v0, p7

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string/jumbo v2, "scroll_view_signal"

    invoke-virtual {v3, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string/jumbo v2, "lock_screen_signal"

    invoke-virtual {v3, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string/jumbo v4, "has_custom_click_handler"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/axw;->b:Lcom/google/android/gms/internal/ads/azg;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/axw;->e:Lcom/google/android/gms/internal/ads/ayx;

    .line 126
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ayx;->u()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/azg;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/db;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 127
    :goto_0
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 128
    const-string/jumbo v2, "provided_signals"

    move-object/from16 v0, p8

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 130
    const-string/jumbo v2, "asset_id"

    move-object/from16 v0, p6

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string/jumbo v2, "template"

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/axw;->e:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ayx;->a()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 132
    const-string/jumbo v2, "view_aware_api_used"

    move/from16 v0, p9

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 133
    const-string/jumbo v5, "custom_mute_requested"

    .line 134
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/axw;->k:Lcom/google/android/gms/internal/ads/chh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/chh;->i:Lcom/google/android/gms/internal/ads/bl;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/axw;->k:Lcom/google/android/gms/internal/ads/chh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/chh;->i:Lcom/google/android/gms/internal/ads/bl;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/bl;->g:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    .line 135
    :goto_1
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 136
    const-string/jumbo v5, "custom_mute_enabled"

    .line 137
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/axw;->e:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ayx;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/axw;->e:Lcom/google/android/gms/internal/ads/ayx;

    .line 138
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ayx;->i()Lcom/google/android/gms/internal/ads/ebu;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    .line 139
    :goto_2
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 141
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/axw;->m:Lcom/google/android/gms/internal/ads/azy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/azy;->a()Lcom/google/android/gms/internal/ads/dt;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/axw;->c:Lorg/json/JSONObject;

    const-string/jumbo v5, "custom_one_point_five_click_enabled"

    const/4 v6, 0x0

    .line 142
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    const-string/jumbo v2, "custom_one_point_five_click_eligible"

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 144
    :cond_0
    const-string/jumbo v2, "timestamp"

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/axw;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v5}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v6

    invoke-virtual {v4, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 146
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/axw;->t:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/axw;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    const-string/jumbo v2, "custom_click_gesture_eligible"

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 148
    :cond_1
    if-eqz p10, :cond_2

    .line 149
    const-string/jumbo v2, "is_custom_click_gesture"

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 150
    :cond_2
    const-string/jumbo v5, "has_custom_click_handler"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/axw;->b:Lcom/google/android/gms/internal/ads/azg;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/axw;->e:Lcom/google/android/gms/internal/ads/ayx;

    .line 151
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/ayx;->u()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/azg;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/db;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    .line 152
    :goto_3
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 153
    const-string/jumbo v2, "click_signals"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/axw;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string/jumbo v2, "click"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 156
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/axw;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    .line 157
    const-string/jumbo v6, "time_from_last_touch_down"

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/axw;->w:J

    sub-long v8, v4, v8

    invoke-virtual {v2, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 158
    const-string/jumbo v6, "time_from_last_touch"

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/axw;->x:J

    sub-long/2addr v4, v8

    invoke-virtual {v2, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 159
    const-string/jumbo v4, "touch_signal"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/axw;->d:Lcom/google/android/gms/internal/ads/bcy;

    const-string/jumbo v4, "google.afma.nativeAds.handleClick"

    .line 161
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/ads/bcy;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v2

    const-string/jumbo v3, "Error during performing handleClick"

    .line 162
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/yk;->a(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_4
    return-void

    .line 126
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 134
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 138
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 151
    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 164
    :catch_0
    move-exception v2

    .line 165
    const-string/jumbo v3, "Unable to create click JSON."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private final a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 6

    .prologue
    .line 254
    const-string/jumbo v0, "recordImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 255
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 256
    const-string/jumbo v0, "ad"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/axw;->c:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    const-string/jumbo v0, "asset_view_signal"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string/jumbo v0, "ad_view_signal"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string/jumbo v0, "scroll_view_signal"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string/jumbo v0, "lock_screen_signal"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string/jumbo v0, "provided_signals"

    invoke-virtual {v1, v0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bq:Lcom/google/android/gms/internal/ads/ect;

    .line 263
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 264
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    const-string/jumbo v0, "view_signals"

    invoke-virtual {v1, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->d:Lcom/google/android/gms/internal/ads/bcy;

    const-string/jumbo v2, "/logScionEvent"

    new-instance v3, Lcom/google/android/gms/internal/ads/axy;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/internal/ads/axy;-><init>(Lcom/google/android/gms/internal/ads/axw;Lcom/google/android/gms/internal/ads/axv;)V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/bcy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 267
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->d:Lcom/google/android/gms/internal/ads/bcy;

    const-string/jumbo v2, "/nativeImpression"

    new-instance v3, Lcom/google/android/gms/internal/ads/axx;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/internal/ads/axx;-><init>(Lcom/google/android/gms/internal/ads/axw;Lcom/google/android/gms/internal/ads/axv;)V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/bcy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 268
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->d:Lcom/google/android/gms/internal/ads/bcy;

    const-string/jumbo v2, "google.afma.nativeAds.handleImpression"

    .line 269
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/bcy;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    const-string/jumbo v1, "Error during performing handleImpression"

    .line 270
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/yk;->a(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/axw;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->i:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgr;->z:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 276
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/axw;->q:Z

    .line 277
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->m()Lcom/google/android/gms/internal/ads/wf;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/axw;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/axw;->j:Lcom/google/android/gms/internal/ads/yd;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/axw;->i:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/cgr;->z:Lorg/json/JSONObject;

    .line 278
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/axw;->k:Lcom/google/android/gms/internal/ads/chh;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/chh;->f:Ljava/lang/String;

    .line 279
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/wf;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/axw;->q:Z

    .line 280
    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    const-string/jumbo v1, "Unable to create impression JSON."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/axw;)Lcom/google/android/gms/internal/ads/apo;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->h:Lcom/google/android/gms/internal/ads/apo;

    return-object v0
.end method

.method private final b(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->c:Lorg/json/JSONObject;

    const-string/jumbo v1, "tracking_urls_and_actions"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 282
    if-nez v0, :cond_0

    .line 283
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 284
    :cond_0
    const-string/jumbo v1, "click_string"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/axw;->f:Lcom/google/android/gms/internal/ads/ctl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ctl;->a()Lcom/google/android/gms/internal/ads/cjd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/axw;->a:Landroid/content/Context;

    invoke-interface {v1, v2, v0, p1}, Lcom/google/android/gms/internal/ads/cjd;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 288
    :goto_0
    return-object v0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    const-string/jumbo v1, "Exception obtaining click signals"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final b(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 72
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 73
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    :goto_0
    return-object v0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->e:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object v0, v2

    .line 83
    goto :goto_0

    .line 79
    :pswitch_1
    const-string/jumbo v0, "2099"

    goto :goto_0

    .line 80
    :pswitch_2
    const-string/jumbo v0, "1099"

    goto :goto_0

    :pswitch_3
    move-object v0, v2

    .line 81
    goto :goto_0

    .line 82
    :pswitch_4
    const-string/jumbo v0, "3099"

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private final b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/axw;->c:Lorg/json/JSONObject;

    const-string/jumbo v2, "allow_pub_event_reporting"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final c(Landroid/view/View;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 289
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bq:Lcom/google/android/gms/internal/ads/ect;

    .line 290
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 291
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 296
    :goto_0
    return-object v0

    .line 293
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->f:Lcom/google/android/gms/internal/ads/ctl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ctl;->a()Lcom/google/android/gms/internal/ads/cjd;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/axw;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v0, v2, p1, v3}, Lcom/google/android/gms/internal/ads/cjd;->a(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    const-string/jumbo v0, "Exception getting data."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    move-object v0, v1

    .line 296
    goto :goto_0
.end method

.method private final h()Z
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->c:Lorg/json/JSONObject;

    const-string/jumbo v1, "allow_custom_click_gesture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/axw;->t:Z

    .line 115
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 86
    if-nez p1, :cond_0

    .line 87
    const-string/jumbo v0, "Click data is null. No click is reported."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string/jumbo v0, "click_reporting"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/axw;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    const-string/jumbo v0, "The ad slot cannot handle external click events. You must be whitelisted to be able to report your click events."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_1
    const-string/jumbo v0, "click_signal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_2

    const-string/jumbo v2, "asset_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 94
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v7, v1

    move v10, v9

    .line 95
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/axw;->a(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    goto :goto_0

    :cond_2
    move-object v6, v1

    .line 93
    goto :goto_1
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->c:Lorg/json/JSONObject;

    const-string/jumbo v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    const-string/jumbo v0, "setClickConfirmingView: Your account need to be whitelisted to use this feature.\nContact your account manager for more information."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->m:Lcom/google/android/gms/internal/ads/azy;

    .line 195
    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 198
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/azy;->c:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 167
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->u:Landroid/graphics/Point;

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    .line 169
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/axw;->x:J

    .line 170
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 171
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/axw;->w:J

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->u:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->v:Landroid/graphics/Point;

    .line 173
    :cond_0
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/axw;->u:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/axw;->u:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 175
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/axw;->f:Lcom/google/android/gms/internal/ads/ctl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ctl;->a(Landroid/view/MotionEvent;)V

    .line 176
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 177
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->a:Landroid/content/Context;

    .line 63
    invoke-static {v0, p3, p4, p2}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 65
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/xf;->b(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    .line 67
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/axw;->b(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/axw;->v:Landroid/graphics/Point;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/axw;->u:Landroid/graphics/Point;

    .line 69
    invoke-static {v6, v0, v1, v7}, Lcom/google/android/gms/internal/ads/xf;->a(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object v7

    .line 70
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v9, p5

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/axw;->a(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    .line 71
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->u:Landroid/graphics/Point;

    .line 56
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->v:Landroid/graphics/Point;

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->o:Lcom/google/android/gms/internal/ads/aup;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aup;->b(Landroid/view/View;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/axw;->r:Z

    .line 59
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->a:Landroid/content/Context;

    .line 232
    invoke-static {v0, p2, p3, p1}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 233
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    .line 234
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 235
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/xf;->b(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 236
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/axw;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    .line 237
    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/axw;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 238
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 26
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->u:Landroid/graphics/Point;

    .line 27
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->v:Landroid/graphics/Point;

    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/axw;->r:Z

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->o:Lcom/google/android/gms/internal/ads/aup;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aup;->a(Landroid/view/View;)V

    .line 30
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/axw;->r:Z

    .line 31
    :cond_0
    invoke-virtual {p1, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 32
    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 33
    invoke-virtual {p1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->l:Lcom/google/android/gms/internal/ads/ajb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/ajb;->a(Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->j:Lcom/google/android/gms/internal/ads/yd;

    iget v0, v0, Lcom/google/android/gms/internal/ads/yd;->c:I

    .line 36
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xf;->a(I)Z

    move-result v1

    .line 37
    if-eqz p2, :cond_3

    .line 38
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 40
    if-eqz v0, :cond_1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    invoke-virtual {v0, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 43
    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 44
    invoke-virtual {v0, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 46
    :cond_3
    if-eqz p3, :cond_6

    .line 47
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 49
    if-eqz v0, :cond_4

    .line 50
    if-eqz v1, :cond_5

    .line 51
    invoke-virtual {v0, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 52
    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    .line 54
    :cond_6
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 97
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/axw;->t:Z

    if-nez v0, :cond_0

    .line 98
    const-string/jumbo v0, "Custom click reporting failed. enableCustomClickGesture is not set."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 112
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/axw;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    const-string/jumbo v0, "Custom click reporting failed. Ad unit id not whitelisted."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->a:Landroid/content/Context;

    .line 104
    invoke-static {v0, p2, p3, p1}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 106
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/xf;->b(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    .line 108
    invoke-direct {p0, v8, p2}, Lcom/google/android/gms/internal/ads/axw;->b(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/axw;->v:Landroid/graphics/Point;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/axw;->u:Landroid/graphics/Point;

    .line 110
    invoke-static {v6, v0, v1, v7}, Lcom/google/android/gms/internal/ads/xf;->a(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object v7

    .line 111
    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move v9, p4

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/axw;->a(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dt;)V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->c:Lorg/json/JSONObject;

    const-string/jumbo v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    const-string/jumbo v0, "setUnconfirmedClickListener: Your account need to be whitelisted to use this feature.\nContact your account manager for more information."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->m:Lcom/google/android/gms/internal/ads/azy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/azy;->a(Lcom/google/android/gms/internal/ads/dt;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eah;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/axw;->y:Lcom/google/android/gms/internal/ads/eah;

    .line 224
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eal;)V
    .locals 2

    .prologue
    .line 209
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/axw;->s:Z

    if-eqz v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 211
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->e:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->i()Lcom/google/android/gms/internal/ads/ebu;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/axw;->s:Z

    .line 213
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->p:Lcom/google/android/gms/internal/ads/clj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/axw;->e:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ayx;->i()Lcom/google/android/gms/internal/ads/ebu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ebu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/clj;->a(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/axw;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    const-string/jumbo v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 216
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/axw;->s:Z

    .line 217
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->p:Lcom/google/android/gms/internal/ads/clj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/eal;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/clj;->a(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/axw;->e()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 84
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, p1

    move-object v7, v1

    move-object v8, v1

    move v10, v9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/axw;->a(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    .line 85
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 178
    if-nez p1, :cond_0

    .line 179
    const-string/jumbo v0, "Touch event data is null. No touch event is reported."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 181
    :cond_0
    const-string/jumbo v0, "touch_reporting"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/axw;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    const-string/jumbo v0, "The ad slot cannot handle external touch events. You must be whitelisted to be able to report your touch events."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_1
    const-string/jumbo v0, "x"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 185
    const-string/jumbo v1, "y"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    .line 186
    const-string/jumbo v2, "duration_ms"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 187
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/axw;->f:Lcom/google/android/gms/internal/ads/ctl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ctl;->a()Lcom/google/android/gms/internal/ads/cjd;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/cjd;->a(III)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/axw;->h()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 189
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/axw;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 190
    return-void
.end method

.method public final c(Landroid/os/Bundle;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 249
    const-string/jumbo v0, "impression_reporting"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/axw;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    const-string/jumbo v0, "The ad slot cannot handle external impression events. You must be whitelisted to whitelisted to be able to report your impression events."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x0

    .line 253
    :goto_0
    return v0

    .line 252
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    .line 253
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/axw;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->c:Lorg/json/JSONObject;

    const-string/jumbo v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->m:Lcom/google/android/gms/internal/ads/azy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/azy;->b()V

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->y:Lcom/google/android/gms/internal/ads/eah;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->y:Lcom/google/android/gms/internal/ads/eah;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eah;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    const-string/jumbo v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 239
    const-string/jumbo v0, "recordDownloadedImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 240
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 241
    const-string/jumbo v1, "ad"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/axw;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/axw;->d:Lcom/google/android/gms/internal/ads/bcy;

    const-string/jumbo v2, "google.afma.nativeAds.handleDownloadedImpression"

    .line 243
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/bcy;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    const-string/jumbo v1, "Error during performing handleDownloadedImpression"

    .line 244
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/yk;->a(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->d:Lcom/google/android/gms/internal/ads/bcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcy;->b()V

    .line 298
    return-void
.end method
