.class public Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$b;,
        Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$c;,
        Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$a;,
        Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;,
        Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;,
        Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$e;
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:Landroid/view/View;

.field protected c:Lit/gmariotti/cardslib/library/a/j;

.field protected d:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Z

.field protected f:Z

.field protected g:Z

.field protected h:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 106
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    sget p1, Lit/gmariotti/cardslib/library/a$e;->base_thumbnail_layout:I

    iput p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a:I

    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->e:Z

    .line 96
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->f:Z

    .line 99
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->g:Z

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, v0, p1}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    sget p1, Lit/gmariotti/cardslib/library/a$e;->base_thumbnail_layout:I

    iput p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a:I

    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->e:Z

    .line 96
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->f:Z

    .line 99
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->g:Z

    .line 112
    invoke-direct {p0, p2, p1}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    sget p1, Lit/gmariotti/cardslib/library/a$e;->base_thumbnail_layout:I

    iput p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a:I

    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->e:Z

    .line 96
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->f:Z

    .line 99
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->g:Z

    .line 117
    invoke-direct {p0, p2, p3}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 2

    .line 375
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 376
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-gt v0, p2, :cond_1

    if-le p0, p1, :cond_3

    :cond_1
    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 384
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 385
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-ge p2, p0, :cond_2

    move v1, p2

    goto :goto_0

    :cond_2
    move v1, p0

    :cond_3
    :goto_0
    return v1
.end method

.method public static a(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 2

    .line 335
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 336
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 337
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 340
    invoke-static {v0, p2, p3}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    .line 343
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 344
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 326
    :cond_0
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->d:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 352
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 353
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 355
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 358
    invoke-static {v0, p1, p2}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 361
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 362
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "CardThumbnailView"

    const-string p2, "Error while retrieving image"

    .line 367
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method protected static a(Landroid/widget/ImageView;)Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$e;
    .locals 1

    if-eqz p0, :cond_0

    .line 455
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 456
    instance-of v0, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$a;

    if-eqz v0, :cond_0

    .line 457
    check-cast p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$a;

    .line 458
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$a;->a()Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$e;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .locals 0

    .line 142
    invoke-direct {p0, p1, p2}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->b(Landroid/util/AttributeSet;I)V

    .line 145
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 146
    invoke-direct {p0}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->b()V

    :cond_0
    return-void
.end method

.method protected static b(Landroid/widget/ImageView;)Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;
    .locals 1

    if-eqz p0, :cond_0

    .line 466
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 467
    instance-of v0, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$c;

    if-eqz v0, :cond_0

    .line 468
    check-cast p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$c;

    .line 469
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$c;->a()Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 171
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 172
    iget v1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->b:Landroid/view/View;

    .line 175
    sget v0, Lit/gmariotti/cardslib/library/a$c;->card_thumbnail_image:I

    invoke-virtual {p0, v0}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->h:Landroid/widget/ImageView;

    .line 181
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 184
    div-int/lit8 v1, v1, 0x8

    .line 186
    invoke-static {}, Lit/gmariotti/cardslib/library/b/a;->a()Landroid/util/LruCache;

    move-result-object v0

    iput-object v0, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->d:Landroid/util/LruCache;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$1;

    invoke-direct {v0, p0, v1}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$1;-><init>(Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;I)V

    iput-object v0, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->d:Landroid/util/LruCache;

    .line 201
    invoke-static {v0}, Lit/gmariotti/cardslib/library/b/a;->a(Landroid/util/LruCache;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/util/AttributeSet;I)V
    .locals 2

    .line 156
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lit/gmariotti/cardslib/library/a$g;->card_options:[I

    invoke-virtual {v0, p1, v1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 160
    :try_start_0
    sget p2, Lit/gmariotti/cardslib/library/a$g;->card_options_card_thumbnail_layout_resourceID:I

    iget v0, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method private static b(ILandroid/widget/ImageView;)Z
    .locals 2

    .line 401
    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a(Landroid/widget/ImageView;)Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$e;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 404
    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$e;->a(Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$e;)I

    move-result v1

    if-eq v1, p0, :cond_0

    .line 407
    invoke-virtual {p1, v0}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$e;->cancel(Z)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method protected static c(Landroid/widget/ImageView;)Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;
    .locals 1

    if-eqz p0, :cond_0

    .line 477
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 478
    instance-of v0, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$b;

    if-eqz v0, :cond_0

    .line 479
    check-cast p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$b;

    .line 480
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$b;->a()Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    const/4 v0, 0x1

    .line 702
    invoke-virtual {p0, v0}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a(Z)V

    return-void
.end method

.method public final a(ILandroid/widget/ImageView;)V
    .locals 5

    .line 260
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-direct {p0, v0}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4702
    invoke-virtual {p0, v1}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a(Z)V

    return-void

    .line 268
    :cond_0
    invoke-static {p1, p2}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->b(ILandroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    new-instance v0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$e;

    invoke-direct {v0, p0, p2}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$e;-><init>(Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;Landroid/widget/ImageView;)V

    .line 270
    new-instance v2, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$a;

    .line 271
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$a;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$e;)V

    .line 272
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-array p2, v1, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 273
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-virtual {v0, p2}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public final a(Lit/gmariotti/cardslib/library/a/j;)V
    .locals 7

    .line 216
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->c:Lit/gmariotti/cardslib/library/a/j;

    if-eqz p1, :cond_a

    .line 1226
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1227
    iput-boolean v1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->g:Z

    .line 1245
    :cond_0
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/j;->d()Z

    move-result p1

    if-nez p1, :cond_a

    .line 1246
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->c:Lit/gmariotti/cardslib/library/a/j;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/j;->c()Lit/gmariotti/cardslib/library/a/j$a;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    .line 1247
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->c:Lit/gmariotti/cardslib/library/a/j;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/j;->c()Lit/gmariotti/cardslib/library/a/j$a;

    move-result-object p1

    iget-object v3, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->h:Landroid/widget/ImageView;

    .line 1298
    invoke-interface {p1}, Lit/gmariotti/cardslib/library/a/j$a;->a()Ljava/lang/String;

    move-result-object v4

    .line 1299
    invoke-direct {p0, v4}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1303
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1702
    invoke-virtual {p0, v2}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a(Z)V

    return-void

    .line 2435
    :cond_1
    invoke-static {v3}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->c(Landroid/widget/ImageView;)Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2437
    invoke-static {v4}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;->a(Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;)Lit/gmariotti/cardslib/library/a/j$a;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 2438
    invoke-static {v4}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;->a(Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;)Lit/gmariotti/cardslib/library/a/j$a;

    move-result-object v5

    .line 2439
    invoke-interface {v5}, Lit/gmariotti/cardslib/library/a/j$a;->a()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 2440
    invoke-interface {v5}, Lit/gmariotti/cardslib/library/a/j$a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lit/gmariotti/cardslib/library/a/j$a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2442
    invoke-virtual {v4, v2}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;->cancel(Z)Z

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_4

    .line 1307
    new-instance v4, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;

    invoke-direct {v4, p0, v3}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;-><init>(Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;Landroid/widget/ImageView;)V

    .line 1308
    new-instance v5, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$b;

    .line 1309
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v0, v4}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$b;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;)V

    .line 1310
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-array v0, v2, [Lit/gmariotti/cardslib/library/a/j$a;

    aput-object p1, v0, v1

    .line 1311
    invoke-virtual {v4, v0}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    return-void

    .line 1248
    :cond_5
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->c:Lit/gmariotti/cardslib/library/a/j;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/j;->a()I

    move-result p1

    if-lez p1, :cond_6

    .line 1249
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->c:Lit/gmariotti/cardslib/library/a/j;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/j;->a()I

    move-result p1

    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a(ILandroid/widget/ImageView;)V

    return-void

    .line 1251
    :cond_6
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->c:Lit/gmariotti/cardslib/library/a/j;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/j;->b()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->h:Landroid/widget/ImageView;

    .line 3280
    invoke-direct {p0, p1}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 3284
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3702
    invoke-virtual {p0, v2}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a(Z)V

    return-void

    .line 4418
    :cond_7
    invoke-static {v3}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->b(Landroid/widget/ImageView;)Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 4421
    invoke-static {v4}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;->a(Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;)Ljava/lang/String;

    move-result-object v5

    .line 4422
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 4424
    invoke-virtual {v4, v2}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;->cancel(Z)Z

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_a

    .line 3288
    new-instance v4, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;

    invoke-direct {v4, p0, v3}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;-><init>(Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;Landroid/widget/ImageView;)V

    .line 3289
    new-instance v5, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$c;

    .line 3290
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v0, v4}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$c;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;)V

    .line 3291
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v1

    .line 3292
    invoke-virtual {v4, v0}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_a
    return-void
.end method

.method protected final a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 317
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->g:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 319
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->d:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected final a(Z)V
    .locals 2

    .line 712
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->c:Lit/gmariotti/cardslib/library/a/j;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/j;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 713
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "it.gmariotti.cardslib.library.intent.action.IMAGE_DOWNLOADED"

    .line 714
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ExtraResult"

    .line 715
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 716
    iget-boolean p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->g:Z

    const-string v1, "ExtraErrorLoading"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 717
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 719
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 721
    :goto_0
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->c:Lit/gmariotti/cardslib/library/a/j;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/j;->getParentCard()Lit/gmariotti/cardslib/library/a/b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 722
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->c:Lit/gmariotti/cardslib/library/a/j;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/j;->getParentCard()Lit/gmariotti/cardslib/library/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ExtraCardId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    :cond_1
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 724
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public setForceReplaceInnerLayout(Z)V
    .locals 0

    .line 771
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->f:Z

    return-void
.end method

.method public setRecycle(Z)V
    .locals 0

    .line 753
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->e:Z

    return-void
.end method
