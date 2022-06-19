.class Lcom/callapp/contacts/activity/records/CallRecordsActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/records/CallRecordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/callapp/contacts/activity/records/CallRecordsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity;Ljava/util/List;)V
    .locals 0

    .line 709
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$9;->b:Lcom/callapp/contacts/activity/records/CallRecordsActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$9;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 2

    .line 712
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$9;->a:Ljava/util/List;

    new-instance v1, Lcom/callapp/contacts/activity/records/CallRecordsActivity$9$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity$9$1;-><init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity$9;)V

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Ljava/util/List;Lcom/callapp/contacts/action/ActionDoneListener;)V

    .line 728
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$9;->b:Lcom/callapp/contacts/activity/records/CallRecordsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->onMultiSelectModeToggled(ZI)V

    return-void
.end method
