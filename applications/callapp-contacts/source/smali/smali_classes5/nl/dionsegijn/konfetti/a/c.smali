.class public final Lnl/dionsegijn/konfetti/a/c;
.super Lnl/dionsegijn/konfetti/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/dionsegijn/konfetti/a/c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u000c\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004H\u0016J\u0008\u0010\u0011\u001a\u00020\u000fH\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0013H\u0002J\u0008\u0010\u0015\u001a\u00020\u0013H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lnl/dionsegijn/konfetti/emitters/StreamEmitter;",
        "Lnl/dionsegijn/konfetti/emitters/Emitter;",
        "()V",
        "amountPerMs",
        "",
        "createParticleMs",
        "elapsedTime",
        "emittingTime",
        "",
        "maxParticles",
        "",
        "particlesCreated",
        "build",
        "particlesPerSecond",
        "createConfetti",
        "",
        "deltaTime",
        "createParticle",
        "isFinished",
        "",
        "isTimeElapsed",
        "reachedMaxParticles",
        "Companion",
        "konfetti_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final b:J

.field public static final c:Lnl/dionsegijn/konfetti/a/c$a;


# instance fields
.field private d:I

.field private e:I

.field private f:J

.field private g:F

.field private h:F

.field private i:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnl/dionsegijn/konfetti/a/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnl/dionsegijn/konfetti/a/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lnl/dionsegijn/konfetti/a/c;->c:Lnl/dionsegijn/konfetti/a/c$a;

    const-wide/16 v0, -0x2

    .line 19
    sput-wide v0, Lnl/dionsegijn/konfetti/a/c;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lnl/dionsegijn/konfetti/a/a;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lnl/dionsegijn/konfetti/a/c;->d:I

    return-void
.end method

.method public static synthetic a(Lnl/dionsegijn/konfetti/a/c;IJ)Lnl/dionsegijn/konfetti/a/c;
    .locals 0

    const/4 p1, -0x1

    .line 1045
    iput p1, p0, Lnl/dionsegijn/konfetti/a/c;->d:I

    .line 1046
    iput-wide p2, p0, Lnl/dionsegijn/konfetti/a/c;->f:J

    const p1, 0x3ca3d70a    # 0.02f

    .line 1047
    iput p1, p0, Lnl/dionsegijn/konfetti/a/c;->h:F

    return-object p0
.end method


# virtual methods
.method public final a(F)V
    .locals 9

    .line 56
    iget v0, p0, Lnl/dionsegijn/konfetti/a/c;->i:F

    add-float/2addr v0, p1

    iput v0, p0, Lnl/dionsegijn/konfetti/a/c;->i:F

    .line 59
    iget v1, p0, Lnl/dionsegijn/konfetti/a/c;->h:F

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_5

    .line 1083
    iget-wide v2, p0, Lnl/dionsegijn/konfetti/a/c;->f:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmp-long v8, v2, v4

    if-eqz v8, :cond_0

    .line 1085
    sget-wide v4, Lnl/dionsegijn/konfetti/a/c;->b:J

    cmp-long v8, v2, v4

    if-eqz v8, :cond_0

    .line 1086
    iget v4, p0, Lnl/dionsegijn/konfetti/a/c;->g:F

    long-to-float v2, v2

    cmpl-float v2, v4, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_5

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 62
    new-instance v1, Lkotlin/f/c;

    invoke-direct {v1, v7, v0}, Lkotlin/f/c;-><init>(II)V

    check-cast v1, Ljava/lang/Iterable;

    .line 115
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lkotlin/a/ag;

    invoke-virtual {v1}, Lkotlin/a/ag;->a()I

    .line 2098
    iget v1, p0, Lnl/dionsegijn/konfetti/a/c;->e:I

    iget v2, p0, Lnl/dionsegijn/konfetti/a/c;->d:I

    if-le v7, v2, :cond_2

    goto :goto_2

    :cond_2
    if-lt v1, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 2074
    iput v1, p0, Lnl/dionsegijn/konfetti/a/c;->e:I

    .line 3014
    iget-object v1, p0, Lnl/dionsegijn/konfetti/a/a;->a:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_1

    .line 2075
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_1

    .line 64
    :cond_4
    iget v0, p0, Lnl/dionsegijn/konfetti/a/c;->i:F

    iget v1, p0, Lnl/dionsegijn/konfetti/a/c;->h:F

    rem-float/2addr v0, v1

    iput v0, p0, Lnl/dionsegijn/konfetti/a/c;->i:F

    .line 67
    :cond_5
    iget v0, p0, Lnl/dionsegijn/konfetti/a/c;->g:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Lnl/dionsegijn/konfetti/a/c;->g:F

    return-void
.end method

.method public final a()Z
    .locals 7

    .line 108
    iget-wide v0, p0, Lnl/dionsegijn/konfetti/a/c;->f:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    iget v4, p0, Lnl/dionsegijn/konfetti/a/c;->g:F

    long-to-float v0, v0

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_0

    return v2

    :cond_0
    return v3

    .line 109
    :cond_1
    sget-wide v4, Lnl/dionsegijn/konfetti/a/c;->b:J

    cmp-long v6, v0, v4

    if-eqz v6, :cond_2

    .line 110
    iget v0, p0, Lnl/dionsegijn/konfetti/a/c;->e:I

    iget v1, p0, Lnl/dionsegijn/konfetti/a/c;->d:I

    if-lt v0, v1, :cond_2

    return v2

    :cond_2
    return v3
.end method
