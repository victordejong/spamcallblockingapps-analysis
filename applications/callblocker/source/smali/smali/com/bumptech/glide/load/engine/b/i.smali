.class public final Lcom/bumptech/glide/load/engine/b/i;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/b/i$b;,
        Lcom/bumptech/glide/load/engine/b/i$a;,
        Lcom/bumptech/glide/load/engine/b/i$c;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroid/content/Context;

.field private final d:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/b/i$a;)V
    .locals 6

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-object v0, p1, Lcom/bumptech/glide/load/engine/b/i$a;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b/i;->c:Landroid/content/Context;

    .line 39
    iget-object v0, p1, Lcom/bumptech/glide/load/engine/b/i$a;->c:Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/b/i;->a(Landroid/app/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget v0, p1, Lcom/bumptech/glide/load/engine/b/i$a;->i:I

    div-int/lit8 v0, v0, 0x2

    .line 41
    :goto_0
    iput v0, p0, Lcom/bumptech/glide/load/engine/b/i;->d:I

    .line 42
    iget-object v0, p1, Lcom/bumptech/glide/load/engine/b/i$a;->c:Landroid/app/ActivityManager;

    iget v1, p1, Lcom/bumptech/glide/load/engine/b/i$a;->g:F

    iget v2, p1, Lcom/bumptech/glide/load/engine/b/i$a;->h:F

    .line 43
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/engine/b/i;->a(Landroid/app/ActivityManager;FF)I

    move-result v1

    .line 46
    iget-object v0, p1, Lcom/bumptech/glide/load/engine/b/i$a;->d:Lcom/bumptech/glide/load/engine/b/i$c;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/b/i$c;->a()I

    move-result v0

    .line 47
    iget-object v2, p1, Lcom/bumptech/glide/load/engine/b/i$a;->d:Lcom/bumptech/glide/load/engine/b/i$c;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/b/i$c;->b()I

    move-result v2

    .line 48
    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x4

    .line 50
    int-to-float v2, v0

    iget v3, p1, Lcom/bumptech/glide/load/engine/b/i$a;->f:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 52
    int-to-float v0, v0

    iget v3, p1, Lcom/bumptech/glide/load/engine/b/i$a;->e:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 53
    iget v3, p0, Lcom/bumptech/glide/load/engine/b/i;->d:I

    sub-int v3, v1, v3

    .line 55
    add-int v4, v0, v2

    if-gt v4, v3, :cond_2

    .line 56
    iput v0, p0, Lcom/bumptech/glide/load/engine/b/i;->b:I

    .line 57
    iput v2, p0, Lcom/bumptech/glide/load/engine/b/i;->a:I

    .line 64
    :goto_1
    const-string/jumbo v3, "MemorySizeCalculator"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    const-string/jumbo v3, "MemorySizeCalculator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Calculation complete, Calculated memory cache size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/bumptech/glide/load/engine/b/i;->b:I

    .line 69
    invoke-direct {p0, v5}, Lcom/bumptech/glide/load/engine/b/i;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", pool size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/bumptech/glide/load/engine/b/i;->a:I

    .line 71
    invoke-direct {p0, v5}, Lcom/bumptech/glide/load/engine/b/i;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", byte array size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/bumptech/glide/load/engine/b/i;->d:I

    .line 73
    invoke-direct {p0, v5}, Lcom/bumptech/glide/load/engine/b/i;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", memory class limited? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/2addr v0, v2

    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", max size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/b/i;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", memoryClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/bumptech/glide/load/engine/b/i$a;->c:Landroid/app/ActivityManager;

    .line 79
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isLowMemoryDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/bumptech/glide/load/engine/b/i$a;->c:Landroid/app/ActivityManager;

    .line 81
    invoke-static {v1}, Lcom/bumptech/glide/load/engine/b/i;->a(Landroid/app/ActivityManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    return-void

    .line 41
    :cond_1
    iget v0, p1, Lcom/bumptech/glide/load/engine/b/i$a;->i:I

    goto/16 :goto_0

    .line 59
    :cond_2
    int-to-float v3, v3

    iget v4, p1, Lcom/bumptech/glide/load/engine/b/i$a;->f:F

    iget v5, p1, Lcom/bumptech/glide/load/engine/b/i$a;->e:F

    add-float/2addr v4, v5

    div-float/2addr v3, v4

    .line 60
    iget v4, p1, Lcom/bumptech/glide/load/engine/b/i$a;->e:F

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/bumptech/glide/load/engine/b/i;->b:I

    .line 61
    iget v4, p1, Lcom/bumptech/glide/load/engine/b/i$a;->f:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/bumptech/glide/load/engine/b/i;->a:I

    goto/16 :goto_1

    .line 73
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static a(Landroid/app/ActivityManager;FF)I
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    .line 109
    invoke-static {p0}, Lcom/bumptech/glide/load/engine/b/i;->a(Landroid/app/ActivityManager;)Z

    move-result v1

    .line 110
    int-to-float v0, v0

    if-eqz v1, :cond_0

    .line 111
    :goto_0
    mul-float/2addr v0, p2

    .line 110
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_0
    move p2, p1

    .line 111
    goto :goto_0
.end method

.method private a(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/i;->c:Landroid/content/Context;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/app/ActivityManager;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 124
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/bumptech/glide/load/engine/b/i;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/bumptech/glide/load/engine/b/i;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/bumptech/glide/load/engine/b/i;->d:I

    return v0
.end method
