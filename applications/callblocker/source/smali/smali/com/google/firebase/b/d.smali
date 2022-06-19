.class Lcom/google/firebase/b/d;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@19.3.0"


# static fields
.field private static a:Lcom/google/firebase/b/d;


# instance fields
.field private final b:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/google/firebase/b/d;->a:Lcom/google/firebase/b/d;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string/jumbo v0, "FirebaseAppHeartBeat"

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/b/d;->b:Landroid/content/SharedPreferences;

    .line 38
    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;)Lcom/google/firebase/b/d;
    .locals 2

    .prologue
    .line 47
    const-class v1, Lcom/google/firebase/b/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/firebase/b/d;->a:Lcom/google/firebase/b/d;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/google/firebase/b/d;

    invoke-direct {v0, p0}, Lcom/google/firebase/b/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/firebase/b/d;->a:Lcom/google/firebase/b/d;

    .line 50
    :cond_0
    sget-object v0, Lcom/google/firebase/b/d;->a:Lcom/google/firebase/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method declared-synchronized a(J)Z
    .locals 1

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "fire-global"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/b/d;->a(Ljava/lang/String;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;J)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/b/d;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/google/firebase/b/d;->b:Landroid/content/SharedPreferences;

    const-wide/16 v2, -0x1

    invoke-interface {v1, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long v2, p2, v2

    .line 61
    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/google/firebase/b/d;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :goto_0
    monitor-exit p0

    return v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 67
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/firebase/b/d;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
