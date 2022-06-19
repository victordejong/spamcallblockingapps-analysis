.class Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$BizMenuHelper;
.super Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ItemHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BizMenuHelper"
.end annotation


# instance fields
.field private final itemBuilder:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

.field final synthetic this$0:Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$BizMenuHelper;->this$0:Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ItemHelper;-><init>(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;)V

    .line 64
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$BizMenuHelper;->itemBuilder:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    const p1, 0x7f12011d

    .line 65
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1302
    iput-object p1, p2, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->a:Ljava/lang/String;

    .line 65
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 66
    invoke-virtual {p2, p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->a(Landroid/widget/ImageView$ScaleType;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    move-result-object p1

    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 67
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->b(Landroid/widget/ImageView$ScaleType;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    move-result-object p1

    const p2, 0x7f080416

    .line 68
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->a(I)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    move-result-object p1

    .line 69
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$BizMenuHelper;->getItemClickListener()Landroid/view/View$OnClickListener;

    move-result-object p2

    .line 1318
    iput-object p2, p1, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private openMenuUrl(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 3

    .line 101
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getMenuUrl()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$BizMenuHelper;->this$0:Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;->access$100(Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Success - opened via the menu url"

    goto :goto_0

    :cond_0
    const-string p1, "Failed - no internt connection"

    goto :goto_0

    :cond_1
    const-string p1, "Failed - no menu url"

    .line 113
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact Details"

    const-string v2, "Duo card - Menu item clicked"

    invoke-virtual {v0, v1, v2, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 74
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$BizMenuHelper;->itemBuilder:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    monitor-enter p2

    .line 75
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$BizMenuHelper;->shouldLoadItem(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$BizMenuHelper;->itemBuilder:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    const v0, 0x7f080535

    const v1, 0x7f080534

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->a(II)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$BizMenuHelper;->itemBuilder:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->a()Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    .line 83
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$BizMenuHelper;->itemBuilder:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->setShouldShowItem(Z)V

    .line 84
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$BizMenuHelper;->this$0:Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;->updateCardData(Ljava/lang/Object;Z)V

    .line 85
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method onItemClicked()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$BizMenuHelper;->this$0:Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$BizMenuHelper;->openMenuUrl(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method shouldLoadItem(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 0

    .line 96
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getMenuUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
