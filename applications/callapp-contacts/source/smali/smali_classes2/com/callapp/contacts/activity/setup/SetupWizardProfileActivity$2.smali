.class Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->i()V
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

    .line 228
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$2;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$2;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->e(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V

    .line 240
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$2;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->f(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V

    return-void
.end method

.method private synthetic b()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$2;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->e(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V

    .line 235
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$2;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->g(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V

    return-void
.end method

.method public static synthetic lambda$ICaxICkATF2LnfMVRjrwqCWNwnY(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$2;->a()V

    return-void
.end method

.method public static synthetic lambda$OvafEnrZ-fqWTDbazoWKZDFGFTs(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$2;->b()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 231
    invoke-static {}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->e()Landroid/util/Pair;

    move-result-object v0

    .line 232
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$2;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    new-instance v1, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardProfileActivity$2$OvafEnrZ-fqWTDbazoWKZDFGFTs;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardProfileActivity$2$OvafEnrZ-fqWTDbazoWKZDFGFTs;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$2;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    new-instance v1, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardProfileActivity$2$ICaxICkATF2LnfMVRjrwqCWNwnY;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardProfileActivity$2$ICaxICkATF2LnfMVRjrwqCWNwnY;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
