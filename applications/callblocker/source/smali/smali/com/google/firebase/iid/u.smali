.class final Lcom/google/firebase/iid/u;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.5"


# static fields
.field private static a:I

.field private static b:Landroid/app/PendingIntent;


# instance fields
.field private final c:Landroidx/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/g",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tasks/h",
            "<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "responseCallbacks"
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/firebase/iid/o;

.field private f:Landroid/os/Messenger;

.field private g:Landroid/os/Messenger;

.field private h:Lcom/google/firebase/iid/as;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    sput v0, Lcom/google/firebase/iid/u;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/iid/o;)V
    .locals 3

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/b/g;

    invoke-direct {v0}, Landroidx/b/g;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/u;->c:Landroidx/b/g;

    .line 3
    iput-object p1, p0, Lcom/google/firebase/iid/u;->d:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/firebase/iid/u;->e:Lcom/google/firebase/iid/o;

    .line 5
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/firebase/iid/x;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/firebase/iid/x;-><init>(Lcom/google/firebase/iid/u;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/firebase/iid/u;->f:Landroid/os/Messenger;

    .line 7
    return-void
.end method

.method private static declared-synchronized a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    const-class v1, Lcom/google/firebase/iid/u;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/google/firebase/iid/u;->a:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/google/firebase/iid/u;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 65
    const-class v1, Lcom/google/firebase/iid/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/firebase/iid/u;->b:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 67
    const-string/jumbo v2, "com.google.example.invalidpackage"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/iid/u;->b:Landroid/app/PendingIntent;

    .line 69
    :cond_0
    const-string/jumbo v0, "app"

    sget-object v2, Lcom/google/firebase/iid/u;->b:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v1

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final a(Landroid/os/Message;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x3

    .line 8
    if-eqz p1, :cond_12

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/content/Intent;

    if-eqz v0, :cond_12

    .line 9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 10
    new-instance v1, Lcom/google/firebase/iid/as$a;

    invoke-direct {v1}, Lcom/google/firebase/iid/as$a;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 11
    const-string/jumbo v1, "google.messenger"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    const-string/jumbo v1, "google.messenger"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 13
    instance-of v0, v1, Lcom/google/firebase/iid/as;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 14
    check-cast v0, Lcom/google/firebase/iid/as;

    iput-object v0, p0, Lcom/google/firebase/iid/u;->h:Lcom/google/firebase/iid/as;

    .line 15
    :cond_0
    instance-of v0, v1, Landroid/os/Messenger;

    if-eqz v0, :cond_1

    .line 16
    check-cast v1, Landroid/os/Messenger;

    iput-object v1, p0, Lcom/google/firebase/iid/u;->g:Landroid/os/Messenger;

    .line 17
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 18
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 19
    const-string/jumbo v2, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 20
    const-string/jumbo v0, "FirebaseInstanceId"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    const-string/jumbo v2, "FirebaseInstanceId"

    const-string/jumbo v3, "Unexpected response action: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_2
    :goto_1
    return-void

    .line 21
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_4
    const-string/jumbo v1, "registration_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    if-nez v1, :cond_5

    .line 25
    const-string/jumbo v1, "unregistered"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    :cond_5
    if-nez v1, :cond_f

    .line 28
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    if-nez v2, :cond_6

    .line 30
    const-string/jumbo v1, "FirebaseInstanceId"

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x31

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Unexpected response, no error or registration id "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 32
    :cond_6
    const-string/jumbo v1, "FirebaseInstanceId"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 33
    const-string/jumbo v3, "FirebaseInstanceId"

    const-string/jumbo v4, "Received InstanceID error "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_7
    const-string/jumbo v1, "|"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 36
    const-string/jumbo v1, "\\|"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 37
    array-length v3, v1

    if-le v3, v8, :cond_8

    const-string/jumbo v3, "ID"

    aget-object v4, v1, v7

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 38
    :cond_8
    const-string/jumbo v1, "FirebaseInstanceId"

    const-string/jumbo v3, "Unexpected structured response "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 33
    :cond_9
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 38
    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 40
    :cond_b
    aget-object v2, v1, v8

    .line 41
    aget-object v1, v1, v6

    .line 42
    const-string/jumbo v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 43
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 44
    :cond_c
    const-string/jumbo v3, "error"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/google/firebase/iid/u;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 46
    :cond_d
    iget-object v3, p0, Lcom/google/firebase/iid/u;->c:Landroidx/b/g;

    monitor-enter v3

    .line 47
    const/4 v1, 0x0

    move v2, v1

    :goto_4
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/iid/u;->c:Landroidx/b/g;

    invoke-virtual {v1}, Landroidx/b/g;->size()I

    move-result v1

    if-ge v2, v1, :cond_e

    .line 48
    iget-object v1, p0, Lcom/google/firebase/iid/u;->c:Landroidx/b/g;

    invoke-virtual {v1, v2}, Landroidx/b/g;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/google/firebase/iid/u;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 49
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    .line 50
    :cond_e
    monitor-exit v3

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 51
    :cond_f
    const-string/jumbo v2, "\\|ID\\|([^|]+)\\|:?+(.*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 52
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_11

    .line 54
    const-string/jumbo v0, "FirebaseInstanceId"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    const-string/jumbo v2, "FirebaseInstanceId"

    const-string/jumbo v3, "Unexpected response string: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_10
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 57
    :cond_11
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 60
    const-string/jumbo v3, "registration_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, v1, v0}, Lcom/google/firebase/iid/u;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 63
    :cond_12
    const-string/jumbo v0, "FirebaseInstanceId"

    const-string/jumbo v1, "Dropping invalid message"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/google/firebase/iid/u;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/u;->a(Landroid/os/Message;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 71
    iget-object v1, p0, Lcom/google/firebase/iid/u;->c:Landroidx/b/g;

    monitor-enter v1

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/iid/u;->c:Landroidx/b/g;

    invoke-virtual {v0, p1}, Landroidx/b/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/h;

    .line 73
    if-nez v0, :cond_1

    .line 74
    const-string/jumbo v2, "FirebaseInstanceId"

    const-string/jumbo v3, "Missing callback for "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    monitor-exit v1

    .line 77
    :goto_1
    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 76
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/google/android/gms/tasks/h;->a(Ljava/lang/Object;)V

    .line 77
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private final b(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/u;->c(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    const-string/jumbo v1, "google.messenger"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/u;->c(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    const-string/jumbo v1, "google.messenger"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 97
    :cond_0
    return-object v0
.end method

.method private final c(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 99
    invoke-static {}, Lcom/google/firebase/iid/u;->a()Ljava/lang/String;

    move-result-object v1

    .line 100
    new-instance v0, Lcom/google/android/gms/tasks/h;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/h;-><init>()V

    .line 101
    iget-object v2, p0, Lcom/google/firebase/iid/u;->c:Landroidx/b/g;

    monitor-enter v2

    .line 102
    :try_start_0
    iget-object v3, p0, Lcom/google/firebase/iid/u;->c:Landroidx/b/g;

    invoke-virtual {v3, v1, v0}, Landroidx/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v2, p0, Lcom/google/firebase/iid/u;->e:Lcom/google/firebase/iid/o;

    invoke-virtual {v2}, Lcom/google/firebase/iid/o;->b()I

    move-result v2

    if-nez v2, :cond_0

    .line 106
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "MISSING_INSTANCEID_SERVICE"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 107
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 108
    const-string/jumbo v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object v3, p0, Lcom/google/firebase/iid/u;->e:Lcom/google/firebase/iid/o;

    invoke-virtual {v3}, Lcom/google/firebase/iid/o;->b()I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 110
    const-string/jumbo v3, "com.google.iid.TOKEN_REQUEST"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    :goto_0
    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 113
    iget-object v3, p0, Lcom/google/firebase/iid/u;->d:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/google/firebase/iid/u;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 115
    const-string/jumbo v3, "kid"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "|ID|"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string/jumbo v3, "FirebaseInstanceId"

    invoke-static {v3, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    const-string/jumbo v3, "FirebaseInstanceId"

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Sending "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_1
    const-string/jumbo v3, "google.messenger"

    iget-object v4, p0, Lcom/google/firebase/iid/u;->f:Landroid/os/Messenger;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 119
    iget-object v3, p0, Lcom/google/firebase/iid/u;->g:Landroid/os/Messenger;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/firebase/iid/u;->h:Lcom/google/firebase/iid/as;

    if-eqz v3, :cond_5

    .line 120
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 121
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 122
    :try_start_2
    iget-object v4, p0, Lcom/google/firebase/iid/u;->g:Landroid/os/Messenger;

    if-eqz v4, :cond_4

    .line 123
    iget-object v4, p0, Lcom/google/firebase/iid/u;->g:Landroid/os/Messenger;

    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 132
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/h;->a()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    const-wide/16 v2, 0x7530

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/tasks/j;->a(Lcom/google/android/gms/tasks/g;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 133
    iget-object v2, p0, Lcom/google/firebase/iid/u;->c:Landroidx/b/g;

    monitor-enter v2

    .line 134
    :try_start_4
    iget-object v3, p0, Lcom/google/firebase/iid/u;->c:Landroidx/b/g;

    invoke-virtual {v3, v1}, Landroidx/b/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 136
    return-object v0

    .line 111
    :cond_3
    const-string/jumbo v3, "com.google.android.c2dm.intent.REGISTER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 124
    :cond_4
    :try_start_5
    iget-object v4, p0, Lcom/google/firebase/iid/u;->h:Lcom/google/firebase/iid/as;

    invoke-virtual {v4, v3}, Lcom/google/firebase/iid/as;->a(Landroid/os/Message;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 127
    :catch_0
    move-exception v3

    const-string/jumbo v3, "FirebaseInstanceId"

    invoke-static {v3, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 128
    const-string/jumbo v3, "FirebaseInstanceId"

    const-string/jumbo v4, "Messenger failed, fallback to startService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_5
    iget-object v3, p0, Lcom/google/firebase/iid/u;->e:Lcom/google/firebase/iid/o;

    invoke-virtual {v3}, Lcom/google/firebase/iid/o;->b()I

    move-result v3

    if-ne v3, v7, :cond_6

    .line 130
    iget-object v3, p0, Lcom/google/firebase/iid/u;->d:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 131
    :cond_6
    iget-object v3, p0, Lcom/google/firebase/iid/u;->d:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 135
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 138
    :catch_1
    move-exception v0

    :goto_2
    :try_start_7
    const-string/jumbo v0, "FirebaseInstanceId"

    const-string/jumbo v2, "No response"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "TIMEOUT"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 142
    :catchall_2
    move-exception v0

    iget-object v2, p0, Lcom/google/firebase/iid/u;->c:Landroidx/b/g;

    monitor-enter v2

    .line 143
    :try_start_8
    iget-object v3, p0, Lcom/google/firebase/iid/u;->c:Landroidx/b/g;

    invoke-virtual {v3, v1}, Landroidx/b/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 145
    throw v0

    .line 140
    :catch_2
    move-exception v0

    .line 141
    :try_start_9
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 144
    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    .line 138
    :catch_3
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method final a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/firebase/iid/u;->e:Lcom/google/firebase/iid/o;

    invoke-virtual {v0}, Lcom/google/firebase/iid/o;->e()I

    move-result v0

    const v1, 0xb71b00

    if-lt v0, v1, :cond_2

    .line 79
    iget-object v0, p0, Lcom/google/firebase/iid/u;->d:Landroid/content/Context;

    .line 80
    invoke-static {v0}, Lcom/google/firebase/iid/d;->a(Landroid/content/Context;)Lcom/google/firebase/iid/d;

    move-result-object v0

    const/4 v1, 0x1

    .line 81
    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/iid/d;->a(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    .line 82
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/tasks/j;->a(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    :goto_1
    const-string/jumbo v1, "FirebaseInstanceId"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const-string/jumbo v1, "FirebaseInstanceId"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Error making request: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/google/firebase/iid/zzam;

    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/zzam;

    .line 88
    invoke-virtual {v0}, Lcom/google/firebase/iid/zzam;->a()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 89
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/u;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 91
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/u;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 83
    :catch_1
    move-exception v0

    goto :goto_1
.end method
