.class public final Landroidx/media2/exoplayer/external/ExoPlaybackException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:Ljava/lang/Throwable;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 148
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 149
    iput p1, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->a:I

    const/4 p1, -0x1

    .line 150
    iput p1, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->b:I

    const/4 p1, 0x0

    .line 151
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->d:Ljava/lang/Throwable;

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->c:J

    return-void
.end method

.method private constructor <init>(ILjava/lang/Throwable;I)V
    .locals 0

    .line 140
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 141
    iput p1, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->a:I

    .line 142
    iput-object p2, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->d:Ljava/lang/Throwable;

    .line 143
    iput p3, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->b:I

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->c:J

    return-void
.end method

.method public static a(Ljava/io/IOException;)Landroidx/media2/exoplayer/external/ExoPlaybackException;
    .locals 3

    .line 95
    new-instance v0, Landroidx/media2/exoplayer/external/ExoPlaybackException;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2}, Landroidx/media2/exoplayer/external/ExoPlaybackException;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static a(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;
    .locals 2

    .line 106
    new-instance v0, Landroidx/media2/exoplayer/external/ExoPlaybackException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static a(Ljava/lang/OutOfMemoryError;)Landroidx/media2/exoplayer/external/ExoPlaybackException;
    .locals 3

    .line 136
    new-instance v0, Landroidx/media2/exoplayer/external/ExoPlaybackException;

    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2}, Landroidx/media2/exoplayer/external/ExoPlaybackException;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static a(Ljava/lang/RuntimeException;)Landroidx/media2/exoplayer/external/ExoPlaybackException;
    .locals 3

    .line 116
    new-instance v0, Landroidx/media2/exoplayer/external/ExoPlaybackException;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2}, Landroidx/media2/exoplayer/external/ExoPlaybackException;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method
