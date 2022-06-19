.class Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 103
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$1;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 4

    .line 106
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Permissions"

    const-string v2, "ClickAllowPermissionToNotificationPopup"

    const-string v3, "CallAppPlus"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/app/Activity;)V

    return-void
.end method
