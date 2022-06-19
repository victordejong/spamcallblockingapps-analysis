.class Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;->setProgressBarInDelay(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;II)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$2;->c:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;

    iput p2, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$2;->a:I

    iput p3, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 509
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$2;->c:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->b(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v0

    iget v1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$2;->a:I

    add-int/lit8 v1, v1, 0x1

    .line 1090
    iget v2, v0, Lcom/callapp/contacts/widget/ProgressCardView;->m:I

    const/16 v3, 0x64

    div-int v1, v3, v1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v2, v1

    iput v2, v0, Lcom/callapp/contacts/widget/ProgressCardView;->m:I

    .line 1091
    iget v1, v0, Lcom/callapp/contacts/widget/ProgressCardView;->m:I

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->setProgressProgress(I)V

    .line 1092
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/callapp/contacts/widget/ProgressCardView;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->setProgressPercentText(Ljava/lang/String;)V

    .line 511
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$2;->b:I

    iget v1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$2;->a:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 512
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$2$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$2$1;-><init>(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$2;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
