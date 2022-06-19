.class Lcom/allinone/callerid/b/t$k;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "RecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/b/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# instance fields
.field private A:Landroid/widget/ImageView;

.field private u:Landroid/widget/RelativeLayout;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/FrameLayout;

.field private y:Landroid/widget/FrameLayout;

.field private z:Lcom/allinone/callerid/b/w;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    const v1, 0x7f0903d8

    .line 3
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/customview/MyListView;

    .line 4
    new-instance v2, Lcom/allinone/callerid/b/w;

    invoke-direct {v2, p1}, Lcom/allinone/callerid/b/w;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/allinone/callerid/b/t$k;->z:Lcom/allinone/callerid/b/w;

    .line 5
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const p1, 0x7f0904f8

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/allinone/callerid/b/t$k;->y:Landroid/widget/FrameLayout;

    const p1, 0x7f090506

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/allinone/callerid/b/t$k;->u:Landroid/widget/RelativeLayout;

    const p1, 0x7f09036f

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/allinone/callerid/b/t$k;->v:Landroid/widget/ImageView;

    const p1, 0x7f09076e

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/allinone/callerid/b/t$k;->w:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f09061b

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f0901ce

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/allinone/callerid/b/t$k;->x:Landroid/widget/FrameLayout;

    const p1, 0x7f0907a3

    .line 13
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/allinone/callerid/b/t$k;->A:Landroid/widget/ImageView;

    const p1, 0x7f090494

    .line 14
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f090495

    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic M(Lcom/allinone/callerid/b/t$k;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$k;->A:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic N(Lcom/allinone/callerid/b/t$k;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$k;->w:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic O(Lcom/allinone/callerid/b/t$k;)Lcom/allinone/callerid/b/w;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$k;->z:Lcom/allinone/callerid/b/w;

    return-object p0
.end method

.method static synthetic P(Lcom/allinone/callerid/b/t$k;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$k;->y:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic Q(Lcom/allinone/callerid/b/t$k;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$k;->u:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic R(Lcom/allinone/callerid/b/t$k;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$k;->x:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic S(Lcom/allinone/callerid/b/t$k;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$k;->v:Landroid/widget/ImageView;

    return-object p0
.end method
