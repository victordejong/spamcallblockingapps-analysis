.class Lcom/callapp/contacts/recorder/service/RecordService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioRecord$OnRecordPositionUpdateListener;


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

    .line 207
    iput-object p1, p0, Lcom/callapp/contacts/recorder/service/RecordService$2;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerReached(Landroid/media/AudioRecord;)V
    .locals 0

    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioRecord;)V
    .locals 1

    .line 211
    iget-object p1, p0, Lcom/callapp/contacts/recorder/service/RecordService$2;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {p1}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1000(Lcom/callapp/contacts/recorder/service/RecordService;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$2;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$900(Lcom/callapp/contacts/recorder/service/RecordService;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
