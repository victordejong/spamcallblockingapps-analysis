.class final Lcom/google/android/exoplayer2/util/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/k;


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ab;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/os/Message;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ab;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final a(III)Landroid/os/Message;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ab;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final a(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ab;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ab;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final a()Z
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ab;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public final a(J)Z
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ab;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Runnable;)Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ab;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ab;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final b(I)Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ab;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p1

    return p1
.end method

.method public final c()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ab;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
