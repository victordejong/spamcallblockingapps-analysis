.class Lcom/allinone/callerid/b/z/c$b;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "ContactRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/b/z/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic A:Lcom/allinone/callerid/b/z/c;

.field private u:Landroid/widget/LinearLayout;

.field private v:Landroid/widget/RelativeLayout;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/FrameLayout;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/z/c;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/z/c$b;->A:Lcom/allinone/callerid/b/z/c;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0900eb

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/c$b;->u:Landroid/widget/LinearLayout;

    const v0, 0x7f0900ea

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/c$b;->v:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900ef

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/c$b;->w:Landroid/widget/TextView;

    const v0, 0x7f0900ec

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/c$b;->x:Landroid/widget/FrameLayout;

    const v0, 0x7f0900ee

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/c$b;->y:Landroid/widget/TextView;

    const v0, 0x7f09058b

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/allinone/callerid/b/z/c$b;->z:Landroid/widget/TextView;

    .line 9
    iget-object p2, p0, Lcom/allinone/callerid/b/z/c$b;->w:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/c;->F(Lcom/allinone/callerid/b/z/c;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object p2, p0, Lcom/allinone/callerid/b/z/c$b;->y:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/c;->F(Lcom/allinone/callerid/b/z/c;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    iget-object p2, p0, Lcom/allinone/callerid/b/z/c$b;->z:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/c;->F(Lcom/allinone/callerid/b/z/c;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic M(Lcom/allinone/callerid/b/z/c$b;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/c$b;->u:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic N(Lcom/allinone/callerid/b/z/c$b;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/c$b;->v:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic O(Lcom/allinone/callerid/b/z/c$b;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/c$b;->y:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic P(Lcom/allinone/callerid/b/z/c$b;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/c$b;->z:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic Q(Lcom/allinone/callerid/b/z/c$b;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/c$b;->x:Landroid/widget/FrameLayout;

    return-object p0
.end method
