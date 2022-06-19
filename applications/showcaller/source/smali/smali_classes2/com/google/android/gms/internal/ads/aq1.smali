.class public final Lcom/google/android/gms/internal/ads/aq1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/b31;
.implements Lcom/google/android/gms/internal/ads/u51;
.implements Lcom/google/android/gms/internal/ads/r41;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/lq1;

.field private final e:Ljava/lang/String;

.field private f:I

.field private g:Lcom/google/android/gms/internal/ads/zzdxp;

.field private h:Lcom/google/android/gms/internal/ads/q21;

.field private i:Lcom/google/android/gms/internal/ads/zzbcz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/lq1;Lcom/google/android/gms/internal/ads/xj2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aq1;->d:Lcom/google/android/gms/internal/ads/lq1;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/xj2;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aq1;->e:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/aq1;->f:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdxp;->d:Lcom/google/android/gms/internal/ads/zzdxp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aq1;->g:Lcom/google/android/gms/internal/ads/zzdxp;

    return-void
.end method

.method private static c(Lcom/google/android/gms/internal/ads/q21;)Lorg/json/JSONObject;
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/q21;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "winningAdapterClassName"

    .line 2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/q21;->E6()J

    move-result-wide v1

    const-string v3, "responseSecsSinceEpoch"

    .line 3
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/q21;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "responseId"

    .line 4
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->G6:Lcom/google/android/gms/internal/ads/cw;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/q21;->F6()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bidding data: "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 10
    :cond_0
    new-instance v2, Ljava/lang/String;

    .line 11
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ei0;->a(Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    .line 12
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "biddingData"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/q21;->zzg()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbdp;

    new-instance v3, Lorg/json/JSONObject;

    .line 16
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 17
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzbdp;->d:Ljava/lang/String;

    const-string v5, "adapterClassName"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzbdp;->e:J

    const-string v6, "latencyMillis"

    invoke-virtual {v3, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 19
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbdp;->f:Lcom/google/android/gms/internal/ads/zzbcz;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    .line 20
    :cond_2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aq1;->d(Lcom/google/android/gms/internal/ads/zzbcz;)Lorg/json/JSONObject;

    move-result-object v2

    :goto_2
    const-string v4, "error"

    .line 21
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_3
    const-string p0, "adNetworks"

    .line 23
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static d(Lcom/google/android/gms/internal/ads/zzbcz;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcz;->f:Ljava/lang/String;

    const-string v2, "errorDomain"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbcz;->d:I

    const-string v2, "errorCode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcz;->e:Ljava/lang/String;

    const-string v2, "errorDescription"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbcz;->g:Lcom/google/android/gms/internal/ads/zzbcz;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/aq1;->d(Lcom/google/android/gms/internal/ads/zzbcz;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    const-string v1, "underlyingError"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public final N(Lcom/google/android/gms/internal/ads/xy0;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xy0;->d()Lcom/google/android/gms/internal/ads/q21;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aq1;->h:Lcom/google/android/gms/internal/ads/q21;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdxp;->e:Lcom/google/android/gms/internal/ads/zzdxp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aq1;->g:Lcom/google/android/gms/internal/ads/zzdxp;

    return-void
.end method

.method public final O(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxp;->f:Lcom/google/android/gms/internal/ads/zzdxp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aq1;->g:Lcom/google/android/gms/internal/ads/zzdxp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aq1;->i:Lcom/google/android/gms/internal/ads/zzbcz;

    return-void
.end method

.method public final S(Lcom/google/android/gms/internal/ads/rj2;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/rj2;->b:Lcom/google/android/gms/internal/ads/qj2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qj2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/rj2;->b:Lcom/google/android/gms/internal/ads/qj2;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/qj2;->a:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/ej2;

    iget p1, p1, Lcom/google/android/gms/internal/ads/ej2;->b:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/aq1;->f:I

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aq1;->g:Lcom/google/android/gms/internal/ads/zzdxp;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxp;->d:Lcom/google/android/gms/internal/ads/zzdxp;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aq1;->g:Lcom/google/android/gms/internal/ads/zzdxp;

    const-string v2, "state"

    .line 2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p0, Lcom/google/android/gms/internal/ads/aq1;->f:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ej2;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format"

    .line 3
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aq1;->h:Lcom/google/android/gms/internal/ads/q21;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/aq1;->c(Lcom/google/android/gms/internal/ads/q21;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aq1;->i:Lcom/google/android/gms/internal/ads/zzbcz;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbcz;->h:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    .line 6
    check-cast v1, Lcom/google/android/gms/internal/ads/q21;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/aq1;->c(Lcom/google/android/gms/internal/ads/q21;)Lorg/json/JSONObject;

    move-result-object v2

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/q21;->zzg()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aq1;->i:Lcom/google/android/gms/internal/ads/zzbcz;

    .line 11
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/aq1;->d(Lcom/google/android/gms/internal/ads/zzbcz;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "errors"

    .line 12
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    :goto_0
    const-string v1, "responseInfo"

    .line 13
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public final u(Lcom/google/android/gms/internal/ads/zzcbj;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aq1;->d:Lcom/google/android/gms/internal/ads/lq1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aq1;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/ads/lq1;->j(Ljava/lang/String;Lcom/google/android/gms/internal/ads/aq1;)V

    return-void
.end method
