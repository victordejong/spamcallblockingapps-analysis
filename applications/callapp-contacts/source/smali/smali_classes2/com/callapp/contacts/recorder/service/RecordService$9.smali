.class Lcom/callapp/contacts/recorder/service/RecordService$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/recorder/service/RecordService;->stopAudioRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/callapp/contacts/recorder/service/RecordService;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/recorder/service/RecordService;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 835
    iput-object p1, p0, Lcom/callapp/contacts/recorder/service/RecordService$9;->b:Lcom/callapp/contacts/recorder/service/RecordService;

    iput-object p2, p0, Lcom/callapp/contacts/recorder/service/RecordService$9;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 839
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$9;->b:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$600(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/encoder/AudioEncoder;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/recorder/encoder/AudioEncoder;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    :catch_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$9;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService$9;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 843
    throw v0
.end method
