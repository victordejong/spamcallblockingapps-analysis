.class public final Lcom/google/android/exoplayer2/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:J

.field d:F

.field e:J

.field f:J

.field g:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f7851ec    # 0.97f

    .line 105
    iput v0, p0, Lcom/google/android/exoplayer2/i$a;->a:F

    const v0, 0x3f83d70a    # 1.03f

    .line 106
    iput v0, p0, Lcom/google/android/exoplayer2/i$a;->b:F

    const-wide/16 v0, 0x3e8

    .line 107
    iput-wide v0, p0, Lcom/google/android/exoplayer2/i$a;->c:J

    const v0, 0x33d6bf95    # 1.0E-7f

    .line 108
    iput v0, p0, Lcom/google/android/exoplayer2/i$a;->d:F

    const-wide/16 v0, 0x14

    .line 109
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/i$a;->e:J

    const-wide/16 v0, 0x1f4

    .line 111
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/i$a;->f:J

    const v0, 0x3f7fbe77    # 0.999f

    .line 112
    iput v0, p0, Lcom/google/android/exoplayer2/i$a;->g:F

    return-void
.end method
