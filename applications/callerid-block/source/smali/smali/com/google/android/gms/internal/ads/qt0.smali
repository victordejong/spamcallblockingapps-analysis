.class public final Lcom/google/android/gms/internal/ads/qt0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/v70;
.implements Lcom/google/android/gms/internal/ads/la0;
.implements Lcom/google/android/gms/internal/ads/j90;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/zt0;

.field private final c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/google/android/gms/internal/ads/zzcpo;

.field private f:Lcom/google/android/gms/internal/ads/k70;

.field private g:Lcom/google/android/gms/internal/ads/zzym;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zt0;Lcom/google/android/gms/internal/ads/sl1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qt0;->b:Lcom/google/android/gms/internal/ads/zt0;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/sl1;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qt0;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/qt0;->d:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcpo;->b:Lcom/google/android/gms/internal/ads/zzcpo;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qt0;->e:Lcom/google/android/gms/internal/ads/zzcpo;

    return-void
.end method

.method private static c(Lcom/google/android/gms/internal/ads/k70;)Lorg/json/JSONObject;
    .locals 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/k70;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "winningAdapterClassName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/k70;->z6()J

    move-result-wide v1

    const-string v3, "responseSecsSinceEpoch"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/k70;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "responseId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/k70;->g()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzzb;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzzb;->b:Ljava/lang/String;

    const-string v5, "adapterClassName"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzzb;->c:J

    const-string v6, "latencyMillis"

    invoke-virtual {v3, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzzb;->d:Lcom/google/android/gms/internal/ads/zzym;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/qt0;->d(Lcom/google/android/gms/internal/ads/zzym;)Lorg/json/JSONObject;

    move-result-object v2

    :goto_1
    const-string v4, "error"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string p0, "adNetworks"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static d(Lcom/google/android/gms/internal/ads/zzym;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzym;->d:Ljava/lang/String;

    const-string v2, "errorDomain"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzym;->b:I

    const-string v2, "errorCode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzym;->c:Ljava/lang/String;

    const-string v2, "errorDescription"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzym;->e:Lcom/google/android/gms/internal/ads/zzym;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/qt0;->d(Lcom/google/android/gms/internal/ads/zzym;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    const-string v1, "underlyingError"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public final I(Lcom/google/android/gms/internal/ads/zzawc;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qt0;->b:Lcom/google/android/gms/internal/ads/zt0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt0;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/ads/zt0;->g(Ljava/lang/String;Lcom/google/android/gms/internal/ads/qt0;)V

    return-void
.end method

.method public final T(Lcom/google/android/gms/internal/ads/u30;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u30;->d()Lcom/google/android/gms/internal/ads/k70;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qt0;->f:Lcom/google/android/gms/internal/ads/k70;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcpo;->c:Lcom/google/android/gms/internal/ads/zzcpo;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qt0;->e:Lcom/google/android/gms/internal/ads/zzcpo;

    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt0;->e:Lcom/google/android/gms/internal/ads/zzcpo;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcpo;->b:Lcom/google/android/gms/internal/ads/zzcpo;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qt0;->e:Lcom/google/android/gms/internal/ads/zzcpo;

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p0, Lcom/google/android/gms/internal/ads/qt0;->d:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "UNKNOWN"

    goto :goto_0

    :pswitch_0
    const-string v1, "REWARDED_INTERSTITIAL"

    goto :goto_0

    :pswitch_1
    const-string v1, "APP_OPEN_AD"

    goto :goto_0

    :pswitch_2
    const-string v1, "REWARDED"

    goto :goto_0

    :pswitch_3
    const-string v1, "NATIVE"

    goto :goto_0

    :pswitch_4
    const-string v1, "NATIVE_EXPRESS"

    goto :goto_0

    :pswitch_5
    const-string v1, "INTERSTITIAL"

    goto :goto_0

    :pswitch_6
    const-string v1, "BANNER"

    :goto_0
    const-string v2, "format"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qt0;->f:Lcom/google/android/gms/internal/ads/k70;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/qt0;->c(Lcom/google/android/gms/internal/ads/k70;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qt0;->g:Lcom/google/android/gms/internal/ads/zzym;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzym;->f:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    check-cast v1, Lcom/google/android/gms/internal/ads/k70;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/qt0;->c(Lcom/google/android/gms/internal/ads/k70;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/k70;->g()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/qt0;->g:Lcom/google/android/gms/internal/ads/zzym;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/qt0;->d(Lcom/google/android/gms/internal/ads/zzym;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "errors"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    :goto_1
    const-string v1, "responseInfo"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f0(Lcom/google/android/gms/internal/ads/zzym;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcpo;->d:Lcom/google/android/gms/internal/ads/zzcpo;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qt0;->e:Lcom/google/android/gms/internal/ads/zzcpo;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qt0;->g:Lcom/google/android/gms/internal/ads/zzym;

    return-void
.end method

.method public final p(Lcom/google/android/gms/internal/ads/ml1;)V
    .locals 1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ml1;->b:Lcom/google/android/gms/internal/ads/kl1;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/kl1;->a:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/al1;

    iget p1, p1, Lcom/google/android/gms/internal/ads/al1;->b:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/qt0;->d:I

    return-void
.end method
