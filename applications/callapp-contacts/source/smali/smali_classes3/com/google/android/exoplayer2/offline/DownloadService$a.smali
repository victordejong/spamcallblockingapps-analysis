.class final Lcom/google/android/exoplayer2/offline/DownloadService$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/offline/DownloadService;

.field private final b:I

.field private final c:J

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadService;IJ)V
    .locals 0

    .line 881
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$a;->a:Lcom/google/android/exoplayer2/offline/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 882
    iput p2, p0, Lcom/google/android/exoplayer2/offline/DownloadService$a;->b:I

    .line 883
    iput-wide p3, p0, Lcom/google/android/exoplayer2/offline/DownloadService$a;->c:J

    .line 884
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$a;->d:Landroid/os/Handler;

    return-void
.end method
