.class Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/AdRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadWaterfallsRunnable"
.end annotation


# instance fields
.field final a:Lcom/verizon/ads/AdRequest;

.field final b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/verizon/ads/AdRequest;Landroid/os/Handler;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable;->a:Lcom/verizon/ads/AdRequest;

    .line 57
    iput-object p2, p0, Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x3

    .line 66
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Lcom/verizon/ads/AdRequestHandler;->a()Lcom/verizon/ads/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable;->a:Lcom/verizon/ads/AdRequest;

    iget-object v3, v3, Lcom/verizon/ads/AdRequest;->e:Lcom/verizon/ads/RequestMetadata;

    aput-object v3, v1, v2

    const-string v2, "Requesting waterfall: RequestMetadata[%s]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable;->a:Lcom/verizon/ads/AdRequest;

    iget-object v0, v0, Lcom/verizon/ads/AdRequest;->a:Lcom/verizon/ads/WaterfallProvider;

    .line 72
    new-instance v1, Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable$1;

    invoke-direct {v1, p0}, Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable$1;-><init>(Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable;)V

    .line 85
    iget-object v2, p0, Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable;->a:Lcom/verizon/ads/AdRequest;

    iget-object v2, v2, Lcom/verizon/ads/AdRequest;->b:Lcom/verizon/ads/Bid;

    if-nez v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable;->a:Lcom/verizon/ads/AdRequest;

    iget-object v2, v2, Lcom/verizon/ads/AdRequest;->e:Lcom/verizon/ads/RequestMetadata;

    iget-object v3, p0, Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable;->a:Lcom/verizon/ads/AdRequest;

    iget v3, v3, Lcom/verizon/ads/AdRequest;->c:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/verizon/ads/WaterfallProvider;->load(Lcom/verizon/ads/RequestMetadata;ILcom/verizon/ads/WaterfallProvider$WaterfallListener;)V

    return-void

    .line 88
    :cond_1
    iget-object v2, p0, Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable;->a:Lcom/verizon/ads/AdRequest;

    iget-object v2, v2, Lcom/verizon/ads/AdRequest;->b:Lcom/verizon/ads/Bid;

    iget-object v3, p0, Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable;->a:Lcom/verizon/ads/AdRequest;

    iget v3, v3, Lcom/verizon/ads/AdRequest;->c:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/verizon/ads/WaterfallProvider;->load(Lcom/verizon/ads/Bid;ILcom/verizon/ads/WaterfallProvider$WaterfallListener;)V

    return-void
.end method
