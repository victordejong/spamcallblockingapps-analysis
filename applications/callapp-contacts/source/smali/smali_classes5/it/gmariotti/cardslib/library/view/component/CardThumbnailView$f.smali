.class final Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;Landroid/widget/ImageView;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;->a:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 543
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;->c:Ljava/lang/String;

    .line 547
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;)Ljava/lang/String;
    .locals 0

    .line 541
    iget-object p0, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 541
    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 2553
    aget-object v1, p1, v0

    iput-object v1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;->c:Ljava/lang/String;

    .line 2554
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2555
    iget-object v2, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;->a:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    invoke-virtual {v2}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->getResources()Landroid/content/res/Resources;

    iget-object v2, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;->c:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    .line 2556
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    .line 2555
    invoke-static {v2, v3, v1}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2558
    iget-object v2, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;->a:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 541
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1567
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1571
    :cond_0
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;->b:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1572
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1574
    invoke-static {v0}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->b(Landroid/widget/ImageView;)Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;

    move-result-object v2

    if-ne p0, v2, :cond_1

    if-eqz v0, :cond_1

    .line 1577
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1578
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;->a:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a()V

    .line 1579
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;->a:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    iput-boolean v1, p1, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->g:Z

    :cond_1
    return-void

    .line 1582
    :cond_2
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;->a:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    invoke-virtual {p1, v1}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a(Z)V

    .line 1583
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;->a:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->c:Lit/gmariotti/cardslib/library/a/j;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;->a:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->c:Lit/gmariotti/cardslib/library/a/j;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/j;->e()I

    move-result p1

    if-eqz p1, :cond_4

    .line 1584
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;->a:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    iget-boolean p1, p1, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->g:Z

    if-nez p1, :cond_3

    .line 1586
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;->a:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    iget-object v0, p1, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->c:Lit/gmariotti/cardslib/library/a/j;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/j;->e()I

    move-result v0

    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;->a:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    iget-object v1, v1, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v1}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a(ILandroid/widget/ImageView;)V

    .line 1588
    :cond_3
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$f;->a:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->g:Z

    :cond_4
    return-void
.end method
