.class public final Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

.field private final b:Landroidx/media2/exoplayer/external/audio/w;

.field private final c:Landroidx/media2/exoplayer/external/audio/y;


# direct methods
.method public varargs constructor <init>([Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V
    .locals 4

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$b;->a:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    .line 133
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    new-instance v1, Landroidx/media2/exoplayer/external/audio/w;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/audio/w;-><init>()V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$b;->b:Landroidx/media2/exoplayer/external/audio/w;

    .line 140
    new-instance v2, Landroidx/media2/exoplayer/external/audio/y;

    invoke-direct {v2}, Landroidx/media2/exoplayer/external/audio/y;-><init>()V

    iput-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$b;->c:Landroidx/media2/exoplayer/external/audio/y;

    .line 141
    array-length v3, p1

    aput-object v1, v0, v3

    .line 142
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    aput-object v2, v0, p1

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 11

    .line 161
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$b;->c:Landroidx/media2/exoplayer/external/audio/y;

    .line 2157
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/audio/y;->h:J

    const-wide/16 v3, 0x400

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    .line 2158
    iget v1, v0, Landroidx/media2/exoplayer/external/audio/y;->e:I

    iget v2, v0, Landroidx/media2/exoplayer/external/audio/y;->b:I

    if-ne v1, v2, :cond_0

    .line 2159
    iget-wide v5, v0, Landroidx/media2/exoplayer/external/audio/y;->g:J

    iget-wide v7, v0, Landroidx/media2/exoplayer/external/audio/y;->h:J

    move-wide v3, p1

    invoke-static/range {v3 .. v8}, Landroidx/media2/exoplayer/external/util/ac;->b(JJJ)J

    move-result-wide p1

    return-wide p1

    .line 2160
    :cond_0
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/audio/y;->g:J

    iget v3, v0, Landroidx/media2/exoplayer/external/audio/y;->e:I

    int-to-long v3, v3

    mul-long v7, v1, v3

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/audio/y;->h:J

    iget v0, v0, Landroidx/media2/exoplayer/external/audio/y;->b:I

    int-to-long v3, v0

    mul-long v9, v1, v3

    move-wide v5, p1

    invoke-static/range {v5 .. v10}, Landroidx/media2/exoplayer/external/util/ac;->b(JJJ)J

    move-result-wide p1

    return-wide p1

    .line 2163
    :cond_1
    iget v0, v0, Landroidx/media2/exoplayer/external/audio/y;->c:F

    float-to-double v0, v0

    long-to-double p1, p1

    mul-double v0, v0, p1

    double-to-long p1, v0

    return-wide p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/ad;)Landroidx/media2/exoplayer/external/ad;
    .locals 7

    .line 152
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$b;->b:Landroidx/media2/exoplayer/external/audio/w;

    iget-boolean v1, p1, Landroidx/media2/exoplayer/external/ad;->d:Z

    .line 1113
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/audio/w;->e:Z

    .line 1114
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/w;->h()V

    .line 153
    new-instance v0, Landroidx/media2/exoplayer/external/ad;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$b;->c:Landroidx/media2/exoplayer/external/audio/y;

    iget v2, p1, Landroidx/media2/exoplayer/external/ad;->b:F

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x41000000    # 8.0f

    .line 2110
    invoke-static {v2, v3, v4}, Landroidx/media2/exoplayer/external/util/ac;->a(FFF)F

    move-result v2

    .line 2111
    iget v5, v1, Landroidx/media2/exoplayer/external/audio/y;->c:F

    const/4 v6, 0x1

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_0

    .line 2112
    iput v2, v1, Landroidx/media2/exoplayer/external/audio/y;->c:F

    .line 2113
    iput-boolean v6, v1, Landroidx/media2/exoplayer/external/audio/y;->f:Z

    .line 2115
    :cond_0
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/audio/y;->h()V

    .line 154
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$b;->c:Landroidx/media2/exoplayer/external/audio/y;

    iget v5, p1, Landroidx/media2/exoplayer/external/ad;->c:F

    .line 2127
    invoke-static {v5, v3, v4}, Landroidx/media2/exoplayer/external/util/ac;->a(FFF)F

    move-result v3

    .line 2128
    iget v4, v1, Landroidx/media2/exoplayer/external/audio/y;->d:F

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_1

    .line 2129
    iput v3, v1, Landroidx/media2/exoplayer/external/audio/y;->d:F

    .line 2130
    iput-boolean v6, v1, Landroidx/media2/exoplayer/external/audio/y;->f:Z

    .line 2132
    :cond_1
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/audio/y;->h()V

    .line 155
    iget-boolean p1, p1, Landroidx/media2/exoplayer/external/ad;->d:Z

    invoke-direct {v0, v2, v3, p1}, Landroidx/media2/exoplayer/external/ad;-><init>(FFZ)V

    return-object v0
.end method

.method public final a()[Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    .locals 1

    .line 147
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$b;->a:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .line 166
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$b;->b:Landroidx/media2/exoplayer/external/audio/w;

    .line 3122
    iget-wide v0, v0, Landroidx/media2/exoplayer/external/audio/w;->f:J

    return-wide v0
.end method
