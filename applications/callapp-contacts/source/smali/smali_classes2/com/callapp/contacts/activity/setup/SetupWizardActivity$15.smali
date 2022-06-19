.class Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$NetworkConnectionActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V
    .locals 0

    .line 826
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 7

    if-eqz p2, :cond_2

    .line 831
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->h(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->getNumConnected()I

    move-result v0

    .line 832
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->i(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 833
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    const-string v1, "Registration"

    const-string v2, "Connected all networks"

    invoke-virtual {p2, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    new-instance v1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15$1;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15$1;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15;I)V

    invoke-static {p2, p1, v1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;ILcom/callapp/contacts/manager/popup/PopupDoneListener;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 846
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;ILcom/callapp/contacts/manager/popup/PopupDoneListener;)V

    .line 850
    :cond_1
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object p2

    .line 851
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Social Networks connected to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isNativeAppInstalled()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 p2, 0x0

    new-array v6, p2, [Ljava/lang/String;

    const-string v1, "Registration"

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 853
    new-instance p2, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15$2;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15$2;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15;I)V

    .line 866
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_2
    return-void
.end method
