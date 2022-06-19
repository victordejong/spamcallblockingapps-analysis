.class public final synthetic Lcom/google/android/play/core/appupdate/x;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/android/play/core/appupdate/z;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/z;
    .locals 3

    const-class v0, Lcom/google/android/play/core/appupdate/x;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/play/core/appupdate/x;->a:Lcom/google/android/play/core/appupdate/z;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/play/core/appupdate/y;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/play/core/appupdate/y;-><init>([B)V

    new-instance v2, Lcom/google/android/play/core/appupdate/i;

    invoke-static {p0}, Lcom/google/android/play/core/splitcompat/q;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/google/android/play/core/appupdate/i;-><init>(Landroid/content/Context;)V

    .line 1000
    iput-object v2, v1, Lcom/google/android/play/core/appupdate/y;->a:Lcom/google/android/play/core/appupdate/i;

    .line 2000
    iget-object p0, v1, Lcom/google/android/play/core/appupdate/y;->a:Lcom/google/android/play/core/appupdate/i;

    const-class v2, Lcom/google/android/play/core/appupdate/i;

    invoke-static {p0, v2}, Lcom/google/android/play/core/internal/ah;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance p0, Lcom/google/android/play/core/appupdate/z;

    iget-object v1, v1, Lcom/google/android/play/core/appupdate/y;->a:Lcom/google/android/play/core/appupdate/i;

    invoke-direct {p0, v1}, Lcom/google/android/play/core/appupdate/z;-><init>(Lcom/google/android/play/core/appupdate/i;)V

    sput-object p0, Lcom/google/android/play/core/appupdate/x;->a:Lcom/google/android/play/core/appupdate/z;

    :cond_0
    sget-object p0, Lcom/google/android/play/core/appupdate/x;->a:Lcom/google/android/play/core/appupdate/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
