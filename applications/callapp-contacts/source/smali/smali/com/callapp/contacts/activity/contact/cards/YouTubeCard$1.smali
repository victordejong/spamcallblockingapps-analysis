.class Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;->updateCardData(Ljava/util/Collection;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/VideoData;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;Lcom/callapp/contacts/model/contact/VideoData;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$1;->a:Lcom/callapp/contacts/model/contact/VideoData;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$1;->a:Lcom/callapp/contacts/model/contact/VideoData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/VideoData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$1;->a:Lcom/callapp/contacts/model/contact/VideoData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/VideoData;->getVideoId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$1;->a:Lcom/callapp/contacts/model/contact/VideoData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/VideoData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;->access$100(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;Z)V

    :cond_0
    return-void
.end method
