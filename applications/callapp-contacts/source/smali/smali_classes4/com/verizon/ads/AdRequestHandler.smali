.class final Lcom/verizon/ads/AdRequestHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable;,
        Lcom/verizon/ads/AdRequestHandler$WaterfallResponse;
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const-class v0, Lcom/verizon/ads/AdRequestHandler;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/AdRequestHandler;->a:Lcom/verizon/ads/Logger;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/AdRequestHandler;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x5

    .line 98
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/AdRequestHandler;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a()Lcom/verizon/ads/Logger;
    .locals 1

    .line 24
    sget-object v0, Lcom/verizon/ads/AdRequestHandler;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method


# virtual methods
.method final a(Lcom/verizon/ads/AdRequest;)V
    .locals 3

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0, p1}, Lcom/verizon/ads/AdRequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget v1, p1, Lcom/verizon/ads/AdRequest;->c:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/verizon/ads/AdRequestHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, v0, p1}, Lcom/verizon/ads/AdRequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/verizon/ads/AdRequestHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 113
    const-class v0, Lcom/verizon/ads/AdRequestHandler;

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_17

    if-eq v1, v3, :cond_16

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eq v1, v4, :cond_8

    if-eq v1, v5, :cond_0

    .line 127
    sget-object v0, Lcom/verizon/ads/AdRequestHandler;->a:Lcom/verizon/ads/Logger;

    new-array v1, v3, [Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    const-string p1, "Received unexpected msg with what = %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 124
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verizon/ads/WaterfallProcessingRunnable$WaterfallProcessingResult;

    .line 2212
    iget-object v1, p1, Lcom/verizon/ads/WaterfallProcessingRunnable$WaterfallProcessingResult;->a:Lcom/verizon/ads/AdRequest;

    .line 2214
    iget-boolean v4, v1, Lcom/verizon/ads/AdRequest;->h:Z

    if-eqz v4, :cond_1

    .line 2215
    sget-object p1, Lcom/verizon/ads/AdRequestHandler;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Received waterfall processing result for an ad request that is marked complete."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 2220
    :cond_1
    iget-boolean v4, v1, Lcom/verizon/ads/AdRequest;->g:Z

    if-eqz v4, :cond_2

    .line 2221
    sget-object p1, Lcom/verizon/ads/AdRequestHandler;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Received waterfall processing result for ad request that has timed out."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 2226
    :cond_2
    iget-object v4, v1, Lcom/verizon/ads/AdRequest;->j:Ljava/util/List;

    iget-object v5, p1, Lcom/verizon/ads/WaterfallProcessingRunnable$WaterfallProcessingResult;->c:Lcom/verizon/ads/WaterfallProcessingRunnable;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2229
    iget-object v4, v1, Lcom/verizon/ads/AdRequest;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    iput-boolean v4, v1, Lcom/verizon/ads/AdRequest;->h:Z

    .line 2231
    iget-boolean v4, v1, Lcom/verizon/ads/AdRequest;->h:Z

    if-eqz v4, :cond_3

    .line 2232
    invoke-virtual {p0, v1}, Lcom/verizon/ads/AdRequestHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2235
    :cond_3
    iget-object v4, p1, Lcom/verizon/ads/WaterfallProcessingRunnable$WaterfallProcessingResult;->b:Lcom/verizon/ads/AdSession;

    invoke-virtual {v4}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v4, Lcom/verizon/ads/ErrorInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v5, -0x1

    const-string v7, "No fill"

    invoke-direct {v4, v0, v7, v5}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    move-object v4, v2

    .line 2239
    :goto_0
    iget-boolean v0, v1, Lcom/verizon/ads/AdRequest;->i:Z

    if-nez v0, :cond_5

    if-nez v4, :cond_5

    .line 2240
    iput-boolean v3, v1, Lcom/verizon/ads/AdRequest;->i:Z

    .line 2243
    :cond_5
    iget-object v0, p1, Lcom/verizon/ads/WaterfallProcessingRunnable$WaterfallProcessingResult;->c:Lcom/verizon/ads/WaterfallProcessingRunnable;

    invoke-virtual {v0, v4}, Lcom/verizon/ads/WaterfallProcessingRunnable;->a(Lcom/verizon/ads/ErrorInfo;)V

    if-eqz v4, :cond_6

    .line 2246
    iget-boolean v0, v1, Lcom/verizon/ads/AdRequest;->h:Z

    if-nez v0, :cond_6

    .line 2247
    sget-object p1, Lcom/verizon/ads/AdRequestHandler;->a:Lcom/verizon/ads/Logger;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v4, v0, v6

    const-string v1, "Received waterfall processing error for adRequest that has not yet completed: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_6
    if-eqz v4, :cond_7

    .line 2253
    iget-boolean v0, v1, Lcom/verizon/ads/AdRequest;->i:Z

    if-eqz v0, :cond_7

    .line 2254
    sget-object p1, Lcom/verizon/ads/AdRequestHandler;->a:Lcom/verizon/ads/Logger;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v4, v0, v6

    const-string v3, "Received waterfall processing error for adRequest that was previously filled: %s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 2256
    iget-object p1, v1, Lcom/verizon/ads/AdRequest;->d:Lcom/verizon/ads/VASAds$AdRequestListener;

    iget-boolean v0, v1, Lcom/verizon/ads/AdRequest;->h:Z

    invoke-interface {p1, v2, v2, v0}, Lcom/verizon/ads/VASAds$AdRequestListener;->onAdReceived(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V

    return-void

    .line 2260
    :cond_7
    iget-object v0, v1, Lcom/verizon/ads/AdRequest;->d:Lcom/verizon/ads/VASAds$AdRequestListener;

    iget-object p1, p1, Lcom/verizon/ads/WaterfallProcessingRunnable$WaterfallProcessingResult;->b:Lcom/verizon/ads/AdSession;

    iget-boolean v1, v1, Lcom/verizon/ads/AdRequest;->h:Z

    invoke-interface {v0, p1, v4, v1}, Lcom/verizon/ads/VASAds$AdRequestListener;->onAdReceived(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V

    return-void

    .line 121
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verizon/ads/AdRequestHandler$WaterfallResponse;

    .line 2143
    iget-object v0, p1, Lcom/verizon/ads/AdRequestHandler$WaterfallResponse;->c:Lcom/verizon/ads/AdRequest;

    iget-boolean v0, v0, Lcom/verizon/ads/AdRequest;->h:Z

    if-eqz v0, :cond_9

    .line 2144
    sget-object p1, Lcom/verizon/ads/AdRequestHandler;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Received waterfall response for an ad request that is marked complete."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 2149
    :cond_9
    iget-object v0, p1, Lcom/verizon/ads/AdRequestHandler$WaterfallResponse;->c:Lcom/verizon/ads/AdRequest;

    iget-boolean v0, v0, Lcom/verizon/ads/AdRequest;->g:Z

    if-eqz v0, :cond_a

    .line 2150
    sget-object v0, Lcom/verizon/ads/AdRequestHandler;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Received waterfall response for ad request that has timed out."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 2152
    iget-object p1, p1, Lcom/verizon/ads/AdRequestHandler$WaterfallResponse;->c:Lcom/verizon/ads/AdRequest;

    iput-boolean v3, p1, Lcom/verizon/ads/AdRequest;->h:Z

    return-void

    .line 2158
    :cond_a
    iget-object v0, p1, Lcom/verizon/ads/AdRequestHandler$WaterfallResponse;->b:Lcom/verizon/ads/ErrorInfo;

    if-eqz v0, :cond_b

    .line 2159
    sget-object v0, Lcom/verizon/ads/AdRequestHandler;->a:Lcom/verizon/ads/Logger;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/verizon/ads/AdRequestHandler$WaterfallResponse;->b:Lcom/verizon/ads/ErrorInfo;

    aput-object v4, v1, v6

    const-string v4, "Error occurred while attempting to load waterfalls: %s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    const/4 v6, 0x1

    goto :goto_3

    .line 2161
    :cond_b
    iget-object v0, p1, Lcom/verizon/ads/AdRequestHandler$WaterfallResponse;->a:Ljava/util/List;

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/verizon/ads/AdRequestHandler$WaterfallResponse;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_2

    .line 2167
    :cond_c
    invoke-static {v5}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2168
    sget-object v0, Lcom/verizon/ads/AdRequestHandler;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Received waterfall response: AdSessions["

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 2171
    :cond_d
    iget-object v0, p1, Lcom/verizon/ads/AdRequestHandler$WaterfallResponse;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_e
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/verizon/ads/AdSession;

    if-nez v4, :cond_f

    .line 2173
    sget-object v1, Lcom/verizon/ads/AdRequestHandler;->a:Lcom/verizon/ads/Logger;

    const-string v4, "Null ad session was returned from waterfall provider"

    invoke-virtual {v1, v4}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_1

    .line 2176
    :cond_f
    invoke-static {v5}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2177
    sget-object v7, Lcom/verizon/ads/AdRequestHandler;->a:Lcom/verizon/ads/Logger;

    invoke-virtual {v4}, Lcom/verizon/ads/AdSession;->toStringLongDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 2181
    :cond_10
    sget-object v0, Lcom/verizon/ads/AdRequestHandler;->a:Lcom/verizon/ads/Logger;

    const-string v4, "]"

    invoke-virtual {v0, v4}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    move v6, v1

    goto :goto_3

    .line 2162
    :cond_11
    :goto_2
    sget-object v0, Lcom/verizon/ads/AdRequestHandler;->a:Lcom/verizon/ads/Logger;

    const-string v1, "No ad sessions were returned from waterfall provider"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 2184
    :goto_3
    iget-object v0, p1, Lcom/verizon/ads/AdRequestHandler$WaterfallResponse;->b:Lcom/verizon/ads/ErrorInfo;

    if-nez v0, :cond_15

    if-nez v6, :cond_12

    goto :goto_5

    .line 2191
    :cond_12
    iget-object v0, p1, Lcom/verizon/ads/AdRequestHandler$WaterfallResponse;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/AdSession;

    .line 2194
    const-class v3, Lcom/verizon/ads/Waterfall;

    const-string v4, "response.waterfall"

    invoke-virtual {v1, v4, v3, v2}, Lcom/verizon/ads/AdSession;->get(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/verizon/ads/Waterfall;

    if-nez v3, :cond_13

    .line 2196
    sget-object v1, Lcom/verizon/ads/AdRequestHandler;->a:Lcom/verizon/ads/Logger;

    const-string v3, "AdSession does not have an associated waterfall to process"

    invoke-virtual {v1, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto :goto_4

    .line 2201
    :cond_13
    new-instance v3, Lcom/verizon/ads/WaterfallProcessingRunnable;

    iget-object v4, p1, Lcom/verizon/ads/AdRequestHandler$WaterfallResponse;->c:Lcom/verizon/ads/AdRequest;

    invoke-direct {v3, v4, v1, p0}, Lcom/verizon/ads/WaterfallProcessingRunnable;-><init>(Lcom/verizon/ads/AdRequest;Lcom/verizon/ads/AdSession;Landroid/os/Handler;)V

    .line 2203
    iget-object v1, p1, Lcom/verizon/ads/AdRequestHandler$WaterfallResponse;->c:Lcom/verizon/ads/AdRequest;

    iget-object v1, v1, Lcom/verizon/ads/AdRequest;->j:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2205
    iget-object v1, p0, Lcom/verizon/ads/AdRequestHandler;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_14
    return-void

    .line 2185
    :cond_15
    :goto_5
    iget-object v0, p1, Lcom/verizon/ads/AdRequestHandler$WaterfallResponse;->c:Lcom/verizon/ads/AdRequest;

    iput-boolean v3, v0, Lcom/verizon/ads/AdRequest;->h:Z

    .line 2186
    iget-object v0, p1, Lcom/verizon/ads/AdRequestHandler$WaterfallResponse;->c:Lcom/verizon/ads/AdRequest;

    iget-object v0, v0, Lcom/verizon/ads/AdRequest;->d:Lcom/verizon/ads/VASAds$AdRequestListener;

    iget-object p1, p1, Lcom/verizon/ads/AdRequestHandler$WaterfallResponse;->b:Lcom/verizon/ads/ErrorInfo;

    invoke-interface {v0, v2, p1, v3}, Lcom/verizon/ads/VASAds$AdRequestListener;->onAdReceived(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V

    return-void

    .line 115
    :cond_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verizon/ads/AdRequest;

    .line 1135
    new-instance v0, Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable;

    invoke-direct {v0, p1, p0}, Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable;-><init>(Lcom/verizon/ads/AdRequest;Landroid/os/Handler;)V

    .line 1137
    iget-object p1, p0, Lcom/verizon/ads/AdRequestHandler;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 118
    :cond_17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verizon/ads/AdRequest;

    .line 1266
    iget-boolean v1, p1, Lcom/verizon/ads/AdRequest;->h:Z

    if-eqz v1, :cond_18

    .line 1267
    sget-object p1, Lcom/verizon/ads/AdRequestHandler;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Received an ad request time out for an ad request that is marked complete."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 1272
    :cond_18
    iput-boolean v3, p1, Lcom/verizon/ads/AdRequest;->g:Z

    .line 1273
    iput-boolean v3, p1, Lcom/verizon/ads/AdRequest;->h:Z

    .line 1275
    invoke-virtual {p0, p1}, Lcom/verizon/ads/AdRequestHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1277
    new-instance v1, Lcom/verizon/ads/ErrorInfo;

    sget-object v4, Lcom/verizon/ads/AdRequestHandler;->b:Ljava/lang/String;

    const-string v5, "Ad request timed out"

    const/4 v6, -0x2

    invoke-direct {v1, v4, v5, v6}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1279
    iget-object v4, p1, Lcom/verizon/ads/AdRequest;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/verizon/ads/WaterfallProcessingRunnable;

    .line 1280
    invoke-virtual {v5, v1}, Lcom/verizon/ads/WaterfallProcessingRunnable;->a(Lcom/verizon/ads/ErrorInfo;)V

    goto :goto_6

    .line 1283
    :cond_19
    iget-object p1, p1, Lcom/verizon/ads/AdRequest;->d:Lcom/verizon/ads/VASAds$AdRequestListener;

    new-instance v1, Lcom/verizon/ads/ErrorInfo;

    .line 1284
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Ad request timeout"

    invoke-direct {v1, v0, v4, v6}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1283
    invoke-interface {p1, v2, v1, v3}, Lcom/verizon/ads/VASAds$AdRequestListener;->onAdReceived(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V

    return-void
.end method
