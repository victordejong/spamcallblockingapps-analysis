.class Lcom/callapp/contacts/activity/contact/list/search/SearchForViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/search/SearchForViewHolder;->a(Lcom/callapp/contacts/activity/contact/list/search/SearchForItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/search/SearchForItemData;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/search/SearchForViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/search/SearchForViewHolder;Lcom/callapp/contacts/activity/contact/list/search/SearchForItemData;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchForViewHolder$1;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchForViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchForViewHolder$1;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchForItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v0, 0x1

    .line 70
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 71
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Contact List"

    const-string v1, "Search Number"

    const-string v2, "Clicked"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchForViewHolder$1;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchForItemData;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchForItemData;->getSuffixText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchForViewHolder$1;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchForItemData;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchForItemData;->getSuffixText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    .line 78
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->SEARCH:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-static {p1, v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->getBuilderAccordingToOrigin(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->build()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object v5

    .line 80
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v0}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v0

    sget v1, Lcom/callapp/contacts/model/DataChangedInfo;->POSITION_ALL:I

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/model/DataChangedInfo;->create(III)Lcom/callapp/contacts/model/DataChangedInfo;

    move-result-object v7

    .line 84
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchForViewHolder$1;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchForViewHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/search/SearchForViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    sget-object v9, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->SEARCH:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const-string v8, "SearchFromContactList"

    invoke-static/range {v1 .. v9}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->createIntent(Landroid/content/Context;JLjava/lang/String;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZLcom/callapp/contacts/model/DataChangedInfo;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)Landroid/content/Intent;

    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchForViewHolder$1;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchForViewHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/search/SearchForViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
