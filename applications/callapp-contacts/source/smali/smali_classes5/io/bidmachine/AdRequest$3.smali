.class final Lio/bidmachine/AdRequest$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdRequest;->request(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/AdRequest;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lio/bidmachine/AdRequest;Landroid/content/Context;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lio/bidmachine/AdRequest$3;->this$0:Lio/bidmachine/AdRequest;

    iput-object p2, p0, Lio/bidmachine/AdRequest$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 360
    iget-object v0, p0, Lio/bidmachine/AdRequest$3;->this$0:Lio/bidmachine/AdRequest;

    iget-object v1, p0, Lio/bidmachine/AdRequest$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->getType()Lio/bidmachine/AdsType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/AdRequest;->build(Landroid/content/Context;Lio/bidmachine/AdsType;)Ljava/lang/Object;

    move-result-object v0

    .line 361
    instance-of v1, v0, Lcom/explorestack/protobuf/openrtb/Request;

    if-eqz v1, :cond_1

    .line 362
    new-instance v1, Lio/bidmachine/ApiRequest$Builder;

    invoke-direct {v1}, Lio/bidmachine/ApiRequest$Builder;-><init>()V

    .line 363
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v2

    invoke-virtual {v2}, Lio/bidmachine/d;->getAuctionUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/ApiRequest$Builder;->url(Ljava/lang/String;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object v1

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request;

    .line 364
    invoke-virtual {v1, v0}, Lio/bidmachine/ApiRequest$Builder;->setRequestData(Ljava/lang/Object;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/AdRequest$3;->this$0:Lio/bidmachine/AdRequest;

    iget v1, v1, Lio/bidmachine/AdRequest;->timeOut:I

    .line 365
    invoke-virtual {v0, v1}, Lio/bidmachine/ApiRequest$Builder;->setLoadingTimeOut(I)Lio/bidmachine/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/AdRequest$3;->this$0:Lio/bidmachine/AdRequest;

    .line 366
    invoke-virtual {v1}, Lio/bidmachine/AdRequest;->getType()Lio/bidmachine/AdsType;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/AdsType;->getBinder()Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/ApiRequest$Builder;->setDataBinder(Lio/bidmachine/ApiRequest$ApiDataBinder;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Lio/bidmachine/AdRequest$3$2;

    invoke-direct {v1, p0}, Lio/bidmachine/AdRequest$3$2;-><init>(Lio/bidmachine/AdRequest$3;)V

    .line 367
    invoke-virtual {v0, v1}, Lio/bidmachine/ApiRequest$Builder;->setCallback(Lio/bidmachine/core/NetworkRequest$Callback;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Lio/bidmachine/AdRequest$3$1;

    invoke-direct {v1, p0}, Lio/bidmachine/AdRequest$3$1;-><init>(Lio/bidmachine/AdRequest$3;)V

    .line 378
    invoke-virtual {v0, v1}, Lio/bidmachine/ApiRequest$Builder;->setCancelCallback(Lio/bidmachine/core/NetworkRequest$CancelCallback;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lio/bidmachine/AdRequest$3;->this$0:Lio/bidmachine/AdRequest;

    invoke-static {v1}, Lio/bidmachine/AdRequest;->access$600(Lio/bidmachine/AdRequest;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 387
    :cond_0
    iget-object v1, p0, Lio/bidmachine/AdRequest$3;->this$0:Lio/bidmachine/AdRequest;

    invoke-virtual {v0}, Lio/bidmachine/ApiRequest$Builder;->request()Lio/bidmachine/ApiRequest;

    move-result-object v0

    invoke-static {v1, v0}, Lio/bidmachine/AdRequest;->access$702(Lio/bidmachine/AdRequest;Lio/bidmachine/ApiRequest;)Lio/bidmachine/ApiRequest;

    return-void

    .line 389
    :cond_1
    iget-object v1, p0, Lio/bidmachine/AdRequest$3;->this$0:Lio/bidmachine/AdRequest;

    instance-of v2, v0, Lio/bidmachine/utils/BMError;

    if-eqz v2, :cond_2

    check-cast v0, Lio/bidmachine/utils/BMError;

    goto :goto_0

    :cond_2
    sget-object v0, Lio/bidmachine/utils/BMError;->Internal:Lio/bidmachine/utils/BMError;

    :goto_0
    invoke-static {v1, v0}, Lio/bidmachine/AdRequest;->access$100(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/BMError;)V

    return-void
.end method
