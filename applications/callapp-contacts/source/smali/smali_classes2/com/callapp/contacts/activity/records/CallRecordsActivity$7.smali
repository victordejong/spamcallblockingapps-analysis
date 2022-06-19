.class Lcom/callapp/contacts/activity/records/CallRecordsActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/records/CallRecordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogList;

.field final synthetic b:Lcom/callapp/contacts/activity/records/CallRecordsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity;Lcom/callapp/contacts/popup/contact/DialogList;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7;->b:Lcom/callapp/contacts/activity/records/CallRecordsActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRowClicked(I)V
    .locals 3

    .line 592
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/DialogList;->dismiss()V

    const v0, 0x7f120153

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 648
    :sswitch_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7;->b:Lcom/callapp/contacts/activity/records/CallRecordsActivity;

    invoke-static {p1, v2}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(Lcom/callapp/contacts/activity/records/CallRecordsActivity;Z)V

    goto/16 :goto_1

    .line 596
    :sswitch_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7;->b:Lcom/callapp/contacts/activity/records/CallRecordsActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->c(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 597
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1111
    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 600
    :cond_0
    new-instance p1, Lcom/callapp/contacts/activity/records/CallRecordsActivity$StarUnstarActionDoneListener;

    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7;->b:Lcom/callapp/contacts/activity/records/CallRecordsActivity;

    invoke-direct {p1, v0, v1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity$StarUnstarActionDoneListener;-><init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity;Lcom/callapp/contacts/activity/records/CallRecordsActivity$1;)V

    .line 601
    new-instance v0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1;-><init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity$7;Lcom/callapp/contacts/action/ActionDoneListener;)V

    .line 628
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void

    .line 632
    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/activity/settings/SettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "call_recorder_settings"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "show_call_recorder_permission"

    .line 633
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 634
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7;->b:Lcom/callapp/contacts/activity/records/CallRecordsActivity;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void

    .line 640
    :sswitch_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7;->b:Lcom/callapp/contacts/activity/records/CallRecordsActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->d(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7;->b:Lcom/callapp/contacts/activity/records/CallRecordsActivity;

    .line 641
    invoke-static {p1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->e(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->getCurrentItem()I

    move-result p1

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7;->b:Lcom/callapp/contacts/activity/records/CallRecordsActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->f(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 644
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7;->b:Lcom/callapp/contacts/activity/records/CallRecordsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->onMultiSelectModeToggled(ZI)V

    return-void

    .line 642
    :cond_2
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2111
    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :sswitch_4
    const-string p1, "record"

    .line 637
    invoke-static {p1}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->a(Ljava/lang/String;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f1200d4 -> :sswitch_4
        0x7f120143 -> :sswitch_3
        0x7f120663 -> :sswitch_2
        0x7f1206f4 -> :sswitch_1
        0x7f12070e -> :sswitch_0
    .end sparse-switch
.end method
