.class Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1$2;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1$2;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->b(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1$2;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->setImageBackgroundColor(I)V

    return-void
.end method
