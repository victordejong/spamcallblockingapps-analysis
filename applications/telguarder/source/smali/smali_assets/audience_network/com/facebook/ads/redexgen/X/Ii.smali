.class public final Lcom/facebook/ads/redexgen/X/Ii;
.super Landroid/os/HandlerThread;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/exoplayer2/video/DummySurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DummySurfaceThread"
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/os/Handler;
    .annotation runtime Lcom/facebook/ads/internal/checkerframework/checker/nullness/qual/MonotonicNonNull;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/I7;
    .annotation runtime Lcom/facebook/ads/internal/checkerframework/checker/nullness/qual/MonotonicNonNull;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/internal/exoplayer2/video/DummySurface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Ljava/lang/Error;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Ljava/lang/RuntimeException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ii;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ii;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 38978
    const/16 v2, 0x4d

    const/16 v1, 0xc

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ii;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 38979
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ii;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x64

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 1

    .line 38980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ii;->A01:Lcom/facebook/ads/redexgen/X/I7;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38981
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ii;->A01:Lcom/facebook/ads/redexgen/X/I7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/I7;->A09()V

    .line 38982
    return-void
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x59

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ii;->A05:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ii;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ii;->A06:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-void

    :array_0
    .array-data 1
        0xct
        0x3dt
        0x35t
        0x35t
        0x41t
        0x1bt
        0x3dt
        0x3at
        0x2et
        0x29t
        0x2bt
        0x2dt
        -0x24t
        -0x9t
        -0x1t
        0x2t
        -0x5t
        -0x6t
        -0x4at
        0xat
        0x5t
        -0x4at
        -0x1t
        0x4t
        -0x1t
        0xat
        -0x1t
        -0x9t
        0x2t
        -0x1t
        0x10t
        -0x5t
        -0x4at
        -0x6t
        0xbt
        0x3t
        0x3t
        0xft
        -0x4at
        0x9t
        0xbt
        0x8t
        -0x4t
        -0x9t
        -0x7t
        -0x5t
        -0x47t
        -0x2ct
        -0x24t
        -0x21t
        -0x28t
        -0x29t
        -0x6dt
        -0x19t
        -0x1et
        -0x6dt
        -0x1bt
        -0x28t
        -0x21t
        -0x28t
        -0x2ct
        -0x1at
        -0x28t
        -0x6dt
        -0x29t
        -0x18t
        -0x20t
        -0x20t
        -0x14t
        -0x6dt
        -0x1at
        -0x18t
        -0x1bt
        -0x27t
        -0x2ct
        -0x2at
        -0x28t
        -0x9t
        0x8t
        0x0t
        0x0t
        0xct
        -0x1at
        0x8t
        0x5t
        -0x7t
        -0xct
        -0xat
        -0x8t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "tGvuterl2bLIzCa3AeUE51M3pl3yXpq0"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TVwYGqxRlelaEKuQsI6sl0Qf2aB9wfCX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "abFHG34XIfqJhOdAMol0HIQwMRTYXL1K"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "bqIZ5SwMtHFnYSvKyG6AJE0ciRFea7ND"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZeWVMZvonM1tlDpD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "m8iH81lsbhKctWBwuPl2ztStH0oSGSul"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "I5OGaMTcQ5BUrqxKaY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jWs1F0ip1vUDOZ7AYsklwpLAAqpN0h1s"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ii;->A06:[Ljava/lang/String;

    return-void
.end method

.method private A04(I)V
    .locals 4

    .line 38983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ii;->A01:Lcom/facebook/ads/redexgen/X/I7;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38984
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ii;->A01:Lcom/facebook/ads/redexgen/X/I7;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/I7;->A0A(I)V

    .line 38985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ii;->A01:Lcom/facebook/ads/redexgen/X/I7;

    .line 38986
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/I7;->A08()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/video/DummySurface;

    invoke-direct {v0, p0, v3, v2, v1}, Lcom/facebook/ads/internal/exoplayer2/video/DummySurface;-><init>(Lcom/facebook/ads/redexgen/X/Ii;Landroid/graphics/SurfaceTexture;ZLcom/facebook/ads/redexgen/X/Ih;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ii;->A02:Lcom/facebook/ads/internal/exoplayer2/video/DummySurface;

    .line 38987
    return-void

    .line 38988
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A05(I)Lcom/facebook/ads/internal/exoplayer2/video/DummySurface;
    .locals 4

    .line 38989
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ii;->start()V

    .line 38990
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ii;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ii;->A00:Landroid/os/Handler;

    .line 38991
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ii;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/I7;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/I7;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ii;->A01:Lcom/facebook/ads/redexgen/X/I7;

    .line 38992
    const/4 v3, 0x0

    .line 38993
    .local p0, "wasInterrupted":Z
    monitor-enter p0

    .line 38994
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ii;->A00:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 38995
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ii;->A02:Lcom/facebook/ads/internal/exoplayer2/video/DummySurface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ii;->A04:Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ii;->A03:Ljava/lang/Error;

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38996
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38997
    .local p1, "e":Ljava/lang/InterruptedException;
    :catch_0
    const/4 v3, 0x1

    .end local p1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 38998
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 38999
    if-eqz v3, :cond_1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39000
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 39001
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ii;->A04:Ljava/lang/RuntimeException;

    if-nez v0, :cond_3

    .line 39002
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ii;->A03:Ljava/lang/Error;

    if-nez v0, :cond_2

    .line 39003
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ii;->A02:Lcom/facebook/ads/internal/exoplayer2/video/DummySurface;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/exoplayer2/video/DummySurface;

    return-object v0

    .line 39004
    :cond_2
    throw v0

    .line 39005
    :cond_3
    throw v0

    .line 39006
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final A06()V
    .locals 2

    .line 39007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ii;->A00:Landroid/os/Handler;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39008
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ii;->A00:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 39009
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 39010
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    .line 39011
    return v5

    .line 39012
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ii;->A01()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39013
    :catchall_0
    move-exception v4

    .line 39014
    .local p0, "e":Ljava/lang/Throwable;
    :try_start_1
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ii;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2e

    const/16 v1, 0x1f

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ii;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39015
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ii;->quit()Z

    .line 39016
    return v5

    .line 39017
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ii;->quit()Z

    .line 39018
    throw v0

    .line 39019
    :cond_1
    :try_start_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ii;->A04(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 39020
    monitor-enter p0

    .line 39021
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 39022
    monitor-exit p0

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 39023
    :catch_0
    move-exception v4

    .line 39024
    .local p0, "e":Ljava/lang/Error;
    :try_start_4
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ii;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xc

    const/16 v1, 0x22

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ii;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39025
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Ii;->A03:Ljava/lang/Error;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 39026
    .end local p0    # "e":Ljava/lang/Error;
    monitor-enter p0

    .line 39027
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 39028
    monitor-exit p0

    goto :goto_1

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    .line 39029
    :catch_1
    move-exception v4

    .line 39030
    .local p0, "e":Ljava/lang/RuntimeException;
    :try_start_6
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ii;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xc

    const/16 v1, 0x22

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ii;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39031
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Ii;->A04:Ljava/lang/RuntimeException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 39032
    .end local p0    # "e":Ljava/lang/RuntimeException;
    monitor-enter p0

    .line 39033
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 39034
    monitor-exit p0

    .line 39035
    :goto_1
    return v5

    .line 39036
    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    .line 39037
    :catchall_5
    move-exception v0

    monitor-enter p0

    .line 39038
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 39039
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 39040
    throw v0

    .line 39041
    :catchall_6
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw v0
.end method
