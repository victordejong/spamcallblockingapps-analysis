.class final Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$8;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->loginAndFireChange(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/DataSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

.field final synthetic b:Lcom/callapp/contacts/model/contact/DataSource;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 0

    .line 763
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$8;->a:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$8;->b:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;-><init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 766
    invoke-super {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;->a()V

    .line 767
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$8;->a:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$8;->b:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->onSocialStateChanged(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/DataSource;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 772
    invoke-super {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;->b()V

    .line 773
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f1204b6

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1111
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public final c()V
    .locals 3

    .line 778
    invoke-super {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;->c()V

    .line 779
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const-string v1, "login canceled"

    const/16 v2, 0x50

    .line 1206
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    return-void
.end method
