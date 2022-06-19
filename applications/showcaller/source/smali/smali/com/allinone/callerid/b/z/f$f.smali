.class Lcom/allinone/callerid/b/z/f$f;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "RecordListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/b/z/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/widget/FrameLayout;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/FrameLayout;

.field private E:Landroid/widget/RelativeLayout;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/ImageView;

.field private H:Landroid/widget/ImageView;

.field private I:Landroid/widget/LinearLayout;

.field final synthetic J:Lcom/allinone/callerid/b/z/f;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/z/f;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/z/f$f;->J:Lcom/allinone/callerid/b/z/f;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    const v0, 0x7f090587

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/f$f;->G:Landroid/widget/ImageView;

    const v0, 0x7f0903be

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/f$f;->I:Landroid/widget/LinearLayout;

    const v0, 0x7f09058f

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/f$f;->u:Landroid/widget/TextView;

    const v0, 0x7f09058e

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/f$f;->v:Landroid/widget/ImageView;

    const v0, 0x7f090588

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/f$f;->w:Landroid/widget/TextView;

    const v0, 0x7f09058d

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/f$f;->x:Landroid/widget/TextView;

    const v0, 0x7f09058c

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/f$f;->y:Landroid/widget/TextView;

    const v0, 0x7f090590

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/f$f;->z:Landroid/widget/TextView;

    const v0, 0x7f090589

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/f$f;->A:Landroid/widget/LinearLayout;

    const v0, 0x7f090586

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/f$f;->B:Landroid/widget/FrameLayout;

    const v0, 0x7f090593

    .line 13
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/f$f;->C:Landroid/widget/TextView;

    const v0, 0x7f09058a

    .line 14
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/f$f;->D:Landroid/widget/FrameLayout;

    const v0, 0x7f090591

    .line 15
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/f$f;->E:Landroid/widget/RelativeLayout;

    const v0, 0x7f090592

    .line 16
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/f$f;->F:Landroid/widget/TextView;

    const v0, 0x7f0902b6

    .line 17
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/allinone/callerid/b/z/f$f;->H:Landroid/widget/ImageView;

    .line 18
    iget-object p2, p0, Lcom/allinone/callerid/b/z/f$f;->u:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/f;->E(Lcom/allinone/callerid/b/z/f;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 19
    iget-object p2, p0, Lcom/allinone/callerid/b/z/f$f;->w:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/f;->E(Lcom/allinone/callerid/b/z/f;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 20
    iget-object p2, p0, Lcom/allinone/callerid/b/z/f$f;->x:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/f;->E(Lcom/allinone/callerid/b/z/f;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 21
    iget-object p2, p0, Lcom/allinone/callerid/b/z/f$f;->y:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/f;->E(Lcom/allinone/callerid/b/z/f;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 22
    iget-object p2, p0, Lcom/allinone/callerid/b/z/f$f;->z:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/f;->E(Lcom/allinone/callerid/b/z/f;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 23
    iget-object p2, p0, Lcom/allinone/callerid/b/z/f$f;->C:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/f;->E(Lcom/allinone/callerid/b/z/f;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 24
    iget-object p2, p0, Lcom/allinone/callerid/b/z/f$f;->F:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/f;->E(Lcom/allinone/callerid/b/z/f;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic M(Lcom/allinone/callerid/b/z/f$f;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/f$f;->u:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic N(Lcom/allinone/callerid/b/z/f$f;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/f$f;->v:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic O(Lcom/allinone/callerid/b/z/f$f;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/f$f;->G:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic P(Lcom/allinone/callerid/b/z/f$f;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/f$f;->A:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic Q(Lcom/allinone/callerid/b/z/f$f;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/f$f;->E:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic R(Lcom/allinone/callerid/b/z/f$f;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/f$f;->F:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic S(Lcom/allinone/callerid/b/z/f$f;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/f$f;->H:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic T(Lcom/allinone/callerid/b/z/f$f;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/f$f;->y:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic U(Lcom/allinone/callerid/b/z/f$f;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/f$f;->z:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic V(Lcom/allinone/callerid/b/z/f$f;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/f$f;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic W(Lcom/allinone/callerid/b/z/f$f;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/f$f;->w:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic X(Lcom/allinone/callerid/b/z/f$f;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/f$f;->C:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic Y(Lcom/allinone/callerid/b/z/f$f;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/f$f;->B:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic Z(Lcom/allinone/callerid/b/z/f$f;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/f$f;->D:Landroid/widget/FrameLayout;

    return-object p0
.end method
