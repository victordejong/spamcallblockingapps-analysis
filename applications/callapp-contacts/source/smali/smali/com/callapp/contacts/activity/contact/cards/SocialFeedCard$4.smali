.class Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->getFooterOnItemLongClickedListener()Landroid/widget/AdapterView$OnItemLongClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$4;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 393
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$4;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$1700(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    const/4 p4, 0x1

    .line 394
    invoke-static {p2, p4}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 395
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookData()Lcom/callapp/contacts/model/contact/social/FacebookData;

    move-result-object p2

    const/4 p5, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookData()Lcom/callapp/contacts/model/contact/social/FacebookData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getFqlType()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p5

    .line 396
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$4;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {v0, p1, p3}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$900(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;Lcom/callapp/contacts/model/contact/ContactData;I)Landroid/util/Pair;

    move-result-object p1

    .line 397
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p3

    const-string v0, "Contact Details"

    const-string v1, "Social feed card clicked"

    const-string v2, "footer"

    invoke-virtual {p3, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object p3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez p3, :cond_1

    return p4

    .line 403
    :cond_1
    sget-object p3, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$9;->a:[I

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->ordinal()I

    move-result v0

    aget p3, p3, v0

    packed-switch p3, :pswitch_data_0

    goto :goto_1

    .line 425
    :pswitch_0
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$4;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/callapp/contacts/model/contact/DataSource;

    iget p1, p1, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$1600(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;Ljava/lang/Integer;)V

    goto :goto_1

    .line 418
    :pswitch_1
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/callapp/contacts/model/contact/DataSource;

    iget p1, p1, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    goto :goto_1

    .line 420
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$4;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$2100(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$4;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$2200(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p2

    invoke-interface {p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getGooglePlacesData()Lcom/callapp/contacts/model/contact/GooglePlacesData;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/callapp/contacts/loader/business/GooglePlacesLoader;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/GooglePlacesData;)Z

    goto :goto_1

    .line 415
    :pswitch_2
    new-instance p5, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;

    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$4;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {p3}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$2000(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p3

    invoke-interface {p3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p3

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {p5, p3, p1, p4, p2}, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;ZLjava/lang/String;)V

    goto :goto_1

    .line 409
    :pswitch_3
    new-instance p5, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;

    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$4;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {p3}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$1900(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p3

    invoke-interface {p3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p3

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/callapp/contacts/model/contact/DataSource;

    const/4 v0, 0x0

    invoke-direct {p5, p3, p1, v0, p2}, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;ZLjava/lang/String;)V

    goto :goto_1

    .line 405
    :pswitch_4
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$4;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$1800(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p2

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/callapp/contacts/model/contact/DataSource;

    invoke-static {p2, p1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->loginAndFireChange(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/DataSource;)V

    :goto_1
    if-eqz p5, :cond_3

    .line 430
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$4;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$2300(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p2

    invoke-interface {p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2, p5}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    :cond_3
    return p4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
