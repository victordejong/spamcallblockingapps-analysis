.class Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 158
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$5;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/app/Activity;)V
    .locals 4

    .line 165
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$5;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$5;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->c(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;)Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$5;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->c(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;)Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method

.method private synthetic b(Landroid/app/Activity;)V
    .locals 4

    .line 164
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$5;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$5;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->c(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;)Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$5;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->c(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;)Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method

.method public static synthetic lambda$cJeRhuRx_hLwOglLMuljDSc5Aaw(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$5;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$5;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$wIxLXXxXGonasoh9k8MahNlUF8U(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$5;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$5;->a(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 161
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$5;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;

    invoke-static {p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 162
    invoke-static {}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$5;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;

    new-instance v0, Lcom/callapp/contacts/activity/missedcall/activity/-$$Lambda$BaseDaySummaryActivity$5$cJeRhuRx_hLwOglLMuljDSc5Aaw;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/missedcall/activity/-$$Lambda$BaseDaySummaryActivity$5$cJeRhuRx_hLwOglLMuljDSc5Aaw;-><init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$5;)V

    new-instance v1, Lcom/callapp/contacts/activity/missedcall/activity/-$$Lambda$BaseDaySummaryActivity$5$wIxLXXxXGonasoh9k8MahNlUF8U;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/missedcall/activity/-$$Lambda$BaseDaySummaryActivity$5$wIxLXXxXGonasoh9k8MahNlUF8U;-><init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$5;)V

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->b(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$5;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->c(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;)Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    .line 169
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$5;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->c(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;)Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    .line 171
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$5;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->d(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;)V

    const/4 p1, 0x0

    return p1
.end method
