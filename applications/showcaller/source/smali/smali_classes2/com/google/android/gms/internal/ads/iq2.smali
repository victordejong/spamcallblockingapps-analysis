.class public Lcom/google/android/gms/internal/ads/iq2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/gr2;

.field private b:J

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/iq2;->k()V

    new-instance v0, Lcom/google/android/gms/internal/ads/gr2;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/gr2;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/iq2;->a:Lcom/google/android/gms/internal/ads/gr2;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iq2;->a:Lcom/google/android/gms/internal/ads/gr2;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method final c(Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/gr2;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/gr2;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/iq2;->a:Lcom/google/android/gms/internal/ads/gr2;

    return-void
.end method

.method public final d()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iq2;->a:Lcom/google/android/gms/internal/ads/gr2;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iq2;->a:Lcom/google/android/gms/internal/ads/gr2;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f(Ljava/lang/String;J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/iq2;->b:J

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 p2, 0x2

    iput p2, p0, Lcom/google/android/gms/internal/ads/iq2;->c:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/aq2;->a()Lcom/google/android/gms/internal/ads/aq2;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/iq2;->d()Landroid/webkit/WebView;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/ads/aq2;->e(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/String;J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/iq2;->b:J

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    iget p2, p0, Lcom/google/android/gms/internal/ads/iq2;->c:I

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    iput p3, p0, Lcom/google/android/gms/internal/ads/iq2;->c:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/aq2;->a()Lcom/google/android/gms/internal/ads/aq2;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/iq2;->d()Landroid/webkit/WebView;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/ads/aq2;->e(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public h(Lcom/google/android/gms/internal/ads/np2;Lcom/google/android/gms/internal/ads/mp2;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/iq2;->i(Lcom/google/android/gms/internal/ads/np2;Lcom/google/android/gms/internal/ads/mp2;Lorg/json/JSONObject;)V

    return-void
.end method

.method protected final i(Lcom/google/android/gms/internal/ads/np2;Lcom/google/android/gms/internal/ads/mp2;Lorg/json/JSONObject;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/np2;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "environment"

    const-string v0, "app"

    .line 2
    invoke-static {v3, p1, v0}, Lcom/google/android/gms/internal/ads/mq2;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/mp2;->i()Lcom/google/android/gms/internal/ads/zzfgf;

    move-result-object p1

    const-string v1, "adSessionType"

    .line 3
    invoke-static {v3, v1, p1}, Lcom/google/android/gms/internal/ads/mq2;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/json/JSONObject;

    .line 4
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v6

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "deviceType"

    .line 6
    invoke-static {p1, v4, v1}, Lcom/google/android/gms/internal/ads/mq2;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "osVersion"

    .line 8
    invoke-static {p1, v4, v1}, Lcom/google/android/gms/internal/ads/mq2;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "os"

    const-string v4, "Android"

    .line 9
    invoke-static {p1, v1, v4}, Lcom/google/android/gms/internal/ads/mq2;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "deviceInfo"

    .line 10
    invoke-static {v3, v1, p1}, Lcom/google/android/gms/internal/ads/mq2;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "clid"

    .line 12
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "vlid"

    .line 13
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "supports"

    .line 14
    invoke-static {v3, v1, p1}, Lcom/google/android/gms/internal/ads/mq2;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/json/JSONObject;

    .line 15
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/mp2;->c()Lcom/google/android/gms/internal/ads/op2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/op2;->b()Ljava/lang/String;

    move-result-object v1

    const-string v4, "partnerName"

    .line 16
    invoke-static {p1, v4, v1}, Lcom/google/android/gms/internal/ads/mq2;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/mp2;->c()Lcom/google/android/gms/internal/ads/op2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/op2;->c()Ljava/lang/String;

    move-result-object v1

    const-string v4, "partnerVersion"

    .line 17
    invoke-static {p1, v4, v1}, Lcom/google/android/gms/internal/ads/mq2;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "omidNativeInfo"

    .line 18
    invoke-static {v3, v1, p1}, Lcom/google/android/gms/internal/ads/mq2;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/json/JSONObject;

    .line 19
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "libraryVersion"

    const-string v4, "1.3.3-google_20200416"

    .line 20
    invoke-static {p1, v1, v4}, Lcom/google/android/gms/internal/ads/mq2;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/yp2;->a()Lcom/google/android/gms/internal/ads/yp2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yp2;->b()Landroid/content/Context;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "appId"

    .line 22
    invoke-static {p1, v4, v1}, Lcom/google/android/gms/internal/ads/mq2;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    invoke-static {v3, v0, p1}, Lcom/google/android/gms/internal/ads/mq2;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/mp2;->g()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/mp2;->g()Ljava/lang/String;

    move-result-object p1

    const-string v0, "contentUrl"

    .line 24
    invoke-static {v3, v0, p1}, Lcom/google/android/gms/internal/ads/mq2;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/mp2;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "customReferenceData"

    .line 25
    invoke-static {v3, v0, p1}, Lcom/google/android/gms/internal/ads/mq2;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Lorg/json/JSONObject;

    .line 26
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 27
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/mp2;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_1

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/aq2;->a()Lcom/google/android/gms/internal/ads/aq2;

    move-result-object v0

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/iq2;->d()Landroid/webkit/WebView;

    move-result-object v1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aq2;->c(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void

    .line 30
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/pp2;

    const/4 p1, 0x0

    .line 31
    throw p1
.end method

.method public final j(F)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/aq2;->a()Lcom/google/android/gms/internal/ads/aq2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/iq2;->d()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/aq2;->f(Landroid/webkit/WebView;F)V

    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/iq2;->b:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/iq2;->c:I

    return-void
.end method
