.class final Lcom/verizon/ads/WaterfallProcessingRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/WaterfallProcessingRunnable$WaterfallProcessingResult;
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Lcom/verizon/ads/AdRequest;

.field private final d:Lcom/verizon/ads/AdSession;

.field private final e:Lcom/verizon/ads/Waterfall;

.field private final f:Landroid/os/Handler;

.field private final g:Lcom/verizon/ads/WaterfallResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    const-class v0, Lcom/verizon/ads/WaterfallProcessingRunnable;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/WaterfallProcessingRunnable;->a:Lcom/verizon/ads/Logger;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/WaterfallProcessingRunnable;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/verizon/ads/AdRequest;Lcom/verizon/ads/AdSession;Landroid/os/Handler;)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/verizon/ads/WaterfallProcessingRunnable;->c:Lcom/verizon/ads/AdRequest;

    .line 47
    iput-object p2, p0, Lcom/verizon/ads/WaterfallProcessingRunnable;->d:Lcom/verizon/ads/AdSession;

    .line 48
    const-class v0, Lcom/verizon/ads/Waterfall;

    const-string v1, "response.waterfall"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v0, v2}, Lcom/verizon/ads/AdSession;->get(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/verizon/ads/Waterfall;

    iput-object p2, p0, Lcom/verizon/ads/WaterfallProcessingRunnable;->e:Lcom/verizon/ads/Waterfall;

    .line 49
    iput-object p3, p0, Lcom/verizon/ads/WaterfallProcessingRunnable;->f:Landroid/os/Handler;

    .line 52
    new-instance p3, Lcom/verizon/ads/WaterfallResult;

    iget-object p1, p1, Lcom/verizon/ads/AdRequest;->b:Lcom/verizon/ads/Bid;

    invoke-direct {p3, p2, p1}, Lcom/verizon/ads/WaterfallResult;-><init>(Lcom/verizon/ads/Waterfall;Lcom/verizon/ads/Bid;)V

    iput-object p3, p0, Lcom/verizon/ads/WaterfallProcessingRunnable;->g:Lcom/verizon/ads/WaterfallResult;

    return-void
.end method


# virtual methods
.method final a(Lcom/verizon/ads/ErrorInfo;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/verizon/ads/WaterfallProcessingRunnable;->g:Lcom/verizon/ads/WaterfallResult;

    invoke-virtual {v0, p1}, Lcom/verizon/ads/WaterfallResult;->setResult(Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method

.method public final run()V
    .locals 14

    .line 66
    iget-object v0, p0, Lcom/verizon/ads/WaterfallProcessingRunnable;->e:Lcom/verizon/ads/Waterfall;

    const/4 v1, 0x3

    if-eqz v0, :cond_7

    .line 67
    invoke-interface {v0}, Lcom/verizon/ads/Waterfall;->getWaterfallItems()[Lcom/verizon/ads/Waterfall$WaterfallItem;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 70
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    aget-object v5, v0, v4

    .line 72
    iget-object v6, p0, Lcom/verizon/ads/WaterfallProcessingRunnable;->g:Lcom/verizon/ads/WaterfallResult;

    invoke-virtual {v6, v5}, Lcom/verizon/ads/WaterfallResult;->startWaterfallItem(Lcom/verizon/ads/Waterfall$WaterfallItem;)Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, -0x3

    .line 77
    :try_start_0
    iget-object v9, p0, Lcom/verizon/ads/WaterfallProcessingRunnable;->d:Lcom/verizon/ads/AdSession;

    invoke-interface {v5, v9}, Lcom/verizon/ads/Waterfall$WaterfallItem;->fetch(Lcom/verizon/ads/AdSession;)Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v10, -0x1

    const-string v11, "No fill"

    if-nez v9, :cond_0

    .line 79
    :try_start_1
    new-instance v7, Lcom/verizon/ads/ErrorInfo;

    sget-object v12, Lcom/verizon/ads/WaterfallProcessingRunnable;->b:Ljava/lang/String;

    invoke-direct {v7, v12, v11, v10}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 80
    :cond_0
    iget-object v12, v9, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;->adContent:Lcom/verizon/ads/AdContent;

    if-nez v12, :cond_2

    .line 81
    iget-object v7, v9, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;->errorInfo:Lcom/verizon/ads/ErrorInfo;

    if-eqz v7, :cond_1

    iget-object v7, v9, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;->errorInfo:Lcom/verizon/ads/ErrorInfo;

    goto :goto_2

    :cond_1
    new-instance v7, Lcom/verizon/ads/ErrorInfo;

    sget-object v12, Lcom/verizon/ads/WaterfallProcessingRunnable;->b:Ljava/lang/String;

    invoke-direct {v7, v12, v11, v10}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v7

    goto :goto_1

    :catchall_1
    move-exception v9

    move-object v13, v9

    move-object v9, v7

    move-object v7, v13

    .line 86
    :goto_1
    sget-object v10, Lcom/verizon/ads/WaterfallProcessingRunnable;->a:Lcom/verizon/ads/Logger;

    const-string v11, "Unexpected Throwable from WaterfallItem.fetch()."

    invoke-virtual {v10, v11, v7}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    new-instance v7, Lcom/verizon/ads/ErrorInfo;

    sget-object v10, Lcom/verizon/ads/WaterfallProcessingRunnable;->b:Ljava/lang/String;

    const-string v11, "Error fetching data"

    invoke-direct {v7, v10, v11, v8}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    :goto_2
    if-nez v7, :cond_6

    .line 92
    iget-object v7, p0, Lcom/verizon/ads/WaterfallProcessingRunnable;->c:Lcom/verizon/ads/AdRequest;

    iget-object v7, v7, Lcom/verizon/ads/AdRequest;->f:Ljava/lang/Class;

    .line 93
    iget-object v10, v9, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;->adContent:Lcom/verizon/ads/AdContent;

    invoke-static {v7, v10}, Lcom/verizon/ads/VASAds;->a(Ljava/lang/Class;Lcom/verizon/ads/AdContent;)Lcom/verizon/ads/AdAdapter;

    move-result-object v10

    const/4 v11, 0x1

    if-eqz v10, :cond_4

    .line 96
    iget-object v7, p0, Lcom/verizon/ads/WaterfallProcessingRunnable;->d:Lcom/verizon/ads/AdSession;

    iget-object v9, v9, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;->adContent:Lcom/verizon/ads/AdContent;

    invoke-interface {v10, v7, v9}, Lcom/verizon/ads/AdAdapter;->prepare(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/AdContent;)Lcom/verizon/ads/ErrorInfo;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 98
    sget-object v5, Lcom/verizon/ads/WaterfallProcessingRunnable;->a:Lcom/verizon/ads/Logger;

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v7, v9, v3

    const-string v7, "Error occurred while preparing ad adapter: %s"

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 100
    new-instance v7, Lcom/verizon/ads/ErrorInfo;

    sget-object v5, Lcom/verizon/ads/WaterfallProcessingRunnable;->b:Ljava/lang/String;

    const-string v9, "Error preparing adapter"

    invoke-direct {v7, v5, v9, v8}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    .line 103
    :cond_3
    iget-object v8, p0, Lcom/verizon/ads/WaterfallProcessingRunnable;->d:Lcom/verizon/ads/AdSession;

    const-string v9, "response.waterfallItem"

    invoke-virtual {v8, v9, v5}, Lcom/verizon/ads/AdSession;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v5, p0, Lcom/verizon/ads/WaterfallProcessingRunnable;->d:Lcom/verizon/ads/AdSession;

    invoke-virtual {v5, v10}, Lcom/verizon/ads/AdSession;->setAdAdapter(Lcom/verizon/ads/AdAdapter;)V

    goto :goto_3

    .line 108
    :cond_4
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 109
    sget-object v5, Lcom/verizon/ads/WaterfallProcessingRunnable;->a:Lcom/verizon/ads/Logger;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v3

    iget-object v7, v9, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;->adContent:Lcom/verizon/ads/AdContent;

    aput-object v7, v10, v11

    const-string v7, "Could not find an ad adapter for class [%s] and content:\n%s"

    .line 110
    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 109
    invoke-virtual {v5, v7}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 114
    :cond_5
    new-instance v7, Lcom/verizon/ads/ErrorInfo;

    sget-object v5, Lcom/verizon/ads/WaterfallProcessingRunnable;->b:Ljava/lang/String;

    const-string v9, "Could not find an ad adapter"

    invoke-direct {v7, v5, v9, v8}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    :cond_6
    :goto_3
    invoke-virtual {v6, v7}, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->a(Lcom/verizon/ads/ErrorInfo;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 125
    iget-object v5, p0, Lcom/verizon/ads/WaterfallProcessingRunnable;->d:Lcom/verizon/ads/AdSession;

    invoke-virtual {v5}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v5

    if-nez v5, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 132
    :cond_7
    iget-object v0, p0, Lcom/verizon/ads/WaterfallProcessingRunnable;->f:Landroid/os/Handler;

    new-instance v2, Lcom/verizon/ads/WaterfallProcessingRunnable$WaterfallProcessingResult;

    iget-object v3, p0, Lcom/verizon/ads/WaterfallProcessingRunnable;->c:Lcom/verizon/ads/AdRequest;

    iget-object v4, p0, Lcom/verizon/ads/WaterfallProcessingRunnable;->d:Lcom/verizon/ads/AdSession;

    invoke-direct {v2, v3, v4, p0}, Lcom/verizon/ads/WaterfallProcessingRunnable$WaterfallProcessingResult;-><init>(Lcom/verizon/ads/AdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/WaterfallProcessingRunnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
