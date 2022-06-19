.class Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1$1;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1;Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1$1;->b:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1$1;->b:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->b(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->setImageBackgroundUrl(Ljava/lang/String;)V

    return-void
.end method
