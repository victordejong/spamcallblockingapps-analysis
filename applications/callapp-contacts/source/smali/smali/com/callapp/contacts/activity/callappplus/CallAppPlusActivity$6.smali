.class Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$6;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 7

    .line 226
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const/4 p1, 0x0

    new-array v6, p1, [Ljava/lang/String;

    const-string v1, "CallAppPlus"

    const-string v2, "ViewBannerTrial"

    const-string v3, "Trial"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 227
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$6;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;

    const-class v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    const-class v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;

    const-string v1, "RETURN_TO_PREVIOUS_CLASS"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "PLAN_PAGE_SOURCE"

    const-string v1, "callAppPlus"

    .line 229
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$6;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->startActivity(Landroid/content/Intent;)V

    .line 231
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$6;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->finish()V

    return-void
.end method
