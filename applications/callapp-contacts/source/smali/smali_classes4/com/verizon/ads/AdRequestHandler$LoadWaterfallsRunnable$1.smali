.class Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/WaterfallProvider$WaterfallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable;


# direct methods
.method constructor <init>(Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable$1;->a:Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdSessionsReceived(Ljava/util/List;Lcom/verizon/ads/ErrorInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/verizon/ads/AdSession;",
            ">;",
            "Lcom/verizon/ads/ErrorInfo;",
            ")V"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/verizon/ads/AdRequestHandler$WaterfallResponse;

    invoke-direct {v0}, Lcom/verizon/ads/AdRequestHandler$WaterfallResponse;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable$1;->a:Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable;

    iget-object v1, v1, Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable;->a:Lcom/verizon/ads/AdRequest;

    iput-object v1, v0, Lcom/verizon/ads/AdRequestHandler$WaterfallResponse;->c:Lcom/verizon/ads/AdRequest;

    .line 78
    iput-object p1, v0, Lcom/verizon/ads/AdRequestHandler$WaterfallResponse;->a:Ljava/util/List;

    .line 79
    iput-object p2, v0, Lcom/verizon/ads/AdRequestHandler$WaterfallResponse;->b:Lcom/verizon/ads/ErrorInfo;

    .line 81
    iget-object p1, p0, Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable$1;->a:Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable;

    iget-object p1, p1, Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable;->b:Landroid/os/Handler;

    iget-object p2, p0, Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable$1;->a:Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable;

    iget-object p2, p2, Lcom/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
