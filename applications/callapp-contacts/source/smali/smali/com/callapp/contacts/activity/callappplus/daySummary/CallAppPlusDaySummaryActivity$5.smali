.class Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$5;
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

    .line 112
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$5;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/callapp/contacts/manager/IncognitoContactsManager;Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/IncognitoContactsManager;->c(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method public static synthetic lambda$37rb8UkKA5yt6i5JIGlHUHP5pN4(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$5;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$plE6AsynFpg-OWlMYNIA2PHJv3o(Lcom/callapp/contacts/manager/IncognitoContactsManager;Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$5;->a(Lcom/callapp/contacts/manager/IncognitoContactsManager;Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 115
    new-instance p1, Lcom/callapp/contacts/manager/IncognitoContactsManager;

    invoke-direct {p1}, Lcom/callapp/contacts/manager/IncognitoContactsManager;-><init>()V

    .line 116
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$5;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->b(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;)Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$5;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    new-instance v2, Lcom/callapp/contacts/activity/callappplus/daySummary/-$$Lambda$CallAppPlusDaySummaryActivity$5$plE6AsynFpg-OWlMYNIA2PHJv3o;

    invoke-direct {v2, p1, v0}, Lcom/callapp/contacts/activity/callappplus/daySummary/-$$Lambda$CallAppPlusDaySummaryActivity$5$plE6AsynFpg-OWlMYNIA2PHJv3o;-><init>(Lcom/callapp/contacts/manager/IncognitoContactsManager;Lcom/callapp/contacts/model/contact/ContactData;)V

    sget-object p1, Lcom/callapp/contacts/activity/callappplus/daySummary/-$$Lambda$CallAppPlusDaySummaryActivity$5$37rb8UkKA5yt6i5JIGlHUHP5pN4;->INSTANCE:Lcom/callapp/contacts/activity/callappplus/daySummary/-$$Lambda$CallAppPlusDaySummaryActivity$5$37rb8UkKA5yt6i5JIGlHUHP5pN4;

    invoke-static {v1, v2, p1}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/IncognitoContactsManager;->c(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 125
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "CallAppPlus day summary overlay"

    const-string v1, "Use add incognito"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
