.class final Landroidx/media2/common/MediaMetadata$BitmapEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/versionedparcelable/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/common/MediaMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BitmapEntry"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    .line 1270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1271
    iput-object p1, p0, Landroidx/media2/common/MediaMetadata$BitmapEntry;->a:Ljava/lang/String;

    .line 1272
    iput-object p2, p0, Landroidx/media2/common/MediaMetadata$BitmapEntry;->b:Landroid/graphics/Bitmap;

    .line 2298
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    .line 2299
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p1

    goto :goto_0

    .line 2301
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    :goto_0
    const/high16 v0, 0x40000

    if-le p1, v0, :cond_1

    .line 1277
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1278
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const-wide/high16 v2, 0x4110000000000000L    # 262144.0

    int-to-double v4, p1

    div-double/2addr v2, v4

    .line 1280
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    int-to-double v4, v0

    mul-double v4, v4, v2

    double-to-int p1, v4

    int-to-double v4, v1

    mul-double v4, v4, v2

    double-to-int v2, v4

    .line 1283
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scaling large bitmap of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " into "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 1285
    invoke-static {p2, p1, v2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/common/MediaMetadata$BitmapEntry;->b:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method
