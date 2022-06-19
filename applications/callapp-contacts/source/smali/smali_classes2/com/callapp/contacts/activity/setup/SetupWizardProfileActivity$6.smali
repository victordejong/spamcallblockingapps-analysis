.class Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/JSONGroupType;

.field final synthetic b:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;Lcom/callapp/contacts/util/JSONGroupType;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$6;->b:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$6;->a:Lcom/callapp/contacts/util/JSONGroupType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 513
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$6;->b:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    const v1, 0x7f0a0877

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v2, 0x7f08052d

    invoke-static {v1, v2}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 514
    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 515
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$6;->a:Lcom/callapp/contacts/util/JSONGroupType;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/JSONGroupType;->getType()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aY:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$6;->b:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->i(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$6;->b:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    const-class v2, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 517
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$6;->a:Lcom/callapp/contacts/util/JSONGroupType;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/JSONGroupType;->getType()I

    move-result v1

    const-string v2, "ONBOARDING_PAYMENT_LAYOUT_EXTRA"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 518
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$6;->b:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    const/16 v2, 0x6d

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 519
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aY:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$6;->b:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->i(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$6;->b:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->j(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V

    return-void

    .line 520
    :cond_2
    :goto_0
    sget-object v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->PAY_WALL:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->setCurrentSetupStage(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;)V

    .line 521
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$6;->b:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    const-class v2, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 522
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$6;->b:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    const/16 v2, 0x6e

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 528
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$6;->b:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->j(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V

    return-void
.end method
