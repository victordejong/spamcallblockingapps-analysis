.class public final Landroidx/media2/player/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/media2/player/i;


# instance fields
.field private final b:J

.field private final c:J

.field private final d:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 43
    new-instance v6, Landroidx/media2/player/i;

    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media2/player/i;-><init>(JJF)V

    sput-object v6, Landroidx/media2/player/i;->a:Landroidx/media2/player/i;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 90
    iput-wide v0, p0, Landroidx/media2/player/i;->b:J

    .line 91
    iput-wide v0, p0, Landroidx/media2/player/i;->c:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 92
    iput v0, p0, Landroidx/media2/player/i;->d:F

    return-void
.end method

.method constructor <init>(JJF)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-wide p1, p0, Landroidx/media2/player/i;->b:J

    .line 78
    iput-wide p3, p0, Landroidx/media2/player/i;->c:J

    .line 79
    iput p5, p0, Landroidx/media2/player/i;->d:F

    return-void
.end method

.method constructor <init>(Landroid/media/MediaTimestamp;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/media/MediaTimestamp;->getAnchorMediaTimeUs()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/player/i;->b:J

    .line 85
    invoke-virtual {p1}, Landroid/media/MediaTimestamp;->getAnchorSytemNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/player/i;->c:J

    .line 86
    invoke-virtual {p1}, Landroid/media/MediaTimestamp;->getMediaClockRate()F

    move-result p1

    iput p1, p0, Landroidx/media2/player/i;->d:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    check-cast p1, Landroidx/media2/player/i;

    .line 105
    iget-wide v2, p0, Landroidx/media2/player/i;->b:J

    iget-wide v4, p1, Landroidx/media2/player/i;->b:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Landroidx/media2/player/i;->c:J

    iget-wide v4, p1, Landroidx/media2/player/i;->c:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Landroidx/media2/player/i;->d:F

    iget p1, p1, Landroidx/media2/player/i;->d:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 112
    iget-wide v0, p0, Landroidx/media2/player/i;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    int-to-long v0, v0

    .line 113
    iget-wide v2, p0, Landroidx/media2/player/i;->c:J

    add-long/2addr v0, v2

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    int-to-float v0, v1

    .line 114
    iget v1, p0, Landroidx/media2/player/i;->d:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{AnchorMediaTimeUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/media2/player/i;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AnchorSystemNanoTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/media2/player/i;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ClockRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/player/i;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
