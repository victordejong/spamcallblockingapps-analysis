.class Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->getFooterOnItemClickedListener()Landroid/widget/AdapterView$OnItemClickListener;
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

    .line 342
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$3;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 346
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$3;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$800(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    const/4 p4, 0x1

    .line 348
    invoke-static {p2, p4}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 350
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$3;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {p2, p1, p3}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$900(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;Lcom/callapp/contacts/model/contact/ContactData;I)Landroid/util/Pair;

    move-result-object p2

    .line 351
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p3

    const-string p4, "Contact Details"

    const-string p5, "Social feed card clicked"

    const-string v0, "footer"

    invoke-virtual {p3, p4, p5, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object p3, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez p3, :cond_0

    return-void

    .line 356
    :cond_0
    sget-object p3, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$9;->a:[I

    iget-object p4, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p4, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    invoke-virtual {p4}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->ordinal()I

    move-result p4

    aget p3, p3, p4

    packed-switch p3, :pswitch_data_0

    goto :goto_1

    .line 377
    :pswitch_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$3;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/callapp/contacts/model/contact/DataSource;

    iget p2, p2, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$1600(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;Ljava/lang/Integer;)V

    goto :goto_1

    .line 370
    :pswitch_1
    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/callapp/contacts/model/contact/DataSource;

    iget p1, p1, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 372
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$3;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$1400(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$3;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$1500(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p2

    invoke-interface {p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getGooglePlacesData()Lcom/callapp/contacts/model/contact/GooglePlacesData;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/callapp/contacts/loader/business/GooglePlacesLoader;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/GooglePlacesData;)Z

    :goto_0
    return-void

    .line 366
    :pswitch_2
    iget-object p3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Lcom/callapp/contacts/model/contact/DataSource;

    invoke-static {p1, p3}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$1200(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/model/contact/social/SocialData;

    move-result-object p1

    .line 367
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$3;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {p3}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$1300(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p3

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/callapp/contacts/model/contact/DataSource;

    invoke-static {p3, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->showProfile(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/social/SocialData;Lcom/callapp/contacts/model/contact/DataSource;)V

    return-void

    .line 361
    :pswitch_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$3;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$1100(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)V

    return-void

    .line 358
    :pswitch_4
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$3;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$1000(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/callapp/contacts/model/contact/DataSource;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->loginAndFireChange(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/DataSource;)V

    :goto_1
    return-void

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
