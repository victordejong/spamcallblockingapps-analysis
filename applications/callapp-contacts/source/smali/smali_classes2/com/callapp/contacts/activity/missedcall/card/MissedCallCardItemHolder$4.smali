.class Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$4;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

.field final synthetic b:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

.field final synthetic c:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$4;->c:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$4;->a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    iput-object p3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$4;->b:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x1

    .line 248
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 249
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$4;->c:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->c(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$4;->a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$4;->a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$4;->a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getContactId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;J)Z

    move-result v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$4;->b:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    .line 250
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$4;->a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getMissedCallType()I

    move-result p1

    const-string v0, "ClickCallButton"

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 251
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v1, "MissCall"

    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$4;->a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getMissedCallType()I

    move-result p1

    const/16 v1, 0x28

    if-ne p1, v1, :cond_1

    .line 253
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v1, "NoAnswer"

    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
