.class final Lcom/verizon/ads/vastcontroller/TrackingEvent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/vastcontroller/TrackingEvent;->fireEvents(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/TrackingEvent$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/TrackingEvent$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/vastcontroller/TrackingEvent;

    if-eqz v1, :cond_0

    .line 121
    iget-object v2, v1, Lcom/verizon/ads/vastcontroller/TrackingEvent;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    .line 125
    invoke-static {v2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    invoke-static {}, Lcom/verizon/ads/vastcontroller/TrackingEvent;->a()Lcom/verizon/ads/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Firing event "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/verizon/ads/vastcontroller/TrackingEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 129
    :cond_1
    iget-object v2, v1, Lcom/verizon/ads/vastcontroller/TrackingEvent;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/verizon/ads/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/verizon/ads/utils/HttpUtils$Response;

    .line 131
    invoke-static {}, Lcom/verizon/ads/vastcontroller/TrackingEvent;->b()Lcom/verizon/ads/vastcontroller/TrackingEvent$TrackingEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 132
    invoke-static {}, Lcom/verizon/ads/vastcontroller/TrackingEvent;->b()Lcom/verizon/ads/vastcontroller/TrackingEvent$TrackingEventListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/verizon/ads/vastcontroller/TrackingEvent$TrackingEventListener;->onTrackingEventFired(Lcom/verizon/ads/vastcontroller/TrackingEvent;)V

    goto :goto_0

    .line 136
    :cond_2
    invoke-static {}, Lcom/verizon/ads/vastcontroller/TrackingEvent;->c()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method
