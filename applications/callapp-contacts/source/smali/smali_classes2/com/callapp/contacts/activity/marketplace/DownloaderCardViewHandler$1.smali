.class Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;
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

    .line 167
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->getImageUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1$1;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1$1;-><init>(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void

    .line 180
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1$2;-><init>(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
