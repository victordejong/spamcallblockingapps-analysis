.class public final Lcom/google/android/exoplayer2/MediaItem$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Z

.field public final d:Z

.field public final e:Z


# direct methods
.method private constructor <init>(JJZZZ)V
    .locals 0

    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1064
    iput-wide p1, p0, Lcom/google/android/exoplayer2/MediaItem$b;->a:J

    .line 1065
    iput-wide p3, p0, Lcom/google/android/exoplayer2/MediaItem$b;->b:J

    .line 1066
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/MediaItem$b;->c:Z

    .line 1067
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/MediaItem$b;->d:Z

    .line 1068
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/MediaItem$b;->e:Z

    return-void
.end method

.method synthetic constructor <init>(JJZZZLcom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0

    .line 1032
    invoke-direct/range {p0 .. p7}, Lcom/google/android/exoplayer2/MediaItem$b;-><init>(JJZZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1076
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/MediaItem$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1080
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/MediaItem$b;

    .line 1082
    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$b;->a:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/MediaItem$b;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$b;->b:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/MediaItem$b;->b:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$b;->c:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/MediaItem$b;->c:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$b;->d:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/MediaItem$b;->d:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$b;->e:Z

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/MediaItem$b;->e:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 7

    .line 1091
    iget-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$b;->a:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 1092
    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$b;->b:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 1093
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$b;->c:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 1094
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$b;->d:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 1095
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$b;->e:Z

    add-int/2addr v1, v0

    return v1
.end method
