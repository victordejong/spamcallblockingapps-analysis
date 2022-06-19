.class Lcom/allinone/callerid/b/z/e$b;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "ProblemRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/b/z/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private u:Landroid/widget/FrameLayout;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/RadioButton;

.field final synthetic x:Lcom/allinone/callerid/b/z/e;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/z/e;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/z/e$b;->x:Lcom/allinone/callerid/b/z/e;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0904a8

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/e$b;->u:Landroid/widget/FrameLayout;

    const v0, 0x7f0904a9

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/e$b;->v:Landroid/widget/TextView;

    const v0, 0x7f0904aa

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/allinone/callerid/b/z/e$b;->w:Landroid/widget/RadioButton;

    .line 6
    iget-object p2, p0, Lcom/allinone/callerid/b/z/e$b;->v:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/e;->F(Lcom/allinone/callerid/b/z/e;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic M(Lcom/allinone/callerid/b/z/e$b;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/e$b;->v:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic N(Lcom/allinone/callerid/b/z/e$b;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/e$b;->u:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic O(Lcom/allinone/callerid/b/z/e$b;)Landroid/widget/RadioButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/e$b;->w:Landroid/widget/RadioButton;

    return-object p0
.end method
