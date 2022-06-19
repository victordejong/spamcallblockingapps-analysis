.class Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method

.method private synthetic a(II)V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;

    invoke-static {v0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;->a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;II)V

    return-void
.end method

.method public static synthetic lambda$xXZxLD6kh9s1N9iT8xXbpI8zi-o(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1;->a(II)V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .line 477
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;->c(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 478
    array-length v2, v0

    if-lez v2, :cond_1

    .line 479
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 482
    new-instance v3, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1$1;-><init>(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1;I[Ljava/lang/String;)V

    new-instance v4, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$DownloaderCardViewHandler$3$1$xXZxLD6kh9s1N9iT8xXbpI8zi-o;

    invoke-direct {v4, p0, v1, v2}, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$DownloaderCardViewHandler$3$1$xXZxLD6kh9s1N9iT8xXbpI8zi-o;-><init>(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1;II)V

    .line 492
    invoke-virtual {v3, v4}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1$1;->setDoneListener(Lcom/callapp/contacts/manager/task/Task$DoneListener;)Lcom/callapp/contacts/manager/task/Task;

    move-result-object v3

    .line 493
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/task/Task;->execute()Lcom/callapp/contacts/manager/task/Task;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_1
    const/4 v0, 0x5

    if-ge v1, v0, :cond_2

    .line 498
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;

    invoke-static {v2, v1, v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;->a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
