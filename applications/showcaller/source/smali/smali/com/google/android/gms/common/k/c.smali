.class public Lcom/google/android/gms/common/k/c;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# static fields
.field private static a:Lcom/google/android/gms/common/k/c;


# instance fields
.field private b:Lcom/google/android/gms/common/k/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/k/c;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/common/k/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/k/c;->a:Lcom/google/android/gms/common/k/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/k/c;->b:Lcom/google/android/gms/common/k/b;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/common/k/b;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/k/c;->a:Lcom/google/android/gms/common/k/c;

    .line 1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/k/c;->b(Landroid/content/Context;)Lcom/google/android/gms/common/k/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized b(Landroid/content/Context;)Lcom/google/android/gms/common/k/b;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/k/c;->b:Lcom/google/android/gms/common/k/b;

    if-nez v0, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/k/b;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/android/gms/common/k/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/common/k/c;->b:Lcom/google/android/gms/common/k/b;

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/k/c;->b:Lcom/google/android/gms/common/k/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
