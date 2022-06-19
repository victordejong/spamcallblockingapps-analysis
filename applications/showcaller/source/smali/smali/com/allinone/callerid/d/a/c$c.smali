.class Lcom/allinone/callerid/d/a/c$c;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "ManageDiyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/d/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private u:Landroid/widget/FrameLayout;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0902a8

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/d/a/c$c;->u:Landroid/widget/FrameLayout;

    const v0, 0x7f0902a9

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/d/a/c$c;->v:Landroid/widget/ImageView;

    const v0, 0x7f090315

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/d/a/c$c;->w:Landroid/widget/ImageView;

    const v0, 0x7f0900d3

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/allinone/callerid/d/a/c$c;->x:Landroid/widget/CheckBox;

    return-void
.end method

.method static synthetic M(Lcom/allinone/callerid/d/a/c$c;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/a/c$c;->x:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic N(Lcom/allinone/callerid/d/a/c$c;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/a/c$c;->w:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic O(Lcom/allinone/callerid/d/a/c$c;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/a/c$c;->v:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic P(Lcom/allinone/callerid/d/a/c$c;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/a/c$c;->u:Landroid/widget/FrameLayout;

    return-object p0
.end method
