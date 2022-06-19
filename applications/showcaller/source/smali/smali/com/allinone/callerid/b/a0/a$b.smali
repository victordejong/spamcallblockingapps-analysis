.class Lcom/allinone/callerid/b/a0/a$b;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "DialogWeekAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/b/a0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private u:Landroid/widget/LinearLayout;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    const v1, 0x7f0902a6

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/allinone/callerid/b/a0/a$b;->u:Landroid/widget/LinearLayout;

    const v1, 0x7f0902a7

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allinone/callerid/b/a0/a$b;->v:Landroid/widget/TextView;

    const v1, 0x7f0902a5

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/allinone/callerid/b/a0/a$b;->w:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/b/a0/a$b;->v:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic M(Lcom/allinone/callerid/b/a0/a$b;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/a0/a$b;->v:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic N(Lcom/allinone/callerid/b/a0/a$b;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/a0/a$b;->w:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic O(Lcom/allinone/callerid/b/a0/a$b;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/a0/a$b;->u:Landroid/widget/LinearLayout;

    return-object p0
.end method
