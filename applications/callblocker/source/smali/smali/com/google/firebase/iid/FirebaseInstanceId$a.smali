.class final Lcom/google/firebase/iid/FirebaseInstanceId$a;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.5"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/iid/FirebaseInstanceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private b:Z

.field private final c:Lcom/google/firebase/a/d;

.field private d:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private e:Lcom/google/firebase/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/a/b",
            "<",
            "Lcom/google/firebase/a;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private f:Ljava/lang/Boolean;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/a/d;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->c:Lcom/google/firebase/a/d;

    .line 3
    return-void
.end method

.method private final declared-synchronized b()V
    .locals 3

    .prologue
    .line 4
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 12
    :goto_0
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId$a;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->b:Z

    .line 7
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId$a;->c()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->f:Ljava/lang/Boolean;

    .line 8
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->b:Z

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Lcom/google/firebase/iid/az;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/az;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId$a;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->e:Lcom/google/firebase/a/b;

    .line 10
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->c:Lcom/google/firebase/a/d;

    const-class v1, Lcom/google/firebase/a;

    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->e:Lcom/google/firebase/a/b;

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/a/d;->a(Ljava/lang/Class;Lcom/google/firebase/a/b;)V

    .line 11
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final c()Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 32
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v0

    .line 33
    const-string/jumbo v1, "com.google.firebase.messaging"

    .line 34
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 35
    const-string/jumbo v2, "auto_init"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const-string/jumbo v0, "auto_init"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    .line 37
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_1

    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    .line 41
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "firebase_messaging_auto_init_enabled"

    .line 43
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "firebase_messaging_auto_init_enabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 47
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final d()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    :try_start_0
    const-string/jumbo v2, "com.google.firebase.messaging.FirebaseMessaging"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 51
    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v2

    .line 52
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.google.firebase.MESSAGING_EVENT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 55
    if-eqz v2, :cond_1

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method final declared-synchronized a()Z
    .locals 1

    .prologue
    .line 13
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId$a;->b()V

    .line 14
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 17
    :goto_0
    monitor-exit p0

    return v0

    .line 16
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/b;->e()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 17
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
