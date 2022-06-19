.class final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:J

.field private c:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 2145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2146
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->b:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2151
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->a:Ljava/lang/Exception;

    if-nez v2, :cond_0

    .line 2152
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->a:Ljava/lang/Exception;

    .line 2153
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->b:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->c:J

    .line 2155
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->c:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 2156
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->a:Ljava/lang/Exception;

    if-eq v0, p1, :cond_1

    .line 2158
    invoke-virtual {v0, p1}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 2160
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->a:Ljava/lang/Exception;

    const/4 v0, 0x0

    .line 3167
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->a:Ljava/lang/Exception;

    .line 2162
    throw p1

    :cond_2
    return-void
.end method
