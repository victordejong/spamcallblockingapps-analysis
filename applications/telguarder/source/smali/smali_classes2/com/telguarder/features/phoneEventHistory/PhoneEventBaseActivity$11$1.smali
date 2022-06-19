.class Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11$1;
.super Ljava/lang/Object;
.source "PhoneEventBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11;->onUpdateFinished(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11;

.field final synthetic val$callLog:Ljava/util/ArrayList;

.field final synthetic val$error:Z

.field final synthetic val$spamLog:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11;

    iput-boolean p2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11$1;->val$error:Z

    iput-object p3, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11$1;->val$spamLog:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11$1;->val$callLog:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 504
    sget-boolean v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->active:Z

    if-nez v0, :cond_0

    return-void

    .line 505
    :cond_0
    iget-boolean v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11$1;->val$error:Z

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-virtual {v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->showError()V

    goto :goto_1

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneCallLog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 509
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneCallLog:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11;

    iget-object v1, v1, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-boolean v1, v1, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->spamFilter:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11$1;->val$spamLog:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11$1;->val$callLog:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 510
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneEventLogAdapter:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;

    invoke-virtual {v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->notifyDataSetChanged()V

    .line 511
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-static {v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->access$1300(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V

    :goto_1
    return-void
.end method
