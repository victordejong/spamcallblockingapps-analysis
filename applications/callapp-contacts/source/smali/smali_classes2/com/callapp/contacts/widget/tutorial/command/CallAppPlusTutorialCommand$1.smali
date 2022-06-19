.class Lcom/callapp/contacts/widget/tutorial/command/CallAppPlusTutorialCommand$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/tutorial/command/CallAppPlusTutorialCommand;->a(Lcom/callapp/contacts/activity/base/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/BaseActivity;

.field final synthetic b:Lcom/callapp/contacts/widget/tutorial/command/CallAppPlusTutorialCommand;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/tutorial/command/CallAppPlusTutorialCommand;Lcom/callapp/contacts/activity/base/BaseActivity;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/command/CallAppPlusTutorialCommand$1;->b:Lcom/callapp/contacts/widget/tutorial/command/CallAppPlusTutorialCommand;

    iput-object p2, p0, Lcom/callapp/contacts/widget/tutorial/command/CallAppPlusTutorialCommand$1;->a:Lcom/callapp/contacts/activity/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 30
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Permissions"

    const-string v2, "ClickAllowPermissionToNotification"

    const-string v3, "TutorialCallAppPlus"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/command/CallAppPlusTutorialCommand$1;->a:Lcom/callapp/contacts/activity/base/BaseActivity;

    new-instance v1, Lcom/callapp/contacts/widget/tutorial/command/CallAppPlusTutorialCommand$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/tutorial/command/CallAppPlusTutorialCommand$1$1;-><init>(Lcom/callapp/contacts/widget/tutorial/command/CallAppPlusTutorialCommand$1;)V

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/app/Activity;Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V

    return-void
.end method
