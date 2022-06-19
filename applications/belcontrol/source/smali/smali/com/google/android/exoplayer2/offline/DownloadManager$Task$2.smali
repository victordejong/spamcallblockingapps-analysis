.class public Lcom/google/android/exoplayer2/offline/DownloadManager$Task$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

.field public final synthetic val$finalError:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task$2;->this$0:Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task$2;->val$finalError:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task$2;->this$0:Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task$2;->val$finalError:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    const/4 v3, 0x1

    invoke-static {v0, v3, v2, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$2500(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;IILjava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task$2;->this$0:Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    const/4 v1, 0x6

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$2100(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;II)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task$2;->this$0:Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$2100(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method
