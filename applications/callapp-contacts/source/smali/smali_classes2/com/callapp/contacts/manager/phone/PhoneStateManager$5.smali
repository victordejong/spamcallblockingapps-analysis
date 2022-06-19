.class Lcom/callapp/contacts/manager/phone/PhoneStateManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getInternalSilenceRingerRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)V
    .locals 0

    .line 796
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$5;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 799
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    const-string v1, "internalSilenceRinger called"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$5;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$800(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Z

    move-result v1

    iget-object v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$5;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$900(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$802(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Z)Z

    .line 802
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$5;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$1000(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$5;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$1002(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Z)Z

    .line 804
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 805
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$5;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$1100(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 809
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$5;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$1200(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 810
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$5;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$1200(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 811
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$5;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$1200(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 812
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$5;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$1202(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 814
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
