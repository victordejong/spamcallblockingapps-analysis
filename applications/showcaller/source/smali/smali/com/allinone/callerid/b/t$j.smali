.class Lcom/allinone/callerid/b/t$j;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "RecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/b/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/widget/FrameLayout;

.field private H:Landroid/widget/ImageView;

.field private I:Landroid/widget/ImageView;

.field private J:Landroid/widget/ImageView;

.field private K:Landroid/widget/ImageView;

.field private L:Landroid/widget/LinearLayout;

.field private M:Landroid/widget/LinearLayout;

.field private N:Landroid/widget/LinearLayout;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/f1;->a()Landroid/graphics/Typeface;

    move-result-object v1

    const v2, 0x7f090663

    .line 4
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/b/t$j;->u:Landroid/widget/TextView;

    const v2, 0x7f090491

    .line 5
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/allinone/callerid/b/t$j;->w:Landroid/widget/ImageView;

    const v2, 0x7f0900c3

    .line 6
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/allinone/callerid/b/t$j;->v:Landroid/widget/ImageView;

    const v2, 0x7f0902cb

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/allinone/callerid/b/t$j;->K:Landroid/widget/ImageView;

    const v2, 0x7f09030a

    .line 8
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/allinone/callerid/b/t$j;->J:Landroid/widget/ImageView;

    const v2, 0x7f0903ad

    .line 9
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/allinone/callerid/b/t$j;->L:Landroid/widget/LinearLayout;

    const v2, 0x7f09038e

    .line 10
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/allinone/callerid/b/t$j;->M:Landroid/widget/LinearLayout;

    const v2, 0x7f09038f

    .line 11
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/allinone/callerid/b/t$j;->N:Landroid/widget/LinearLayout;

    const v2, 0x7f09041a

    .line 12
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/b/t$j;->x:Landroid/widget/TextView;

    const v2, 0x7f090641

    .line 13
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/b/t$j;->C:Landroid/widget/TextView;

    const v2, 0x7f090716

    .line 14
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/b/t$j;->D:Landroid/widget/TextView;

    const v2, 0x7f0905dd

    .line 15
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/b/t$j;->y:Landroid/widget/TextView;

    const v2, 0x7f090765

    .line 16
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/b/t$j;->z:Landroid/widget/TextView;

    const v2, 0x7f09065e

    .line 17
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/b/t$j;->A:Landroid/widget/TextView;

    const v2, 0x7f0906f5

    .line 18
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/b/t$j;->B:Landroid/widget/TextView;

    const v2, 0x7f09007b

    .line 19
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/b/t$j;->E:Landroid/widget/TextView;

    const v2, 0x7f0900bd

    .line 20
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/allinone/callerid/b/t$j;->F:Landroid/widget/ImageView;

    const v2, 0x7f0904bf

    .line 21
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/allinone/callerid/b/t$j;->G:Landroid/widget/FrameLayout;

    const v2, 0x7f090320

    .line 22
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/allinone/callerid/b/t$j;->H:Landroid/widget/ImageView;

    const v2, 0x7f090321

    .line 23
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/allinone/callerid/b/t$j;->I:Landroid/widget/ImageView;

    .line 24
    iget-object p1, p0, Lcom/allinone/callerid/b/t$j;->x:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 25
    iget-object p1, p0, Lcom/allinone/callerid/b/t$j;->A:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 26
    iget-object p1, p0, Lcom/allinone/callerid/b/t$j;->y:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 27
    iget-object p1, p0, Lcom/allinone/callerid/b/t$j;->B:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 28
    iget-object p1, p0, Lcom/allinone/callerid/b/t$j;->D:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 29
    iget-object p1, p0, Lcom/allinone/callerid/b/t$j;->C:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 30
    iget-object p1, p0, Lcom/allinone/callerid/b/t$j;->z:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 31
    iget-object p1, p0, Lcom/allinone/callerid/b/t$j;->u:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic M(Lcom/allinone/callerid/b/t$j;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$j;->G:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic N(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$j;->w:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic O(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$j;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic P(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$j;->A:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic Q(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$j;->B:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic R(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$j;->y:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic S(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$j;->E:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic T(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$j;->H:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic U(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$j;->I:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic V(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$j;->K:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic W(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$j;->J:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic X(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$j;->C:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic Y(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$j;->D:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic Z(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$j;->u:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic a0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$j;->z:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$j;->v:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic c0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$j;->N:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic d0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$j;->F:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic e0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$j;->L:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic f0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t$j;->M:Landroid/widget/LinearLayout;

    return-object p0
.end method
