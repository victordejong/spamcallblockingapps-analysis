.class final Lio/bidmachine/nativead/utils/ImageHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/utils/ImageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private image:Landroid/graphics/Bitmap;

.field private final imageUri:Landroid/net/Uri;

.field private final onImageHelperListener:Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;

.field private final weakTargetImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lio/bidmachine/nativead/utils/ImageHelper$a;->context:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lio/bidmachine/nativead/utils/ImageHelper$a;->imageUri:Landroid/net/Uri;

    .line 50
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/bidmachine/nativead/utils/ImageHelper$a;->weakTargetImageView:Ljava/lang/ref/WeakReference;

    .line 51
    iput-object p4, p0, Lio/bidmachine/nativead/utils/ImageHelper$a;->onImageHelperListener:Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/nativead/utils/ImageHelper$a;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 39
    iget-object p0, p0, Lio/bidmachine/nativead/utils/ImageHelper$a;->weakTargetImageView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100(Lio/bidmachine/nativead/utils/ImageHelper$a;)Landroid/graphics/Bitmap;
    .locals 0

    .line 39
    iget-object p0, p0, Lio/bidmachine/nativead/utils/ImageHelper$a;->image:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$200(Lio/bidmachine/nativead/utils/ImageHelper$a;)Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lio/bidmachine/nativead/utils/ImageHelper$a;->onImageHelperListener:Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;

    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 57
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 58
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 59
    iget-object v1, p0, Lio/bidmachine/nativead/utils/ImageHelper$a;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/nativead/utils/ImageHelper$a;->imageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    .line 61
    :try_start_1
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    :try_start_2
    invoke-static {v1}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 66
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object v1, p0, Lio/bidmachine/nativead/utils/ImageHelper$a;->context:Landroid/content/Context;

    invoke-static {v1}, Lio/bidmachine/nativead/utils/ImageHelper;->calculateReqWidth(Landroid/content/Context;)I

    move-result v1

    const/4 v3, 0x0

    .line 72
    invoke-static {v1, v3}, Lio/bidmachine/nativead/utils/ImageHelper;->calculateReqHeight(IZ)I

    move-result v4

    .line 74
    invoke-static {v0, v1, v4}, Lio/bidmachine/nativead/utils/ImageHelper;->calculateInSamplesSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 75
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 76
    iget-object v1, p0, Lio/bidmachine/nativead/utils/ImageHelper$a;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lio/bidmachine/nativead/utils/ImageHelper$a;->imageUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 78
    :try_start_3
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/nativead/utils/ImageHelper$a;->image:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    :try_start_4
    invoke-static {v1}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 82
    new-instance v0, Lio/bidmachine/nativead/utils/ImageHelper$a$1;

    invoke-direct {v0, p0}, Lio/bidmachine/nativead/utils/ImageHelper$a$1;-><init>(Lio/bidmachine/nativead/utils/ImageHelper$a;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    .line 80
    invoke-static {v1}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 81
    throw v0

    .line 67
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/bidmachine/nativead/utils/ImageHelper$a;->onImageHelperListener:Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;

    const-string v1, "Image size is (0;0)"

    invoke-interface {v0, v1}, Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;->onError(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    .line 63
    invoke-static {v1}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 64
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 95
    iget-object v1, p0, Lio/bidmachine/nativead/utils/ImageHelper$a;->onImageHelperListener:Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;->onError(Ljava/lang/String;)V

    return-void

    .line 97
    :cond_2
    iget-object v0, p0, Lio/bidmachine/nativead/utils/ImageHelper$a;->onImageHelperListener:Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;

    const-string v1, "ImagePreparation error"

    invoke-interface {v0, v1}, Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;->onError(Ljava/lang/String;)V

    return-void
.end method
