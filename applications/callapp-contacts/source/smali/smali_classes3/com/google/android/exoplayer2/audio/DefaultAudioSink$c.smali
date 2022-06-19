.class final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/aa;

.field public final b:Z

.field public final c:J

.field public final d:J


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/aa;ZJJ)V
    .locals 0

    .line 1824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1825
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->a:Lcom/google/android/exoplayer2/aa;

    .line 1826
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->b:Z

    .line 1827
    iput-wide p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->c:J

    .line 1828
    iput-wide p5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->d:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/aa;ZJJLcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V
    .locals 0

    .line 1809
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;-><init>(Lcom/google/android/exoplayer2/aa;ZJJ)V

    return-void
.end method
