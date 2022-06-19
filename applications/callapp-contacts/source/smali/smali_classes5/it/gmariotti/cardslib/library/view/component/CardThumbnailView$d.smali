.class final Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lit/gmariotti/cardslib/library/a/j$a;",
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

.field private c:Lit/gmariotti/cardslib/library/a/j$a;


# direct methods
.method public constructor <init>(Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;Landroid/widget/ImageView;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;->a:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 596
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;->c:Lit/gmariotti/cardslib/library/a/j$a;

    .line 600
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;)Lit/gmariotti/cardslib/library/a/j$a;
    .locals 0

    .line 594
    iget-object p0, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;->c:Lit/gmariotti/cardslib/library/a/j$a;

    return-object p0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 594
    check-cast p1, [Lit/gmariotti/cardslib/library/a/j$a;

    const/4 v0, 0x0

    .line 2606
    aget-object p1, p1, v0

    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;->c:Lit/gmariotti/cardslib/library/a/j$a;

    .line 2607
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 2608
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;->c:Lit/gmariotti/cardslib/library/a/j$a;

    invoke-interface {p1}, Lit/gmariotti/cardslib/library/a/j$a;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2610
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;->a:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;->c:Lit/gmariotti/cardslib/library/a/j$a;

    invoke-interface {v1}, Lit/gmariotti/cardslib/library/a/j$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 594
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1621
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1625
    :cond_0
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;->b:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1626
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1628
    invoke-static {v0}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->c(Landroid/widget/ImageView;)Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;

    move-result-object v2

    if-ne p0, v2, :cond_1

    if-eqz v0, :cond_1

    .line 1631
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1632
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;->a:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a()V

    .line 1633
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;->a:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    iput-boolean v1, p1, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->g:Z

    :cond_1
    return-void

    .line 1636
    :cond_2
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;->a:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    invoke-virtual {p1, v1}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a(Z)V

    .line 1637
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;->a:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->c:Lit/gmariotti/cardslib/library/a/j;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;->a:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->c:Lit/gmariotti/cardslib/library/a/j;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/j;->e()I

    move-result p1

    if-eqz p1, :cond_4

    .line 1638
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;->a:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    iget-boolean p1, p1, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->g:Z

    if-nez p1, :cond_3

    .line 1640
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;->a:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    iget-object v0, p1, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->c:Lit/gmariotti/cardslib/library/a/j;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/j;->e()I

    move-result v0

    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;->a:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    iget-object v1, v1, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v1}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a(ILandroid/widget/ImageView;)V

    .line 1642
    :cond_3
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView$d;->a:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->g:Z

    :cond_4
    return-void
.end method
