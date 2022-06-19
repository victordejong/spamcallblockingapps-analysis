.class Lcom/callapp/contacts/recorder/service/RecordService$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/recorder/service/RecordService$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/recorder/service/RecordService$8;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/recorder/service/RecordService$8;)V
    .locals 0

    .line 766
    iput-object p1, p0, Lcom/callapp/contacts/recorder/service/RecordService$8$1;->a:Lcom/callapp/contacts/recorder/service/RecordService$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 769
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$8$1;->a:Lcom/callapp/contacts/recorder/service/RecordService$8;

    iget-object v0, v0, Lcom/callapp/contacts/recorder/service/RecordService$8;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$000(Lcom/callapp/contacts/recorder/service/RecordService;)Landroid/media/AudioRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$8$1;->a:Lcom/callapp/contacts/recorder/service/RecordService$8;

    iget-object v0, v0, Lcom/callapp/contacts/recorder/service/RecordService$8;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$800(Lcom/callapp/contacts/recorder/service/RecordService;)V

    return-void

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$8$1;->a:Lcom/callapp/contacts/recorder/service/RecordService$8;

    iget-object v0, v0, Lcom/callapp/contacts/recorder/service/RecordService$8;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$000(Lcom/callapp/contacts/recorder/service/RecordService;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 775
    const-class v0, Lcom/callapp/contacts/recorder/service/RecordService;

    const-string v1, "startRecorder audioRecorder"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 777
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$8$1;->a:Lcom/callapp/contacts/recorder/service/RecordService$8;

    iget-object v0, v0, Lcom/callapp/contacts/recorder/service/RecordService$8;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$000(Lcom/callapp/contacts/recorder/service/RecordService;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$8$1;->a:Lcom/callapp/contacts/recorder/service/RecordService$8;

    iget-object v0, v0, Lcom/callapp/contacts/recorder/service/RecordService$8;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$000(Lcom/callapp/contacts/recorder/service/RecordService;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 783
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$8$1;->a:Lcom/callapp/contacts/recorder/service/RecordService$8;

    iget-object v0, v0, Lcom/callapp/contacts/recorder/service/RecordService$8;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    sget-object v1, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->RECORDING:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    invoke-static {v0, v1}, Lcom/callapp/contacts/recorder/service/RecordService;->access$102(Lcom/callapp/contacts/recorder/service/RecordService;Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;)Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    .line 784
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$8$1;->a:Lcom/callapp/contacts/recorder/service/RecordService$8;

    iget-object v0, v0, Lcom/callapp/contacts/recorder/service/RecordService$8;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/recorder/service/RecordService;->access$2400(Lcom/callapp/contacts/recorder/service/RecordService;Ljava/io/Serializable;)V

    goto :goto_0

    .line 786
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$8$1;->a:Lcom/callapp/contacts/recorder/service/RecordService$8;

    iget-object v0, v0, Lcom/callapp/contacts/recorder/service/RecordService$8;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$800(Lcom/callapp/contacts/recorder/service/RecordService;)V

    return-void

    .line 779
    :catch_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$8$1;->a:Lcom/callapp/contacts/recorder/service/RecordService$8;

    iget-object v0, v0, Lcom/callapp/contacts/recorder/service/RecordService$8;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$800(Lcom/callapp/contacts/recorder/service/RecordService;)V

    return-void

    .line 790
    :cond_2
    const-class v0, Lcom/callapp/contacts/recorder/service/RecordService;

    const-string v1, "audioRecorder not initialized"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$8$1;->a:Lcom/callapp/contacts/recorder/service/RecordService$8;

    iget-object v0, v0, Lcom/callapp/contacts/recorder/service/RecordService$8;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$800(Lcom/callapp/contacts/recorder/service/RecordService;)V

    .line 795
    :goto_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_3

    const-wide/16 v0, 0x1388

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x1f4

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    .line 799
    :goto_2
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$8$1;->a:Lcom/callapp/contacts/recorder/service/RecordService$8;

    iget-object v0, v0, Lcom/callapp/contacts/recorder/service/RecordService$8;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$000(Lcom/callapp/contacts/recorder/service/RecordService;)Landroid/media/AudioRecord;

    move-result-object v0

    if-nez v0, :cond_4

    .line 800
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$8$1;->a:Lcom/callapp/contacts/recorder/service/RecordService$8;

    iget-object v0, v0, Lcom/callapp/contacts/recorder/service/RecordService$8;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$800(Lcom/callapp/contacts/recorder/service/RecordService;)V

    return-void

    .line 804
    :cond_4
    sget-boolean v0, Lcom/callapp/contacts/CallAppApplication;->a:Z

    if-eqz v0, :cond_5

    .line 805
    invoke-static {}, Lcom/callapp/contacts/recorder/service/RecordService;->stopRecordingConf()V

    :cond_5
    return-void
.end method
