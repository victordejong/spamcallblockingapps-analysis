.class public final Lcom/google/android/gms/internal/ads/bay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/wq;

.field private final b:Lcom/google/android/gms/common/util/e;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/wq;Lcom/google/android/gms/common/util/e;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bay;->a:Lcom/google/android/gms/internal/ads/wq;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bay;->b:Lcom/google/android/gms/common/util/e;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bay;->c:Ljava/util/concurrent/Executor;

    .line 5
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bay;[BDZ)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/bay;->a([BDZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private final a([BDZ)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 9
    .line 10
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 11
    const-wide/high16 v2, 0x4064000000000000L    # 160.0

    mul-double/2addr v2, p2

    double-to-int v0, v2

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 12
    if-nez p4, :cond_0

    .line 13
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 16
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cX:Lcom/google/android/gms/internal/ads/ect;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 21
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/bay;->a([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 23
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 24
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 25
    mul-int/2addr v2, v0

    .line 26
    if-lez v2, :cond_1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cY:Lcom/google/android/gms/internal/ads/ect;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 30
    add-int/lit8 v2, v2, -0x1

    div-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    .line 31
    rsub-int/lit8 v0, v0, 0x21

    div-int/lit8 v0, v0, 0x2

    .line 32
    shl-int v0, v4, v0

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 33
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/bay;->a([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private final a([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bay;->b:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    .line 35
    array-length v1, p1

    .line 36
    invoke-static {p1, v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 37
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bay;->b:Lcom/google/android/gms/common/util/e;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v4

    .line 38
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_1

    if-eqz v1, :cond_1

    .line 40
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 41
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 42
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v8

    sub-long v2, v4, v2

    .line 43
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/16 v4, 0x6c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Decoded image w: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " h:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " on ui thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 45
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;DZ)Lcom/google/android/gms/internal/ads/crt;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DZ)",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/wq;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/bax;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/google/android/gms/internal/ads/bax;-><init>(Lcom/google/android/gms/internal/ads/bay;DZ)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bay;->c:Ljava/util/concurrent/Executor;

    .line 8
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
