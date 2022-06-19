.class Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


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

    .line 853
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15$2;->b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15;

    iput p2, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15$2;->a:I

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 857
    iget v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15$2;->a:I

    const-string v1, "Registration"

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->isTwitterAppInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 858
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v2, "No twitter but connected"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :cond_0
    iget v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15$2;->a:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->isInstagramAppInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 862
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v2, "No instagram but connected"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
