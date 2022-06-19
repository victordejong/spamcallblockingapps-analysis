.class Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1$1;->onClickListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1$1;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1$1$1;->a:Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 615
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1$1$1;->a:Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1$1;->a:Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1;->b:Lcom/callapp/contacts/activity/records/CallRecordsActivity$7;

    iget-object v1, v1, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7;->b:Lcom/callapp/contacts/activity/records/CallRecordsActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->c(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1$1$1;->a:Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1$1;

    iget-object v2, v2, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1$1;->a:Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1;

    iget-object v2, v2, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7$1;->a:Lcom/callapp/contacts/action/ActionDoneListener;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Ljava/util/List;Lcom/callapp/contacts/action/ActionDoneListener;)V

    return-void
.end method
