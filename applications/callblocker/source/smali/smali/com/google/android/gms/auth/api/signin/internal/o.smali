.class public final Lcom/google/android/gms/auth/api/signin/internal/o;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@18.0.0"


# static fields
.field private static a:Lcom/google/android/gms/auth/api/signin/internal/o;


# instance fields
.field private b:Lcom/google/android/gms/auth/api/signin/internal/c;

.field private c:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private d:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/auth/api/signin/internal/o;->a:Lcom/google/android/gms/auth/api/signin/internal/o;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/c;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/o;->b:Lcom/google/android/gms/auth/api/signin/internal/c;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/o;->b:Lcom/google/android/gms/auth/api/signin/internal/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/c;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/o;->c:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/o;->b:Lcom/google/android/gms/auth/api/signin/internal/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/c;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/o;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 5
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/o;
    .locals 2

    .prologue
    .line 6
    const-class v1, Lcom/google/android/gms/auth/api/signin/internal/o;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/o;->b(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/o;
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

.method private static declared-synchronized b(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/o;
    .locals 2

    .prologue
    .line 7
    const-class v1, Lcom/google/android/gms/auth/api/signin/internal/o;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/o;->a:Lcom/google/android/gms/auth/api/signin/internal/o;

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/o;->a:Lcom/google/android/gms/auth/api/signin/internal/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_0
    monitor-exit v1

    return-object v0

    .line 9
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/o;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/signin/internal/o;-><init>(Landroid/content/Context;)V

    .line 10
    sput-object v0, Lcom/google/android/gms/auth/api/signin/internal/o;->a:Lcom/google/android/gms/auth/api/signin/internal/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 12
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/o;->b:Lcom/google/android/gms/auth/api/signin/internal/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/c;->d()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/o;->c:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/o;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1

    .prologue
    .line 16
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/o;->b:Lcom/google/android/gms/auth/api/signin/internal/c;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/auth/api/signin/internal/c;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 17
    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/internal/o;->c:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/o;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1

    .prologue
    .line 20
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/o;->c:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
