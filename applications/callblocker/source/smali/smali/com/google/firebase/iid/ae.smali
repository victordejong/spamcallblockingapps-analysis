.class public final Lcom/google/firebase/iid/ae;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.5"


# static fields
.field private static final a:J

.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/google/android/gms/c/a;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "WakeLockHolder.syncObject"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/iid/ae;->a:J

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/ae;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 6

    .prologue
    .line 1
    sget-object v1, Lcom/google/firebase/iid/ae;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/google/firebase/iid/ae;->c:Lcom/google/android/gms/c/a;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/gms/c/a;

    const/4 v2, 0x1

    const-string/jumbo v3, "wake:com.google.firebase.iid.WakeLockHolder"

    invoke-direct {v0, p0, v2, v3}, Lcom/google/android/gms/c/a;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 5
    sput-object v0, Lcom/google/firebase/iid/ae;->c:Lcom/google/android/gms/c/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/c/a;->a(Z)V

    .line 7
    :cond_0
    const-string/jumbo v0, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 9
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/firebase/iid/ae;->a(Landroid/content/Intent;Z)V

    .line 10
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    const/4 v0, 0x0

    monitor-exit v1

    .line 15
    :goto_0
    return-object v0

    .line 13
    :cond_1
    if-nez v2, :cond_2

    .line 14
    sget-object v2, Lcom/google/firebase/iid/ae;->c:Lcom/google/android/gms/c/a;

    sget-wide v4, Lcom/google/firebase/iid/ae;->a:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/c/a;->a(J)V

    .line 15
    :cond_2
    monitor-exit v1

    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Landroid/content/Intent;Z)V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 18
    return-void
.end method
