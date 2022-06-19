.class final Lcom/theartofdev/edmodo/cropper/b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/theartofdev/edmodo/cropper/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/net/Uri;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/theartofdev/edmodo/cropper/CropImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;)V
    .locals 4

    .line 44
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/b;->a:Landroid/net/Uri;

    .line 46
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/b;->b:Ljava/lang/ref/WeakReference;

    .line 48
    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/b;->c:Landroid/content/Context;

    .line 50
    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 51
    iget p2, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    iget p2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p2

    float-to-double v0, v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 52
    :goto_0
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, p2

    mul-double v2, v2, v0

    double-to-int p2, v2

    iput p2, p0, Lcom/theartofdev/edmodo/cropper/b;->d:I

    .line 53
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double p1, p1

    mul-double p1, p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/b;->e:I

    return-void
.end method

.method private varargs a()Lcom/theartofdev/edmodo/cropper/b$a;
    .locals 5

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/b;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/b;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/b;->a:Landroid/net/Uri;

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/b;->d:I

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/b;->e:I

    .line 73
    invoke-static {v0, v1, v2, v3}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/content/Context;Landroid/net/Uri;II)Lcom/theartofdev/edmodo/cropper/c$a;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/b;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/c$a;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/b;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/b;->a:Landroid/net/Uri;

    .line 78
    invoke-static {v1, v2, v3}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/net/Uri;)Lcom/theartofdev/edmodo/cropper/c$b;

    move-result-object v1

    .line 80
    new-instance v2, Lcom/theartofdev/edmodo/cropper/b$a;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/b;->a:Landroid/net/Uri;

    iget-object v4, v1, Lcom/theartofdev/edmodo/cropper/c$b;->a:Landroid/graphics/Bitmap;

    iget v0, v0, Lcom/theartofdev/edmodo/cropper/c$a;->b:I

    iget v1, v1, Lcom/theartofdev/edmodo/cropper/c$b;->b:I

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/theartofdev/edmodo/cropper/b$a;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    .line 86
    new-instance v1, Lcom/theartofdev/edmodo/cropper/b$a;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/b;->a:Landroid/net/Uri;

    invoke-direct {v1, v2, v0}, Lcom/theartofdev/edmodo/cropper/b$a;-><init>(Landroid/net/Uri;Ljava/lang/Exception;)V

    return-object v1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/b;->a()Lcom/theartofdev/edmodo/cropper/b$a;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 8

    .line 24
    check-cast p1, Lcom/theartofdev/edmodo/cropper/b$a;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 2099
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/b;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2100
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/theartofdev/edmodo/cropper/CropImageView;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 2141
    iput-object v2, v1, Lcom/theartofdev/edmodo/cropper/CropImageView;->i:Ljava/lang/ref/WeakReference;

    .line 2142
    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->d()V

    .line 2144
    iget-object v2, p1, Lcom/theartofdev/edmodo/cropper/b$a;->e:Ljava/lang/Exception;

    if-nez v2, :cond_0

    .line 2145
    iget v2, p1, Lcom/theartofdev/edmodo/cropper/b$a;->d:I

    iput v2, v1, Lcom/theartofdev/edmodo/cropper/CropImageView;->b:I

    .line 2146
    iget-object v3, p1, Lcom/theartofdev/edmodo/cropper/b$a;->b:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/theartofdev/edmodo/cropper/b$a;->a:Landroid/net/Uri;

    iget v6, p1, Lcom/theartofdev/edmodo/cropper/b$a;->c:I

    iget v7, p1, Lcom/theartofdev/edmodo/cropper/b$a;->d:I

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    .line 2149
    :cond_0
    iget-object v1, v1, Lcom/theartofdev/edmodo/cropper/CropImageView;->f:Lcom/theartofdev/edmodo/cropper/CropImageView$h;

    if-eqz v1, :cond_1

    .line 2151
    iget-object v2, p1, Lcom/theartofdev/edmodo/cropper/b$a;->e:Ljava/lang/Exception;

    invoke-interface {v1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView$h;->a(Ljava/lang/Exception;)V

    :cond_1
    if-nez v0, :cond_2

    .line 2106
    iget-object v0, p1, Lcom/theartofdev/edmodo/cropper/b$a;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 2108
    iget-object p1, p1, Lcom/theartofdev/edmodo/cropper/b$a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-void
.end method
