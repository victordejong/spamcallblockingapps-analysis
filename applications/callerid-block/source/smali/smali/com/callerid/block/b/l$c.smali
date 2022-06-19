.class Lcom/callerid/block/b/l$c;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/FrameLayout;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/callerid/block/b/l;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p1

    const v0, 0x7f0901b2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/b/l$c;->u:Landroid/widget/TextView;

    const v0, 0x7f0901ae

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callerid/block/b/l$c;->v:Landroid/widget/FrameLayout;

    const v0, 0x7f0902ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v0, 0x7f0901b1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callerid/block/b/l$c;->w:Landroid/widget/ImageView;

    const v0, 0x7f0901af

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/b/l$c;->x:Landroid/widget/TextView;

    const v0, 0x7f0901b0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callerid/block/b/l$c;->y:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/callerid/block/b/l$c;->u:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lcom/callerid/block/b/l$c;->x:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lcom/callerid/block/b/l$c;->y:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic M(Lcom/callerid/block/b/l$c;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/b/l$c;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic N(Lcom/callerid/block/b/l$c;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/b/l$c;->y:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic O(Lcom/callerid/block/b/l$c;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/b/l$c;->w:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic P(Lcom/callerid/block/b/l$c;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/b/l$c;->u:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic Q(Lcom/callerid/block/b/l$c;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/b/l$c;->v:Landroid/widget/FrameLayout;

    return-object p0
.end method
