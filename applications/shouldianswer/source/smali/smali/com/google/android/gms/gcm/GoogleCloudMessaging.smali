.class public Lcom/google/android/gms/gcm/GoogleCloudMessaging;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ERROR_MAIN_THREAD:Ljava/lang/String; = "MAIN_THREAD"

.field public static final ERROR_SERVICE_NOT_AVAILABLE:Ljava/lang/String; = "SERVICE_NOT_AVAILABLE"

.field public static final INSTANCE_ID_SCOPE:Ljava/lang/String; = "GCM"

.field public static final MESSAGE_TYPE_DELETED:Ljava/lang/String; = "deleted_messages"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MESSAGE_TYPE_MESSAGE:Ljava/lang/String; = "gcm"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MESSAGE_TYPE_SEND_ERROR:Ljava/lang/String; = "send_error"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MESSAGE_TYPE_SEND_EVENT:Ljava/lang/String; = "send_event"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static zzae:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

.field private static final zzah:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private zzaf:Landroid/app/PendingIntent;

.field private final zzag:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final zzai:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaj:Landroid/os/Messenger;

.field private zzl:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 148
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzah:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroidx/c/a;

    invoke-direct {v0}, Landroidx/c/a;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzag:Ljava/util/Map;

    .line 12
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzai:Ljava/util/concurrent/BlockingQueue;

    .line 13
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/android/gms/gcm/zzf;

    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/gcm/zzf;-><init>(Lcom/google/android/gms/gcm/GoogleCloudMessaging;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzaj:Landroid/os/Messenger;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzae:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zze(Landroid/content/Context;)V

    .line 3
    new-instance v1, Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    invoke-direct {v1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;-><init>()V

    .line 4
    sput-object v1, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzae:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v1, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzl:Landroid/content/Context;

    .line 5
    :cond_0
    sget-object p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzae:Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final zzd(Landroid/os/Bundle;Z)Landroid/content/Intent;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzl:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzf(Landroid/content/Context;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 103
    new-instance v0, Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v1, "com.google.iid.TOKEN_REQUEST"

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzl:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/iid/zzaf;->zzl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-direct {p0, v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zze(Landroid/content/Intent;)V

    .line 106
    sget-object v1, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzah:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    const/16 v2, 0x15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "google.rpc"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "google.message_id"

    .line 108
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 110
    iget-object p1, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzaj:Landroid/os/Messenger;

    const-string v1, "google.messenger"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p2, :cond_1

    .line 112
    iget-object p1, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzl:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 113
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzl:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 115
    :goto_1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzai:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v0, 0x7530

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, p2}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 118
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 102
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Google Play Services missing"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "MAIN_THREAD"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final varargs declared-synchronized zzd(Z[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzl:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/iid/zzaf;->zzl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    .line 74
    array-length v1, p2

    if-eqz v1, :cond_5

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 77
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    const/16 v3, 0x2c

    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v3, p2, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 82
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, ".gsf"

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "legacy.sender"

    .line 84
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzl:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object p1

    const-string v0, "GCM"

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/iid/InstanceID;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    const-string v0, "sender"

    .line 86
    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzd(Landroid/os/Bundle;Z)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "registration_id"

    if-eqz p1, :cond_4

    .line 91
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    .line 93
    monitor-exit p0

    return-object p2

    :cond_2
    :try_start_2
    const-string p2, "error"

    .line 94
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 96
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 97
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No senderIds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic zzd(Lcom/google/android/gms/gcm/GoogleCloudMessaging;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzai:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method private final zzd(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "In-Reply-To"

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "error"

    .line 57
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "google.message_id"

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 60
    iget-object v1, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzag:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 61
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 62
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 63
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic zzd(Lcom/google/android/gms/gcm/GoogleCloudMessaging;Landroid/content/Intent;)Z
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzd(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static synthetic zze(Lcom/google/android/gms/gcm/GoogleCloudMessaging;)Landroid/content/Context;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzl:Landroid/content/Context;

    return-object p0
.end method

.method static zze(Landroid/content/Context;)V
    .locals 2

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "GCM SDK is deprecated, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " should update to use FCM"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GCM"

    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final declared-synchronized zze(Landroid/content/Intent;)V
    .locals 3

    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzaf:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.example.invalidpackage"

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzl:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzaf:Landroid/app/PendingIntent;

    :cond_0
    const-string v0, "app"

    .line 130
    iget-object v1, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzaf:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static zzf(Landroid/content/Context;)I
    .locals 2

    .line 136
    invoke-static {p0}, Lcom/google/android/gms/iid/zzaf;->zzl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 139
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 141
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private final declared-synchronized zzh()V
    .locals 1

    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzaf:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzaf:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzaf:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzae:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 17
    sput-object v0, Lcom/google/android/gms/gcm/zzd;->zzk:Lcom/google/android/gms/gcm/zzd;

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzh()V

    return-void
.end method

.method public getMessageType(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "message_type"

    .line 122
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    const-string p1, "gcm"

    return-object p1
.end method

.method public varargs declared-synchronized register([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzl:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/iid/zzaf;->zzk(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzd(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_7

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzl:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/iid/zzaf;->zzl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 27
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gcm.intent.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 29
    invoke-virtual {v1, p5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 30
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zze(Landroid/content/Intent;)V

    .line 31
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "google.to"

    .line 32
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "google.message_id"

    .line 33
    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    const-string p4, "google.ttl"

    invoke-virtual {v1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p3, 0x40

    .line 36
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    if-lez p3, :cond_1

    const/4 p4, 0x0

    .line 38
    invoke-virtual {p1, p4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    move-object p3, p1

    .line 40
    :goto_0
    iget-object p4, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzl:Landroid/content/Context;

    invoke-static {p4}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    .line 41
    invoke-static {}, Lcom/google/android/gms/iid/InstanceID;->zzp()Lcom/google/android/gms/iid/zzak;

    move-result-object p4

    const-string v4, "GCM"

    const-string v5, ""

    invoke-virtual {p4, v5, p3, v4}, Lcom/google/android/gms/iid/zzak;->zzf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "google.from"

    .line 42
    invoke-virtual {v1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, ".gsf"

    .line 43
    invoke-virtual {v0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 44
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 45
    invoke-virtual {p5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_2
    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    invoke-virtual {p5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 47
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_2

    const-string v5, "gcm."

    .line 48
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 50
    :cond_4
    invoke-virtual {p3, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p3, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzl:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object p1

    const-string p2, "upstream"

    invoke-virtual {p1, v4, p2, p3}, Lcom/google/android/gms/iid/InstanceID;->zze(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    return-void

    .line 54
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzl:Landroid/content/Context;

    const-string p2, "com.google.android.gtalkservice.permission.GTALK_SERVICE"

    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 26
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing \'to\'"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->send(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method

.method public declared-synchronized unregister()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 65
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzl:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->deleteInstanceID()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 66
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAIN_THREAD"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
