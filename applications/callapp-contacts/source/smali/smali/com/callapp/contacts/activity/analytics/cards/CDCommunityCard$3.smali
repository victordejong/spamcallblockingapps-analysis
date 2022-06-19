.class Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->getNumberOfCallsProgressBarData(Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;)Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

.field final synthetic b:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$3;->b:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$3;->a:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 327
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 328
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$3;->a:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->isHasVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->n:Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$3;->b:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->access$2500(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$3;->b:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->access$2600(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getContactId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXTRA_CONTACT_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$3;->b:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->access$2700(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 333
    :cond_0
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$3;->b:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->access$2800(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$3;->b:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

    invoke-static {v2}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->access$2600(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getContactId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$3;->b:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

    invoke-static {v2}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->access$2900(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v2

    invoke-interface {v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    :cond_1
    return-void
.end method
