.class Lcom/callapp/contacts/recorder/service/RecordService$1$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/recorder/service/RecordService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/recorder/service/RecordService$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/recorder/service/RecordService$1;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/callapp/contacts/recorder/service/RecordService$1$1;->a:Lcom/callapp/contacts/recorder/service/RecordService$1;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$1$1;->a:Lcom/callapp/contacts/recorder/service/RecordService$1;

    iget-object v0, v0, Lcom/callapp/contacts/recorder/service/RecordService$1;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$700(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->isEmptyRecord()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$1$1;->a:Lcom/callapp/contacts/recorder/service/RecordService$1;

    iget-object v0, v0, Lcom/callapp/contacts/recorder/service/RecordService$1;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$700(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService$1$1;->a:Lcom/callapp/contacts/recorder/service/RecordService$1;

    iget-object v1, v1, Lcom/callapp/contacts/recorder/service/RecordService$1;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v1}, Lcom/callapp/contacts/recorder/service/RecordService;->access$200(Lcom/callapp/contacts/recorder/service/RecordService;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService$1$1;->a:Lcom/callapp/contacts/recorder/service/RecordService$1;

    iget-object v2, v2, Lcom/callapp/contacts/recorder/service/RecordService$1;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v2}, Lcom/callapp/contacts/recorder/service/RecordService;->access$200(Lcom/callapp/contacts/recorder/service/RecordService;)[B

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->setEmptyBufferCounter(Z)V

    .line 163
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$1$1;->a:Lcom/callapp/contacts/recorder/service/RecordService$1;

    iget-object v0, v0, Lcom/callapp/contacts/recorder/service/RecordService$1;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$700(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->isEmptyRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$1$1;->a:Lcom/callapp/contacts/recorder/service/RecordService$1;

    iget-object v0, v0, Lcom/callapp/contacts/recorder/service/RecordService$1;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$800(Lcom/callapp/contacts/recorder/service/RecordService;)V

    :cond_0
    return-void
.end method
