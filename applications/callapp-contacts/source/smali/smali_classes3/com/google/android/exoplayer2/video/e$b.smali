.class final Lcom/google/android/exoplayer2/video/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/exoplayer2/mediacodec/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/video/e;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/video/e;Lcom/google/android/exoplayer2/mediacodec/f;)V
    .locals 0

    .line 1806
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/e$b;->a:Lcom/google/android/exoplayer2/video/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1807
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/af;->a(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/e$b;->b:Landroid/os/Handler;

    .line 1808
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/mediacodec/f;->a(Lcom/google/android/exoplayer2/mediacodec/f$b;Landroid/os/Handler;)V

    return-void
.end method

.method private b(J)V
    .locals 3

    .line 1845
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/e$b;->a:Lcom/google/android/exoplayer2/video/e;

    iget-object v0, v0, Lcom/google/android/exoplayer2/video/e;->a:Lcom/google/android/exoplayer2/video/e$b;

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 1850
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/e$b;->a:Lcom/google/android/exoplayer2/video/e;

    invoke-static {p1}, Lcom/google/android/exoplayer2/video/e;->a(Lcom/google/android/exoplayer2/video/e;)V

    return-void

    .line 1853
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/e$b;->a:Lcom/google/android/exoplayer2/video/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/video/e;->e(J)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1855
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/e$b;->a:Lcom/google/android/exoplayer2/video/e;

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/video/e;->a(Lcom/google/android/exoplayer2/video/e;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 4

    .line 1820
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 1821
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/e$b;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v3, v2

    long-to-int p2, p1

    .line 1822
    invoke-static {v0, v1, v3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 1827
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/e$b;->b:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void

    .line 1829
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/video/e$b;->b(J)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1835
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1837
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/af;->b(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/video/e$b;->b(J)V

    const/4 p1, 0x1

    return p1
.end method
