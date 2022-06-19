.class public abstract Lcom/google/android/gms/common/internal/g;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# static fields
.field private static a:I = 0x1081

.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/google/android/gms/common/internal/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/google/android/gms/common/internal/g;->a:I

    return v0
.end method

.method public static c(Landroid/content/Context;)Lcom/google/android/gms/common/internal/g;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/internal/g;->c:Lcom/google/android/gms/common/internal/g;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/internal/o1;

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/o1;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/common/internal/g;->c:Lcom/google/android/gms/common/internal/g;

    .line 2
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/google/android/gms/common/internal/g;->c:Lcom/google/android/gms/common/internal/g;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ServiceConnection;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/k1;

    invoke-static {}, Lcom/google/android/gms/common/internal/g;->b()I

    move-result v1

    .line 2
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/internal/k1;-><init>(Landroid/content/ComponentName;I)V

    .line 3
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/gms/common/internal/g;->f(Lcom/google/android/gms/common/internal/k1;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public d(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ServiceConnection;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/k1;

    invoke-static {}, Lcom/google/android/gms/common/internal/g;->b()I

    move-result v1

    .line 2
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/internal/k1;-><init>(Landroid/content/ComponentName;I)V

    .line 3
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/gms/common/internal/g;->g(Lcom/google/android/gms/common/internal/k1;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/ServiceConnection;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/k1;

    invoke-direct {v0, p1, p2, p3, p6}, Lcom/google/android/gms/common/internal/k1;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v0, p4, p5}, Lcom/google/android/gms/common/internal/g;->g(Lcom/google/android/gms/common/internal/k1;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract f(Lcom/google/android/gms/common/internal/k1;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
.end method

.method protected abstract g(Lcom/google/android/gms/common/internal/k1;Landroid/content/ServiceConnection;Ljava/lang/String;)V
.end method
