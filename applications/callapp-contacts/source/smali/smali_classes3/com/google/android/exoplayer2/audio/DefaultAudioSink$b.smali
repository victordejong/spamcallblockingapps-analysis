.class public final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field private final b:Lcom/google/android/exoplayer2/audio/r;

.field private final c:Lcom/google/android/exoplayer2/audio/t;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 2

    .line 149
    new-instance v0, Lcom/google/android/exoplayer2/audio/r;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/r;-><init>()V

    new-instance v1, Lcom/google/android/exoplayer2/audio/t;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/audio/t;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;-><init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;Lcom/google/android/exoplayer2/audio/r;Lcom/google/android/exoplayer2/audio/t;)V

    return-void
.end method

.method public constructor <init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;Lcom/google/android/exoplayer2/audio/r;Lcom/google/android/exoplayer2/audio/t;)V
    .locals 3

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->a:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 163
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->b:Lcom/google/android/exoplayer2/audio/r;

    .line 170
    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->c:Lcom/google/android/exoplayer2/audio/t;

    .line 171
    array-length v1, p1

    aput-object p2, v0, v1

    .line 172
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    aput-object p3, v0, p1

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 16

    move-object/from16 v0, p0

    .line 195
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->c:Lcom/google/android/exoplayer2/audio/t;

    .line 2129
    iget-wide v2, v1, Lcom/google/android/exoplayer2/audio/t;->i:J

    const-wide/16 v4, 0x400

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    .line 2130
    iget-wide v2, v1, Lcom/google/android/exoplayer2/audio/t;->h:J

    iget-object v4, v1, Lcom/google/android/exoplayer2/audio/t;->g:Lcom/google/android/exoplayer2/audio/s;

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/audio/s;

    .line 3091
    iget v5, v4, Lcom/google/android/exoplayer2/audio/s;->g:I

    iget v4, v4, Lcom/google/android/exoplayer2/audio/s;->a:I

    mul-int v5, v5, v4

    mul-int/lit8 v5, v5, 0x2

    int-to-long v4, v5

    sub-long v8, v2, v4

    .line 2131
    iget-object v2, v1, Lcom/google/android/exoplayer2/audio/t;->e:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->b:I

    iget-object v3, v1, Lcom/google/android/exoplayer2/audio/t;->d:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v3, v3, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->b:I

    if-ne v2, v3, :cond_0

    .line 2132
    iget-wide v10, v1, Lcom/google/android/exoplayer2/audio/t;->i:J

    move-wide/from16 v6, p1

    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v1

    return-wide v1

    .line 2133
    :cond_0
    iget-object v2, v1, Lcom/google/android/exoplayer2/audio/t;->e:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->b:I

    int-to-long v2, v2

    mul-long v12, v8, v2

    iget-wide v2, v1, Lcom/google/android/exoplayer2/audio/t;->i:J

    iget-object v1, v1, Lcom/google/android/exoplayer2/audio/t;->d:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->b:I

    int-to-long v4, v1

    mul-long v14, v2, v4

    move-wide/from16 v10, p1

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v1

    return-wide v1

    .line 2138
    :cond_1
    iget v1, v1, Lcom/google/android/exoplayer2/audio/t;->b:F

    float-to-double v1, v1

    move-wide/from16 v3, p1

    long-to-double v3, v3

    mul-double v1, v1, v3

    double-to-long v1, v1

    return-wide v1
.end method

.method public final a(Lcom/google/android/exoplayer2/aa;)Lcom/google/android/exoplayer2/aa;
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->c:Lcom/google/android/exoplayer2/audio/t;

    iget v1, p1, Lcom/google/android/exoplayer2/aa;->b:F

    .line 1085
    iget v2, v0, Lcom/google/android/exoplayer2/audio/t;->b:F

    const/4 v3, 0x1

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    .line 1086
    iput v1, v0, Lcom/google/android/exoplayer2/audio/t;->b:F

    .line 1087
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/audio/t;->f:Z

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->c:Lcom/google/android/exoplayer2/audio/t;

    iget v1, p1, Lcom/google/android/exoplayer2/aa;->c:F

    .line 1099
    iget v2, v0, Lcom/google/android/exoplayer2/audio/t;->c:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_1

    .line 1100
    iput v1, v0, Lcom/google/android/exoplayer2/audio/t;->c:F

    .line 1101
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/audio/t;->f:Z

    :cond_1
    return-object p1
.end method

.method public final a(Z)Z
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->b:Lcom/google/android/exoplayer2/audio/r;

    .line 1129
    iput-boolean p1, v0, Lcom/google/android/exoplayer2/audio/r;->d:Z

    return p1
.end method

.method public final a()[Lcom/google/android/exoplayer2/audio/AudioProcessor;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->a:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->b:Lcom/google/android/exoplayer2/audio/r;

    .line 3137
    iget-wide v0, v0, Lcom/google/android/exoplayer2/audio/r;->e:J

    return-wide v0
.end method
