.class Lcom/allinone/callerid/b/z/a$b;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "AddCustomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/b/z/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private u:Landroid/widget/FrameLayout;

.field private v:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    const v1, 0x7f090116

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/allinone/callerid/b/z/a$b;->u:Landroid/widget/FrameLayout;

    const v1, 0x7f090119

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/allinone/callerid/b/z/a$b;->v:Landroid/widget/LinearLayout;

    const v1, 0x7f090117

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/b/z/a$b;->w:Landroid/widget/ImageView;

    const v1, 0x7f090118

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/b/z/a$b;->x:Landroid/widget/ImageView;

    const v1, 0x7f09011a

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allinone/callerid/b/z/a$b;->y:Landroid/widget/TextView;

    const v1, 0x7f09011b

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/allinone/callerid/b/z/a$b;->z:Landroid/widget/TextView;

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/b/z/a$b;->y:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/b/z/a$b;->z:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic M(Lcom/allinone/callerid/b/z/a$b;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/a$b;->y:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic N(Lcom/allinone/callerid/b/z/a$b;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/a$b;->z:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic O(Lcom/allinone/callerid/b/z/a$b;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/a$b;->w:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic P(Lcom/allinone/callerid/b/z/a$b;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/a$b;->x:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic Q(Lcom/allinone/callerid/b/z/a$b;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/a$b;->u:Landroid/widget/FrameLayout;

    return-object p0
.end method
