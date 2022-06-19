.class Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;
.super Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/verizonnativecontroller/NativeImageComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent$Factory;
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Landroid/widget/ImageView;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lcom/verizon/ads/support/FileStorageCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-class v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->a:Lcom/verizon/ads/Logger;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/verizon/ads/AdSession;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;II)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;-><init>(Lcom/verizon/ads/AdSession;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 104
    iput-object p5, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->g:Ljava/lang/String;

    .line 105
    iput p6, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->e:I

    .line 106
    iput p7, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->f:I

    return-void
.end method

.method private a(Z)Landroid/graphics/Bitmap;
    .locals 5

    .line 271
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->h:Lcom/verizon/ads/support/FileStorageCache;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 272
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "File cache is null"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v1

    .line 276
    :cond_0
    iget-object v2, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/verizon/ads/support/FileStorageCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 277
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 284
    sget-object v3, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->a:Lcom/verizon/ads/Logger;

    const-string v4, "Retrieving image width and height"

    invoke-virtual {v3, v4}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 285
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 286
    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 291
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    iget v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->e:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_4

    if-eqz p1, :cond_3

    .line 299
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->e:I

    .line 302
    :cond_4
    iget v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->f:I

    if-ne v1, v4, :cond_6

    if-eqz p1, :cond_5

    .line 303
    iget p1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    :goto_2
    iput p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->f:I

    :cond_6
    const/4 p1, 0x3

    .line 306
    invoke-static {p1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 307
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->a:Lcom/verizon/ads/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget v3, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Bitmap width: %d, height: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_7
    return-object v0

    :catch_0
    move-exception p1

    .line 294
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Error decoding image file"

    invoke-virtual {v0, v2, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 278
    :cond_8
    :goto_3
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Image file does not exist"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic a()Lcom/verizon/ads/Logger;
    .locals 1

    .line 34
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .line 240
    iget v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 241
    invoke-direct {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->a(Z)Landroid/graphics/Bitmap;

    .line 244
    :cond_0
    iget v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->f:I

    return v0
.end method

.method public getOpacity()F
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->c:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 225
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 2728
    invoke-static {}, Lcom/verizon/ads/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 179
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Must be on the UI thread to get the view"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v1

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->c:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    .line 185
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Context is null"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v1

    .line 189
    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->prepareView(Landroid/view/View;)Lcom/verizon/ads/ErrorInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 191
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->a:Lcom/verizon/ads/Logger;

    invoke-virtual {p1}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v1

    .line 196
    :cond_2
    iget-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->c:Landroid/widget/ImageView;

    return-object p1
.end method

.method public getWidth()I
    .locals 2

    .line 252
    iget v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 253
    invoke-direct {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->a(Z)Landroid/graphics/Bitmap;

    .line 256
    :cond_0
    iget v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->e:I

    return v0
.end method

.method public isDescendantOf(Landroid/view/ViewGroup;)Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->c:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->a(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public prepareView(Landroid/view/View;)Lcom/verizon/ads/ErrorInfo;
    .locals 5

    .line 113
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->c:Landroid/widget/ImageView;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 114
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->b:Ljava/lang/String;

    const-string v2, "View already exists for component"

    invoke-direct {p1, v0, v2, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1

    .line 117
    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 118
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->b:Ljava/lang/String;

    const-string v2, "View is not an instance of ImageView"

    invoke-direct {p1, v0, v2, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1

    .line 1728
    :cond_1
    invoke-static {}, Lcom/verizon/ads/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->b:Ljava/lang/String;

    const-string v2, "Must be on the UI thread to prepare the view"

    invoke-direct {p1, v0, v2, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1

    :cond_2
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->a(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    .line 127
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->b:Ljava/lang/String;

    const-string v2, "Bitmap could not be loaded"

    invoke-direct {p1, v0, v2, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1

    .line 130
    :cond_3
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->c:Landroid/widget/ImageView;

    .line 132
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_4

    .line 134
    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->c:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget v3, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->e:I

    iget v4, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->f:I

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    :cond_4
    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 139
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->a(Landroid/view/View;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->b(Landroid/view/View;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public queueFilesForDownload(Lcom/verizon/ads/support/FileStorageCache;)V
    .locals 1

    .line 150
    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->h:Lcom/verizon/ads/support/FileStorageCache;

    .line 151
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/verizon/ads/support/FileStorageCache;->queueFileForDownload(Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 158
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Releasing image component"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 161
    invoke-static {v0}, Lcom/verizon/ads/support/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 164
    :cond_0
    invoke-super {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->release()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setColorFilter(I)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    return-void
.end method

.method public setOpacity(F)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method
