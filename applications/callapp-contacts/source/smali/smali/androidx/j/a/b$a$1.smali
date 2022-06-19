.class public final Landroidx/j/a/b$a$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/j/a/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Landroidx/j/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/j/a/b$c;

.field final synthetic b:Landroidx/j/a/b$a;


# direct methods
.method public constructor <init>(Landroidx/j/a/b$a;Landroidx/j/a/b$c;)V
    .locals 0

    .line 865
    iput-object p1, p0, Landroidx/j/a/b$a$1;->b:Landroidx/j/a/b$a;

    iput-object p2, p0, Landroidx/j/a/b$a$1;->a:Landroidx/j/a/b$c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Landroidx/j/a/b;
    .locals 8

    const/4 v0, 0x0

    .line 870
    :try_start_0
    iget-object v1, p0, Landroidx/j/a/b$a$1;->b:Landroidx/j/a/b$a;

    .line 1793
    iget-object v2, v1, Landroidx/j/a/b$a;->b:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 1797
    iget-object v2, v1, Landroidx/j/a/b$a;->b:Landroid/graphics/Bitmap;

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 1915
    iget v5, v1, Landroidx/j/a/b$a;->e:I

    if-lez v5, :cond_0

    .line 1916
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int v5, v5, v6

    .line 1917
    iget v6, v1, Landroidx/j/a/b$a;->e:I

    if-le v5, v6, :cond_1

    .line 1918
    iget v3, v1, Landroidx/j/a/b$a;->e:I

    int-to-double v3, v3

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    goto :goto_0

    .line 1920
    :cond_0
    iget v5, v1, Landroidx/j/a/b$a;->f:I

    if-lez v5, :cond_1

    .line 1921
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1922
    iget v6, v1, Landroidx/j/a/b$a;->f:I

    if-le v5, v6, :cond_1

    .line 1923
    iget v3, v1, Landroidx/j/a/b$a;->f:I

    int-to-double v3, v3

    int-to-double v5, v5

    div-double/2addr v3, v5

    :cond_1
    :goto_0
    const-wide/16 v5, 0x0

    cmpg-double v7, v3, v5

    if-gtz v7, :cond_2

    goto :goto_1

    .line 1933
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-double v5, v5

    mul-double v5, v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 1934
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v6, v6

    mul-double v6, v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    const/4 v4, 0x0

    .line 1932
    invoke-static {v2, v5, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1803
    :goto_1
    iget-object v3, v1, Landroidx/j/a/b$a;->h:Landroid/graphics/Rect;

    .line 1804
    iget-object v4, v1, Landroidx/j/a/b$a;->b:Landroid/graphics/Bitmap;

    if-eq v2, v4, :cond_3

    if-eqz v3, :cond_3

    .line 1807
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    iget-object v6, v1, Landroidx/j/a/b$a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    .line 1808
    iget v6, v3, Landroid/graphics/Rect;->left:I

    int-to-double v6, v6

    mul-double v6, v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 1809
    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-double v6, v6

    mul-double v6, v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, v3, Landroid/graphics/Rect;->top:I

    .line 1810
    iget v6, v3, Landroid/graphics/Rect;->right:I

    int-to-double v6, v6

    mul-double v6, v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 1811
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 1810
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 1812
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    int-to-double v6, v6

    mul-double v6, v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 1813
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1812
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 1817
    :cond_3
    new-instance v3, Landroidx/j/a/a;

    .line 1818
    invoke-virtual {v1, v2}, Landroidx/j/a/b$a;->a(Landroid/graphics/Bitmap;)[I

    move-result-object v4

    iget v5, v1, Landroidx/j/a/b$a;->d:I

    iget-object v6, v1, Landroidx/j/a/b$a;->g:Ljava/util/List;

    .line 1820
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v0

    goto :goto_2

    :cond_4
    iget-object v6, v1, Landroidx/j/a/b$a;->g:Ljava/util/List;

    iget-object v7, v1, Landroidx/j/a/b$a;->g:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Landroidx/j/a/b$b;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroidx/j/a/b$b;

    :goto_2
    invoke-direct {v3, v4, v5, v6}, Landroidx/j/a/a;-><init>([II[Landroidx/j/a/b$b;)V

    .line 1823
    iget-object v4, v1, Landroidx/j/a/b$a;->b:Landroid/graphics/Bitmap;

    if-eq v2, v4, :cond_5

    .line 1824
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2146
    :cond_5
    iget-object v2, v3, Landroidx/j/a/a;->c:Ljava/util/List;

    goto :goto_3

    .line 1832
    :cond_6
    iget-object v2, v1, Landroidx/j/a/b$a;->a:Ljava/util/List;

    if-eqz v2, :cond_7

    .line 1834
    iget-object v2, v1, Landroidx/j/a/b$a;->a:Ljava/util/List;

    .line 1841
    :goto_3
    new-instance v3, Landroidx/j/a/b;

    iget-object v1, v1, Landroidx/j/a/b$a;->c:Ljava/util/List;

    invoke-direct {v3, v2, v1}, Landroidx/j/a/b;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 1843
    invoke-virtual {v3}, Landroidx/j/a/b;->a()V

    return-object v3

    .line 1837
    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "Palette"

    const-string v3, "Exception thrown during async generate"

    .line 872
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 865
    invoke-direct {p0}, Landroidx/j/a/b$a$1;->a()Landroidx/j/a/b;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 865
    check-cast p1, Landroidx/j/a/b;

    .line 2879
    iget-object v0, p0, Landroidx/j/a/b$a$1;->a:Landroidx/j/a/b$c;

    invoke-interface {v0, p1}, Landroidx/j/a/b$c;->a(Landroidx/j/a/b;)V

    return-void
.end method
