.class public Lcom/millennialmedia/internal/utils/MediaUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;,
        Lcom/millennialmedia/internal/utils/MediaUtils$PlayVideoListener;,
        Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaUtils"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/utils/MediaUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Landroid/content/Context;Ljava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/millennialmedia/internal/utils/MediaUtils;->scanPicture(Landroid/content/Context;Ljava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;Z)V

    return-void
.end method

.method public static base64EncodeBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "image/jpg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "image/jpeg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "image/webp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const-string p1, "image/png"

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/millennialmedia/internal/utils/MediaUtils;->TAG:Ljava/lang/String;

    const-string p1, "Unable to compress bitmap for encoding"

    invoke-static {p0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";base64,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static decodeBitmapUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    return-object p1

    :catch_0
    move-exception p0

    sget-object p2, Lcom/millennialmedia/internal/utils/MediaUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bitmap file not found <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static getMimeTypeFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/millennialmedia/internal/utils/MediaUtils;->decodeBitmapUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPhotoFromCamera(Landroid/content/Context;Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;)V
    .locals 4

    if-nez p1, :cond_0

    sget-object p0, Lcom/millennialmedia/internal/utils/MediaUtils;->TAG:Ljava/lang/String;

    const-string p1, "PhotoListener is required"

    invoke-static {p0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasCamera()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "This device does not have a camera"

    invoke-interface {p1, p0}, Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getPicturesDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "Cannot access pictures directory"

    invoke-interface {p1, p0}, Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_0
    const-string v1, "CAMERA_"

    const-string v2, ".tmp"

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_3

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/utils/MediaContentProvider;->getUriForMediaContentProvider(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_4

    const-string p0, "Unable to get URI for temporary file for picture"

    invoke-interface {p1, p0}, Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "output"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v1, Lcom/millennialmedia/internal/utils/MediaUtils$3;

    invoke-direct {v1, v0, p1}, Lcom/millennialmedia/internal/utils/MediaUtils$3;-><init>(Ljava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;)V

    invoke-static {p0, v2, v1}, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->launch(Landroid/content/Context;Landroid/content/Intent;Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;)V

    return-void

    :catch_0
    const-string p0, "Unable to create temporary file for picture"

    invoke-interface {p1, p0}, Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public static getPhotoFromGallery(Landroid/content/Context;Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object p0, Lcom/millennialmedia/internal/utils/MediaUtils;->TAG:Ljava/lang/String;

    const-string p1, "PhotoListener is required"

    invoke-static {p0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/MediaUtils;->getPictureChooserIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/millennialmedia/internal/utils/MediaUtils$4;

    invoke-direct {v1, p1}, Lcom/millennialmedia/internal/utils/MediaUtils$4;-><init>(Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;)V

    invoke-static {p0, v0, v1}, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->launch(Landroid/content/Context;Landroid/content/Intent;Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;)V

    return-void
.end method

.method private static getPictureChooserIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method private static getRotationAngle(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 8

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_data"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p0, 0x0

    if-eqz v0, :cond_5

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 p0, 0x10e

    goto :goto_0

    :cond_3
    const/16 p0, 0x5a

    goto :goto_0

    :cond_4
    const/16 p0, 0xb4

    :catch_0
    :cond_5
    :goto_0
    return p0
.end method

.method public static getScaledBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;IIZZ)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/utils/MediaUtils;->decodeBitmapUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    if-eqz p5, :cond_2

    invoke-static/range {p0 .. p1}, Lcom/millennialmedia/internal/utils/MediaUtils;->getRotationAngle(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v6

    const/16 v7, 0x5a

    if-eq v6, v7, :cond_1

    const/16 v7, 0x10e

    if-ne v6, v7, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v7, p3

    move v8, v6

    move/from16 v6, p2

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v7, p2

    move v8, v6

    move/from16 v6, p3

    goto :goto_1

    :cond_2
    move/from16 v6, p2

    move/from16 v7, p3

    const/4 v8, 0x0

    :goto_1
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v3, v6, :cond_3

    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v9, v7, :cond_4

    :cond_3
    div-int/lit8 v3, v3, 0x2

    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v9, v9, 0x2

    :goto_2
    iget v10, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v11, v3, v10

    if-le v11, v6, :cond_4

    div-int v11, v9, v10

    if-le v11, v7, :cond_4

    mul-int/lit8 v10, v10, 0x2

    iput v10, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_2

    :cond_4
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    :try_start_1
    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/utils/MediaUtils;->decodeBitmapUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_d

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v3, :cond_d

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-nez v5, :cond_5

    goto/16 :goto_4

    :cond_5
    int-to-float v1, v6

    int-to-float v3, v3

    div-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    int-to-float v4, v7

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    if-eqz p4, :cond_6

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    move v4, v1

    :cond_6
    const-string v5, " x "

    cmpl-float v6, v1, v3

    if-nez v6, :cond_8

    cmpl-float v3, v4, v3

    if-nez v3, :cond_8

    if-nez v8, :cond_8

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/millennialmedia/internal/utils/MediaUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unscaled and unrotated bitmap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-object v0

    :cond_8
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    if-lez v8, :cond_a

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/millennialmedia/internal/utils/MediaUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rotating image "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " degrees"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    int-to-float v1, v8

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_a
    const/4 v12, 0x0

    const/4 v13, 0x0

    iget v14, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v15, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v17, 0x1

    move-object v11, v0

    move-object/from16 v16, v3

    invoke-static/range {v11 .. v17}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_b

    sget-object v2, Lcom/millennialmedia/internal/utils/MediaUtils;->TAG:Ljava/lang/String;

    const-string v3, "Unable to create scaled bitmap"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lcom/millennialmedia/internal/utils/MediaUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scaled and rotated bitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v1

    :cond_d
    :goto_4
    sget-object v0, Lcom/millennialmedia/internal/utils/MediaUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load bitmap <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    return-object v4
.end method

.method public static isPictureChooserAvailable()Z
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isExternalStorageReadable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/utils/MediaUtils;->getPictureChooserIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static savePicture(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;)V
    .locals 3

    if-nez p3, :cond_0

    sget-object p0, Lcom/millennialmedia/internal/utils/MediaUtils;->TAG:Ljava/lang/String;

    const-string p1, "PictureListener is required"

    invoke-static {p0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isExternalStorageWritable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "Storage not mounted, cannot add image to photo library"

    invoke-interface {p3, p0}, Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string p0, "url is required"

    invoke-interface {p3, p0}, Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getPicturesDirectory()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_3

    const-string p0, "Cannot access pictures directory"

    invoke-interface {p3, p0}, Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    :cond_4
    invoke-static {v1, p2}, Lcom/millennialmedia/internal/utils/IOUtils;->getUniqueFileName(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_5

    const-string p0, "Unable to store photo"

    invoke-interface {p3, p0}, Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_5
    const/4 v0, 0x0

    new-instance v1, Lcom/millennialmedia/internal/utils/MediaUtils$1;

    invoke-direct {v1, p0, p3}, Lcom/millennialmedia/internal/utils/MediaUtils$1;-><init>(Landroid/content/Context;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;)V

    invoke-static {p1, v0, p2, v1}, Lcom/millennialmedia/internal/utils/IOUtils;->downloadFile(Ljava/lang/String;Ljava/lang/Integer;Ljava/io/File;Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;)V

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No file found at "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_7
    const/4 p2, 0x0

    invoke-static {p0, p1, p3, p2}, Lcom/millennialmedia/internal/utils/MediaUtils;->scanPicture(Landroid/content/Context;Ljava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;Z)V

    :goto_0
    return-void
.end method

.method private static scanPicture(Landroid/content/Context;Ljava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/millennialmedia/internal/utils/MediaUtils$2;

    invoke-direct {v1, p3, p1, p2}, Lcom/millennialmedia/internal/utils/MediaUtils$2;-><init>(ZLjava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;)V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method public static setFileDescription(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v1, "UserComment"

    invoke-virtual {v0, v1, p1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/utils/MediaUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set description on media file <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static startVideoPlayer(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/internal/utils/MediaUtils$PlayVideoListener;)V
    .locals 2

    if-nez p2, :cond_0

    sget-object p0, Lcom/millennialmedia/internal/utils/MediaUtils;->TAG:Ljava/lang/String;

    const-string p1, "VideoListener is required"

    invoke-static {p0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "url is required"

    invoke-interface {p2, p0}, Lcom/millennialmedia/internal/utils/MediaUtils$PlayVideoListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/millennialmedia/internal/utils/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p2, p1}, Lcom/millennialmedia/internal/utils/MediaUtils$PlayVideoListener;->onVideoStarted(Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    const-string p0, "No video application installed"

    invoke-interface {p2, p0}, Lcom/millennialmedia/internal/utils/MediaUtils$PlayVideoListener;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
