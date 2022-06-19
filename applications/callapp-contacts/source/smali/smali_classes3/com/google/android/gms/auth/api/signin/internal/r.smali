.class public final Lcom/google/android/gms/auth/api/signin/internal/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/auth/api/signin/internal/r;


# instance fields
.field private b:Lcom/google/android/gms/auth/api/signin/internal/b;

.field private c:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private d:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/b;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/r;->b:Lcom/google/android/gms/auth/api/signin/internal/b;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/b;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/r;->c:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/r;->b:Lcom/google/android/gms/auth/api/signin/internal/b;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/b;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/r;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/r;
    .locals 1

    const-class v0, Lcom/google/android/gms/auth/api/signin/internal/r;

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/internal/r;->b(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/r;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/r;
    .locals 2

    const-class v0, Lcom/google/android/gms/auth/api/signin/internal/r;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lcom/google/android/gms/auth/api/signin/internal/r;->a:Lcom/google/android/gms/auth/api/signin/internal/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 8
    monitor-exit v0

    return-object v1

    .line 9
    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/android/gms/auth/api/signin/internal/r;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/api/signin/internal/r;-><init>(Landroid/content/Context;)V

    .line 10
    sput-object v1, Lcom/google/android/gms/auth/api/signin/internal/r;->a:Lcom/google/android/gms/auth/api/signin/internal/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/r;->b:Lcom/google/android/gms/auth/api/signin/internal/b;

    iget-object v1, v0, Lcom/google/android/gms/auth/api/signin/internal/b;->a:Ljava/util/concurrent/locks/Lock;

    .line 1001
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, v0, Lcom/google/android/gms/auth/api/signin/internal/b;->b:Landroid/content/SharedPreferences;

    .line 1002
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1004
    :try_start_2
    iget-object v0, v0, Lcom/google/android/gms/auth/api/signin/internal/b;->a:Ljava/util/concurrent/locks/Lock;

    .line 1003
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/r;->c:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/r;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 1002
    :try_start_3
    iget-object v0, v0, Lcom/google/android/gms/auth/api/signin/internal/b;->a:Ljava/util/concurrent/locks/Lock;

    .line 1003
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1004
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 4

    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/r;->b:Lcom/google/android/gms/auth/api/signin/internal/b;

    .line 2001
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2002
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "defaultGoogleSignInAccount"

    .line 2003
    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zac()Ljava/lang/String;

    move-result-object v2

    .line 2004
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2006
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2007
    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zac()Ljava/lang/String;

    move-result-object v1

    const-string v2, "googleSignInAccount"

    .line 2008
    invoke-static {v2, v1}, Lcom/google/android/gms/auth/api/signin/internal/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zad()Ljava/lang/String;

    move-result-object v3

    .line 2009
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/auth/api/signin/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "googleSignInOptions"

    .line 2010
    invoke-static {v2, v1}, Lcom/google/android/gms/auth/api/signin/internal/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zab()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/internal/r;->c:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/r;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1

    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/r;->c:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 1

    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/r;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
