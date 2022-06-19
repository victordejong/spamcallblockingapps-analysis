.class public Lio/bidmachine/nativead/utils/ImageHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;,
        Lio/bidmachine/nativead/utils/ImageHelper$a;
    }
.end annotation


# static fields
.field private static final MAX_IMAGE_HEIGHT:I = 0x2bc

.field private static final MAX_IMAGE_WIDTH:I = 0x4b0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateInSamplesSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    .line 123
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 124
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v1, 0x1

    .line 126
    :goto_0
    div-int v2, v0, v1

    if-gt v2, p1, :cond_1

    div-int v2, p0, v1

    if-le v2, p2, :cond_0

    goto :goto_1

    :cond_0
    return v1

    :cond_1
    :goto_1
    mul-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public static calculateReqHeight(IZ)I
    .locals 0

    if-eqz p1, :cond_0

    int-to-float p0, p0

    const/high16 p1, 0x3fc00000    # 1.5f

    div-float/2addr p0, p1

    float-to-int p0, p0

    :cond_0
    const/16 p1, 0x2bc

    if-le p0, p1, :cond_1

    const/16 p0, 0x2bc

    :cond_1
    return p0
.end method

.method public static calculateReqWidth(Landroid/content/Context;)I
    .locals 1

    .line 104
    invoke-static {p0}, Lio/bidmachine/core/Utils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    .line 105
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 v0, 0x4b0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static fillImageView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 134
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 136
    :cond_0
    new-instance p3, Lio/bidmachine/nativead/utils/ImageHelper$1;

    invoke-direct {p3}, Lio/bidmachine/nativead/utils/ImageHelper$1;-><init>()V

    invoke-static {p0, p2, p1, p3}, Lio/bidmachine/nativead/utils/ImageHelper;->loadImageByPath(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;)V

    return-void
.end method

.method private static loadImageByPath(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 28
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const-string p0, "Target ImageView is null"

    .line 33
    invoke-interface {p3, p0}, Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;->onError(Ljava/lang/String;)V

    return-void

    .line 36
    :cond_2
    invoke-static {}, Lio/bidmachine/nativead/utils/NativeNetworkExecutor;->getInstance()Lio/bidmachine/nativead/utils/NativeNetworkExecutor;

    move-result-object v0

    new-instance v1, Lio/bidmachine/nativead/utils/ImageHelper$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/bidmachine/nativead/utils/ImageHelper$a;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/utils/NativeNetworkExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "ImagePath is invalid"

    .line 29
    invoke-interface {p3, p0}, Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;->onError(Ljava/lang/String;)V

    return-void
.end method
