.class public Lscala/concurrent/Lock;
.super Ljava/lang/Object;
.source "Lock.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u000192A!\u0001\u0002\u0001\u000f\t!Aj\\2l\u0015\t\u0019A!\u0001\u0006d_:\u001cWO\u001d:f]RT\u0011!B\u0001\u0006g\u000e\u000cG.Y\u0002\u0001\'\t\u0001\u0001\u0002\u0005\u0002\n\u00155\tA!\u0003\u0002\u000c\t\t1\u0011I\\=SK\u001aDQ!\u0004\u0001\u0005\u00029\ta\u0001P5oSRtD#A\u0008\u0011\u0005A\u0001Q\"\u0001\u0002\t\u000fI\u0001\u0001\u0019!C\u0001\'\u0005I\u0011M^1jY\u0006\u0014G.Z\u000b\u0002)A\u0011\u0011\"F\u0005\u0003-\u0011\u0011qAQ8pY\u0016\u000cg\u000eC\u0004\u0019\u0001\u0001\u0007I\u0011A\r\u0002\u001b\u00054\u0018-\u001b7bE2,w\u000cJ3r)\tQR\u0004\u0005\u0002\n7%\u0011A\u0004\u0002\u0002\u0005+:LG\u000fC\u0004\u001f/\u0005\u0005\t\u0019\u0001\u000b\u0002\u0007a$\u0013\u0007\u0003\u0004!\u0001\u0001\u0006K\u0001F\u0001\u000bCZ\u000c\u0017\u000e\\1cY\u0016\u0004\u0003\"\u0002\u0012\u0001\t\u0003\u0019\u0013aB1dcVL\'/\u001a\u000b\u00025!)Q\u0005\u0001C\u0001G\u00059!/\u001a7fCN,\u0007\u0006\u0002\u0001(U1\u0002\"!\u0003\u0015\n\u0005%\"!A\u00033faJ,7-\u0019;fI\u0006\n1&A\u0012Vg\u0016\u0004#.\u0019<b]U$\u0018\u000e\u001c\u0018d_:\u001cWO\u001d:f]RtCn\\2lg:bunY6\"\u00035\naA\r\u00182c9\u0012\u0004"
.end annotation


# instance fields
.field private available:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lscala/concurrent/Lock;->available:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .locals 1

    monitor-enter p0

    .line 23
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lscala/concurrent/Lock;->available()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Lscala/concurrent/Lock;->available_$eq(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 23
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public available()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lscala/concurrent/Lock;->available:Z

    return v0
.end method

.method public available_$eq(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lscala/concurrent/Lock;->available:Z

    return-void
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 28
    :try_start_0
    invoke-virtual {p0, v0}, Lscala/concurrent/Lock;->available_$eq(Z)V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
