.class Lcom/allinone/callerid/b/z/g$h;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "StrangerRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/b/z/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/widget/FrameLayout;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/ImageView;

.field private E:Landroid/widget/FrameLayout;

.field private F:Landroid/widget/RelativeLayout;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/ImageView;

.field private I:Landroid/widget/LinearLayout;

.field final synthetic J:Lcom/allinone/callerid/b/z/g;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/z/g;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/z/g$h;->J:Lcom/allinone/callerid/b/z/g;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    const v0, 0x7f09058f

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/g$h;->u:Landroid/widget/TextView;

    const v0, 0x7f0903be

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/g$h;->I:Landroid/widget/LinearLayout;

    const v0, 0x7f09058e

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/g$h;->v:Landroid/widget/ImageView;

    const v0, 0x7f090588

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/g$h;->w:Landroid/widget/TextView;

    const v0, 0x7f09058d

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/g$h;->x:Landroid/widget/TextView;

    const v0, 0x7f09058c

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/g$h;->y:Landroid/widget/TextView;

    const v0, 0x7f090590

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/g$h;->z:Landroid/widget/TextView;

    const v0, 0x7f090589

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/g$h;->A:Landroid/widget/LinearLayout;

    const v0, 0x7f090586

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/g$h;->B:Landroid/widget/FrameLayout;

    const v0, 0x7f090593

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/g$h;->C:Landroid/widget/TextView;

    const v0, 0x7f090587

    .line 13
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/g$h;->D:Landroid/widget/ImageView;

    const v0, 0x7f09058a

    .line 14
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/g$h;->E:Landroid/widget/FrameLayout;

    const v0, 0x7f090591

    .line 15
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/g$h;->F:Landroid/widget/RelativeLayout;

    const v0, 0x7f090592

    .line 16
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/b/z/g$h;->G:Landroid/widget/TextView;

    const v0, 0x7f0902b6

    .line 17
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/allinone/callerid/b/z/g$h;->H:Landroid/widget/ImageView;

    .line 18
    iget-object p2, p0, Lcom/allinone/callerid/b/z/g$h;->u:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/g;->G(Lcom/allinone/callerid/b/z/g;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 19
    iget-object p2, p0, Lcom/allinone/callerid/b/z/g$h;->w:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/g;->G(Lcom/allinone/callerid/b/z/g;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 20
    iget-object p2, p0, Lcom/allinone/callerid/b/z/g$h;->x:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/g;->G(Lcom/allinone/callerid/b/z/g;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 21
    iget-object p2, p0, Lcom/allinone/callerid/b/z/g$h;->y:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/g;->G(Lcom/allinone/callerid/b/z/g;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 22
    iget-object p2, p0, Lcom/allinone/callerid/b/z/g$h;->z:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/g;->G(Lcom/allinone/callerid/b/z/g;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 23
    iget-object p2, p0, Lcom/allinone/callerid/b/z/g$h;->C:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/g;->G(Lcom/allinone/callerid/b/z/g;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 24
    iget-object p2, p0, Lcom/allinone/callerid/b/z/g$h;->G:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/g;->G(Lcom/allinone/callerid/b/z/g;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic M(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/g$h;->u:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic N(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/g$h;->v:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic O(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/g$h;->F:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic P(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/g$h;->G:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic Q(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/g$h;->H:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic R(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/g$h;->E:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic S(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/g$h;->y:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic T(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/g$h;->z:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic U(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/g$h;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic V(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/g$h;->C:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic W(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/g$h;->B:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic X(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/g$h;->A:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic Y(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/g$h;->w:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic Z(Lcom/allinone/callerid/b/z/g$h;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/g$h;->D:Landroid/widget/ImageView;

    return-object p0
.end method
