.class public final Lcom/millennialmedia/internal/utils/TrackingEvent$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/TrackingEvent;->fireEvents(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$events:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/utils/TrackingEvent$1;->val$events:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/TrackingEvent$1;->val$events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/utils/TrackingEvent;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/millennialmedia/internal/utils/TrackingEvent;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/millennialmedia/internal/utils/TrackingEvent;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firing event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/utils/TrackingEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, v1, Lcom/millennialmedia/internal/utils/TrackingEvent;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    invoke-static {}, Lcom/millennialmedia/internal/utils/TrackingEvent;->access$100()Lcom/millennialmedia/internal/utils/TrackingEvent$TrackingEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/utils/TrackingEvent;->access$100()Lcom/millennialmedia/internal/utils/TrackingEvent$TrackingEventListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/millennialmedia/internal/utils/TrackingEvent$TrackingEventListener;->onTrackingEventFired(Lcom/millennialmedia/internal/utils/TrackingEvent;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/millennialmedia/internal/utils/TrackingEvent;->access$200()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method
