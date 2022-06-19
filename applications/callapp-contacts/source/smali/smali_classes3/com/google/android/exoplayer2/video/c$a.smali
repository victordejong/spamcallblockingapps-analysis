.class final Lcom/google/android/exoplayer2/video/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:J

.field final c:[Z

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    new-array v0, v0, [Z

    .line 154
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/c$a;->c:[Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 158
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/c$a;->a:J

    .line 159
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/c$a;->g:J

    .line 160
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/c$a;->b:J

    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lcom/google/android/exoplayer2/video/c$a;->h:I

    .line 162
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/c$a;->c:[Z

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.method public final a(J)V
    .locals 11

    .line 186
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/c$a;->a:J

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    .line 187
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/c$a;->d:J

    goto :goto_0

    :cond_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 190
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/c$a;->d:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/c$a;->e:J

    .line 191
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/c$a;->b:J

    .line 192
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/c$a;->g:J

    goto :goto_0

    .line 194
    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer2/video/c$a;->f:J

    sub-long v4, p1, v4

    const-wide/16 v6, 0xf

    .line 1217
    rem-long/2addr v0, v6

    long-to-int v1, v0

    .line 196
    iget-wide v6, p0, Lcom/google/android/exoplayer2/video/c$a;->e:J

    sub-long v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    const/4 v0, 0x1

    cmp-long v10, v6, v8

    if-gtz v10, :cond_2

    .line 198
    iget-wide v6, p0, Lcom/google/android/exoplayer2/video/c$a;->g:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/google/android/exoplayer2/video/c$a;->g:J

    .line 199
    iget-wide v6, p0, Lcom/google/android/exoplayer2/video/c$a;->b:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/google/android/exoplayer2/video/c$a;->b:J

    .line 200
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/c$a;->c:[Z

    aget-boolean v5, v4, v1

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    .line 201
    aput-boolean v5, v4, v1

    .line 202
    iget v1, p0, Lcom/google/android/exoplayer2/video/c$a;->h:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/video/c$a;->h:I

    goto :goto_0

    .line 205
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/c$a;->c:[Z

    aget-boolean v5, v4, v1

    if-nez v5, :cond_3

    .line 206
    aput-boolean v0, v4, v1

    .line 207
    iget v1, p0, Lcom/google/android/exoplayer2/video/c$a;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/video/c$a;->h:I

    .line 212
    :cond_3
    :goto_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/c$a;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/c$a;->a:J

    .line 213
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/c$a;->f:J

    return-void
.end method

.method public final b()Z
    .locals 5

    .line 166
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/c$a;->a:J

    const-wide/16 v2, 0xf

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/video/c$a;->h:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()J
    .locals 5

    .line 182
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/c$a;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/c$a;->b:J

    div-long/2addr v2, v0

    return-wide v2
.end method
