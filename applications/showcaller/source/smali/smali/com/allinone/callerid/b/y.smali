.class public Lcom/allinone/callerid/b/y;
.super Lcom/allinone/callerid/b/z/b;
.source "SubtypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/y$b;,
        Lcom/allinone/callerid/b/y$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/allinone/callerid/b/z/b<",
        "Lcom/allinone/callerid/bean/SubType;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Landroid/content/Context;

.field private g:Landroid/graphics/Typeface;

.field private h:Z

.field private i:I

.field private j:Lcom/allinone/callerid/b/y$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/bean/SubType;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/b/z/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/b/y;->f:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/b/y;->g:Landroid/graphics/Typeface;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/allinone/callerid/b/y;->h:Z

    return-void
.end method

.method static synthetic D(Lcom/allinone/callerid/b/y;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/b/y;->h:Z

    return p0
.end method

.method static synthetic E(Lcom/allinone/callerid/b/y;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/b/y;->h:Z

    return p1
.end method

.method static synthetic F(Lcom/allinone/callerid/b/y;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/y;->f:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic G(Lcom/allinone/callerid/b/y;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/b/y;->i:I

    return p0
.end method

.method static synthetic H(Lcom/allinone/callerid/b/y;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/b/y;->i:I

    return p1
.end method

.method static synthetic I(Lcom/allinone/callerid/b/y;)Lcom/allinone/callerid/b/y$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/y;->j:Lcom/allinone/callerid/b/y$b;

    return-object p0
.end method

.method static synthetic J(Lcom/allinone/callerid/b/y;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/y;->g:Landroid/graphics/Typeface;

    return-object p0
.end method


# virtual methods
.method public K(Lcom/allinone/callerid/b/y$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/y;->j:Lcom/allinone/callerid/b/y$b;

    return-void
.end method

.method public p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 4

    .line 1
    check-cast p1, Lcom/allinone/callerid/b/y$c;

    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/allinone/callerid/bean/SubType;

    .line 3
    invoke-static {p1}, Lcom/allinone/callerid/b/y$c;->M(Lcom/allinone/callerid/b/y$c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/allinone/callerid/bean/SubType;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p2}, Lcom/allinone/callerid/bean/SubType;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p1}, Lcom/allinone/callerid/b/y$c;->N(Lcom/allinone/callerid/b/y$c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    invoke-static {p1}, Lcom/allinone/callerid/b/y$c;->N(Lcom/allinone/callerid/b/y$c;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/allinone/callerid/bean/SubType;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/allinone/callerid/b/y$c;->N(Lcom/allinone/callerid/b/y$c;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    :goto_0
    invoke-virtual {p2}, Lcom/allinone/callerid/bean/SubType;->isIs_has_bg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {p1}, Lcom/allinone/callerid/b/y$c;->O(Lcom/allinone/callerid/b/y$c;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 10
    invoke-static {p1}, Lcom/allinone/callerid/b/y$c;->P(Lcom/allinone/callerid/b/y$c;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x7f0802d1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 11
    invoke-static {p1}, Lcom/allinone/callerid/b/y$c;->M(Lcom/allinone/callerid/b/y$c;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/b/y;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060126

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {p1}, Lcom/allinone/callerid/b/y$c;->O(Lcom/allinone/callerid/b/y$c;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 13
    invoke-static {p1}, Lcom/allinone/callerid/b/y$c;->P(Lcom/allinone/callerid/b/y$c;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x7f0802d2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 14
    invoke-static {p1}, Lcom/allinone/callerid/b/y$c;->M(Lcom/allinone/callerid/b/y$c;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/b/y;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    :goto_1
    invoke-static {p1}, Lcom/allinone/callerid/b/y$c;->P(Lcom/allinone/callerid/b/y$c;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/b/y$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/allinone/callerid/b/y$a;-><init>(Lcom/allinone/callerid/b/y;Lcom/allinone/callerid/b/y$c;Lcom/allinone/callerid/bean/SubType;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public r(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 3

    .line 1
    new-instance p2, Lcom/allinone/callerid/b/y$c;

    iget-object v0, p0, Lcom/allinone/callerid/b/z/b;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0142

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/allinone/callerid/b/y$c;-><init>(Lcom/allinone/callerid/b/y;Landroid/view/View;Lcom/allinone/callerid/b/y$a;)V

    return-object p2
.end method
