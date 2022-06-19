.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$14;
.super Lcom/callapp/contacts/popup/contact/DrawOverAppsRequestDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->showOverlayPermissionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/analytics/AnalyticsManager;)V
    .locals 0

    .line 1080
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$14;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$14;->a:Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    invoke-direct {p0, p2}, Lcom/callapp/contacts/popup/contact/DrawOverAppsRequestDialog;-><init>(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    return-void
.end method


# virtual methods
.method public onDialogDismissed(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1083
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$14;->a:Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    const-string v0, "Permissions"

    const-string v1, "Draw On Screen"

    const-string v2, "Clicked no from Contact Details"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
