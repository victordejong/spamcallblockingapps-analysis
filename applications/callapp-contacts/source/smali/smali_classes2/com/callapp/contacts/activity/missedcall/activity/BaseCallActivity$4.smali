.class Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$4;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 241
    invoke-static {}, Lcom/callapp/contacts/manager/ActionsManager;->get()Lcom/callapp/contacts/manager/ActionsManager;

    move-result-object p1

    const-class v0, Lcom/callapp/contacts/action/local/AddCallReminderAction;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/Class;)Lcom/callapp/contacts/action/Action;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/action/local/AddCallReminderAction;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$4;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->access$000(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/action/local/AddCallReminderAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    .line 242
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$4;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->getAnalyticsTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClickOverlySchedule"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$4;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->access$400(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;)V

    return-void
.end method
