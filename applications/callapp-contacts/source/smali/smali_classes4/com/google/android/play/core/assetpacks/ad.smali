.class final Lcom/google/android/play/core/assetpacks/ad;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/play/core/internal/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/ba<",
            "Lcom/google/android/play/core/assetpacks/cs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/play/core/internal/ba;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/ba<",
            "Lcom/google/android/play/core/assetpacks/cs;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/ad;->a:Lcom/google/android/play/core/internal/ba;

    return-void
.end method


# virtual methods
.method final a(ILjava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 8

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ad;->a:Lcom/google/android/play/core/internal/ba;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/ba;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/cs;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/play/core/assetpacks/cs;->b(ILjava/lang/String;Ljava/lang/String;I)Lcom/google/android/play/core/tasks/d;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    :try_start_0
    const-string v6, "Task must not be null"

    .line 1000
    invoke-static {v0, v6}, Lcom/google/android/play/core/internal/x;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/d;->a()Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/play/core/tasks/f;->a(Lcom/google/android/play/core/tasks/d;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v6, Lcom/google/android/play/core/tasks/t;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/google/android/play/core/tasks/t;-><init>([B)V

    .line 2000
    sget-object v7, Lcom/google/android/play/core/tasks/e;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v7, v6}, Lcom/google/android/play/core/tasks/d;->a(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/c;)Lcom/google/android/play/core/tasks/d;

    sget-object v7, Lcom/google/android/play/core/tasks/e;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v7, v6}, Lcom/google/android/play/core/tasks/d;->a(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/b;)Lcom/google/android/play/core/tasks/d;

    .line 3000
    iget-object v6, v6, Lcom/google/android/play/core/tasks/t;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V

    goto :goto_0

    .line 1000
    :goto_1
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v6, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v6, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v6

    :cond_1
    new-instance v0, Lcom/google/android/play/core/assetpacks/al;

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object p2, v6, v3

    aput-object p3, v6, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "Corrupted ParcelFileDescriptor, session %s packName %s sliceId %s, chunkNumber %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6, p1}, Lcom/google/android/play/core/assetpacks/al;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    new-instance p3, Lcom/google/android/play/core/assetpacks/al;

    const-string p4, "Extractor was interrupted while waiting for chunk file."

    invoke-direct {p3, p4, p2, p1}, Lcom/google/android/play/core/assetpacks/al;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p3

    :catch_1
    move-exception v0

    new-instance v6, Lcom/google/android/play/core/assetpacks/al;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    aput-object p2, v5, v3

    aput-object p3, v5, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v1

    const-string p2, "Error opening chunk file, session %s packName %s sliceId %s, chunkNumber %s"

    invoke-static {p2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v6, p2, v0, p1}, Lcom/google/android/play/core/assetpacks/al;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v6
.end method
