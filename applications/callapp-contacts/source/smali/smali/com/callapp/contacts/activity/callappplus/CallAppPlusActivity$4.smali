.class Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;Z)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$4;->b:Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 176
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$4;->b:Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;

    const-class v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "PLAN_PAGE_SOURCE"

    const-string v1, "callAppPlus"

    .line 177
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-class v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;

    const-string v1, "RETURN_TO_PREVIOUS_CLASS"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 179
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$4;->b:Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 180
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    iget-boolean p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$4;->a:Z

    if-eqz p1, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    move-wide v5, v2

    const/4 p1, 0x0

    new-array v7, p1, [Ljava/lang/String;

    const-string v2, "CallAppPlus"

    const-string v3, "ClickBannerTrial"

    const-string v4, "Trial"

    invoke-virtual/range {v1 .. v7}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    return-void
.end method
