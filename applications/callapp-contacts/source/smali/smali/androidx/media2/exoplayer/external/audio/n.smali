.class final Landroidx/media2/exoplayer/external/audio/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/n$a;
    }
.end annotation


# instance fields
.field final a:Landroidx/media2/exoplayer/external/audio/n$a;

.field b:I

.field c:J

.field d:J

.field e:J

.field f:J


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    sget v0, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 106
    new-instance v0, Landroidx/media2/exoplayer/external/audio/n$a;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/audio/n$a;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/n;->a:Landroidx/media2/exoplayer/external/audio/n$a;

    .line 107
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/n;->a()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/n;->a:Landroidx/media2/exoplayer/external/audio/n$a;

    const/4 p1, 0x3

    .line 110
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/audio/n;->a(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 220
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/n;->a:Landroidx/media2/exoplayer/external/audio/n$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/audio/n;->a(I)V

    :cond_0
    return-void
.end method

.method final a(I)V
    .locals 6

    .line 242
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/n;->b:I

    const-wide/16 v0, 0x1388

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-wide/32 v0, 0x7a120

    .line 259
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/n;->d:J

    return-void

    .line 262
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    const-wide/32 v0, 0x989680

    .line 256
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/n;->d:J

    return-void

    .line 252
    :cond_2
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/n;->d:J

    return-void

    :cond_3
    const-wide/16 v2, 0x0

    .line 246
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/audio/n;->e:J

    const-wide/16 v2, -0x1

    .line 247
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/audio/n;->f:J

    .line 248
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/audio/n;->c:J

    .line 249
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/n;->d:J

    return-void
.end method

.method public final b()J
    .locals 2

    .line 230
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/n;->a:Landroidx/media2/exoplayer/external/audio/n$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/n$a;->a()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final c()J
    .locals 2

    .line 238
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/n;->a:Landroidx/media2/exoplayer/external/audio/n$a;

    if-eqz v0, :cond_0

    .line 1312
    iget-wide v0, v0, Landroidx/media2/exoplayer/external/audio/n$a;->e:J

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
