.class public Lcom/callapp/contacts/util/video/VideoOverlayData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/graphics/PointF;

.field private c:Z

.field private d:Landroid/graphics/Bitmap;

.field private e:F

.field private f:Landroid/graphics/PointF;

.field private g:Landroid/net/Uri;

.field private h:Ljava/lang/Float;


# direct methods
.method private constructor <init>(Landroid/content/Context;IZFFFLjava/lang/Float;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p2, p0, Lcom/callapp/contacts/util/video/VideoOverlayData;->a:I

    .line 60
    invoke-static {p2}, Lcom/callapp/contacts/util/ImageUtils;->getUriToDrawable(I)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/util/video/VideoOverlayData;->g:Landroid/net/Uri;

    .line 62
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/util/video/VideoOverlayData;->g:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/util/video/VideoOverlayData;->d:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    const-class p2, Lcom/callapp/contacts/util/video/VideoOverlayData;

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 66
    :goto_0
    iput-boolean p3, p0, Lcom/callapp/contacts/util/video/VideoOverlayData;->c:Z

    .line 67
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, p4, p5}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/callapp/contacts/util/video/VideoOverlayData;->b:Landroid/graphics/PointF;

    .line 68
    iput p6, p0, Lcom/callapp/contacts/util/video/VideoOverlayData;->e:F

    .line 69
    iput-object p7, p0, Lcom/callapp/contacts/util/video/VideoOverlayData;->h:Ljava/lang/Float;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;IZFFFLjava/lang/Float;Lcom/callapp/contacts/util/video/VideoOverlayData$1;)V
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p7}, Lcom/callapp/contacts/util/video/VideoOverlayData;-><init>(Landroid/content/Context;IZFFFLjava/lang/Float;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;ZFFFLjava/lang/Float;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v0, p2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    .line 1432
    iput-object p1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    const/4 p1, 0x1

    .line 2371
    iput-boolean p1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    const p1, 0x7f060244

    .line 74
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    const/4 p2, 0x2

    invoke-virtual {v0, p2, p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b(II)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/util/video/VideoOverlayData;->d:Landroid/graphics/Bitmap;

    .line 75
    iput-boolean p3, p0, Lcom/callapp/contacts/util/video/VideoOverlayData;->c:Z

    .line 76
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, p4, p5}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/callapp/contacts/util/video/VideoOverlayData;->b:Landroid/graphics/PointF;

    .line 77
    iput p6, p0, Lcom/callapp/contacts/util/video/VideoOverlayData;->e:F

    .line 78
    iput-object p7, p0, Lcom/callapp/contacts/util/video/VideoOverlayData;->h:Ljava/lang/Float;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ZFFFLjava/lang/Float;Lcom/callapp/contacts/util/video/VideoOverlayData$1;)V
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p7}, Lcom/callapp/contacts/util/video/VideoOverlayData;-><init>(Landroid/content/Context;Ljava/lang/String;ZFFFLjava/lang/Float;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;FIZFFFLjava/lang/Float;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1083
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 1084
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1085
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    const-string p2, "sans-serif"

    .line 1086
    invoke-static {p2, p4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1087
    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1088
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result p2

    neg-float p2, p2

    .line 1089
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p3

    const/high16 p4, 0x3f000000    # 0.5f

    add-float/2addr p3, p4

    float-to-int p3, p3

    .line 1090
    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v1, p2

    add-float/2addr v1, p4

    float-to-int p4, v1

    .line 1091
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 1092
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 1093
    invoke-virtual {p4, p1, v1, p2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 52
    iput-object p3, p0, Lcom/callapp/contacts/util/video/VideoOverlayData;->d:Landroid/graphics/Bitmap;

    .line 53
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, p5, p6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/callapp/contacts/util/video/VideoOverlayData;->b:Landroid/graphics/PointF;

    .line 54
    iput p7, p0, Lcom/callapp/contacts/util/video/VideoOverlayData;->e:F

    .line 55
    iput-object p8, p0, Lcom/callapp/contacts/util/video/VideoOverlayData;->h:Ljava/lang/Float;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;FIZFFFLjava/lang/Float;Lcom/callapp/contacts/util/video/VideoOverlayData$1;)V
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p8}, Lcom/callapp/contacts/util/video/VideoOverlayData;-><init>(Ljava/lang/String;FIZFFFLjava/lang/Float;)V

    return-void
.end method


# virtual methods
.method public getLocation()Landroid/graphics/PointF;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/callapp/contacts/util/video/VideoOverlayData;->b:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getOverlayBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/callapp/contacts/util/video/VideoOverlayData;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOverlayHeight()Ljava/lang/Float;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/callapp/contacts/util/video/VideoOverlayData;->h:Ljava/lang/Float;

    return-object v0
.end method

.method public getOverlayUri()Landroid/net/Uri;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/callapp/contacts/util/video/VideoOverlayData;->g:Landroid/net/Uri;

    return-object v0
.end method

.method public getOverlayWidth()F
    .locals 1

    .line 111
    iget v0, p0, Lcom/callapp/contacts/util/video/VideoOverlayData;->e:F

    return v0
.end method

.method public getSize()Landroid/graphics/PointF;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/util/video/VideoOverlayData;->f:Landroid/graphics/PointF;

    return-object v0
.end method

.method public isAnimated()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/callapp/contacts/util/video/VideoOverlayData;->c:Z

    return v0
.end method

.method public setSize(Landroid/graphics/PointF;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/callapp/contacts/util/video/VideoOverlayData;->f:Landroid/graphics/PointF;

    return-void
.end method
