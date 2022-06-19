.class Lcom/callapp/contacts/recorder/service/RecordService$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/recorder/service/RecordService;->startAudioRecord()V
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

    .line 752
    iput-object p1, p0, Lcom/callapp/contacts/recorder/service/RecordService$8;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 755
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$8;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$000(Lcom/callapp/contacts/recorder/service/RecordService;)Landroid/media/AudioRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$8;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$800(Lcom/callapp/contacts/recorder/service/RecordService;)V

    return-void

    .line 760
    :cond_0
    sget-boolean v0, Lcom/callapp/contacts/CallAppApplication;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$8;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$000(Lcom/callapp/contacts/recorder/service/RecordService;)Landroid/media/AudioRecord;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService$8;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v2}, Lcom/callapp/contacts/recorder/service/RecordService;->access$700(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->getAudioSource()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->getSource()I

    move-result v2

    iget-object v3, p0, Lcom/callapp/contacts/recorder/service/RecordService$8;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v3}, Lcom/callapp/contacts/recorder/service/RecordService;->access$700(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->isForceIncommunicationMode()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/recorder/service/RecordService;->setRecordingConf(Landroid/media/AudioRecord;IIZ)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$8;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1000(Lcom/callapp/contacts/recorder/service/RecordService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/recorder/service/RecordService$8$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/recorder/service/RecordService$8$1;-><init>(Lcom/callapp/contacts/recorder/service/RecordService$8;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 761
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$8;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$800(Lcom/callapp/contacts/recorder/service/RecordService;)V

    .line 762
    const-class v0, Lcom/callapp/contacts/recorder/service/RecordService;

    const-string v1, "failed to initiate native call record"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
