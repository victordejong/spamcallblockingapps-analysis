.class Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$Accept;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->getUserConsent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$4;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 331
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bg:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$4;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->h(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V

    return-void
.end method
