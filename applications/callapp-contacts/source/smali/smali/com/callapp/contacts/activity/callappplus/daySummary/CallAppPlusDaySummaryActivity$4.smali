.class Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 94
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$4;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/app/Activity;)V
    .locals 4

    .line 101
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$4;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$4;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->b(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;)Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$4;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->b(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;)Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method

.method private synthetic b(Landroid/app/Activity;)V
    .locals 4

    .line 100
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$4;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$4;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->b(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;)Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$4;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->b(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;)Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method

.method public static synthetic lambda$F0x4ZbN5hZuLJjQlv19S-KUv4-k(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$4;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$4;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$IVTgIq_8RzPmEno4Rv6H628KxC0(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$4;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$4;->a(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 97
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$4;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    invoke-static {p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 98
    invoke-static {}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$4;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    new-instance v0, Lcom/callapp/contacts/activity/callappplus/daySummary/-$$Lambda$CallAppPlusDaySummaryActivity$4$F0x4ZbN5hZuLJjQlv19S-KUv4-k;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/callappplus/daySummary/-$$Lambda$CallAppPlusDaySummaryActivity$4$F0x4ZbN5hZuLJjQlv19S-KUv4-k;-><init>(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$4;)V

    new-instance v1, Lcom/callapp/contacts/activity/callappplus/daySummary/-$$Lambda$CallAppPlusDaySummaryActivity$4$IVTgIq_8RzPmEno4Rv6H628KxC0;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/callappplus/daySummary/-$$Lambda$CallAppPlusDaySummaryActivity$4$IVTgIq_8RzPmEno4Rv6H628KxC0;-><init>(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$4;)V

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->b(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$4;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->b(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;)Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$4;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->b(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;)Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    .line 107
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$4;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->a(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;)V

    const/4 p1, 0x0

    return p1
.end method
