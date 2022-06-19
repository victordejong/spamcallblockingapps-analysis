.class Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/PopupDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15;I)V
    .locals 0

    .line 835
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15$1;->b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15;

    iput p2, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public popupDone(Z)V
    .locals 2

    .line 839
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Registration"

    const-string v1, "Moving automatically from social screen"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15$1;->b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15;

    iget-object p1, p1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    iget v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15$1;->a:I

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;I)V

    return-void
.end method
