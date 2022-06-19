.class public final Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/WaterfallResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WaterfallItemResult"
.end annotation


# instance fields
.field private final a:J

.field private b:Lcom/verizon/ads/Waterfall$WaterfallItem;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:Lcom/verizon/ads/ErrorInfo;


# direct methods
.method private constructor <init>(Lcom/verizon/ads/Waterfall$WaterfallItem;)V
    .locals 2

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->a:J

    .line 169
    iput-object p1, p0, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->b:Lcom/verizon/ads/Waterfall$WaterfallItem;

    return-void
.end method

.method synthetic constructor <init>(Lcom/verizon/ads/Waterfall$WaterfallItem;Lcom/verizon/ads/WaterfallResult$1;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;-><init>(Lcom/verizon/ads/Waterfall$WaterfallItem;)V

    return-void
.end method


# virtual methods
.method final declared-synchronized a(Lcom/verizon/ads/ErrorInfo;)Z
    .locals 5

    monitor-enter p0

    .line 177
    :try_start_0
    iget-wide v0, p0, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    iget-object v0, p0, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->e:Lcom/verizon/ads/ErrorInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->b:Lcom/verizon/ads/Waterfall$WaterfallItem;

    if-eqz v0, :cond_1

    .line 183
    invoke-interface {v0}, Lcom/verizon/ads/Waterfall$WaterfallItem;->getMetadata()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->c:Ljava/util/Map;

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->b:Lcom/verizon/ads/Waterfall$WaterfallItem;

    .line 187
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->d:J

    .line 188
    iput-object p1, p0, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->e:Lcom/verizon/ads/ErrorInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 190
    monitor-exit p0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 178
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getElapsedTime()J
    .locals 2

    .line 140
    iget-wide v0, p0, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->d:J

    return-wide v0
.end method

.method public final getErrorInfo()Lcom/verizon/ads/ErrorInfo;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->e:Lcom/verizon/ads/ErrorInfo;

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

    .line 158
    iget-object v0, p0, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 162
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getStartTime()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->a:J

    return-wide v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 197
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WaterfallItemResult{startTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", elapsedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", errorInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->e:Lcom/verizon/ads/ErrorInfo;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {v1}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", waterfallItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->b:Lcom/verizon/ads/Waterfall$WaterfallItem;

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_1

    .line 201
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", waterfallItemMetadata= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->c:Ljava/util/Map;

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_2

    .line 202
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
