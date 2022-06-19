.class public abstract Lcom/callapp/contacts/action/local/BlockOrUnblockCallAction;
.super Lcom/callapp/contacts/action/local/LocalAction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/callapp/contacts/action/local/LocalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 3

    .line 23
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p3

    const-string v0, "Actions"

    const-string v1, "Block/Unblock call action"

    const-string v2, "Clicked"

    invoke-virtual {p3, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance p3, Lcom/callapp/contacts/action/local/BlockOrUnblockCallAction$1;

    invoke-direct {p3, p0, p2, p1}, Lcom/callapp/contacts/action/local/BlockOrUnblockCallAction$1;-><init>(Lcom/callapp/contacts/action/local/BlockOrUnblockCallAction;Lcom/callapp/contacts/model/contact/ContactData;Landroid/content/Context;)V

    .line 39
    invoke-virtual {p3}, Lcom/callapp/contacts/action/local/BlockOrUnblockCallAction$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public final getDescriptionMessage$469752d4()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
