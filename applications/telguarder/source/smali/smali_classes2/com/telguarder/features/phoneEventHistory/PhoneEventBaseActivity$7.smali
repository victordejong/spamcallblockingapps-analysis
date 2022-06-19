.class Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$7;
.super Ljava/lang/Object;
.source "PhoneEventBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->initContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$7;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$7;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneCallLog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 431
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$7;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-virtual {v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->showProgress()V

    .line 432
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$7;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneCallLog:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$7;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-boolean v1, v1, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->spamFilter:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getSpamCallLog()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getPhoneCallLog()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 433
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$7;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneCallLog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$7;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-virtual {v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->showError()V

    goto :goto_1

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$7;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-virtual {v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->showContent()V

    goto :goto_1

    .line 439
    :cond_2
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$7;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-virtual {v1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->preloadFinalPhoneCallLog(Landroid/content/Context;)V

    :goto_1
    return-void
.end method
