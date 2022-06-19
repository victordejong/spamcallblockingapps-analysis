.class public Lcom/google/android/material/a/i;
.super Ljava/lang/Object;
.source "MotionTiming.java"


# instance fields
.field private a:J

.field private b:J

.field private c:Landroid/animation/TimeInterpolator;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(JJ)V
    .locals 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/material/a/i;->a:J

    .line 31
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/google/android/material/a/i;->b:J

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/a/i;->c:Landroid/animation/TimeInterpolator;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/a/i;->d:I

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/material/a/i;->e:I

    .line 40
    iput-wide p1, p0, Lcom/google/android/material/a/i;->a:J

    .line 41
    iput-wide p3, p0, Lcom/google/android/material/a/i;->b:J

    .line 42
    return-void
.end method

.method public constructor <init>(JJLandroid/animation/TimeInterpolator;)V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/material/a/i;->a:J

    .line 31
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/google/android/material/a/i;->b:J

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/a/i;->c:Landroid/animation/TimeInterpolator;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/a/i;->d:I

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/material/a/i;->e:I

    .line 45
    iput-wide p1, p0, Lcom/google/android/material/a/i;->a:J

    .line 46
    iput-wide p3, p0, Lcom/google/android/material/a/i;->b:J

    .line 47
    iput-object p5, p0, Lcom/google/android/material/a/i;->c:Landroid/animation/TimeInterpolator;

    .line 48
    return-void
.end method

.method static a(Landroid/animation/ValueAnimator;)Lcom/google/android/material/a/i;
    .locals 7

    .prologue
    .line 83
    new-instance v1, Lcom/google/android/material/a/i;

    .line 85
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getStartDelay()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    invoke-static {p0}, Lcom/google/android/material/a/i;->b(Landroid/animation/ValueAnimator;)Landroid/animation/TimeInterpolator;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/a/i;-><init>(JJLandroid/animation/TimeInterpolator;)V

    .line 86
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    iput v0, v1, Lcom/google/android/material/a/i;->d:I

    .line 87
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v0

    iput v0, v1, Lcom/google/android/material/a/i;->e:I

    .line 88
    return-object v1
.end method

.method private static b(Landroid/animation/ValueAnimator;)Landroid/animation/TimeInterpolator;
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    .line 103
    instance-of v1, v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    if-nez v1, :cond_0

    if-nez v0, :cond_2

    .line 104
    :cond_0
    sget-object v0, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    .line 110
    :cond_1
    :goto_0
    return-object v0

    .line 105
    :cond_2
    instance-of v1, v0, Landroid/view/animation/AccelerateInterpolator;

    if-eqz v1, :cond_3

    .line 106
    sget-object v0, Lcom/google/android/material/a/a;->c:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 107
    :cond_3
    instance-of v1, v0, Landroid/view/animation/DecelerateInterpolator;

    if-eqz v1, :cond_1

    .line 108
    sget-object v0, Lcom/google/android/material/a/a;->d:Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/google/android/material/a/i;->a:J

    return-wide v0
.end method

.method public a(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/android/material/a/i;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/material/a/i;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 53
    invoke-virtual {p0}, Lcom/google/android/material/a/i;->c()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 54
    instance-of v0, p1, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 55
    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/google/android/material/a/i;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 56
    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/google/android/material/a/i;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 58
    :cond_0
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/google/android/material/a/i;->b:J

    return-wide v0
.end method

.method public c()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/material/a/i;->c:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/a/i;->c:Landroid/animation/TimeInterpolator;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/google/android/material/a/i;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/google/android/material/a/i;->e:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 116
    if-ne p0, p1, :cond_1

    .line 117
    const/4 v0, 0x1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    instance-of v1, p1, Lcom/google/android/material/a/i;

    if-eqz v1, :cond_0

    .line 123
    check-cast p1, Lcom/google/android/material/a/i;

    .line 125
    invoke-virtual {p0}, Lcom/google/android/material/a/i;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/material/a/i;->a()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/google/android/material/a/i;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/material/a/i;->b()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/google/android/material/a/i;->d()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/material/a/i;->d()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/google/android/material/a/i;->e()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/material/a/i;->e()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/google/android/material/a/i;->c()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/material/a/i;->c()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 142
    invoke-virtual {p0}, Lcom/google/android/material/a/i;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/material/a/i;->a()J

    move-result-wide v2

    ushr-long/2addr v2, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 143
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/material/a/i;->b()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/material/a/i;->b()J

    move-result-wide v4

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 144
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/material/a/i;->c()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/material/a/i;->d()I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/material/a/i;->e()I

    move-result v1

    add-int/2addr v0, v1

    .line 147
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string/jumbo v1, " delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p0}, Lcom/google/android/material/a/i;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 160
    const-string/jumbo v1, " duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p0}, Lcom/google/android/material/a/i;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 162
    const-string/jumbo v1, " interpolator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p0}, Lcom/google/android/material/a/i;->c()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    const-string/jumbo v1, " repeatCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p0}, Lcom/google/android/material/a/i;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    const-string/jumbo v1, " repeatMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p0}, Lcom/google/android/material/a/i;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
