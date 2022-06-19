.class final Lcom/verizon/ads/VASAds$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/VASAds;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 1161
    iput-boolean p1, p0, Lcom/verizon/ads/VASAds$6;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1165
    invoke-static {}, Lcom/verizon/ads/VASAds;->f()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1167
    invoke-static {}, Lcom/verizon/ads/VASAds;->e()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "Location request already in progress"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 1172
    :cond_0
    invoke-static {}, Lcom/verizon/ads/VASAds;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1176
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    .line 1178
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x3

    .line 1180
    invoke-static {v3}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1181
    invoke-static {}, Lcom/verizon/ads/VASAds;->e()Lcom/verizon/ads/Logger;

    move-result-object v3

    const-string v4, "Location requires consent = %b"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1184
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "com.verizon.ads.core"

    const-string v3, "locationRequiresConsent"

    const-string v4, "vas-core-key"

    invoke-static {v0, v2, v3, v4}, Lcom/verizon/ads/Configuration;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    invoke-static {}, Lcom/verizon/ads/VASAds;->c()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1189
    invoke-static {}, Lcom/verizon/ads/VASAds;->e()Lcom/verizon/ads/Logger;

    move-result-object v2

    const-string v3, "An exception occurred parsing response from privacy server"

    invoke-virtual {v2, v3, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1193
    :cond_2
    :goto_0
    invoke-static {}, Lcom/verizon/ads/VASAds;->f()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1195
    invoke-static {}, Lcom/verizon/ads/VASAds;->a()I

    move-result v0

    iget-boolean v1, p0, Lcom/verizon/ads/VASAds$6;->a:Z

    invoke-static {v0, v1}, Lcom/verizon/ads/VASAds;->a(IZ)V

    return-void
.end method
