.class final Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/audio/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)V
    .locals 0

    .line 1263
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$d;->a:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;)V
    .locals 0

    .line 1263
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$d;-><init>(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)V

    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 10

    .line 1322
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$d;->a:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->d(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)Landroidx/media2/exoplayer/external/audio/AudioSink$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1323
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$d;->a:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->e(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)J

    move-result-wide v2

    sub-long v8, v0, v2

    .line 1324
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$d;->a:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->d(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)Landroidx/media2/exoplayer/external/audio/AudioSink$a;

    move-result-object v4

    move v5, p1

    move-wide v6, p2

    invoke-interface/range {v4 .. v9}, Landroidx/media2/exoplayer/external/audio/AudioSink$a;->a(IJJ)V

    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 2

    .line 1317
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ignoring impossibly large audio latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioTrack"

    invoke-static {p2, p1}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(JJJJ)V
    .locals 6

    .line 1271
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$d;->a:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    .line 1281
    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->b(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$d;->a:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    .line 1283
    invoke-static {v2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->c(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xb6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1284
    sget-boolean p2, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->b:Z

    if-nez p2, :cond_0

    const-string p2, "AudioTrack"

    .line 1287
    invoke-static {p2, p1}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1285
    :cond_0
    new-instance p2, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;)V

    throw p2
.end method

.method public final b(JJJJ)V
    .locals 6

    .line 1296
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$d;->a:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    .line 1306
    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->b(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$d;->a:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    .line 1308
    invoke-static {v2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->c(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xb4

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1309
    sget-boolean p2, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->b:Z

    if-nez p2, :cond_0

    const-string p2, "AudioTrack"

    .line 1312
    invoke-static {p2, p1}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1310
    :cond_0
    new-instance p2, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;)V

    throw p2
.end method
