.class Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/records/CallRecordsActivity$7;->onRowClicked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/action/ActionDoneListener;

.field final synthetic b:Lcom/callapp/contacts/activity/records/CallRecordsActivity$7;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity$7;Lcom/callapp/contacts/action/ActionDoneListener;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1;->b:Lcom/callapp/contacts/activity/records/CallRecordsActivity$7;

    iput-object p2, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1;->a:Lcom/callapp/contacts/action/ActionDoneListener;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 13

    .line 604
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1;->b:Lcom/callapp/contacts/activity/records/CallRecordsActivity$7;

    iget-object v1, v1, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7;->b:Lcom/callapp/contacts/activity/records/CallRecordsActivity;

    new-instance v12, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v2, 0x7f1206f4

    .line 605
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v2, 0x7f120398

    .line 606
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f120049

    .line 607
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v2, 0x7f1201a9

    .line 608
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v2, 0x7f0601cc

    .line 609
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    new-instance v9, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1$1;

    invoke-direct {v9, p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1$1;-><init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1;)V

    new-instance v10, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1$2;

    invoke-direct {v10, p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1$2;-><init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1;)V

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    .line 604
    invoke-virtual {v0, v1, v12}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method
