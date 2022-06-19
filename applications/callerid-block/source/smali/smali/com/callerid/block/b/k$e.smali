.class public final Lcom/callerid/block/b/k$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/ImageView;

.field g:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/callerid/block/b/k;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    const v0, 0x7f09028a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/b/k$e;->a:Landroid/widget/TextView;

    const v0, 0x7f0900d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/b/k$e;->b:Landroid/widget/TextView;

    const v0, 0x7f0900d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/b/k$e;->c:Landroid/widget/TextView;

    const v0, 0x7f0900c1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/b/k$e;->d:Landroid/widget/TextView;

    const v0, 0x7f09046b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/b/k$e;->e:Landroid/widget/TextView;

    const v0, 0x7f0902b8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callerid/block/b/k$e;->f:Landroid/widget/ImageView;

    const v0, 0x7f0901e1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callerid/block/b/k$e;->g:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/callerid/block/b/k$e;->a:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/callerid/block/b/k;->b(Lcom/callerid/block/b/k;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lcom/callerid/block/b/k$e;->b:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/callerid/block/b/k;->b(Lcom/callerid/block/b/k;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lcom/callerid/block/b/k$e;->c:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/callerid/block/b/k;->b(Lcom/callerid/block/b/k;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lcom/callerid/block/b/k$e;->d:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/callerid/block/b/k;->b(Lcom/callerid/block/b/k;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lcom/callerid/block/b/k$e;->e:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/callerid/block/b/k;->b(Lcom/callerid/block/b/k;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
