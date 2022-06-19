.class Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$7;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 191
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$7;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->c(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;)Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    .line 192
    invoke-static {p1}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    .line 193
    invoke-static {}, Lcom/callapp/contacts/manager/ActionsManager;->get()Lcom/callapp/contacts/manager/ActionsManager;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/action/local/AddCallReminderAction;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/Class;)Lcom/callapp/contacts/action/Action;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/action/local/AddCallReminderAction;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/callapp/contacts/action/local/AddCallReminderAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    .line 194
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$7;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->getAnalyticsTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Use call reminder"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$7;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->d(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;)V

    return-void
.end method
