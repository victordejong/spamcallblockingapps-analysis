.class Lcom/allinone/callerid/b/y$c;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "SubtypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/b/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Landroid/widget/ProgressBar;

.field final synthetic y:Lcom/allinone/callerid/b/y;


# direct methods
.method private constructor <init>(Lcom/allinone/callerid/b/y;Landroid/view/View;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/b/y$c;->y:Lcom/allinone/callerid/b/y;

    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0907cb

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/b/y$c;->u:Landroid/widget/TextView;

    .line 5
    invoke-static {p1}, Lcom/allinone/callerid/b/y;->J(Lcom/allinone/callerid/b/y;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f0904c3

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/allinone/callerid/b/y$c;->w:Landroid/widget/RelativeLayout;

    const p1, 0x7f090419

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/allinone/callerid/b/y$c;->x:Landroid/widget/ProgressBar;

    const p1, 0x7f0903de

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/allinone/callerid/b/y$c;->v:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/allinone/callerid/b/y;Landroid/view/View;Lcom/allinone/callerid/b/y$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/b/y$c;-><init>(Lcom/allinone/callerid/b/y;Landroid/view/View;)V

    return-void
.end method

.method static synthetic M(Lcom/allinone/callerid/b/y$c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/y$c;->u:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic N(Lcom/allinone/callerid/b/y$c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/y$c;->v:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic O(Lcom/allinone/callerid/b/y$c;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/y$c;->x:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic P(Lcom/allinone/callerid/b/y$c;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/y$c;->w:Landroid/widget/RelativeLayout;

    return-object p0
.end method
