.class public Lcom/allinone/callerid/b/g$c;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "CommentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private u:Landroid/widget/ImageView;

.field private v:Lcom/allinone/callerid/customview/ExpandableTextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field final synthetic z:Lcom/allinone/callerid/b/g;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/g;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/g$c;->z:Lcom/allinone/callerid/b/g;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    const v0, 0x7f090370

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/b/g$c;->u:Landroid/widget/ImageView;

    const v0, 0x7f090640

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/customview/ExpandableTextView;

    iput-object v0, p0, Lcom/allinone/callerid/b/g$c;->v:Lcom/allinone/callerid/customview/ExpandableTextView;

    const v0, 0x7f090642

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/b/g$c;->w:Landroid/widget/TextView;

    const v0, 0x7f090643

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/b/g$c;->x:Landroid/widget/TextView;

    const v0, 0x7f0907a8

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/allinone/callerid/b/g$c;->y:Landroid/widget/TextView;

    .line 8
    iget-object p2, p0, Lcom/allinone/callerid/b/g$c;->w:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/allinone/callerid/b/g;->B(Lcom/allinone/callerid/b/g;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    iget-object p2, p0, Lcom/allinone/callerid/b/g$c;->x:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/allinone/callerid/b/g;->B(Lcom/allinone/callerid/b/g;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object p2, p0, Lcom/allinone/callerid/b/g$c;->y:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/allinone/callerid/b/g;->B(Lcom/allinone/callerid/b/g;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic M(Lcom/allinone/callerid/b/g$c;)Lcom/allinone/callerid/customview/ExpandableTextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/g$c;->v:Lcom/allinone/callerid/customview/ExpandableTextView;

    return-object p0
.end method

.method static synthetic N(Lcom/allinone/callerid/b/g$c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/g$c;->w:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic O(Lcom/allinone/callerid/b/g$c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/g$c;->y:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic P(Lcom/allinone/callerid/b/g$c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/g$c;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic Q(Lcom/allinone/callerid/b/g$c;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/g$c;->u:Landroid/widget/ImageView;

    return-object p0
.end method
