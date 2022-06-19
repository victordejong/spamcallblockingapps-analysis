.class Lcom/callapp/contacts/wearable/WearableClientHandler$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/wearable/WearableClientHandler;->a(Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[B

.field final synthetic c:Lcom/callapp/contacts/wearable/WearableClientHandler;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/wearable/WearableClientHandler;Ljava/lang/String;[B)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/callapp/contacts/wearable/WearableClientHandler$2;->c:Lcom/callapp/contacts/wearable/WearableClientHandler;

    iput-object p2, p0, Lcom/callapp/contacts/wearable/WearableClientHandler$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/wearable/WearableClientHandler$2;->b:[B

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 7

    .line 244
    iget-object v0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler$2;->c:Lcom/callapp/contacts/wearable/WearableClientHandler;

    invoke-virtual {v0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->isWearConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler$2;->c:Lcom/callapp/contacts/wearable/WearableClientHandler;

    invoke-static {v0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->b(Lcom/callapp/contacts/wearable/WearableClientHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/wearable/WearableClientHandler$2;->c:Lcom/callapp/contacts/wearable/WearableClientHandler;

    invoke-static {v1}, Lcom/callapp/contacts/wearable/WearableClientHandler;->c(Lcom/callapp/contacts/wearable/WearableClientHandler;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/wearable/n;

    .line 247
    iget-object v3, p0, Lcom/callapp/contacts/wearable/WearableClientHandler$2;->c:Lcom/callapp/contacts/wearable/WearableClientHandler;

    invoke-static {v3}, Lcom/callapp/contacts/wearable/WearableClientHandler;->d(Lcom/callapp/contacts/wearable/WearableClientHandler;)Lcom/google/android/gms/wearable/l;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/android/gms/wearable/n;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/callapp/contacts/wearable/WearableClientHandler$2;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/callapp/contacts/wearable/WearableClientHandler$2;->b:[B

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/wearable/l;->a(Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/android/gms/tasks/h;

    move-result-object v3

    .line 249
    const-class v4, Lcom/callapp/contacts/wearable/WearableClientHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sendMessageToWear node: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/google/android/gms/wearable/n;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :try_start_1
    invoke-static {v3}, Lcom/google/android/gms/tasks/k;->a(Lcom/google/android/gms/tasks/h;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 254
    const-class v3, Lcom/callapp/contacts/wearable/WearableClientHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Message sent: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " path: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/wearable/WearableClientHandler$2;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 258
    :try_start_2
    const-class v3, Lcom/callapp/contacts/wearable/WearableClientHandler;

    const-string v4, "Interrupt occurred: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 256
    const-class v3, Lcom/callapp/contacts/wearable/WearableClientHandler;

    const-string v4, "Task failed: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    return-void
.end method
