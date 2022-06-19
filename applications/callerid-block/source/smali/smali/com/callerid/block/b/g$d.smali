.class Lcom/callerid/block/b/g$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Lcom/rey/material/widget/ImageButton;

.field k:Landroid/widget/ImageView;

.field l:Landroid/widget/ImageView;

.field m:Lcom/callerid/block/customview/ProgressWheel;

.field n:Landroid/widget/FrameLayout;

.field o:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/callerid/block/b/g;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    const v0, 0x7f09009d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callerid/block/b/g$d;->a:Landroid/widget/ImageView;

    const v0, 0x7f09009e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callerid/block/b/g$d;->k:Landroid/widget/ImageView;

    const v0, 0x7f09009f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callerid/block/b/g$d;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/callerid/block/b/g$d;->k:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/b/g$d;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f09028a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/b/g$d;->b:Landroid/widget/TextView;

    const v0, 0x7f090382

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/b/g$d;->c:Landroid/widget/TextView;

    const v0, 0x7f090069

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/b/g$d;->d:Landroid/widget/TextView;

    const v0, 0x7f0903cf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/b/g$d;->f:Landroid/widget/TextView;

    const v0, 0x7f09049b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/b/g$d;->g:Landroid/widget/TextView;

    const v0, 0x7f090426

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/b/g$d;->h:Landroid/widget/TextView;

    const v0, 0x7f09046b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/b/g$d;->e:Landroid/widget/TextView;

    const v0, 0x7f0903d2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/b/g$d;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callerid/block/b/g$d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/b/g$d;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/b/g$d;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f09009a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rey/material/widget/ImageButton;

    iput-object v0, p0, Lcom/callerid/block/b/g$d;->j:Lcom/rey/material/widget/ImageButton;

    iget-object v0, p0, Lcom/callerid/block/b/g$d;->f:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0902bf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/customview/ProgressWheel;

    iput-object v0, p0, Lcom/callerid/block/b/g$d;->m:Lcom/callerid/block/customview/ProgressWheel;

    const v0, 0x7f0902d8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callerid/block/b/g$d;->n:Landroid/widget/FrameLayout;

    const v0, 0x7f0902c9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callerid/block/b/g$d;->o:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/callerid/block/b/g$d;->b:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/callerid/block/b/g;->b(Lcom/callerid/block/b/g;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lcom/callerid/block/b/g$d;->f:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/callerid/block/b/g;->b(Lcom/callerid/block/b/g;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lcom/callerid/block/b/g$d;->c:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/callerid/block/b/g;->b(Lcom/callerid/block/b/g;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lcom/callerid/block/b/g$d;->h:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/callerid/block/b/g;->b(Lcom/callerid/block/b/g;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lcom/callerid/block/b/g$d;->d:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/callerid/block/b/g;->b(Lcom/callerid/block/b/g;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lcom/callerid/block/b/g$d;->e:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/callerid/block/b/g;->b(Lcom/callerid/block/b/g;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lcom/callerid/block/b/g$d;->i:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/callerid/block/b/g;->b(Lcom/callerid/block/b/g;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
