.class public final Lcom/bumptech/glide/load/engine/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/b/i$b;,
        Lcom/bumptech/glide/load/engine/b/i$a;,
        Lcom/bumptech/glide/load/engine/b/i$c;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field private final d:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/b/i$a;)V
    .locals 6

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-object v0, p1, Lcom/bumptech/glide/load/engine/b/i$a;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b/i;->d:Landroid/content/Context;

    .line 39
    iget-object v0, p1, Lcom/bumptech/glide/load/engine/b/i$a;->c:Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/b/i;->a(Landroid/app/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget v0, p1, Lcom/bumptech/glide/load/engine/b/i$a;->i:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 41
    :cond_0
    iget v0, p1, Lcom/bumptech/glide/load/engine/b/i$a;->i:I

    :goto_0
    iput v0, p0, Lcom/bumptech/glide/load/engine/b/i;->c:I

    .line 42
    iget-object v1, p1, Lcom/bumptech/glide/load/engine/b/i$a;->c:Landroid/app/ActivityManager;

    iget v2, p1, Lcom/bumptech/glide/load/engine/b/i$a;->g:F

    iget v3, p1, Lcom/bumptech/glide/load/engine/b/i$a;->h:F

    .line 1102
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v4

    mul-int/lit16 v4, v4, 0x400

    mul-int/lit16 v4, v4, 0x400

    .line 1103
    invoke-static {v1}, Lcom/bumptech/glide/load/engine/b/i;->a(Landroid/app/ActivityManager;)Z

    move-result v1

    int-to-float v4, v4

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    mul-float v4, v4, v2

    .line 1104
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 46
    iget-object v2, p1, Lcom/bumptech/glide/load/engine/b/i$a;->d:Lcom/bumptech/glide/load/engine/b/i$c;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/b/i$c;->a()I

    move-result v2

    .line 47
    iget-object v3, p1, Lcom/bumptech/glide/load/engine/b/i$a;->d:Lcom/bumptech/glide/load/engine/b/i$c;

    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/b/i$c;->b()I

    move-result v3

    mul-int v2, v2, v3

    mul-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    .line 50
    iget v3, p1, Lcom/bumptech/glide/load/engine/b/i$a;->f:F

    mul-float v3, v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 52
    iget v4, p1, Lcom/bumptech/glide/load/engine/b/i$a;->e:F

    mul-float v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v4, v1, v0

    add-int v5, v2, v3

    if-gt v5, v4, :cond_2

    .line 56
    iput v2, p0, Lcom/bumptech/glide/load/engine/b/i;->b:I

    .line 57
    iput v3, p0, Lcom/bumptech/glide/load/engine/b/i;->a:I

    goto :goto_1

    :cond_2
    int-to-float v2, v4

    .line 59
    iget v3, p1, Lcom/bumptech/glide/load/engine/b/i$a;->f:F

    iget v4, p1, Lcom/bumptech/glide/load/engine/b/i$a;->e:F

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    .line 60
    iget v3, p1, Lcom/bumptech/glide/load/engine/b/i$a;->e:F

    mul-float v3, v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/bumptech/glide/load/engine/b/i;->b:I

    .line 61
    iget v3, p1, Lcom/bumptech/glide/load/engine/b/i$a;->f:F

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/bumptech/glide/load/engine/b/i;->a:I

    :goto_1
    const/4 v2, 0x3

    const-string v3, "MemorySizeCalculator"

    .line 64
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Calculation complete, Calculated memory cache size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/bumptech/glide/load/engine/b/i;->b:I

    .line 69
    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/engine/b/i;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pool size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bumptech/glide/load/engine/b/i;->a:I

    .line 71
    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/engine/b/i;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", byte array size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/b/i;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", memory class limited? "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v5, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", max size: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/b/i;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", memoryClass: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/bumptech/glide/load/engine/b/i$a;->c:Landroid/app/ActivityManager;

    .line 79
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isLowMemoryDevice: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/bumptech/glide/load/engine/b/i$a;->c:Landroid/app/ActivityManager;

    .line 81
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/b/i;->a(Landroid/app/ActivityManager;)Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_4
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/i;->d:Landroid/content/Context;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static a(Landroid/app/ActivityManager;)Z
    .locals 2

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 119
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
