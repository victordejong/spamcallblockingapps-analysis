.class public final Lcom/google/android/gms/internal/ads/es1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/sp0;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final d:Lcom/google/android/gms/internal/ads/xj2;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/android/gms/internal/ads/s51;

.field private final h:Lcom/google/android/gms/internal/ads/w51;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/sp0;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/xj2;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s51;Lcom/google/android/gms/internal/ads/w51;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/es1;->a:Lcom/google/android/gms/internal/ads/sp0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/es1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/es1;->c:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/es1;->d:Lcom/google/android/gms/internal/ads/xj2;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/es1;->e:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/es1;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/es1;->g:Lcom/google/android/gms/internal/ads/s51;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/es1;->h:Lcom/google/android/gms/internal/ads/w51;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/es1;)Lcom/google/android/gms/internal/ads/s51;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/es1;->g:Lcom/google/android/gms/internal/ads/s51;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/es1;)Lcom/google/android/gms/internal/ads/w51;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/es1;->h:Lcom/google/android/gms/internal/ads/w51;

    return-object p0
.end method

.method private final e(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r03;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/rj2;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->q()Lcom/google/android/gms/internal/ads/h60;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/es1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/es1;->c:Lcom/google/android/gms/internal/ads/zzcgz;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/h60;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;)Lcom/google/android/gms/internal/ads/r60;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/o60;->b:Lcom/google/android/gms/internal/ads/l60;

    const-string v2, "google.afma.response.normalize"

    .line 3
    invoke-virtual {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/r60;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/j60;Lcom/google/android/gms/internal/ads/i60;)Lcom/google/android/gms/internal/ads/g60;

    move-result-object v0

    const-string v1, ""

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/as1;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/internal/ads/as1;-><init>(Lcom/google/android/gms/internal/ads/es1;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/es1;->e:Ljava/util/concurrent/Executor;

    .line 5
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/bs1;

    .line 6
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/bs1;-><init>(Lcom/google/android/gms/internal/ads/g60;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/es1;->e:Ljava/util/concurrent/Executor;

    .line 7
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/cs1;

    .line 8
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/cs1;-><init>(Lcom/google/android/gms/internal/ads/es1;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/es1;->e:Ljava/util/concurrent/Executor;

    .line 9
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    .line 10
    sget-object p2, Lcom/google/android/gms/internal/ads/kw;->l5:Lcom/google/android/gms/internal/ads/cw;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p2

    .line 12
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/ads/ds1;

    .line 13
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/ds1;-><init>(Lcom/google/android/gms/internal/ads/es1;)V

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/qi0;->f:Lcom/google/android/gms/internal/ads/s03;

    .line 15
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-object p1
.end method

.method private final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "ad_types"

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "unknown"

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/json/JSONArray;

    .line 4
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/es1;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to update the ad types for rendering. "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-object p1
.end method

.method private static final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "request_id"

    .line 2
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public final c()Lcom/google/android/gms/internal/ads/r03;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/rj2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/es1;->d:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xj2;->d:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbdg;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->i5:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/es1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->l5:Lcom/google/android/gms/internal/ads/cw;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/es1;->h:Lcom/google/android/gms/internal/ads/w51;

    .line 8
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/w51;->y(Z)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzehs;

    const/16 v1, 0xf

    const-string v2, "Invalid ad string."

    .line 9
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzehs;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->c(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/es1;->a:Lcom/google/android/gms/internal/ads/sp0;

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/sp0;->z()Lcom/google/android/gms/ads/nonagon/signalgeneration/k;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/es1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/es1;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    return-object v0

    .line 13
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/es1;->d:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xj2;->d:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbdg;->v:Lcom/google/android/gms/internal/ads/zzbcx;

    if-eqz v0, :cond_5

    .line 14
    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->g5:Lcom/google/android/gms/internal/ads/cw;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 17
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbcx;->d:Ljava/lang/String;

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/es1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbcx;->e:Ljava/lang/String;

    .line 19
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/es1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/es1;->a:Lcom/google/android/gms/internal/ads/sp0;

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/sp0;->z()Lcom/google/android/gms/ads/nonagon/signalgeneration/k;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/k;->d(Ljava/lang/String;)V

    .line 23
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbcx;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbcx;->e:Ljava/lang/String;

    .line 24
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/es1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/es1;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    return-object v0

    .line 26
    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->l5:Lcom/google/android/gms/internal/ads/cw;

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/es1;->h:Lcom/google/android/gms/internal/ads/w51;

    .line 29
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/w51;->y(Z)V

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzehs;

    const/16 v1, 0xe

    const-string v2, "Mismatch request IDs."

    .line 30
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzehs;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->c(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    return-object v0
.end method

.method final synthetic d(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/r03;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/rj2;

    new-instance v1, Lcom/google/android/gms/internal/ads/oj2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/es1;->d:Lcom/google/android/gms/internal/ads/xj2;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/oj2;-><init>(Lcom/google/android/gms/internal/ads/xj2;)V

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/qj2;->a(Ljava/io/Reader;)Lcom/google/android/gms/internal/ads/qj2;

    move-result-object p1

    .line 4
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/rj2;-><init>(Lcom/google/android/gms/internal/ads/oj2;Lcom/google/android/gms/internal/ads/qj2;)V

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method
