.class public Lcom/google/android/gms/wearable/WearableListenerService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/google/android/gms/wearable/a$a;
.implements Lcom/google/android/gms/wearable/f$a;
.implements Lcom/google/android/gms/wearable/k$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wearable/WearableListenerService$d;,
        Lcom/google/android/gms/wearable/WearableListenerService$c;,
        Lcom/google/android/gms/wearable/WearableListenerService$b;,
        Lcom/google/android/gms/wearable/WearableListenerService$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/ComponentName;

.field private b:Lcom/google/android/gms/wearable/WearableListenerService$c;

.field private c:Landroid/os/IBinder;

.field private d:Landroid/content/Intent;

.field private e:Landroid/os/Looper;

.field private final f:Ljava/lang/Object;

.field private g:Z

.field private h:Lcom/google/android/gms/wearable/internal/l;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->f:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/android/gms/wearable/internal/l;

    new-instance v1, Lcom/google/android/gms/wearable/WearableListenerService$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/wearable/WearableListenerService$a;-><init>(Lcom/google/android/gms/wearable/WearableListenerService;Lcom/google/android/gms/wearable/y;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/wearable/internal/l;-><init>(Lcom/google/android/gms/wearable/ChannelClient$a;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->h:Lcom/google/android/gms/wearable/internal/l;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wearable/WearableListenerService;)Landroid/content/ComponentName;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->a:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/wearable/WearableListenerService;)Landroid/content/Intent;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->d:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/wearable/WearableListenerService;)Lcom/google/android/gms/wearable/internal/l;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->h:Lcom/google/android/gms/wearable/internal/l;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/wearable/WearableListenerService;)Ljava/lang/Object;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->f:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/wearable/WearableListenerService;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->g:Z

    return p0
.end method

.method static synthetic f(Lcom/google/android/gms/wearable/WearableListenerService;)Lcom/google/android/gms/wearable/WearableListenerService$c;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->b:Lcom/google/android/gms/wearable/WearableListenerService$c;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/Channel;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/Channel;II)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/c;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/m;)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/android/gms/wearable/Channel;II)V
    .locals 0

    return-void
.end method

.method public final c(Lcom/google/android/gms/wearable/Channel;II)V
    .locals 0

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 23
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.google.android.gms.wearable.BIND_LISTENER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/wearable/WearableListenerService;->c:Landroid/os/IBinder;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 4
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 5
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->a:Landroid/content/ComponentName;

    const-string v0, "WearableLS"

    const/4 v1, 0x3

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->a:Landroid/content/ComponentName;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "onCreate: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_0
    new-instance v0, Lcom/google/android/gms/wearable/WearableListenerService$c;

    .line 1026
    iget-object v1, p0, Lcom/google/android/gms/wearable/WearableListenerService;->e:Landroid/os/Looper;

    if-nez v1, :cond_1

    .line 1027
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "WearableListenerService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1029
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/wearable/WearableListenerService;->e:Landroid/os/Looper;

    .line 1030
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/wearable/WearableListenerService;->e:Landroid/os/Looper;

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/wearable/WearableListenerService$c;-><init>(Lcom/google/android/gms/wearable/WearableListenerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->b:Lcom/google/android/gms/wearable/WearableListenerService$c;

    .line 9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.wearable.BIND_LISTENER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->d:Landroid/content/Intent;

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/wearable/WearableListenerService;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 11
    new-instance v0, Lcom/google/android/gms/wearable/WearableListenerService$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/wearable/WearableListenerService$d;-><init>(Lcom/google/android/gms/wearable/WearableListenerService;Lcom/google/android/gms/wearable/y;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->c:Landroid/os/IBinder;

    return-void
.end method

.method public onDestroy()V
    .locals 5

    const-string v0, "WearableLS"

    const/4 v1, 0x3

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->a:Landroid/content/ComponentName;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "onDestroy: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 16
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/wearable/WearableListenerService;->g:Z

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/wearable/WearableListenerService;->b:Lcom/google/android/gms/wearable/WearableListenerService$c;

    if-eqz v1, :cond_1

    .line 2012
    invoke-virtual {v1}, Lcom/google/android/gms/wearable/WearableListenerService$c;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    const-string v2, "quit"

    .line 2013
    invoke-virtual {v1, v2}, Lcom/google/android/gms/wearable/WearableListenerService$c;->a(Ljava/lang/String;)V

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    .line 18
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object v2, p0, Lcom/google/android/gms/wearable/WearableListenerService;->a:Landroid/content/ComponentName;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x6f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onDestroy: mServiceHandler not set, did you override onCreate() but forget to call super.onCreate()? component="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
