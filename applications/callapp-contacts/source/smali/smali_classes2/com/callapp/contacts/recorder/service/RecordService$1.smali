.class Lcom/callapp/contacts/recorder/service/RecordService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/recorder/service/RecordService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/recorder/service/RecordService;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/recorder/service/RecordService;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/callapp/contacts/recorder/service/RecordService$1;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$1;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$000(Lcom/callapp/contacts/recorder/service/RecordService;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$1;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$100(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->IDLE:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    if-eq v0, v1, :cond_2

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$1;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$000(Lcom/callapp/contacts/recorder/service/RecordService;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService$1;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v1}, Lcom/callapp/contacts/recorder/service/RecordService;->access$200(Lcom/callapp/contacts/recorder/service/RecordService;)[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/callapp/contacts/recorder/service/RecordService$1;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v3}, Lcom/callapp/contacts/recorder/service/RecordService;->access$200(Lcom/callapp/contacts/recorder/service/RecordService;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioRecord;->read([BII)I

    .line 153
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$1;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$300(Lcom/callapp/contacts/recorder/service/RecordService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$1;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$400(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$1;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$200(Lcom/callapp/contacts/recorder/service/RecordService;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService$1;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v2}, Lcom/callapp/contacts/recorder/service/RecordService;->access$200(Lcom/callapp/contacts/recorder/service/RecordService;)[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/recorder/service/RecordService;->access$500(Lcom/callapp/contacts/recorder/service/RecordService;[BIS)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$1;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$600(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/encoder/AudioEncoder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService$1;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v1}, Lcom/callapp/contacts/recorder/service/RecordService;->access$200(Lcom/callapp/contacts/recorder/service/RecordService;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService$1;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v2}, Lcom/callapp/contacts/recorder/service/RecordService;->access$200(Lcom/callapp/contacts/recorder/service/RecordService;)[B

    move-result-object v2

    array-length v2, v2

    invoke-interface {v0, v1, v2}, Lcom/callapp/contacts/recorder/encoder/AudioEncoder;->a([BI)V

    .line 157
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$1;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$700(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->isInRecorderTest()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$1;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$700(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->isEmptyRecord()Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    new-instance v0, Lcom/callapp/contacts/recorder/service/RecordService$1$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/recorder/service/RecordService$1$1;-><init>(Lcom/callapp/contacts/recorder/service/RecordService$1;)V

    .line 169
    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/service/RecordService$1$1;->execute()Lcom/callapp/contacts/manager/task/Task;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 172
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService$1;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v1}, Lcom/callapp/contacts/recorder/service/RecordService;->access$800(Lcom/callapp/contacts/recorder/service/RecordService;)V

    .line 173
    const-class v1, Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AudioRecorder read/encode error "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
