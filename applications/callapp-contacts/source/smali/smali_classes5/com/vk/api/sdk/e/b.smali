.class public final Lcom/vk/api/sdk/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/api/sdk/e/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB-\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0016\u001a\u00020\u0014J\u0006\u0010\u0017\u001a\u00020\u0018J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0006H\u0002J\u0008\u0010\u001b\u001a\u00020\u0014H\u0007R\u001e\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u000e\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\r@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/vk/api/sdk/utils/ExponentialBackoff;",
        "",
        "minDelayMs",
        "",
        "maxDelayMs",
        "factor",
        "",
        "jitter",
        "(JJFF)V",
        "<set-?>",
        "delayMs",
        "getDelayMs",
        "()J",
        "",
        "errorsCount",
        "getErrorsCount",
        "()I",
        "random",
        "Ljava/util/Random;",
        "increase",
        "",
        "onError",
        "reset",
        "shouldWait",
        "",
        "variance",
        "std",
        "waitIfNeeded",
        "Companion",
        "libapi-sdk-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final d:Lcom/vk/api/sdk/e/b$a;


# instance fields
.field public volatile a:J

.field public volatile b:I

.field public final c:J

.field private final e:Ljava/util/Random;

.field private final f:J

.field private final g:F

.field private final h:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/api/sdk/e/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/api/sdk/e/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/api/sdk/e/b;->d:Lcom/vk/api/sdk/e/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/vk/api/sdk/e/b;-><init>(JJFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJFF)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/vk/api/sdk/e/b;->c:J

    iput-wide p3, p0, Lcom/vk/api/sdk/e/b;->f:J

    iput p5, p0, Lcom/vk/api/sdk/e/b;->g:F

    iput p6, p0, Lcom/vk/api/sdk/e/b;->h:F

    .line 39
    new-instance p3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    invoke-direct {p3, p4, p5}, Ljava/util/Random;-><init>(J)V

    iput-object p3, p0, Lcom/vk/api/sdk/e/b;->e:Ljava/util/Random;

    .line 42
    iput-wide p1, p0, Lcom/vk/api/sdk/e/b;->a:J

    return-void
.end method

.method public synthetic constructor <init>(JJFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 33
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    .line 34
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    const/high16 p5, 0x40000000    # 2.0f

    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_0

    :cond_2
    move v5, p5

    :goto_0
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    const p6, 0x3dcccccd    # 0.1f

    const v6, 0x3dcccccd    # 0.1f

    goto :goto_1

    :cond_3
    move v6, p6

    :goto_1
    move-object v0, p0

    .line 36
    invoke-direct/range {v0 .. v6}, Lcom/vk/api/sdk/e/b;-><init>(JJFF)V

    return-void
.end method

.method private final a(F)J
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/vk/api/sdk/e/b;->e:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    float-to-double v2, p1

    mul-double v0, v0, v2

    double-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 49
    iget v0, p0, Lcom/vk/api/sdk/e/b;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 4

    .line 66
    iget-wide v0, p0, Lcom/vk/api/sdk/e/b;->a:J

    long-to-float v0, v0

    iget v1, p0, Lcom/vk/api/sdk/e/b;->g:F

    mul-float v0, v0, v1

    iget-wide v1, p0, Lcom/vk/api/sdk/e/b;->f:J

    long-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/vk/api/sdk/e/b;->a:J

    .line 67
    iget-wide v0, p0, Lcom/vk/api/sdk/e/b;->a:J

    iget-wide v2, p0, Lcom/vk/api/sdk/e/b;->a:J

    long-to-float v2, v2

    iget v3, p0, Lcom/vk/api/sdk/e/b;->h:F

    mul-float v2, v2, v3

    invoke-direct {p0, v2}, Lcom/vk/api/sdk/e/b;->a(F)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vk/api/sdk/e/b;->a:J

    .line 68
    iget v0, p0, Lcom/vk/api/sdk/e/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vk/api/sdk/e/b;->b:I

    return-void
.end method
