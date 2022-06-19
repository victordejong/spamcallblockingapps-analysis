.class Lcom/callapp/contacts/activity/records/CallRecordsActivity$StarUnstarActionDoneListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/records/CallRecordsActivity$StarUnstarActionDoneListener;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/activity/records/CallRecordsActivity$StarUnstarActionDoneListener;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity$StarUnstarActionDoneListener;Z)V
    .locals 0

    .line 822
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$StarUnstarActionDoneListener$1;->b:Lcom/callapp/contacts/activity/records/CallRecordsActivity$StarUnstarActionDoneListener;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$StarUnstarActionDoneListener$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 825
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$StarUnstarActionDoneListener$1;->a:Z

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$StarUnstarActionDoneListener$1;->b:Lcom/callapp/contacts/activity/records/CallRecordsActivity$StarUnstarActionDoneListener;

    iget-object v0, v0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$StarUnstarActionDoneListener;->a:Lcom/callapp/contacts/activity/records/CallRecordsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V

    :cond_0
    return-void
.end method
