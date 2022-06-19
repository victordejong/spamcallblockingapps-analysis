.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/task/OutcomeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;->a(Lcom/callapp/common/model/json/JSONClientValidationResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;)V
    .locals 0

    .line 1072
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 9

    .line 1075
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    new-instance v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2$1;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;)V

    invoke-static {v1, v2}, Lcom/callapp/contacts/popup/WhatsNewPopup;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->e(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)Z

    .line 1094
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->E(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    .line 1096
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Contact List"

    const-string v1, "Showing whats new popup"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->e()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1100
    new-instance p1, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;

    const v1, 0x7f08027c

    const v0, 0x7f120572

    .line 1102
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f120571

    .line 1103
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f120730

    .line 1104
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2$2;

    invoke-direct {v5, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2$2;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;)V

    const v0, 0x7f120400

    .line 1116
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    const v7, 0x7f06010d

    invoke-static {v0, v7}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v7

    new-instance v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2$3;

    invoke-direct {v8, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2$3;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 1122
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    .line 1125
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    new-instance v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2$4;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method
