.class public final Lcom/verizon/ads/WaterfallResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;
    }
.end annotation


# static fields
.field public static final EVENT_WATERFALL_RESULT:Ljava/lang/String; = "com.verizon.ads.waterfall.result"


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/verizon/ads/Bid;

.field private f:J

.field private g:Lcom/verizon/ads/ErrorInfo;


# direct methods
.method public constructor <init>(Lcom/verizon/ads/Waterfall;Lcom/verizon/ads/Bid;)V
    .locals 2

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/verizon/ads/WaterfallResult;->a:J

    .line 211
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/verizon/ads/WaterfallResult;->b:Ljava/lang/String;

    .line 212
    invoke-interface {p1}, Lcom/verizon/ads/Waterfall;->getMetadata()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/WaterfallResult;->c:Ljava/util/Map;

    .line 213
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/WaterfallResult;->d:Ljava/util/List;

    .line 214
    iput-object p2, p0, Lcom/verizon/ads/WaterfallResult;->e:Lcom/verizon/ads/Bid;

    return-void
.end method


# virtual methods
.method public final getBid()Lcom/verizon/ads/Bid;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/verizon/ads/WaterfallResult;->e:Lcom/verizon/ads/Bid;

    return-object v0
.end method

.method public final getElapsedTime()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/verizon/ads/WaterfallResult;->f:J

    return-wide v0
.end method

.method public final getErrorInfo()Lcom/verizon/ads/ErrorInfo;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/verizon/ads/WaterfallResult;->g:Lcom/verizon/ads/ErrorInfo;

    return-object v0
.end method

.method public final getEventId()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/verizon/ads/WaterfallResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/verizon/ads/WaterfallResult;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getStartTime()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/verizon/ads/WaterfallResult;->a:J

    return-wide v0
.end method

.method public final getWaterfallItemResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/verizon/ads/WaterfallResult;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized setResult(Lcom/verizon/ads/ErrorInfo;)V
    .locals 5

    monitor-enter p0

    .line 222
    :try_start_0
    iget-wide v0, p0, Lcom/verizon/ads/WaterfallResult;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    iget-object v0, p0, Lcom/verizon/ads/WaterfallResult;->g:Lcom/verizon/ads/ErrorInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/verizon/ads/WaterfallResult;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/verizon/ads/WaterfallResult;->f:J

    .line 227
    iput-object p1, p0, Lcom/verizon/ads/WaterfallResult;->g:Lcom/verizon/ads/ErrorInfo;

    .line 230
    iget-object v0, p0, Lcom/verizon/ads/WaterfallResult;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/verizon/ads/WaterfallResult;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;

    .line 232
    invoke-virtual {v0, p1}, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->a(Lcom/verizon/ads/ErrorInfo;)Z

    :cond_1
    const-string p1, "com.verizon.ads.waterfall.result"

    .line 235
    invoke-static {p1, p0}, Lcom/verizon/ads/events/Events;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    .line 223
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized startWaterfallItem(Lcom/verizon/ads/Waterfall$WaterfallItem;)Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;
    .locals 3

    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/WaterfallResult;->d:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 244
    :try_start_1
    new-instance v1, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;-><init>(Lcom/verizon/ads/Waterfall$WaterfallItem;Lcom/verizon/ads/WaterfallResult$1;)V

    .line 245
    iget-object p1, p0, Lcom/verizon/ads/WaterfallResult;->d:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 246
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 255
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WaterfallResult{eventId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/verizon/ads/WaterfallResult;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/verizon/ads/WaterfallResult;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", elapsedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/verizon/ads/WaterfallResult;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", waterfallMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/verizon/ads/WaterfallResult;->c:Ljava/util/Map;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", waterfallItemResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/verizon/ads/WaterfallResult;->d:Ljava/util/List;

    .line 260
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
