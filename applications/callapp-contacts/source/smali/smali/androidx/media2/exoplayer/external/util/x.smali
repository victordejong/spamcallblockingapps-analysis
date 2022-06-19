.class final Landroidx/media2/exoplayer/external/util/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/util/i;


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/x;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Looper;
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/x;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Landroid/os/Message;
    .locals 3

    .line 56
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/x;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final a(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 61
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/x;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/x;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final a(J)Z
    .locals 2

    .line 71
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/x;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 2

    .line 76
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/x;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final b(I)Z
    .locals 1

    .line 66
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/x;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p1

    return p1
.end method
