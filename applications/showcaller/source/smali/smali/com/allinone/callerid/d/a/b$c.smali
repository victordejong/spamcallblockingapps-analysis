.class Lcom/allinone/callerid/d/a/b$c;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "HomeRecycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/d/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private u:Landroid/widget/FrameLayout;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    const v1, 0x7f0902a8

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/allinone/callerid/d/a/b$c;->u:Landroid/widget/FrameLayout;

    const v1, 0x7f0902a9

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/d/a/b$c;->v:Landroid/widget/ImageView;

    const v1, 0x7f0902d8

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/d/a/b$c;->w:Landroid/widget/ImageView;

    const v1, 0x7f090671

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allinone/callerid/d/a/b$c;->x:Landroid/widget/TextView;

    const v1, 0x7f090315

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/allinone/callerid/d/a/b$c;->y:Landroid/widget/ImageView;

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/d/a/b$c;->x:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic M(Lcom/allinone/callerid/d/a/b$c;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/a/b$c;->y:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic N(Lcom/allinone/callerid/d/a/b$c;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/a/b$c;->w:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic O(Lcom/allinone/callerid/d/a/b$c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/a/b$c;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic P(Lcom/allinone/callerid/d/a/b$c;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/a/b$c;->v:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic Q(Lcom/allinone/callerid/d/a/b$c;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/a/b$c;->u:Landroid/widget/FrameLayout;

    return-object p0
.end method
