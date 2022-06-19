.class Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;II)V
    .locals 0

    .line 467
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;->setProgressBarInDelay(II)V

    return-void
.end method

.method private setProgressBarInDelay(II)V
    .locals 3

    .line 506
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$2;-><init>(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;II)V

    .line 521
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    mul-int/lit16 p1, p1, 0x1f4

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->b(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v0

    .line 1281
    iget-object v1, v0, Lcom/callapp/contacts/widget/ProgressCardView;->l:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1282
    iget-object v1, v0, Lcom/callapp/contacts/widget/ProgressCardView;->h:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1283
    iget-object v1, v0, Lcom/callapp/contacts/widget/ProgressCardView;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1284
    iget-object v1, v0, Lcom/callapp/contacts/widget/ProgressCardView;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1285
    iget-object v1, v0, Lcom/callapp/contacts/widget/ProgressCardView;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1286
    iget-object v0, v0, Lcom/callapp/contacts/widget/ProgressCardView;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 471
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->b(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v0

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->setProgressPercentText(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->b(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/ProgressCardView;->getContext()Landroid/content/Context;

    .line 474
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1;-><init>(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;)V

    .line 502
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    move-result-object v1

    .line 474
    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;Lcom/callapp/contacts/manager/task/Task;)Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
