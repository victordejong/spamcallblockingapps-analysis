.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field static a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

.field private static final c:Lcom/amazonaws/logging/Log;


# instance fields
.field b:Z

.field private d:I

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->c:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->b:Z

    .line 59
    iput v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:I

    .line 65
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->e:Z

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 223
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 p3, 0x2

    and-int/2addr p1, p3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    .line 227
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "network status: %s\n"

    invoke-virtual {p2, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 228
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->a(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->a()Ljava/util/Map;

    move-result-object v0

    new-array v1, p1, [Ljava/lang/Object;

    .line 229
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "# of active transfers: %d\n"

    invoke-virtual {p2, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 230
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    .line 231
    iget-object v4, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->p:Ljava/lang/String;

    aput-object v4, v3, v2

    iget-object v4, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->q:Ljava/lang/String;

    aput-object v4, v3, p1

    iget-object v4, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v4, v3, p3

    const/4 v4, 0x3

    iget-wide v5, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->h:J

    .line 232
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-wide v5, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->i:J

    .line 233
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "bucket: %s, key: %s, status: %s, total size: %d, current: %d\n"

    .line 231
    invoke-virtual {p2, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 92
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Can\'t bind to TransferService"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()V
    .locals 3

    .line 105
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 107
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->c:Lcom/amazonaws/logging/Log;

    const-string v1, "Starting Transfer Service to listen for network connectivity changes."

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->a(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    move-result-object v1

    sput-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iget-boolean v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "Registering the network receiver"

    .line 114
    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 115
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->b:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    :catch_0
    :try_start_2
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->c:Lcom/amazonaws/logging/Log;

    const-string v1, "Ignoring the leak in registering the receiver."

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    :catch_1
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->c:Lcom/amazonaws/logging/Log;

    const-string v1, "Ignoring the exception trying to register the receiver for connectivity change."

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 124
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 3

    .line 190
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 191
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->c:Lcom/amazonaws/logging/Log;

    const-string v1, "Moving the service out of the Foreground state."

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 192
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :try_start_1
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->e:Z

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->stopForeground(Z)V

    .line 194
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 197
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->c:Lcom/amazonaws/logging/Log;

    const-string v2, "Error in moving the service out of the foreground state: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;)V

    .line 201
    :cond_0
    :goto_0
    :try_start_3
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->c:Lcom/amazonaws/logging/Log;

    const-string v1, "De-registering the network receiver."

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 202
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 203
    :try_start_4
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->b:Z

    if-nez v0, :cond_1

    .line 204
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->b:Z

    const/4 v0, 0x0

    .line 206
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 208
    :cond_1
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    .line 214
    :catch_1
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->c:Lcom/amazonaws/logging/Log;

    const-string v1, "Exception trying to de-register the network receiver"

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 217
    :goto_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 140
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_1

    .line 142
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string p2, "notification"

    .line 143
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/Notification;

    if-eqz p2, :cond_0

    const-string p3, "ongoing-notification-id"

    .line 146
    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:I

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:I

    const-string p3, "remove-notification"

    .line 149
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->e:Z

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->e:Z

    .line 152
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->c:Lcom/amazonaws/logging/Log;

    const-string p3, "Putting the service in Foreground state."

    invoke-interface {p1, p3}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 153
    iget p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->d:I

    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    .line 155
    :cond_0
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->c:Lcom/amazonaws/logging/Log;

    const-string p2, "No notification is passed in the intent. Unable to transition to foreground."

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;)V

    .line 158
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 160
    sget-object p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->c:Lcom/amazonaws/logging/Log;

    const-string p3, "Error in moving the service to foreground state: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;)V

    .line 164
    :cond_1
    :goto_1
    monitor-enter p0

    .line 165
    :try_start_3
    iget-boolean p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->b:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_2

    .line 167
    :try_start_4
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->c:Lcom/amazonaws/logging/Log;

    const-string p2, "Registering the network receiver"

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 168
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 170
    iput-boolean p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->b:Z
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 174
    :catch_1
    :try_start_5
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->c:Lcom/amazonaws/logging/Log;

    const-string p2, "Ignoring the leak in registering the receiver."

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    goto :goto_2

    .line 172
    :catch_2
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->c:Lcom/amazonaws/logging/Log;

    const-string p2, "Ignoring the exception trying to register the receiver for connectivity change."

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 177
    :cond_2
    :goto_2
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method
