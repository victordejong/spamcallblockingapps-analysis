.class public final Lcom/facebook/appevents/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/b/b$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/facebook/appevents/b/f;

.field private static b:Landroid/hardware/SensorManager;

.field private static c:Lcom/facebook/appevents/b/e;

.field private static d:Ljava/lang/String;

.field private static final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile g:Ljava/lang/Boolean;

.field private static h:Lcom/facebook/appevents/b/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/facebook/appevents/b/f;

    invoke-direct {v0}, Lcom/facebook/appevents/b/f;-><init>()V

    sput-object v0, Lcom/facebook/appevents/b/b;->a:Lcom/facebook/appevents/b/f;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/appevents/b/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/appevents/b/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/facebook/appevents/b/b;->g:Ljava/lang/Boolean;

    .line 66
    new-instance v0, Lcom/facebook/appevents/b/b$1;

    invoke-direct {v0}, Lcom/facebook/appevents/b/b$1;-><init>()V

    sput-object v0, Lcom/facebook/appevents/b/b;->h:Lcom/facebook/appevents/b/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    const-class v0, Lcom/facebook/appevents/b/b;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 142
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/b/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 143
    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 5

    const-class v0, Lcom/facebook/appevents/b/b;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 75
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/b/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 79
    :cond_1
    invoke-static {}, Lcom/facebook/appevents/b/c;->a()Lcom/facebook/appevents/b/c;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v2, :cond_5

    .line 1091
    :try_start_1
    invoke-static {}, Lcom/facebook/internal/v;->b()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1094
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 1097
    iget-object v2, v1, Lcom/facebook/appevents/b/c;->b:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1098
    iget-object v2, v1, Lcom/facebook/appevents/b/c;->d:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 1099
    iget-object v2, v1, Lcom/facebook/appevents/b/c;->e:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1100
    iget-object v2, v1, Lcom/facebook/appevents/b/c;->e:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    iput-object v2, v1, Lcom/facebook/appevents/b/c;->d:Ljava/util/HashSet;

    .line 1102
    :cond_2
    invoke-static {v1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_5

    .line 1169
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 1170
    invoke-virtual {v1}, Lcom/facebook/appevents/b/c;->b()V

    goto :goto_0

    .line 1172
    :cond_3
    iget-object v2, v1, Lcom/facebook/appevents/b/c;->a:Landroid/os/Handler;

    new-instance v3, Lcom/facebook/appevents/b/c$1;

    invoke-direct {v3, v1}, Lcom/facebook/appevents/b/c$1;-><init>(Lcom/facebook/appevents/b/c;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 1180
    :try_start_3
    invoke-static {v2, v1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    goto :goto_0

    .line 1095
    :cond_4
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "Can\'t add activity to CodelessMatcher on non-UI thread"

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    .line 1103
    :try_start_4
    invoke-static {v2, v1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 81
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 82
    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {v2}, Lcom/facebook/internal/q;->a(Ljava/lang/String;)Lcom/facebook/internal/p;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 2045
    iget-boolean v4, v3, Lcom/facebook/internal/p;->g:Z

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    const-string v4, "sensor"

    .line 86
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 87
    sput-object v1, Lcom/facebook/appevents/b/b;->b:Landroid/hardware/SensorManager;

    if-nez v1, :cond_7

    return-void

    :cond_7
    const/4 v4, 0x1

    .line 91
    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 92
    new-instance v4, Lcom/facebook/appevents/b/e;

    invoke-direct {v4, p0}, Lcom/facebook/appevents/b/e;-><init>(Landroid/app/Activity;)V

    sput-object v4, Lcom/facebook/appevents/b/b;->c:Lcom/facebook/appevents/b/e;

    .line 93
    sget-object p0, Lcom/facebook/appevents/b/b;->a:Lcom/facebook/appevents/b/f;

    new-instance v4, Lcom/facebook/appevents/b/b$2;

    invoke-direct {v4, v3, v2}, Lcom/facebook/appevents/b/b$2;-><init>(Lcom/facebook/internal/p;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v2, :cond_8

    .line 3040
    :try_start_5
    iput-object v4, p0, Lcom/facebook/appevents/b/f;->a:Lcom/facebook/appevents/b/f$a;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    .line 3041
    :try_start_6
    invoke-static {v2, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 107
    :cond_8
    :goto_1
    sget-object p0, Lcom/facebook/appevents/b/b;->b:Landroid/hardware/SensorManager;

    sget-object v2, Lcom/facebook/appevents/b/b;->a:Lcom/facebook/appevents/b/f;

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    if-eqz v3, :cond_a

    .line 3045
    iget-boolean p0, v3, Lcom/facebook/internal/p;->g:Z

    if-eqz p0, :cond_a

    .line 111
    sget-object p0, Lcom/facebook/appevents/b/b;->c:Lcom/facebook/appevents/b/e;

    invoke-virtual {p0}, Lcom/facebook/appevents/b/e;->a()V

    goto :goto_3

    .line 85
    :cond_9
    :goto_2
    invoke-static {}, Lcom/facebook/appevents/b/b;->i()Z

    .line 115
    :cond_a
    :goto_3
    invoke-static {}, Lcom/facebook/appevents/b/b;->i()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    return-void

    :catchall_3
    move-exception p0

    .line 120
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static a(Ljava/lang/Boolean;)V
    .locals 2

    const-class v0, Lcom/facebook/appevents/b/b;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 233
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/b/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 234
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/facebook/appevents/b/b;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 150
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/b/b;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 153
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v1, Lcom/facebook/appevents/b/b;->g:Ljava/lang/Boolean;

    .line 155
    invoke-static {}, Lcom/facebook/g;->f()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/appevents/b/b$3;

    invoke-direct {v2, p0}, Lcom/facebook/appevents/b/b$3;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 214
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 3

    const-class v0, Lcom/facebook/appevents/b/b;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 50
    :cond_0
    :try_start_0
    sput-object p0, Lcom/facebook/appevents/b/b;->g:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static b()V
    .locals 3

    const-class v0, Lcom/facebook/appevents/b/b;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 146
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/b/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 147
    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 4

    const-class v0, Lcom/facebook/appevents/b/b;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 123
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/b/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 127
    :cond_1
    invoke-static {}, Lcom/facebook/appevents/b/c;->a()Lcom/facebook/appevents/b/c;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_3

    .line 3107
    :try_start_1
    invoke-static {}, Lcom/facebook/internal/v;->b()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 3113
    iget-object v2, v1, Lcom/facebook/appevents/b/c;->b:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3114
    iget-object v2, v1, Lcom/facebook/appevents/b/c;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3115
    iget-object v2, v1, Lcom/facebook/appevents/b/c;->e:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object v3, v1, Lcom/facebook/appevents/b/c;->d:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3116
    iget-object p0, v1, Lcom/facebook/appevents/b/c;->d:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    goto :goto_0

    .line 3111
    :cond_2
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v2, "Can\'t remove activity from CodelessMatcher on non-UI thread"

    invoke-direct {p0, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 3117
    :try_start_2
    invoke-static {p0, v1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 129
    :cond_3
    :goto_0
    sget-object p0, Lcom/facebook/appevents/b/b;->c:Lcom/facebook/appevents/b/e;

    if-eqz p0, :cond_4

    .line 130
    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v1, :cond_4

    .line 3163
    :try_start_3
    iget-object v1, p0, Lcom/facebook/appevents/b/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 3168
    iget-object v1, p0, Lcom/facebook/appevents/b/e;->c:Ljava/util/Timer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_4

    .line 3170
    :try_start_4
    iget-object v1, p0, Lcom/facebook/appevents/b/e;->c:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 3171
    iput-object v1, p0, Lcom/facebook/appevents/b/e;->c:Ljava/util/Timer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 3173
    :try_start_5
    sget-object v2, Lcom/facebook/appevents/b/e;->a:Ljava/lang/String;

    const-string v3, "Error unscheduling indexing job"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 3176
    :try_start_6
    invoke-static {v1, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 132
    :cond_4
    :goto_1
    sget-object p0, Lcom/facebook/appevents/b/b;->b:Landroid/hardware/SensorManager;

    if-eqz p0, :cond_5

    .line 133
    sget-object v1, Lcom/facebook/appevents/b/b;->a:Lcom/facebook/appevents/b/f;

    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_5
    return-void

    :catchall_2
    move-exception p0

    .line 135
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static c()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/facebook/appevents/b/b;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 221
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/b/b;->d:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 222
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/appevents/b/b;->d:Ljava/lang/String;

    .line 225
    :cond_1
    sget-object v0, Lcom/facebook/appevents/b/b;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 3

    const-class v0, Lcom/facebook/appevents/b/b;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 138
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/b/c;->a()Lcom/facebook/appevents/b/c;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    .line 4121
    :try_start_1
    iget-object v2, v1, Lcom/facebook/appevents/b/c;->e:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 4122
    :try_start_2
    invoke-static {p0, v1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    return-void

    :catchall_1
    move-exception p0

    .line 139
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static d()Z
    .locals 3

    const-class v0, Lcom/facebook/appevents/b/b;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 229
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/b/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method static synthetic e()Lcom/facebook/appevents/b/b$a;
    .locals 3

    const-class v0, Lcom/facebook/appevents/b/b;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 50
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/b/b;->h:Lcom/facebook/appevents/b/b$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static synthetic f()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 3

    const-class v0, Lcom/facebook/appevents/b/b;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 50
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/b/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/facebook/appevents/b/b;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 50
    :cond_0
    :try_start_0
    sput-object v2, Lcom/facebook/appevents/b/b;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static synthetic h()Lcom/facebook/appevents/b/e;
    .locals 3

    const-class v0, Lcom/facebook/appevents/b/b;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 50
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/b/b;->c:Lcom/facebook/appevents/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static i()Z
    .locals 2

    const-class v0, Lcom/facebook/appevents/b/b;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method
