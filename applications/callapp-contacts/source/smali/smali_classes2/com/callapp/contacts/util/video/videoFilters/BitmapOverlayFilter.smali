.class public Lcom/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter;
.super Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "BitmapOverlayFilter"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/net/Uri;

.field private d:Landroid/graphics/Bitmap;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/RectF;)V
    .locals 0

    .line 42
    invoke-direct {p0, p3}, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;-><init>(Landroid/graphics/RectF;)V

    const/16 p3, -0x303a

    .line 33
    iput p3, p0, Lcom/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter;->e:I

    .line 43
    iput-object p1, p0, Lcom/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter;->b:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter;->c:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/linkedin/android/litr/c/c;)V
    .locals 0

    .line 54
    invoke-direct {p0, p3}, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;-><init>(Lcom/linkedin/android/litr/c/c;)V

    const/16 p3, -0x303a

    .line 33
    iput p3, p0, Lcom/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter;->e:I

    .line 55
    iput-object p1, p0, Lcom/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter;->b:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter;->c:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/linkedin/android/litr/c/c;)V
    .locals 0

    .line 65
    invoke-direct {p0, p2}, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;-><init>(Lcom/linkedin/android/litr/c/c;)V

    const/16 p2, -0x303a

    .line 33
    iput p2, p0, Lcom/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter;->e:I

    .line 66
    iput-object p1, p0, Lcom/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter;->d:Landroid/graphics/Bitmap;

    return-void
.end method

.method private a(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4

    .line 103
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 112
    invoke-static {v0, v1, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 115
    sget-object v2, Lcom/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "Unable to open overlay image Uri "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 119
    :cond_1
    sget-object v0, Lcom/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Uri scheme is not supported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->a()V

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 74
    invoke-static {v0}, Lcom/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter;->e:I

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter;->c:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter;->a(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    invoke-static {v0}, Lcom/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter;->a(Landroid/graphics/Bitmap;)I

    move-result v1

    iput v1, p0, Lcom/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter;->e:I

    .line 79
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method

.method public final a(J)V
    .locals 0

    .line 86
    iget p1, p0, Lcom/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter;->e:I

    if-ltz p1, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter;->a(I)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic a([FI)V
    .locals 0

    .line 24
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->a([FI)V

    return-void
.end method

.method public final b()V
    .locals 4

    .line 93
    invoke-super {p0}, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->b()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 95
    iget v2, p0, Lcom/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter;->e:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 96
    iput v3, p0, Lcom/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter;->e:I

    return-void
.end method
