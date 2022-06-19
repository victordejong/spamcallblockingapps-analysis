.class final Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final a:Landroidx/media2/exoplayer/external/ad;

.field final b:J

.field final c:J


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/ad;JJ)V
    .locals 0

    .line 1255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1256
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$c;->a:Landroidx/media2/exoplayer/external/ad;

    .line 1257
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$c;->b:J

    .line 1258
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$c;->c:J

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/ad;JJLandroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;)V
    .locals 0

    .line 1248
    invoke-direct/range {p0 .. p5}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$c;-><init>(Landroidx/media2/exoplayer/external/ad;JJ)V

    return-void
.end method
