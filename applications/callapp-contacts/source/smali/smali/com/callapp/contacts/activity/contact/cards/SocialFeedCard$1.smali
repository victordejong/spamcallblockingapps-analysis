.class Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->getDataList(Ljava/util/List;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 239
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 240
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Contact Details"

    const-string v1, "Social feed card clicked"

    const-string v2, "Posts"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;->c(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;)Lcom/callapp/contacts/model/contact/social/SocialData;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;->b(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->showProfile(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/social/SocialData;Lcom/callapp/contacts/model/contact/DataSource;)V

    return-void
.end method
