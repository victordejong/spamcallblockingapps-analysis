.class Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1$1;
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

    .line 609
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1$1;->a:Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 1

    .line 612
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1$1$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1$1$1;-><init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1$1;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method
