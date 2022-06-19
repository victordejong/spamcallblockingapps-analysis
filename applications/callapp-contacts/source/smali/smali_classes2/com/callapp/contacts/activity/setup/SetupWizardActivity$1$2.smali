.class Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1;->onDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tasks/h;

.field final synthetic b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1;Lcom/google/android/gms/tasks/h;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2;->b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1;

    iput-object p2, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2;->a:Lcom/google/android/gms/tasks/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2;->a:Lcom/google/android/gms/tasks/h;

    const-wide/16 v1, 0x1f4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/tasks/k;->a(Lcom/google/android/gms/tasks/h;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 205
    :catch_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2$1;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1$2;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
