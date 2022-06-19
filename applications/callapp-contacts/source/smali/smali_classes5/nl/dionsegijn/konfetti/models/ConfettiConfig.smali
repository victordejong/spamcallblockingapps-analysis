.class public final Lnl/dionsegijn/konfetti/models/ConfettiConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u001f\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001BA\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\nJ\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010 \u001a\u00020\u0003H\u00c6\u0003JE\u0010!\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\"\u001a\u00020\u00032\u0008\u0010#\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010$\u001a\u00020%H\u00d6\u0001J\t\u0010&\u001a\u00020\'H\u00d6\u0001R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0008\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000eR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000c\"\u0004\u0008\u0016\u0010\u000eR\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u000c\"\u0004\u0008\u0018\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0010\"\u0004\u0008\u001a\u0010\u0012\u00a8\u0006("
    }
    d2 = {
        "Lnl/dionsegijn/konfetti/models/ConfettiConfig;",
        "",
        "fadeOut",
        "",
        "timeToLive",
        "",
        "rotate",
        "accelerate",
        "delay",
        "speedDensityIndependent",
        "(ZJZZJZ)V",
        "getAccelerate",
        "()Z",
        "setAccelerate",
        "(Z)V",
        "getDelay",
        "()J",
        "setDelay",
        "(J)V",
        "getFadeOut",
        "setFadeOut",
        "getRotate",
        "setRotate",
        "getSpeedDensityIndependent",
        "setSpeedDensityIndependent",
        "getTimeToLive",
        "setTimeToLive",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "konfetti_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private accelerate:Z

.field private delay:J

.field private fadeOut:Z

.field private rotate:Z

.field private speedDensityIndependent:Z

.field private timeToLive:J


# direct methods
.method public constructor <init>()V
    .locals 11

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3f

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lnl/dionsegijn/konfetti/models/ConfettiConfig;-><init>(ZJZZJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZJZZJZ)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->fadeOut:Z

    iput-wide p2, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->timeToLive:J

    iput-boolean p4, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->rotate:Z

    iput-boolean p5, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->accelerate:Z

    iput-wide p6, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->delay:J

    iput-boolean p8, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->speedDensityIndependent:Z

    return-void
.end method

.method public synthetic constructor <init>(ZJZZJZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    and-int/lit8 v1, p9, 0x2

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x7d0

    goto :goto_1

    :cond_1
    move-wide v1, p2

    :goto_1
    and-int/lit8 v3, p9, 0x4

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    move v3, p4

    :goto_2
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    move v5, p5

    :goto_3
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_4

    const-wide/16 v6, 0x0

    goto :goto_4

    :cond_4
    move-wide v6, p6

    :goto_4
    and-int/lit8 v8, p9, 0x20

    if-eqz v8, :cond_5

    goto :goto_5

    :cond_5
    move/from16 v4, p8

    :goto_5
    move-object p1, p0

    move p2, v0

    move-wide p3, v1

    move p5, v3

    move p6, v5

    move-wide/from16 p7, v6

    move/from16 p9, v4

    .line 13
    invoke-direct/range {p1 .. p9}, Lnl/dionsegijn/konfetti/models/ConfettiConfig;-><init>(ZJZZJZ)V

    return-void
.end method

.method public static synthetic copy$default(Lnl/dionsegijn/konfetti/models/ConfettiConfig;ZJZZJZILjava/lang/Object;)Lnl/dionsegijn/konfetti/models/ConfettiConfig;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->fadeOut:Z

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    iget-wide v2, v0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->timeToLive:J

    goto :goto_1

    :cond_1
    move-wide v2, p2

    :goto_1
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->rotate:Z

    goto :goto_2

    :cond_2
    move v4, p4

    :goto_2
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->accelerate:Z

    goto :goto_3

    :cond_3
    move v5, p5

    :goto_3
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_4

    iget-wide v6, v0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->delay:J

    goto :goto_4

    :cond_4
    move-wide v6, p6

    :goto_4
    and-int/lit8 v8, p9, 0x20

    if-eqz v8, :cond_5

    iget-boolean v8, v0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->speedDensityIndependent:Z

    goto :goto_5

    :cond_5
    move/from16 v8, p8

    :goto_5
    move p1, v1

    move-wide p2, v2

    move p4, v4

    move p5, v5

    move-wide p6, v6

    move/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->copy(ZJZZJZ)Lnl/dionsegijn/konfetti/models/ConfettiConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->fadeOut:Z

    return v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->timeToLive:J

    return-wide v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->rotate:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->accelerate:Z

    return v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->delay:J

    return-wide v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->speedDensityIndependent:Z

    return v0
.end method

.method public final copy(ZJZZJZ)Lnl/dionsegijn/konfetti/models/ConfettiConfig;
    .locals 10

    new-instance v9, Lnl/dionsegijn/konfetti/models/ConfettiConfig;

    move-object v0, v9

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lnl/dionsegijn/konfetti/models/ConfettiConfig;-><init>(ZJZZJZ)V

    return-object v9
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lnl/dionsegijn/konfetti/models/ConfettiConfig;

    if-eqz v0, :cond_0

    check-cast p1, Lnl/dionsegijn/konfetti/models/ConfettiConfig;

    iget-boolean v0, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->fadeOut:Z

    iget-boolean v1, p1, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->fadeOut:Z

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->timeToLive:J

    iget-wide v2, p1, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->timeToLive:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-boolean v0, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->rotate:Z

    iget-boolean v1, p1, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->rotate:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->accelerate:Z

    iget-boolean v1, p1, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->accelerate:Z

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->delay:J

    iget-wide v2, p1, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->delay:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-boolean v0, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->speedDensityIndependent:Z

    iget-boolean p1, p1, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->speedDensityIndependent:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAccelerate()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->accelerate:Z

    return v0
.end method

.method public final getDelay()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->delay:J

    return-wide v0
.end method

.method public final getFadeOut()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->fadeOut:Z

    return v0
.end method

.method public final getRotate()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->rotate:Z

    return v0
.end method

.method public final getSpeedDensityIndependent()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->speedDensityIndependent:Z

    return v0
.end method

.method public final getTimeToLive()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->timeToLive:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->fadeOut:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->timeToLive:J

    invoke-static {v2, v3}, L$r8$backportedMethods$utility$Long$1$hashCode;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->rotate:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->accelerate:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->delay:J

    invoke-static {v2, v3}, L$r8$backportedMethods$utility$Long$1$hashCode;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->speedDensityIndependent:Z

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAccelerate(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->accelerate:Z

    return-void
.end method

.method public final setDelay(J)V
    .locals 0

    .line 12
    iput-wide p1, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->delay:J

    return-void
.end method

.method public final setFadeOut(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->fadeOut:Z

    return-void
.end method

.method public final setRotate(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->rotate:Z

    return-void
.end method

.method public final setSpeedDensityIndependent(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->speedDensityIndependent:Z

    return-void
.end method

.method public final setTimeToLive(J)V
    .locals 0

    .line 9
    iput-wide p1, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->timeToLive:J

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConfettiConfig(fadeOut="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->fadeOut:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timeToLive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->timeToLive:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rotate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->rotate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", accelerate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->accelerate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->delay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", speedDensityIndependent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->speedDensityIndependent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
