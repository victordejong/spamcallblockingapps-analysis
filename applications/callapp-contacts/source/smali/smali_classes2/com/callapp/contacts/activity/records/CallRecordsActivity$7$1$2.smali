.class Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1$2;->a:Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 1

    .line 622
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1$2;->a:Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1;->a:Lcom/callapp/contacts/action/ActionDoneListener;

    if-eqz p1, :cond_0

    .line 623
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1$2;->a:Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1;->a:Lcom/callapp/contacts/action/ActionDoneListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/callapp/contacts/action/ActionDoneListener;->a(Z)V

    :cond_0
    return-void
.end method
