.class final Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->showAndConfirmProfile(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

.field final synthetic b:Lcom/callapp/contacts/model/contact/DataSource;

.field final synthetic c:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/Runnable;

.field final synthetic f:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/common/model/json/JSONSocialNetworkID;ZLjava/lang/Runnable;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;->a:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;->b:Lcom/callapp/contacts/model/contact/DataSource;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;->c:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    iput-boolean p4, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;->d:Z

    iput-object p5, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;->e:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;->f:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 6

    .line 609
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;->a:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;->b:Lcom/callapp/contacts/model/contact/DataSource;

    iget v1, v1, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;->a:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;->c:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;->d:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;->e:Ljava/lang/Runnable;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x0

    :goto_1
    new-instance v5, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1;

    invoke-direct {v5, p0}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;)V

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$2900(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;ILandroid/app/Activity;Lcom/callapp/common/model/json/JSONSocialNetworkID;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;)V

    return-void
.end method
