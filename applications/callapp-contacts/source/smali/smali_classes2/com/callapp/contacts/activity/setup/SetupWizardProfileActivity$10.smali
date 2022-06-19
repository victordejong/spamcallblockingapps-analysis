.class Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$10;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->o()V
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

    .line 599
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$10;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3

    .line 602
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->fL:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->fromNumRep(I)Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    move-result-object p1

    .line 603
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    iget-object p1, p1, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->name:Ljava/lang/String;

    const-string v1, "Registration"

    const-string v2, "ClickStartUsingCallApp"

    invoke-virtual {v0, v1, v2, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$10;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->l(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V

    return-void
.end method
