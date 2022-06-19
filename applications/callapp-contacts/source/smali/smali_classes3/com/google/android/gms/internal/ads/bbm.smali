.class public final Lcom/google/android/gms/internal/ads/bbm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bcz;


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/asc;

.field final b:Lcom/google/android/gms/internal/ads/arj;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ads/bcy;

.field private final e:Lorg/json/JSONObject;

.field private final f:Lcom/google/android/gms/internal/ads/bgy;

.field private final g:Lcom/google/android/gms/internal/ads/bcr;

.field private final h:Lcom/google/android/gms/internal/ads/die;

.field private final i:Lcom/google/android/gms/internal/ads/cov;

.field private final j:Lcom/google/android/gms/internal/ads/zzbar;

.field private final k:Lcom/google/android/gms/internal/ads/cpo;

.field private final l:Lcom/google/android/gms/internal/ads/aju;

.field private final m:Lcom/google/android/gms/internal/ads/bdr;

.field private final n:Lcom/google/android/gms/common/util/f;

.field private final o:Lcom/google/android/gms/internal/ads/ayh;

.field private final p:Lcom/google/android/gms/internal/ads/cus;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Landroid/graphics/Point;

.field private v:Landroid/graphics/Point;

.field private w:J

.field private x:J

.field private y:Lcom/google/android/gms/internal/ads/elu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bcy;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/bgy;Lcom/google/android/gms/internal/ads/bcr;Lcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/internal/ads/asc;Lcom/google/android/gms/internal/ads/arj;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/cpo;Lcom/google/android/gms/internal/ads/aju;Lcom/google/android/gms/internal/ads/bdr;Lcom/google/android/gms/common/util/f;Lcom/google/android/gms/internal/ads/ayh;Lcom/google/android/gms/internal/ads/cus;)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/bbm;->q:Z

    .line 3
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/bbm;->s:Z

    .line 4
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/bbm;->t:Z

    .line 5
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bbm;->u:Landroid/graphics/Point;

    .line 6
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bbm;->v:Landroid/graphics/Point;

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/bbm;->w:J

    .line 8
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/bbm;->x:J

    move-object v1, p1

    .line 9
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bbm;->c:Landroid/content/Context;

    move-object v1, p2

    .line 10
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bbm;->d:Lcom/google/android/gms/internal/ads/bcy;

    move-object v1, p3

    .line 11
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bbm;->e:Lorg/json/JSONObject;

    move-object v1, p4

    .line 12
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bbm;->f:Lcom/google/android/gms/internal/ads/bgy;

    move-object v1, p5

    .line 13
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bbm;->g:Lcom/google/android/gms/internal/ads/bcr;

    move-object v1, p6

    .line 14
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bbm;->h:Lcom/google/android/gms/internal/ads/die;

    move-object v1, p7

    .line 15
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bbm;->a:Lcom/google/android/gms/internal/ads/asc;

    move-object v1, p8

    .line 16
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bbm;->b:Lcom/google/android/gms/internal/ads/arj;

    move-object v1, p9

    .line 17
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bbm;->i:Lcom/google/android/gms/internal/ads/cov;

    move-object v1, p10

    .line 18
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bbm;->j:Lcom/google/android/gms/internal/ads/zzbar;

    move-object v1, p11

    .line 19
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bbm;->k:Lcom/google/android/gms/internal/ads/cpo;

    move-object v1, p12

    .line 20
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bbm;->l:Lcom/google/android/gms/internal/ads/aju;

    move-object/from16 v1, p13

    .line 21
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bbm;->m:Lcom/google/android/gms/internal/ads/bdr;

    move-object/from16 v1, p14

    .line 22
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bbm;->n:Lcom/google/android/gms/common/util/f;

    move-object/from16 v1, p15

    .line 23
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bbm;->o:Lcom/google/android/gms/internal/ads/ayh;

    move-object/from16 v1, p16

    .line 24
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bbm;->p:Lcom/google/android/gms/internal/ads/cus;

    return-void
.end method

.method private final a(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 77
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bbm;->g:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bcr;->a()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-eq p1, p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    const-string p1, "3099"

    return-object p1

    :cond_3
    const-string p1, "2099"

    return-object p1

    :cond_4
    const-string p1, "1099"

    return-object p1
.end method

.method private final a(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V
    .locals 4

    const-string v0, "has_custom_click_handler"

    const-string v1, "performClick must be called on the main UI thread."

    .line 121
    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 122
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "ad"

    .line 123
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bbm;->e:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "asset_view_signal"

    .line 124
    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "ad_view_signal"

    .line 125
    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "click_signal"

    .line 126
    invoke-virtual {v1, p2, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "scroll_view_signal"

    .line 127
    invoke-virtual {v1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "lock_screen_signal"

    .line 128
    invoke-virtual {v1, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bbm;->d:Lcom/google/android/gms/internal/ads/bcy;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/bbm;->g:Lcom/google/android/gms/internal/ads/bcr;

    .line 130
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/bcr;->u()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/bcy;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ey;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 131
    :goto_0
    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "provided_signals"

    .line 132
    invoke-virtual {v1, p2, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p5, "asset_id"

    .line 134
    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p5, "template"

    .line 135
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/bbm;->g:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/bcr;->a()I

    move-result p6

    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p5, "view_aware_api_used"

    .line 136
    invoke-virtual {p2, p5, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p5, "custom_mute_requested"

    .line 138
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/bbm;->k:Lcom/google/android/gms/internal/ads/cpo;

    iget-object p6, p6, Lcom/google/android/gms/internal/ads/cpo;->i:Lcom/google/android/gms/internal/ads/zzaei;

    if-eqz p6, :cond_1

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/bbm;->k:Lcom/google/android/gms/internal/ads/cpo;

    iget-object p6, p6, Lcom/google/android/gms/internal/ads/cpo;->i:Lcom/google/android/gms/internal/ads/zzaei;

    iget-boolean p6, p6, Lcom/google/android/gms/internal/ads/zzaei;->zzboh:Z

    if-eqz p6, :cond_1

    const/4 p6, 0x1

    goto :goto_1

    :cond_1
    const/4 p6, 0x0

    .line 139
    :goto_1
    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p5, "custom_mute_enabled"

    .line 141
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/bbm;->g:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/bcr;->h()Ljava/util/List;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_2

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/bbm;->g:Lcom/google/android/gms/internal/ads/bcr;

    .line 142
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/bcr;->i()Lcom/google/android/gms/internal/ads/ene;

    move-result-object p6

    if-eqz p6, :cond_2

    const/4 p6, 0x1

    goto :goto_2

    :cond_2
    const/4 p6, 0x0

    .line 143
    :goto_2
    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 145
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/bbm;->m:Lcom/google/android/gms/internal/ads/bdr;

    .line 1011
    iget-object p5, p5, Lcom/google/android/gms/internal/ads/bdr;->b:Lcom/google/android/gms/internal/ads/fs;

    if-eqz p5, :cond_3

    .line 145
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/bbm;->e:Lorg/json/JSONObject;

    const-string p6, "custom_one_point_five_click_enabled"

    .line 146
    invoke-virtual {p5, p6, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p5

    if-eqz p5, :cond_3

    const-string p5, "custom_one_point_five_click_eligible"

    .line 147
    invoke-virtual {p2, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_3
    const-string p5, "timestamp"

    .line 148
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/bbm;->n:Lcom/google/android/gms/common/util/f;

    invoke-interface {p6}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide p6

    invoke-virtual {p2, p5, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 150
    iget-boolean p5, p0, Lcom/google/android/gms/internal/ads/bbm;->t:Z

    if-eqz p5, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bbm;->h()Z

    move-result p5

    if-eqz p5, :cond_4

    const-string p5, "custom_click_gesture_eligible"

    .line 151
    invoke-virtual {p2, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_4
    if-eqz p10, :cond_5

    const-string p5, "is_custom_click_gesture"

    .line 153
    invoke-virtual {p2, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 154
    :cond_5
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/bbm;->d:Lcom/google/android/gms/internal/ads/bcy;

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/bbm;->g:Lcom/google/android/gms/internal/ads/bcr;

    .line 155
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/bcr;->u()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Lcom/google/android/gms/internal/ads/bcy;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ey;

    move-result-object p5

    if-eqz p5, :cond_6

    const/4 p3, 0x1

    .line 156
    :cond_6
    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p3, "click_signals"

    .line 157
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/bbm;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->cB:Lcom/google/android/gms/internal/ads/af;

    .line 159
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 160
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "open_chrome_custom_tab"

    .line 161
    invoke-virtual {p2, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 162
    :cond_7
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->fc:Lcom/google/android/gms/internal/ads/af;

    .line 163
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 164
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/google/android/gms/common/util/n;->l()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "try_fallback_for_deep_link"

    .line 165
    invoke-virtual {p2, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 166
    :cond_8
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->fd:Lcom/google/android/gms/internal/ads/af;

    .line 167
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 168
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/google/android/gms/common/util/n;->l()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "in_app_link_handling_for_android_11_enabled"

    .line 169
    invoke-virtual {p2, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_9
    const-string p1, "click"

    .line 170
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 172
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bbm;->n:Lcom/google/android/gms/common/util/f;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide p2

    const-string p4, "time_from_last_touch_down"

    .line 173
    iget-wide p5, p0, Lcom/google/android/gms/internal/ads/bbm;->w:J

    sub-long p5, p2, p5

    invoke-virtual {p1, p4, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p4, "time_from_last_touch"

    .line 174
    iget-wide p5, p0, Lcom/google/android/gms/internal/ads/bbm;->x:J

    sub-long/2addr p2, p5

    invoke-virtual {p1, p4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "touch_signal"

    .line 175
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bbm;->f:Lcom/google/android/gms/internal/ads/bgy;

    const-string p2, "google.afma.nativeAds.handleClick"

    .line 177
    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/ads/bgy;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    const-string p2, "Error during performing handleClick"

    .line 178
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zl;->a(Lcom/google/android/gms/internal/ads/dbt;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Unable to create click JSON."

    .line 181
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Z)Z
    .locals 3

    const-string v0, "recordImpression must be called on the main UI thread."

    .line 286
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 287
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad"

    .line 288
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bbm;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "asset_view_signal"

    .line 289
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ad_view_signal"

    .line 290
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "scroll_view_signal"

    .line 291
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "lock_screen_signal"

    .line 292
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "provided_signals"

    .line 293
    invoke-virtual {v0, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->bN:Lcom/google/android/gms/internal/ads/af;

    .line 295
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 296
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "view_signals"

    .line 297
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p1, "policy_validator_enabled"

    .line 298
    invoke-virtual {v0, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "screen"

    .line 299
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bbm;->c:Landroid/content/Context;

    .line 300
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzbn(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p2

    .line 301
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->eY:Lcom/google/android/gms/internal/ads/af;

    .line 303
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 304
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 305
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bbm;->f:Lcom/google/android/gms/internal/ads/bgy;

    const-string p3, "/clickRecorded"

    new-instance p4, Lcom/google/android/gms/internal/ads/bbn;

    invoke-direct {p4, p0, p2}, Lcom/google/android/gms/internal/ads/bbn;-><init>(Lcom/google/android/gms/internal/ads/bbm;Lcom/google/android/gms/internal/ads/bbl;)V

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/bgy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    goto :goto_0

    .line 306
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bbm;->f:Lcom/google/android/gms/internal/ads/bgy;

    const-string p3, "/logScionEvent"

    new-instance p4, Lcom/google/android/gms/internal/ads/bbo;

    invoke-direct {p4, p0, p2}, Lcom/google/android/gms/internal/ads/bbo;-><init>(Lcom/google/android/gms/internal/ads/bbm;Lcom/google/android/gms/internal/ads/bbl;)V

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/bgy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 307
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bbm;->f:Lcom/google/android/gms/internal/ads/bgy;

    const-string p3, "/nativeImpression"

    new-instance p4, Lcom/google/android/gms/internal/ads/bbq;

    invoke-direct {p4, p0, p2}, Lcom/google/android/gms/internal/ads/bbq;-><init>(Lcom/google/android/gms/internal/ads/bbm;Lcom/google/android/gms/internal/ads/bbl;)V

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/bgy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 308
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bbm;->f:Lcom/google/android/gms/internal/ads/bgy;

    const-string p2, "google.afma.nativeAds.handleImpression"

    .line 309
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/bgy;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    const-string p2, "Error during performing handleImpression"

    .line 310
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zl;->a(Lcom/google/android/gms/internal/ads/dbt;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/bbm;->q:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bbm;->i:Lcom/google/android/gms/internal/ads/cov;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cov;->B:Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    .line 316
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/bbm;->q:Z

    .line 317
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlf()Lcom/google/android/gms/ads/internal/util/zzam;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/bbm;->c:Landroid/content/Context;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/bbm;->j:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzbar;->zzbrz:Ljava/lang/String;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/bbm;->i:Lcom/google/android/gms/internal/ads/cov;

    iget-object p5, p5, Lcom/google/android/gms/internal/ads/cov;->B:Lorg/json/JSONObject;

    .line 318
    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p5

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/bbm;->k:Lcom/google/android/gms/internal/ads/cpo;

    iget-object p6, p6, Lcom/google/android/gms/internal/ads/cpo;->f:Ljava/lang/String;

    .line 319
    invoke-virtual {p2, p3, p4, p5, p6}, Lcom/google/android/gms/ads/internal/util/zzam;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/bbm;->q:Z

    :cond_2
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Unable to create impression JSON."

    .line 313
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private final b(Ljava/lang/String;)Z
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbm;->e:Lorg/json/JSONObject;

    const-string v1, "allow_pub_event_reporting"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method private final c(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbm;->e:Lorg/json/JSONObject;

    const-string v1, "tracking_urls_and_actions"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v1, "click_string"

    .line 324
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bbm;->h:Lcom/google/android/gms/internal/ads/die;

    .line 3023
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/die;->b:Lcom/google/android/gms/internal/ads/cxx;

    .line 325
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bbm;->c:Landroid/content/Context;

    invoke-interface {v1, v2, v0, p1}, Lcom/google/android/gms/internal/ads/cxx;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Exception obtaining click signals"

    .line 327
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final d(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .line 329
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->bN:Lcom/google/android/gms/internal/ads/af;

    .line 330
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 331
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 333
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbm;->h:Lcom/google/android/gms/internal/ads/die;

    .line 4023
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/die;->b:Lcom/google/android/gms/internal/ads/cxx;

    .line 333
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bbm;->c:Landroid/content/Context;

    invoke-interface {v0, v2, p1, v1}, Lcom/google/android/gms/internal/ads/cxx;->zza(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "Exception getting data."

    .line 335
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    return-object v1
.end method

.method private final h()Z
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbm;->e:Lorg/json/JSONObject;

    const-string v1, "allow_custom_click_gesture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbm;->c:Landroid/content/Context;

    .line 206
    invoke-static {v0, p2, p3, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p2

    .line 207
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/bbm;->c:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p3

    .line 208
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzt(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bbm;->c:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p1

    .line 210
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "asset_view_signal"

    .line 211
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ad_view_signal"

    .line 212
    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "scroll_view_signal"

    .line 213
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "lock_screen_signal"

    .line 214
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    const-string p2, "Unable to create native ad view signals JSON."

    .line 217
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bbm;->t:Z

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 13

    if-nez p1, :cond_0

    const-string p1, "Click data is null. No click is reported."

    .line 91
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "click_reporting"

    .line 93
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bbm;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "The ad slot cannot handle external click events. You must be part of the allow list to be able to report your click events."

    .line 94
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "click_signal"

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "asset_id"

    .line 97
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    :cond_2
    move-object v8, v1

    .line 98
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    .line 99
    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/ads/bbm;->a(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 2

    .line 183
    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bbm;->u:Landroid/graphics/Point;

    .line 184
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bbm;->n:Lcom/google/android/gms/common/util/f;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v0

    .line 185
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/bbm;->x:J

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    .line 187
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/bbm;->w:J

    .line 188
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bbm;->u:Landroid/graphics/Point;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bbm;->v:Landroid/graphics/Point;

    .line 189
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 190
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bbm;->u:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbm;->u:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 191
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bbm;->h:Lcom/google/android/gms/internal/ads/die;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/die;->a(Landroid/view/MotionEvent;)V

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 55
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bbm;->u:Landroid/graphics/Point;

    .line 56
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bbm;->v:Landroid/graphics/Point;

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbm;->o:Lcom/google/android/gms/internal/ads/ayh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ayh;->b(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/bbm;->r:Z

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    move-object v11, p0

    move-object v0, p2

    move-object v1, p3

    .line 62
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/bbm;->c:Landroid/content/Context;

    move-object/from16 v3, p4

    .line 63
    invoke-static {v2, p3, v3, p2}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 64
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/bbm;->c:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 65
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzt(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 66
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/bbm;->c:Landroid/content/Context;

    invoke-static {v5, p2}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    move-object v6, p1

    .line 67
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/bbm;->a(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 68
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/bbm;->c:Landroid/content/Context;

    iget-object v8, v11, Lcom/google/android/gms/internal/ads/bbm;->v:Landroid/graphics/Point;

    iget-object v9, v11, Lcom/google/android/gms/internal/ads/bbm;->u:Landroid/graphics/Point;

    .line 69
    invoke-static {v7, v1, v8, v9}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object v8

    .line 71
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->bO:Lcom/google/android/gms/internal/ads/af;

    .line 72
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 73
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, v6

    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move/from16 v9, p5

    .line 74
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/bbm;->a(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 26
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bbm;->u:Landroid/graphics/Point;

    .line 27
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bbm;->v:Landroid/graphics/Point;

    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bbm;->r:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbm;->o:Lcom/google/android/gms/internal/ads/ayh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ayh;->a(Landroid/view/View;)V

    .line 30
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/bbm;->r:Z

    .line 31
    :cond_0
    invoke-virtual {p1, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 33
    invoke-virtual {p1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bbm;->l:Lcom/google/android/gms/internal/ads/aju;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/aju;->a(Ljava/lang/Object;)V

    .line 35
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bbm;->j:Lcom/google/android/gms/internal/ads/zzbar;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbar;->zzekb:I

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzdn(I)Z

    move-result p1

    if-eqz p2, :cond_3

    .line 38
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    .line 42
    invoke-virtual {v0, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 43
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 44
    invoke-virtual {v0, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_6

    .line 47
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    if-eqz p3, :cond_4

    if-eqz p1, :cond_5

    .line 51
    invoke-virtual {p3, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    const/4 p5, 0x0

    .line 52
    invoke-virtual {p3, p5}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    move-object v11, p0

    move-object v1, p1

    move-object v0, p2

    .line 101
    iget-boolean v2, v11, Lcom/google/android/gms/internal/ads/bbm;->t:Z

    if-nez v2, :cond_0

    const-string v0, "Custom click reporting failed. enableCustomClickGesture is not set."

    .line 102
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    return-void

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bbm;->h()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "Custom click reporting failed. Ad unit id not in the allow list."

    .line 105
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    return-void

    .line 107
    :cond_1
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/bbm;->c:Landroid/content/Context;

    move-object v3, p3

    .line 108
    invoke-static {v2, p2, p3, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 109
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/bbm;->c:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 110
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzt(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 111
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/bbm;->c:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v6, 0x0

    .line 112
    invoke-direct {p0, v6, p2}, Lcom/google/android/gms/internal/ads/bbm;->a(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 113
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/bbm;->c:Landroid/content/Context;

    iget-object v7, v11, Lcom/google/android/gms/internal/ads/bbm;->v:Landroid/graphics/Point;

    iget-object v8, v11, Lcom/google/android/gms/internal/ads/bbm;->u:Landroid/graphics/Point;

    .line 114
    invoke-static {v6, v0, v7, v8}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v9, p4

    .line 115
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/bbm;->a(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/elu;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bbm;->y:Lcom/google/android/gms/internal/ads/elu;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ely;)V
    .locals 2

    .line 239
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bbm;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bbm;->g:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bcr;->i()Lcom/google/android/gms/internal/ads/ene;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 242
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bbm;->s:Z

    .line 243
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bbm;->p:Lcom/google/android/gms/internal/ads/cus;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbm;->g:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->i()Lcom/google/android/gms/internal/ads/ene;

    move-result-object v0

    .line 3006
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ene;->a:Ljava/lang/String;

    .line 243
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/cus;->a(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bbm;->e()V

    return-void

    .line 246
    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bbm;->s:Z

    .line 247
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbm;->p:Lcom/google/android/gms/internal/ads/cus;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ely;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cus;->a(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bbm;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 251
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/fs;)V
    .locals 4

    .line 230
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbm;->e:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "setUnconfirmedClickListener: Your account need to be in the allow list to use this feature.\nContact your account manager for more information."

    .line 231
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbm;->m:Lcom/google/android/gms/internal/ads/bdr;

    .line 2005
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/bdr;->b:Lcom/google/android/gms/internal/ads/fs;

    .line 2006
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bdr;->c:Lcom/google/android/gms/internal/ads/hi;

    const-string v2, "/unconfirmedClick"

    if-eqz v1, :cond_1

    .line 2007
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bdr;->a:Lcom/google/android/gms/internal/ads/bgy;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bdr;->c:Lcom/google/android/gms/internal/ads/hi;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/bgy;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 2008
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/bdu;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/bdu;-><init>(Lcom/google/android/gms/internal/ads/bdr;Lcom/google/android/gms/internal/ads/fs;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bdr;->c:Lcom/google/android/gms/internal/ads/hi;

    .line 2009
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/bdr;->a:Lcom/google/android/gms/internal/ads/bgy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bdr;->c:Lcom/google/android/gms/internal/ads/hi;

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/bgy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v6, p1

    .line 88
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/bbm;->a(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "Touch event data is null. No touch event is reported."

    .line 195
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "touch_reporting"

    .line 197
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bbm;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "The ad slot cannot handle external touch events. You must be in the allow list to be able to report your touch events."

    .line 198
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "x"

    .line 200
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    const-string v1, "y"

    .line 201
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    const-string v2, "duration_ms"

    .line 202
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 203
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bbm;->h:Lcom/google/android/gms/internal/ads/die;

    .line 1023
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/die;->b:Lcom/google/android/gms/internal/ads/cxx;

    .line 203
    invoke-interface {v2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/cxx;->zza(III)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbm;->e:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "setClickConfirmingView: Your account need to be in the allow list to use this feature.\nContact your account manager for more information."

    .line 222
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbm;->m:Lcom/google/android/gms/internal/ads/bdr;

    if-eqz p1, :cond_1

    .line 226
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    .line 227
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 228
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bdr;->f:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public final b(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbm;->c:Landroid/content/Context;

    .line 262
    invoke-static {v0, p2, p3, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 263
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bbm;->c:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 264
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzt(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 265
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bbm;->c:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    .line 266
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/bbm;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 267
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bbm;->c:Landroid/content/Context;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bbm;->i:Lcom/google/android/gms/internal/ads/cov;

    .line 268
    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/cov;)Z

    move-result v8

    const/4 v7, 0x0

    move-object v1, p0

    .line 269
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/bbm;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 120
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bbm;->h()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 219
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/bbm;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    return-void
.end method

.method public final c(Landroid/os/Bundle;)Z
    .locals 10

    const-string v0, "impression_reporting"

    .line 281
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bbm;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "The ad slot cannot handle external impression events. You must be in the allow list to be able to report your impression events."

    .line 282
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 284
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    .line 285
    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/bbm;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    move-result p1

    return p1
.end method

.method public final d()V
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbm;->e:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbm;->m:Lcom/google/android/gms/internal/ads/bdr;

    .line 2012
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bdr;->b:Lcom/google/android/gms/internal/ads/fs;

    if-eqz v1, :cond_1

    .line 2014
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bdr;->e:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 2016
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bdr;->a()V

    .line 2017
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bdr;->b:Lcom/google/android/gms/internal/ads/fs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fs;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2020
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 2

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbm;->y:Lcom/google/android/gms/internal/ads/elu;

    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/elu;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 259
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final f()V
    .locals 3

    const-string v0, "recordDownloadedImpression must be called on the main UI thread."

    .line 271
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 272
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad"

    .line 273
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bbm;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bbm;->f:Lcom/google/android/gms/internal/ads/bgy;

    const-string v2, "google.afma.nativeAds.handleDownloadedImpression"

    .line 275
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/bgy;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    const-string v1, "Error during performing handleDownloadedImpression"

    .line 276
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zl;->a(Lcom/google/android/gms/internal/ads/dbt;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 279
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final g()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbm;->f:Lcom/google/android/gms/internal/ads/bgy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bgy;->b()V

    return-void
.end method
