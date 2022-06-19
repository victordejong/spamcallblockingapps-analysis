.class Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$6;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 133
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$6;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->b(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;)Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    const/4 v1, 0x1

    .line 135
    invoke-static {p1, v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 136
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v2, "CallAppPlus day summary overlay"

    const-string v3, "Use add contact"

    invoke-virtual {p1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/contacts/model/contact/ContactData;Z)Landroid/content/Intent;

    move-result-object p1

    .line 138
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$6;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
