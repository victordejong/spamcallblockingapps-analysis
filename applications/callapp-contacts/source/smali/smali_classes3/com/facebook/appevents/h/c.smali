.class public Lcom/facebook/appevents/h/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/h/c$b;,
        Lcom/facebook/appevents/h/c$a;,
        Lcom/facebook/appevents/h/c$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "c"

.field private static b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/appevents/h/c$a;Ljava/lang/String;Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/appevents/h/c$a;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/c;",
            ">;)I"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/h/c;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 89
    :cond_0
    :try_start_0
    sget v1, Lcom/facebook/appevents/h/c$c;->b:I

    .line 91
    invoke-static {}, Lcom/facebook/appevents/f/b;->a()V

    .line 93
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v3

    .line 94
    invoke-static {v3}, Lcom/facebook/appevents/h/c;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 97
    new-instance v1, Lcom/facebook/appevents/h/c$b;

    invoke-direct {v1}, Lcom/facebook/appevents/h/c$b;-><init>()V

    const/4 v5, 0x1

    .line 98
    invoke-virtual {v3, v4, v1, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_3

    .line 1199
    :try_start_1
    iget-object v4, v1, Lcom/facebook/appevents/h/c$b;->a:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v5, 0x5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 1200
    iget-object v4, v1, Lcom/facebook/appevents/h/c$b;->b:Landroid/os/IBinder;

    if-eqz v4, :cond_2

    .line 102
    invoke-static {v4}, Lcom/facebook/ppml/a/a$a;->a(Landroid/os/IBinder;)Lcom/facebook/ppml/a/a;

    move-result-object v4

    .line 104
    invoke-static {p0, p1, p2}, Lcom/facebook/appevents/h/b;->a(Lcom/facebook/appevents/h/c$a;Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 108
    invoke-interface {v4, p0}, Lcom/facebook/ppml/a/a;->a(Landroid/os/Bundle;)I

    const-string p1, "Successfully sent events to the remote service: "

    .line 109
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/facebook/internal/ae;->a()V

    .line 111
    :cond_1
    sget p0, Lcom/facebook/appevents/h/c$c;->a:I

    goto :goto_0

    .line 113
    :cond_2
    sget p0, Lcom/facebook/appevents/h/c$c;->b:I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :goto_0
    :try_start_2
    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 120
    invoke-static {}, Lcom/facebook/internal/ae;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v1, p0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 116
    :goto_1
    :try_start_3
    sget p1, Lcom/facebook/appevents/h/c$c;->c:I

    .line 117
    sget-object p2, Lcom/facebook/appevents/h/c;->a:Ljava/lang/String;

    invoke-static {p2, p0}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    :try_start_4
    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 120
    invoke-static {}, Lcom/facebook/internal/ae;->a()V

    move v1, p1

    goto :goto_3

    .line 119
    :goto_2
    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 120
    invoke-static {}, Lcom/facebook/internal/ae;->a()V

    .line 121
    throw p0

    .line 123
    :cond_3
    sget v1, Lcom/facebook/appevents/h/c$c;->c:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    :goto_3
    return v1

    :catchall_1
    move-exception p0

    .line 127
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static a(Ljava/lang/String;)I
    .locals 4

    const-class v0, Lcom/facebook/appevents/h/c;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 65
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/h/c$a;->MOBILE_APP_INSTALL:Lcom/facebook/appevents/h/c$a;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v1, p0, v3}, Lcom/facebook/appevents/h/c;->a(Lcom/facebook/appevents/h/c$a;Ljava/lang/String;Ljava/util/List;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/c;",
            ">;)I"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/h/c;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 76
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/h/c$a;->CUSTOM_APP_EVENTS:Lcom/facebook/appevents/h/c$a;

    invoke-static {v1, p0, p1}, Lcom/facebook/appevents/h/c;->a(Lcom/facebook/appevents/h/c$a;Ljava/lang/String;Ljava/util/List;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method private static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 9

    const-string v0, "com.facebook.wakizashi"

    const-string v1, "com.facebook.katana"

    const-string v2, "ReceiverService"

    const-class v3, Lcom/facebook/appevents/h/c;

    invoke-static {v3}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return-object v5

    .line 132
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 134
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v7, 0x0

    .line 136
    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 139
    invoke-static {p0, v1}, Lcom/facebook/internal/j;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v6

    .line 142
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 147
    invoke-static {p0, v0}, Lcom/facebook/internal/j;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    return-object v1

    :cond_2
    return-object v5

    :catchall_0
    move-exception p0

    .line 154
    invoke-static {p0, v3}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v5
.end method

.method public static a()Z
    .locals 3

    const-class v0, Lcom/facebook/appevents/h/c;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 80
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/h/c;->b:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    .line 81
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v1

    .line 82
    invoke-static {v1}, Lcom/facebook/appevents/h/c;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/facebook/appevents/h/c;->b:Ljava/lang/Boolean;

    .line 84
    :cond_2
    sget-object v1, Lcom/facebook/appevents/h/c;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method
