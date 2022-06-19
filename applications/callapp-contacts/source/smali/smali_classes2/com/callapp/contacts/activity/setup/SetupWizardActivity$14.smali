.class Lcom/callapp/contacts/activity/setup/SetupWizardActivity$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/setup/SetupWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

.field final synthetic b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$14;->b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$14;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 2

    .line 739
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Back pressed in setup. Chose to quit."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$14;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Registration"

    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$14;->b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->g(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    return-void
.end method
