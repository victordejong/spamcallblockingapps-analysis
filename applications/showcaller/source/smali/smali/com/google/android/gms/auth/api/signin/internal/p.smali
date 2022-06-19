.class public final Lcom/google/android/gms/auth/api/signin/internal/p;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@19.0.0"


# static fields
.field private static a:Lcom/google/android/gms/auth/api/signin/internal/p;


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
    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/b;->b(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/p;->b:Lcom/google/android/gms/auth/api/signin/internal/b;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/b;->c()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/p;->c:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/p;->b:Lcom/google/android/gms/auth/api/signin/internal/b;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/b;->d()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/p;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/p;
    .locals 1

    const-class v0, Lcom/google/android/gms/auth/api/signin/internal/p;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/internal/p;->d(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/p;

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

.method private static declared-synchronized d(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/p;
    .locals 2

    const-class v0, Lcom/google/android/gms/auth/api/signin/internal/p;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/auth/api/signin/internal/p;->a:Lcom/google/android/gms/auth/api/signin/internal/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    return-object v1

    .line 3
    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/android/gms/auth/api/signin/internal/p;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/api/signin/internal/p;-><init>(Landroid/content/Context;)V

    .line 4
    sput-object v1, Lcom/google/android/gms/auth/api/signin/internal/p;->a:Lcom/google/android/gms/auth/api/signin/internal/p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/p;->b:Lcom/google/android/gms/auth/api/signin/internal/b;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/b;->a()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/p;->c:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/p;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/p;->b:Lcom/google/android/gms/auth/api/signin/internal/b;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/auth/api/signin/internal/b;->f(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/internal/p;->c:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/p;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/p;->c:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
