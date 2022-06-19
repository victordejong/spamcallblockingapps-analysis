.class public abstract Lcom/google/android/gms/common/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method public static a()I
    .locals 1

    sget v0, Lcom/google/android/gms/common/internal/g;->a:I

    return v0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/g;
    .locals 2

    sget-object v0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/internal/g;->c:Lcom/google/android/gms/common/internal/g;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/internal/bo;

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/bo;-><init>(Landroid/content/Context;)V

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
.method protected abstract a(Lcom/google/android/gms/common/internal/bk;Landroid/content/ServiceConnection;)V
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    new-instance p5, Lcom/google/android/gms/common/internal/bk;

    invoke-direct {p5, p1, p2, p3, p6}, Lcom/google/android/gms/common/internal/bk;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p0, p5, p4}, Lcom/google/android/gms/common/internal/g;->a(Lcom/google/android/gms/common/internal/bk;Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public final a(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/bk;

    .line 1000
    sget v1, Lcom/google/android/gms/common/internal/g;->a:I

    .line 2
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/internal/bk;-><init>(Landroid/content/ComponentName;I)V

    .line 1
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/gms/common/internal/g;->a(Lcom/google/android/gms/common/internal/bk;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected abstract a(Lcom/google/android/gms/common/internal/bk;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
.end method

.method public final b(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p3, Lcom/google/android/gms/common/internal/bk;

    .line 2000
    sget v0, Lcom/google/android/gms/common/internal/g;->a:I

    .line 2
    invoke-direct {p3, p1, v0}, Lcom/google/android/gms/common/internal/bk;-><init>(Landroid/content/ComponentName;I)V

    .line 1
    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/common/internal/g;->a(Lcom/google/android/gms/common/internal/bk;Landroid/content/ServiceConnection;)V

    return-void
.end method
