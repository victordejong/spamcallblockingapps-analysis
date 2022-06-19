.class Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$8;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->k()V
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

    .line 550
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$8;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 553
    invoke-static {}, Lcom/callapp/contacts/manager/messaging/FcmManager;->get()Lcom/callapp/contacts/manager/messaging/FcmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/messaging/FcmManager;->a()V

    .line 555
    sget-object v0, Lcom/callapp/contacts/workers/CallAppDailyWorker;->a:Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;->a()V

    .line 557
    sget-object v0, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;->b()V

    .line 559
    sget-object v0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;->b()V

    .line 561
    invoke-static {}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->f()V

    .line 563
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->c()V

    .line 565
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->listenToCallState(Z)V

    .line 567
    invoke-static {}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->g()V

    return-void
.end method
