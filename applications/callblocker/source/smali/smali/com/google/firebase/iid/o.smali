.class public final Lcom/google/firebase/iid/o;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.5"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private d:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private e:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/iid/o;->e:I

    .line 3
    iput-object p1, p0, Lcom/google/firebase/iid/o;->a:Landroid/content/Context;

    .line 4
    return-void
.end method

.method private final a(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4

    .prologue
    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/iid/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string/jumbo v1, "FirebaseInstanceId"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Failed to find package "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/google/firebase/b;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p0}, Lcom/google/firebase/b;->c()Lcom/google/firebase/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/d;->c()Ljava/lang/String;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-object v0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/b;->c()Lcom/google/firebase/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string/jumbo v2, "1:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 38
    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    move-object v0, v1

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 42
    goto :goto_0
.end method

.method private final declared-synchronized f()V
    .locals 2

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/iid/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/o;->a(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/iid/o;->b:Ljava/lang/String;

    .line 58
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/iid/o;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/iid/o;->b()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized b()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 6
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/firebase/iid/o;->e:I

    if-eqz v1, :cond_0

    .line 7
    iget v0, p0, Lcom/google/firebase/iid/o;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :goto_0
    monitor-exit p0

    return v0

    .line 8
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/firebase/iid/o;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 9
    const-string/jumbo v2, "com.google.android.c2dm.permission.SEND"

    const-string/jumbo v3, "com.google.android.gms"

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 10
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 11
    const-string/jumbo v1, "FirebaseInstanceId"

    const-string/jumbo v2, "Google Play services missing or without correct permission."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 13
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/common/util/m;->k()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    const-string/jumbo v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 17
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firebase/iid/o;->e:I

    .line 19
    iget v0, p0, Lcom/google/firebase/iid/o;->e:I

    goto :goto_0

    .line 20
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.google.iid.TOKEN_REQUEST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    const-string/jumbo v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 24
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/firebase/iid/o;->e:I

    .line 25
    iget v0, p0, Lcom/google/firebase/iid/o;->e:I

    goto :goto_0

    .line 26
    :cond_3
    const-string/jumbo v0, "FirebaseInstanceId"

    const-string/jumbo v1, "Failed to resolve IID implementation package, falling back"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {}, Lcom/google/android/gms/common/util/m;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/firebase/iid/o;->e:I

    .line 30
    :goto_1
    iget v0, p0, Lcom/google/firebase/iid/o;->e:I

    goto :goto_0

    .line 29
    :cond_4
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firebase/iid/o;->e:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/iid/o;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/google/firebase/iid/o;->f()V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/o;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/iid/o;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/google/firebase/iid/o;->f()V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/o;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()I
    .locals 1

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/firebase/iid/o;->d:I

    if-nez v0, :cond_0

    .line 51
    const-string/jumbo v0, "com.google.android.gms"

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/o;->a(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/google/firebase/iid/o;->d:I

    .line 54
    :cond_0
    iget v0, p0, Lcom/google/firebase/iid/o;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
