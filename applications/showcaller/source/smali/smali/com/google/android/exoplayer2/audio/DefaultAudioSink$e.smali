.class public Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private final a:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field private final b:Lcom/google/android/exoplayer2/audio/v;

.field private final c:Lcom/google/android/exoplayer2/audio/x;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->a:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/audio/v;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/audio/v;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->b:Lcom/google/android/exoplayer2/audio/v;

    .line 5
    new-instance v2, Lcom/google/android/exoplayer2/audio/x;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/audio/x;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->c:Lcom/google/android/exoplayer2/audio/x;

    .line 6
    array-length v3, p1

    aput-object v1, v0, v3

    .line 7
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    aput-object v2, v0, p1

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/l0;)Lcom/google/android/exoplayer2/l0;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->b:Lcom/google/android/exoplayer2/audio/v;

    iget-boolean v1, p1, Lcom/google/android/exoplayer2/l0;->d:Z

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/v;->w(Z)V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/l0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->c:Lcom/google/android/exoplayer2/audio/x;

    iget v2, p1, Lcom/google/android/exoplayer2/l0;->b:F

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/x;->j(F)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->c:Lcom/google/android/exoplayer2/audio/x;

    iget v3, p1, Lcom/google/android/exoplayer2/l0;->c:F

    .line 4
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/audio/x;->i(F)F

    move-result v2

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/l0;->d:Z

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/l0;-><init>(FFZ)V

    return-object v0
.end method

.method public b(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->c:Lcom/google/android/exoplayer2/audio/x;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/audio/x;->h(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->b:Lcom/google/android/exoplayer2/audio/v;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/v;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()[Lcom/google/android/exoplayer2/audio/AudioProcessor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->a:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    return-object v0
.end method
