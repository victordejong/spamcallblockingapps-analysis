.class public Lcom/allinone/callerid/b/j;
.super Landroid/widget/BaseAdapter;
.source "DialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/j$f;
    }
.end annotation


# instance fields
.field private final d:I

.field private final e:I

.field private f:Landroid/content/Context;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/view/LayoutInflater;

.field private j:Landroid/widget/ListView;

.field k:Lcom/allinone/callerid/b/j$f;

.field private l:Landroid/widget/LinearLayout;

.field private m:Lcom/github/clans/fab/FloatingActionButton;

.field private n:I

.field private o:Landroid/widget/RelativeLayout;

.field private p:I

.field private q:I

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;Landroid/widget/ListView;Landroid/widget/LinearLayout;Lcom/github/clans/fab/FloatingActionButton;Landroid/widget/RelativeLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/widget/ListView;",
            "Landroid/widget/LinearLayout;",
            "Lcom/github/clans/fab/FloatingActionButton;",
            "Landroid/widget/RelativeLayout;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/b/j;->h:Ljava/util/HashMap;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/b/j;->f:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/allinone/callerid/b/j;->i:Landroid/view/LayoutInflater;

    .line 6
    iput-object p4, p0, Lcom/allinone/callerid/b/j;->j:Landroid/widget/ListView;

    .line 7
    iput-object p3, p0, Lcom/allinone/callerid/b/j;->h:Ljava/util/HashMap;

    .line 8
    iput-object p5, p0, Lcom/allinone/callerid/b/j;->l:Landroid/widget/LinearLayout;

    .line 9
    iput-object p6, p0, Lcom/allinone/callerid/b/j;->m:Lcom/github/clans/fab/FloatingActionButton;

    .line 10
    iput-object p7, p0, Lcom/allinone/callerid/b/j;->o:Landroid/widget/RelativeLayout;

    const p2, 0x7f040117

    const p3, 0x7f060047

    .line 11
    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result p4

    iput p4, p0, Lcom/allinone/callerid/b/j;->p:I

    const p4, 0x7f040146

    const p5, 0x7f06004d

    .line 12
    invoke-static {p1, p4, p5}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result p4

    iput p4, p0, Lcom/allinone/callerid/b/j;->q:I

    const p4, 0x7f04011a

    const p5, 0x7f060051

    .line 13
    invoke-static {p1, p4, p5}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result p4

    iput p4, p0, Lcom/allinone/callerid/b/j;->r:I

    .line 14
    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/j;->s:I

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/b/j;->f:Landroid/content/Context;

    const p2, 0x7f04007c

    const p3, 0x7f0800bb

    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/j;->d:I

    .line 16
    iget-object p1, p0, Lcom/allinone/callerid/b/j;->f:Landroid/content/Context;

    const p2, 0x7f04007d

    const p3, 0x7f0800be

    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/j;->e:I

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/b/j;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/j;->j:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic b(Lcom/allinone/callerid/b/j;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/b/j;->n:I

    return p0
.end method

.method static synthetic c(Lcom/allinone/callerid/b/j;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/b/j;->n:I

    return p1
.end method

.method static synthetic d(Lcom/allinone/callerid/b/j;)Lcom/github/clans/fab/FloatingActionButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/j;->m:Lcom/github/clans/fab/FloatingActionButton;

    return-object p0
.end method

.method static synthetic e(Lcom/allinone/callerid/b/j;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/j;->l:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic f(Lcom/allinone/callerid/b/j;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lcom/allinone/callerid/b/j;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/j;->f:Landroid/content/Context;

    return-object p0
.end method

.method private h(Landroid/view/View;Lcom/allinone/callerid/search/CallLogBean;I)V
    .locals 0

    .line 1
    new-instance p3, Lcom/allinone/callerid/b/j$e;

    invoke-direct {p3, p0, p2}, Lcom/allinone/callerid/b/j$e;-><init>(Lcom/allinone/callerid/b/j;Lcom/allinone/callerid/search/CallLogBean;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/b/j;->getItemViewType(I)I

    const-string v0, ""

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/allinone/callerid/b/j;->i:Landroid/view/LayoutInflater;

    const v3, 0x7f0c0075

    invoke-virtual {p2, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 3
    new-instance p3, Lcom/allinone/callerid/b/j$f;

    const/4 v3, 0x0

    invoke-direct {p3, v3}, Lcom/allinone/callerid/b/j$f;-><init>(Lcom/allinone/callerid/b/j$a;)V

    iput-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    const v3, 0x7f0900c3

    .line 4
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p3, Lcom/allinone/callerid/b/j$f;->a:Landroid/widget/ImageView;

    .line 5
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    const v3, 0x7f0900c4

    .line 6
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p3, Lcom/allinone/callerid/b/j$f;->m:Landroid/widget/ImageView;

    .line 7
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    const v3, 0x7f0900c5

    .line 8
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p3, Lcom/allinone/callerid/b/j$f;->n:Landroid/widget/ImageView;

    .line 9
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p3, p3, Lcom/allinone/callerid/b/j$f;->m:Landroid/widget/ImageView;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p3, p3, Lcom/allinone/callerid/b/j$f;->n:Landroid/widget/ImageView;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    const v3, 0x7f09041a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p3, Lcom/allinone/callerid/b/j$f;->b:Landroid/widget/TextView;

    .line 12
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    const v3, 0x7f0905dd

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p3, Lcom/allinone/callerid/b/j$f;->c:Landroid/widget/TextView;

    .line 13
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    const v3, 0x7f09007b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p3, Lcom/allinone/callerid/b/j$f;->d:Landroid/widget/TextView;

    .line 14
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    const v3, 0x7f09065e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p3, Lcom/allinone/callerid/b/j$f;->h:Landroid/widget/TextView;

    .line 15
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    const v3, 0x7f0906f5

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p3, Lcom/allinone/callerid/b/j$f;->i:Landroid/widget/TextView;

    .line 16
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    const v3, 0x7f090765

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p3, Lcom/allinone/callerid/b/j$f;->e:Landroid/widget/TextView;

    .line 17
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    const v3, 0x7f090663

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p3, Lcom/allinone/callerid/b/j$f;->f:Landroid/widget/TextView;

    .line 18
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    const v3, 0x7f0904dd

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p3, Lcom/allinone/callerid/b/j$f;->g:Landroid/widget/RelativeLayout;

    .line 19
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p3, p3, Lcom/allinone/callerid/b/j$f;->e:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p3, p3, Lcom/allinone/callerid/b/j$f;->f:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p3, p3, Lcom/allinone/callerid/b/j$f;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 22
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p3, p3, Lcom/allinone/callerid/b/j$f;->i:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p3, p3, Lcom/allinone/callerid/b/j$f;->e:Landroid/widget/TextView;

    iget v3, p0, Lcom/allinone/callerid/b/j;->d:I

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 24
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p3, p3, Lcom/allinone/callerid/b/j$f;->e:Landroid/widget/TextView;

    iget v3, p0, Lcom/allinone/callerid/b/j;->r:I

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    const v3, 0x7f0900bd

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p3, Lcom/allinone/callerid/b/j$f;->j:Landroid/widget/ImageView;

    .line 26
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    const v3, 0x7f0900be

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p3, Lcom/allinone/callerid/b/j$f;->k:Landroid/widget/ImageView;

    .line 27
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    const v3, 0x7f090260

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p3, Lcom/allinone/callerid/b/j$f;->l:Landroid/widget/ImageView;

    .line 28
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p3, p3, Lcom/allinone/callerid/b/j$f;->l:Landroid/widget/ImageView;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p3, p3, Lcom/allinone/callerid/b/j$f;->h:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p3, p3, Lcom/allinone/callerid/b/j$f;->h:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    const v3, 0x7f090469

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/allinone/callerid/customview/ProgressWheel;

    iput-object v3, p3, Lcom/allinone/callerid/b/j$f;->o:Lcom/allinone/callerid/customview/ProgressWheel;

    .line 32
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    const v3, 0x7f0904bf

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p3, Lcom/allinone/callerid/b/j$f;->p:Landroid/widget/FrameLayout;

    .line 33
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    const v3, 0x7f0904be

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p3, Lcom/allinone/callerid/b/j$f;->q:Landroid/widget/RelativeLayout;

    .line 34
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    const v3, 0x7f0904ce

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p3, Lcom/allinone/callerid/b/j$f;->r:Landroid/view/View;

    .line 35
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p3, p3, Lcom/allinone/callerid/b/j$f;->r:Landroid/view/View;

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    const v3, 0x7f090509

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p3, Lcom/allinone/callerid/b/j$f;->s:Landroid/view/View;

    .line 37
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p3, p3, Lcom/allinone/callerid/b/j$f;->s:Landroid/view/View;

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    const v3, 0x7f090491

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p3, Lcom/allinone/callerid/b/j$f;->t:Landroid/widget/ImageView;

    .line 39
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p3, p3, Lcom/allinone/callerid/b/j$f;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 40
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p3, p3, Lcom/allinone/callerid/b/j$f;->h:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 41
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p3, p3, Lcom/allinone/callerid/b/j$f;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 42
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p3, p3, Lcom/allinone/callerid/b/j$f;->i:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 43
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p3, p3, Lcom/allinone/callerid/b/j$f;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 44
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p3, p3, Lcom/allinone/callerid/b/j$f;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 45
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p3, p3, Lcom/allinone/callerid/b/j$f;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->a()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/b/j$f;

    iput-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    .line 48
    :goto_0
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p3, p3, Lcom/allinone/callerid/b/j$f;->t:Landroid/widget/ImageView;

    const v3, 0x7f0801b4

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p3, p3, Lcom/allinone/callerid/b/j$f;->b:Landroid/widget/TextView;

    iget v4, p0, Lcom/allinone/callerid/b/j;->p:I

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p3, p3, Lcom/allinone/callerid/b/j$f;->h:Landroid/widget/TextView;

    iget v4, p0, Lcom/allinone/callerid/b/j;->q:I

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p3, p3, Lcom/allinone/callerid/b/j$f;->i:Landroid/widget/TextView;

    iget v4, p0, Lcom/allinone/callerid/b/j;->q:I

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p3, p3, Lcom/allinone/callerid/b/j$f;->c:Landroid/widget/TextView;

    iget v4, p0, Lcom/allinone/callerid/b/j;->q:I

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    iget-object p3, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/search/CallLogBean;

    .line 54
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->Z()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->Y()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->A()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    goto :goto_1

    .line 55
    :cond_1
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v4, v4, Lcom/allinone/callerid/b/j$f;->o:Lcom/allinone/callerid/customview/ProgressWheel;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 56
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v4, v4, Lcom/allinone/callerid/b/j$f;->o:Lcom/allinone/callerid/customview/ProgressWheel;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :goto_2
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->o:Landroid/widget/RelativeLayout;

    if-nez v4, :cond_3

    .line 58
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v4, v4, Lcom/allinone/callerid/b/j$f;->o:Lcom/allinone/callerid/customview/ProgressWheel;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    :cond_3
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v4

    const-string v5, "facebook_ad"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 60
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v4, v4, Lcom/allinone/callerid/b/j$f;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v4, v4, Lcom/allinone/callerid/b/j$f;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    .line 62
    :cond_4
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v4, v4, Lcom/allinone/callerid/b/j$f;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v4, v4, Lcom/allinone/callerid/b/j$f;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 64
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v4, v4, Lcom/allinone/callerid/b/j$f;->s:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v4, v4, Lcom/allinone/callerid/b/j$f;->f:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const/4 v4, 0x1

    .line 66
    :try_start_0
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v4, :cond_6

    if-lez p1, :cond_6

    iget-object v6, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    add-int/lit8 v7, p1, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v6}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 67
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v6}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v6

    .line 68
    iget-object v7, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v7}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v7

    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 70
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v6, v6, Lcom/allinone/callerid/b/j$f;->f:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v6, v6, Lcom/allinone/callerid/b/j$f;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 72
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v6, v6, Lcom/allinone/callerid/b/j$f;->s:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 73
    :cond_5
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v6, v6, Lcom/allinone/callerid/b/j$f;->f:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v6, v6, Lcom/allinone/callerid/b/j$f;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 75
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v6, v6, Lcom/allinone/callerid/b/j$f;->s:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 76
    :cond_6
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    if-lez p1, :cond_7

    iget-object v6, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    add-int/lit8 v7, p1, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v6}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 77
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v6, v6, Lcom/allinone/callerid/b/j$f;->f:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v6, v6, Lcom/allinone/callerid/b/j$f;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 79
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v6, v6, Lcom/allinone/callerid/b/j$f;->s:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v6

    .line 80
    iget-object v7, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v7, v7, Lcom/allinone/callerid/b/j$f;->f:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v7, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v7, v7, Lcom/allinone/callerid/b/j$f;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 82
    iget-object v7, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v7, v7, Lcom/allinone/callerid/b/j$f;->s:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_4
    if-nez p1, :cond_8

    .line 84
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v6}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 85
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v6, v6, Lcom/allinone/callerid/b/j$f;->f:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v6, v6, Lcom/allinone/callerid/b/j$f;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 87
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v6, v6, Lcom/allinone/callerid/b/j$f;->s:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->l:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_9

    .line 89
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v6, v6, Lcom/allinone/callerid/b/j$f;->l:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 90
    :cond_8
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v6, v6, Lcom/allinone/callerid/b/j$f;->l:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    :cond_9
    :goto_5
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v6, v6, Lcom/allinone/callerid/b/j$f;->l:Landroid/widget/ImageView;

    new-instance v7, Lcom/allinone/callerid/b/j$a;

    invoke-direct {v7, p0}, Lcom/allinone/callerid/b/j$a;-><init>(Lcom/allinone/callerid/b/j;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->l:Landroid/widget/LinearLayout;

    if-nez v6, :cond_a

    .line 93
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v6, v6, Lcom/allinone/callerid/b/j$f;->j:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    :cond_a
    :try_start_1
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    if-eqz v6, :cond_10

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v4, :cond_10

    if-lez p1, :cond_10

    iget-object v6, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    add-int/lit8 v7, p1, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v6}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 95
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v5

    .line 96
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v6}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v6

    .line 97
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 98
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-eq p1, v5, :cond_c

    .line 99
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    add-int/lit8 v6, p1, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v5

    .line 100
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v6}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto/16 :goto_6

    .line 102
    :cond_b
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->r:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 103
    :cond_c
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->r:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 104
    :cond_d
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-eq p1, v5, :cond_f

    .line 105
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    add-int/lit8 v6, p1, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v5

    .line 106
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v6}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v6

    .line 107
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto/16 :goto_6

    .line 108
    :cond_e
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->r:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 109
    :cond_f
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->r:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 110
    :cond_10
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    if-eq p1, v6, :cond_14

    .line 111
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    add-int/lit8 v7, p1, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v6}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v6

    .line 112
    iget-object v7, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v7}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v7

    .line 113
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    goto :goto_6

    :cond_11
    if-ne p1, v4, :cond_12

    .line 114
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->g:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v6}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 115
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->r:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_12
    if-nez p1, :cond_13

    .line 116
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->r:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 117
    :cond_13
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->r:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 118
    :cond_14
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->r:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v5

    .line 119
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v6, v6, Lcom/allinone/callerid/b/j$f;->r:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    :goto_6
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 122
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->d:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 124
    :cond_15
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    :goto_7
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->Y()Z

    move-result v5

    if-nez v5, :cond_18

    .line 127
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 128
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->e:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->e:Landroid/widget/TextView;

    iget v6, p0, Lcom/allinone/callerid/b/j;->d:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 130
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->e:Landroid/widget/TextView;

    iget v6, p0, Lcom/allinone/callerid/b/j;->r:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->e:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 132
    :cond_16
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 133
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->e:Landroid/widget/TextView;

    iget v6, p0, Lcom/allinone/callerid/b/j;->e:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 134
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->e:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->e:Landroid/widget/TextView;

    iget v6, p0, Lcom/allinone/callerid/b/j;->s:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->e:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/allinone/callerid/b/j;->f:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1001aa

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 137
    :cond_17
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->e:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 138
    :cond_18
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->e:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    :goto_8
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1a

    .line 140
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    goto :goto_9

    .line 141
    :cond_19
    iget-object v6, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v6, v6, Lcom/allinone/callerid/b/j$f;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 142
    :cond_1a
    :goto_9
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1b

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 143
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 144
    :cond_1b
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->d()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1c

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 145
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 146
    :cond_1c
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1d

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 147
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 148
    :cond_1d
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1f

    .line 149
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 150
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->b:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/allinone/callerid/b/j;->f:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100353

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 151
    :cond_1e
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_1f
    :goto_a
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->O()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-eq v5, v4, :cond_24

    if-eq v5, v6, :cond_23

    const v8, 0x7f080170

    if-eq v5, v7, :cond_22

    const/4 v9, 0x5

    if-eq v5, v9, :cond_21

    const/16 v9, 0x9

    if-eq v5, v9, :cond_20

    .line 153
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->a:Landroid/widget/ImageView;

    .line 154
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 155
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->m:Landroid/widget/ImageView;

    .line 156
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 157
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->n:Landroid/widget/ImageView;

    .line 158
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_b

    .line 159
    :cond_20
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->a:Landroid/widget/ImageView;

    .line 160
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 161
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->m:Landroid/widget/ImageView;

    .line 162
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 163
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->n:Landroid/widget/ImageView;

    .line 164
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_b

    .line 165
    :cond_21
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->a:Landroid/widget/ImageView;

    .line 166
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 167
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->m:Landroid/widget/ImageView;

    .line 168
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 169
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->n:Landroid/widget/ImageView;

    .line 170
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_b

    .line 171
    :cond_22
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->a:Landroid/widget/ImageView;

    .line 172
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 173
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->m:Landroid/widget/ImageView;

    .line 174
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 175
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->n:Landroid/widget/ImageView;

    .line 176
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_b

    .line 177
    :cond_23
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->a:Landroid/widget/ImageView;

    const v8, 0x7f080171

    .line 178
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 179
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->m:Landroid/widget/ImageView;

    .line 180
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 181
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->n:Landroid/widget/ImageView;

    .line 182
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_b

    .line 183
    :cond_24
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->a:Landroid/widget/ImageView;

    const v8, 0x7f08016f

    .line 184
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 185
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->m:Landroid/widget/ImageView;

    .line 186
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 187
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v5, v5, Lcom/allinone/callerid/b/j$f;->n:Landroid/widget/ImageView;

    .line 188
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 189
    :goto_b
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->h:Ljava/util/HashMap;

    if-eqz v5, :cond_28

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-eqz v5, :cond_28

    .line 190
    iget-object v5, p0, Lcom/allinone/callerid/b/j;->h:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->M()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_28

    .line 191
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_25

    .line 192
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v4, v4, Lcom/allinone/callerid/b/j$f;->m:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v4, v4, Lcom/allinone/callerid/b/j$f;->n:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v4, v4, Lcom/allinone/callerid/b/j$f;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v4, v4, Lcom/allinone/callerid/b/j$f;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c

    :cond_25
    if-ne v5, v6, :cond_26

    .line 196
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v4, v4, Lcom/allinone/callerid/b/j$f;->m:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v4, v4, Lcom/allinone/callerid/b/j$f;->n:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v4, v4, Lcom/allinone/callerid/b/j$f;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v4, v4, Lcom/allinone/callerid/b/j$f;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c

    :cond_26
    if-ne v5, v7, :cond_27

    .line 200
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v4, v4, Lcom/allinone/callerid/b/j$f;->m:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v4, v4, Lcom/allinone/callerid/b/j$f;->n:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v4, v4, Lcom/allinone/callerid/b/j$f;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v4, v4, Lcom/allinone/callerid/b/j$f;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c

    :cond_27
    if-le v5, v7, :cond_28

    .line 204
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v4, v4, Lcom/allinone/callerid/b/j$f;->m:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v4, v4, Lcom/allinone/callerid/b/j$f;->n:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v4, v4, Lcom/allinone/callerid/b/j$f;->h:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v4, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v4, v4, Lcom/allinone/callerid/b/j$f;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    :cond_28
    :goto_c
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->B()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_29

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->B()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 209
    iget-object v2, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v2, v2, Lcom/allinone/callerid/b/j$f;->i:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->B()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v2, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v2, v2, Lcom/allinone/callerid/b/j$f;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d

    .line 211
    :cond_29
    iget-object v1, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v1, v1, Lcom/allinone/callerid/b/j$f;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v1, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v1, v1, Lcom/allinone/callerid/b/j$f;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    :goto_d
    iget-object v1, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v1, v1, Lcom/allinone/callerid/b/j$f;->c:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->T()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v1, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v1, v1, Lcom/allinone/callerid/b/j$f;->j:Landroid/widget/ImageView;

    invoke-direct {p0, v1, p3, p1}, Lcom/allinone/callerid/b/j;->h(Landroid/view/View;Lcom/allinone/callerid/search/CallLogBean;I)V

    .line 215
    iget-object v1, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v1, v1, Lcom/allinone/callerid/b/j$f;->p:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/allinone/callerid/b/j$b;

    invoke-direct {v2, p0, p1}, Lcom/allinone/callerid/b/j$b;-><init>(Lcom/allinone/callerid/b/j;I)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v1, p0, Lcom/allinone/callerid/b/j;->l:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2a

    .line 217
    iget-object v1, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v1, v1, Lcom/allinone/callerid/b/j$f;->p:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/allinone/callerid/b/j$c;

    invoke-direct {v2, p0, p1}, Lcom/allinone/callerid/b/j$c;-><init>(Lcom/allinone/callerid/b/j;I)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 218
    :cond_2a
    iget-object p1, p0, Lcom/allinone/callerid/b/j;->j:Landroid/widget/ListView;

    new-instance v1, Lcom/allinone/callerid/b/j$d;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/b/j$d;-><init>(Lcom/allinone/callerid/b/j;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 219
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f0801b5

    if-eqz p1, :cond_2b

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    .line 220
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2b

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    .line 221
    iget-object p1, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p1, p1, Lcom/allinone/callerid/b/j$f;->t:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v3, 0x7f0801b5

    goto :goto_e

    .line 222
    :cond_2b
    iget-object p1, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object p1, p1, Lcom/allinone/callerid/b/j$f;->t:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    :goto_e
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2c

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    .line 224
    iget-object p1, p0, Lcom/allinone/callerid/b/j;->f:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/allinone/callerid/b/j;->k:Lcom/allinone/callerid/b/j$f;

    iget-object v0, v0, Lcom/allinone/callerid/b/j$f;->t:Landroid/widget/ImageView;

    invoke-static {p1, p3, v3, v0}, Lcom/allinone/callerid/util/t;->b(Landroid/content/Context;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    :cond_2c
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
