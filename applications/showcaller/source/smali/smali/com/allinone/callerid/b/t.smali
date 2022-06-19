.class public Lcom/allinone/callerid/b/t;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/t$j;,
        Lcom/allinone/callerid/b/t$k;,
        Lcom/allinone/callerid/b/t$l;,
        Lcom/allinone/callerid/b/t$m;
    }
.end annotation


# instance fields
.field private final d:Landroid/app/Activity;

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/view/LayoutInflater;

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

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/bean/SpamCall;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/content/Context;

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z

.field private final o:I

.field private final p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Lcom/allinone/callerid/b/t$m;

.field private z:Lcom/allinone/callerid/b/t$l;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/bean/SpamCall;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/16 v0, 0x3e7

    .line 2
    iput v0, p0, Lcom/allinone/callerid/b/t;->o:I

    const/16 v0, 0x3e9

    .line 3
    iput v0, p0, Lcom/allinone/callerid/b/t;->p:I

    .line 4
    iput-object p2, p0, Lcom/allinone/callerid/b/t;->j:Landroid/content/Context;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/b/t;->i:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/b/t;->f:Ljava/util/List;

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/b/t;->j:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/b/t;->g:Landroid/view/LayoutInflater;

    .line 9
    iput-object p2, p0, Lcom/allinone/callerid/b/t;->d:Landroid/app/Activity;

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/b/t;->j:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/b1;->j(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/allinone/callerid/b/t;->k:Z

    .line 11
    invoke-direct {p0}, Lcom/allinone/callerid/b/t;->N()V

    return-void
.end method

.method static synthetic C(Lcom/allinone/callerid/b/t;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t;->j:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic D(Lcom/allinone/callerid/b/t;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t;->d:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic E(Lcom/allinone/callerid/b/t;)Lcom/allinone/callerid/b/t$m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t;->y:Lcom/allinone/callerid/b/t$m;

    return-object p0
.end method

.method static synthetic F(Lcom/allinone/callerid/b/t;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/b/t;->k:Z

    return p0
.end method

.method static synthetic G(Lcom/allinone/callerid/b/t;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/b/t;->x:Z

    return p1
.end method

.method static synthetic H(Lcom/allinone/callerid/b/t;)Lcom/allinone/callerid/b/t$l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/t;->z:Lcom/allinone/callerid/b/t$l;

    return-object p0
.end method

.method static synthetic I(Lcom/allinone/callerid/b/t;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/b/t;->e:Z

    return p0
.end method

.method static synthetic J(Lcom/allinone/callerid/b/t;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/b/t;->e:Z

    return p1
.end method

.method private L(Landroid/view/View;Lcom/allinone/callerid/search/CallLogBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/b/t$i;

    invoke-direct {v0, p0, p2}, Lcom/allinone/callerid/b/t$i;-><init>(Lcom/allinone/callerid/b/t;Lcom/allinone/callerid/search/CallLogBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private N()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/t;->j:Landroid/content/Context;

    const v1, 0x7f040117

    const v2, 0x7f060047

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/b/t;->s:I

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/b/t;->j:Landroid/content/Context;

    const v3, 0x7f040146

    const v4, 0x7f06004d

    invoke-static {v0, v3, v4}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/b/t;->t:I

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/b/t;->j:Landroid/content/Context;

    const v3, 0x7f04011a

    const v4, 0x7f060051

    invoke-static {v0, v3, v4}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/b/t;->u:I

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/b/t;->j:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/b/t;->v:I

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/b/t;->j:Landroid/content/Context;

    const v1, 0x7f04007c

    const v2, 0x7f0800bb

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/b/t;->l:I

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/b/t;->j:Landroid/content/Context;

    const v1, 0x7f04007d

    const v2, 0x7f0800be

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/b/t;->m:I

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/b/t;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100353

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/b/t;->w:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A(Lcom/allinone/callerid/b/t$l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/t;->z:Lcom/allinone/callerid/b/t$l;

    return-void
.end method

.method public B(Lcom/allinone/callerid/b/t$m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/t;->y:Lcom/allinone/callerid/b/t$m;

    return-void
.end method

.method public K(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/SpamCall;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/b/t;->i:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/allinone/callerid/b/t;->i:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public M(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/t;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/b/t;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    iput-object p2, p0, Lcom/allinone/callerid/b/t;->h:Ljava/util/HashMap;

    return-void
.end method

.method public O(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/t;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/b/t;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public P(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/b/t;->n:Z

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/t;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public f(I)I
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0x3e7

    return p1

    :cond_0
    const/16 p1, 0x3e9

    return p1
.end method

.method public p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 1
    invoke-virtual {v1, v2}, Lcom/allinone/callerid/b/t;->f(I)I

    move-result v0

    const/16 v3, 0x3e7

    const v4, 0x7f1001aa

    const-string v5, " "

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x8

    if-eq v0, v3, :cond_27

    const/16 v3, 0x3e9

    if-eq v0, v3, :cond_0

    goto/16 :goto_f

    .line 2
    :cond_0
    :try_start_0
    move-object/from16 v3, p1

    check-cast v3, Lcom/allinone/callerid/b/t$j;

    .line 3
    iget-object v0, v1, Lcom/allinone/callerid/b/t;->f:Ljava/util/List;

    add-int/lit8 v9, v2, -0x1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/allinone/callerid/search/CallLogBean;

    .line 4
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->b0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->M(Lcom/allinone/callerid/b/t$j;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v10, v1, Lcom/allinone/callerid/b/t;->j:Landroid/content/Context;

    const v11, 0x7f040126

    const v12, 0x7f060060

    invoke-static {v10, v11, v12}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->M(Lcom/allinone/callerid/b/t$j;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :goto_0
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->N(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v0

    const v10, 0x7f0801b4

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->O(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    iget v11, v1, Lcom/allinone/callerid/b/t;->s:I

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->P(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    iget v11, v1, Lcom/allinone/callerid/b/t;->t:I

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->Q(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    iget v11, v1, Lcom/allinone/callerid/b/t;->t:I

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->R(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    iget v11, v1, Lcom/allinone/callerid/b/t;->t:I

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->S(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    iget v11, v1, Lcom/allinone/callerid/b/t;->t:I

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->T(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->U(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->V(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->W(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->X(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->Y(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-boolean v0, v1, Lcom/allinone/callerid/b/t;->k:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_4

    .line 20
    :try_start_1
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->C()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->C()Ljava/lang/String;

    move-result-object v0

    const-string v11, "0"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->T(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->U(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 24
    :cond_2
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->C()Ljava/lang/String;

    move-result-object v0

    const-string v11, "1"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->U(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->T(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 27
    :cond_3
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->T(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->U(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 29
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 30
    :cond_4
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->T(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->U(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    :cond_5
    :goto_1
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/allinone/callerid/b/t;->q:Ljava/lang/String;

    .line 33
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->Z(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->Z(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v11, v1, Lcom/allinone/callerid/b/t;->q:Ljava/lang/String;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne v2, v6, :cond_6

    .line 35
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->Z(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    if-le v2, v6, :cond_8

    .line 36
    iget-object v0, v1, Lcom/allinone/callerid/b/t;->f:Ljava/util/List;

    add-int/lit8 v11, v2, -0x2

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/search/CallLogBean;

    .line 37
    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/allinone/callerid/b/t;->r:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 38
    iget-object v11, v1, Lcom/allinone/callerid/b/t;->q:Ljava/lang/String;

    if-eqz v11, :cond_8

    .line 39
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 40
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->Z(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->Z(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 42
    :cond_7
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->Z(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->Z(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->Z(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v11, v1, Lcom/allinone/callerid/b/t;->q:Ljava/lang/String;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :cond_8
    :goto_2
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v11, ""

    if-eqz v0, :cond_9

    :try_start_3
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 46
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->S(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->S(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 48
    :cond_9
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->S(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->S(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    :goto_3
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v5

    .line 52
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object v12

    if-eqz v5, :cond_b

    .line 53
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    if-eqz v12, :cond_b

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 54
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->Y()Z

    move-result v4

    if-nez v4, :cond_a

    .line 55
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->a0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->a0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v4

    iget v13, v1, Lcom/allinone/callerid/b/t;->l:I

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 57
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->a0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v4

    iget v13, v1, Lcom/allinone/callerid/b/t;->u:I

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->a0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->O(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v4

    iget v13, v1, Lcom/allinone/callerid/b/t;->u:I

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->P(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v4

    iget v13, v1, Lcom/allinone/callerid/b/t;->u:I

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->Q(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v4

    iget v13, v1, Lcom/allinone/callerid/b/t;->u:I

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->R(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v4

    iget v13, v1, Lcom/allinone/callerid/b/t;->u:I

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->S(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v4

    iget v13, v1, Lcom/allinone/callerid/b/t;->u:I

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 64
    :cond_a
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->a0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 65
    :cond_b
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_c

    .line 66
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    .line 67
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->a0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_c
    if-eqz v0, :cond_d

    .line 68
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 69
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->a0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v13

    iget v14, v1, Lcom/allinone/callerid/b/t;->m:I

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 70
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->a0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->a0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v13

    iget v14, v1, Lcom/allinone/callerid/b/t;->v:I

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->a0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v13

    iget-object v14, v1, Lcom/allinone/callerid/b/t;->j:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 73
    :cond_d
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->a0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->a0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v4

    iget v13, v1, Lcom/allinone/callerid/b/t;->l:I

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 75
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->a0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v4

    iget v13, v1, Lcom/allinone/callerid/b/t;->u:I

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    :goto_4
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v13

    .line 78
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->d()Ljava/lang/String;

    move-result-object v14

    .line 79
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v15

    if-eqz v4, :cond_f

    .line 80
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    goto :goto_5

    .line 81
    :cond_e
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->O(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_f
    :goto_5
    if-eqz v0, :cond_10

    .line 82
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 83
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->O(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_10
    if-eqz v13, :cond_14

    if-eqz v14, :cond_11

    .line 84
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 85
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->O(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_11
    if-eqz v15, :cond_12

    .line 86
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 87
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->O(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 88
    :cond_12
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 89
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->O(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, v1, Lcom/allinone/callerid/b/t;->w:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 90
    :cond_13
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->O(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_14
    :goto_6
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->O()I

    move-result v0

    if-eq v0, v6, :cond_19

    const/4 v4, 0x2

    if-eq v0, v4, :cond_18

    const/4 v4, 0x3

    const v13, 0x7f080170

    if-eq v0, v4, :cond_17

    const/4 v4, 0x5

    if-eq v0, v4, :cond_16

    const/16 v4, 0x9

    if-eq v0, v4, :cond_15

    .line 92
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->b0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_7

    .line 93
    :cond_15
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->b0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_7

    .line 94
    :cond_16
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->b0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_7

    .line 95
    :cond_17
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->b0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_7

    .line 96
    :cond_18
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->b0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v0

    const v4, 0x7f080171

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_7

    .line 97
    :cond_19
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->b0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v0

    const v4, 0x7f08016f

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 98
    :goto_7
    iget-object v0, v1, Lcom/allinone/callerid/b/t;->h:Ljava/util/HashMap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-string v4, ")"

    const-string v13, "("

    if-eqz v0, :cond_1b

    :try_start_4
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 99
    iget-object v0, v1, Lcom/allinone/callerid/b/t;->h:Ljava/util/HashMap;

    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->M()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1b

    .line 100
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_1a

    .line 101
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->P(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    :cond_1a
    if-le v0, v6, :cond_1b

    .line 102
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->P(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->P(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    :cond_1b
    :goto_8
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1c
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->c0()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 105
    :cond_1d
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->c0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_9

    .line 106
    :cond_1e
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->c0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    :goto_9
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->Y()Z

    move-result v0

    if-nez v0, :cond_20

    .line 108
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 109
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->V(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->X(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->e()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->X(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v6, "comment_icon_show"

    invoke-virtual {v0, v6}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_a

    .line 113
    :cond_1f
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->V(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->X(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    :cond_20
    :goto_a
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->r()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 116
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->Q(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->r()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->Q(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    .line 118
    :cond_21
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->B()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 119
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->Q(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->B()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->Q(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    .line 121
    :cond_22
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->Q(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->Q(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    :goto_b
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->R(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->T()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->d0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {v1, v0, v9}, Lcom/allinone/callerid/b/t;->L(Landroid/view/View;Lcom/allinone/callerid/search/CallLogBean;)V

    .line 125
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->M(Lcom/allinone/callerid/b/t$j;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v6, Lcom/allinone/callerid/b/t$e;

    invoke-direct {v6, v1, v2}, Lcom/allinone/callerid/b/t$e;-><init>(Lcom/allinone/callerid/b/t;I)V

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->M(Lcom/allinone/callerid/b/t$j;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v6, Lcom/allinone/callerid/b/t$f;

    invoke-direct {v6, v1, v2}, Lcom/allinone/callerid/b/t$f;-><init>(Lcom/allinone/callerid/b/t;I)V

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 127
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->Y()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 128
    iget-object v0, v1, Lcom/allinone/callerid/b/t;->d:Landroid/app/Activity;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->N(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-static {v0, v2, v5, v10, v6}, Lcom/allinone/callerid/util/t;->c(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/widget/ImageView;)V

    goto :goto_c

    :cond_23
    const v0, 0x7f0801b5

    if-eqz v5, :cond_24

    .line 129
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    if-eqz v12, :cond_24

    .line 130
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 131
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->N(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v10, 0x7f0801b5

    .line 132
    :cond_24
    iget-object v0, v1, Lcom/allinone/callerid/b/t;->d:Landroid/app/Activity;

    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->N(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-static {v0, v2, v10, v5}, Lcom/allinone/callerid/util/t;->a(Landroid/app/Activity;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    .line 133
    :goto_c
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->c0()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v0, :cond_25

    .line 134
    :try_start_5
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->W(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "record_icon_show"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 137
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->Y(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/allinone/callerid/search/CallLogBean;->w()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->Y(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_d

    :catch_1
    move-exception v0

    .line 139
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 140
    :cond_25
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->W(Lcom/allinone/callerid/b/t$j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->Y(Lcom/allinone/callerid/b/t$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    :cond_26
    :goto_d
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->e0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v2, Lcom/allinone/callerid/b/t$g;

    invoke-direct {v2, v1, v9}, Lcom/allinone/callerid/b/t$g;-><init>(Lcom/allinone/callerid/b/t;Lcom/allinone/callerid/search/CallLogBean;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-static {v3}, Lcom/allinone/callerid/b/t$j;->f0(Lcom/allinone/callerid/b/t$j;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v2, Lcom/allinone/callerid/b/t$h;

    invoke-direct {v2, v1, v9}, Lcom/allinone/callerid/b/t$h;-><init>(Lcom/allinone/callerid/b/t;Lcom/allinone/callerid/search/CallLogBean;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_f

    :catch_2
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    .line 145
    :cond_27
    move-object/from16 v0, p1

    check-cast v0, Lcom/allinone/callerid/b/t$k;

    .line 146
    iget-object v2, v1, Lcom/allinone/callerid/b/t;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 147
    invoke-static {v0}, Lcom/allinone/callerid/b/t$k;->M(Lcom/allinone/callerid/b/t$k;)Landroid/widget/ImageView;

    move-result-object v2

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 148
    :cond_28
    invoke-static {v0}, Lcom/allinone/callerid/b/t$k;->P(Lcom/allinone/callerid/b/t$k;)Landroid/widget/FrameLayout;

    move-result-object v2

    new-instance v3, Lcom/allinone/callerid/b/t$a;

    invoke-direct {v3, v1}, Lcom/allinone/callerid/b/t$a;-><init>(Lcom/allinone/callerid/b/t;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-static {v0}, Lcom/allinone/callerid/b/t$k;->M(Lcom/allinone/callerid/b/t$k;)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Lcom/allinone/callerid/b/t$b;

    invoke-direct {v3, v1}, Lcom/allinone/callerid/b/t$b;-><init>(Lcom/allinone/callerid/b/t;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-static {v0}, Lcom/allinone/callerid/b/t$k;->R(Lcom/allinone/callerid/b/t$k;)Landroid/widget/FrameLayout;

    move-result-object v2

    new-instance v3, Lcom/allinone/callerid/b/t$c;

    invoke-direct {v3, v1, v0}, Lcom/allinone/callerid/b/t$c;-><init>(Lcom/allinone/callerid/b/t;Lcom/allinone/callerid/b/t$k;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-static {v0}, Lcom/allinone/callerid/b/t$k;->S(Lcom/allinone/callerid/b/t$k;)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Lcom/allinone/callerid/b/t$d;

    invoke-direct {v3, v1, v0}, Lcom/allinone/callerid/b/t$d;-><init>(Lcom/allinone/callerid/b/t;Lcom/allinone/callerid/b/t$k;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-boolean v2, v1, Lcom/allinone/callerid/b/t;->x:Z

    if-nez v2, :cond_29

    iget-object v2, v1, Lcom/allinone/callerid/b/t;->i:Ljava/util/ArrayList;

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_29

    .line 153
    invoke-static {v0}, Lcom/allinone/callerid/b/t$k;->Q(Lcom/allinone/callerid/b/t$k;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_e

    .line 154
    :cond_29
    invoke-static {v0}, Lcom/allinone/callerid/b/t$k;->Q(Lcom/allinone/callerid/b/t$k;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 155
    :goto_e
    iget-boolean v2, v1, Lcom/allinone/callerid/b/t;->n:Z

    if-eqz v2, :cond_2a

    .line 156
    invoke-static {v0}, Lcom/allinone/callerid/b/t$k;->N(Lcom/allinone/callerid/b/t$k;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/allinone/callerid/b/t;->j:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/allinone/callerid/b/t;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/allinone/callerid/b/t;->j:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1002bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_2a
    invoke-static {v0}, Lcom/allinone/callerid/b/t$k;->O(Lcom/allinone/callerid/b/t$k;)Lcom/allinone/callerid/b/w;

    move-result-object v2

    iget-object v3, v1, Lcom/allinone/callerid/b/t;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v6}, Lcom/allinone/callerid/b/w;->b(Ljava/util/List;Z)V

    .line 158
    invoke-static {v0}, Lcom/allinone/callerid/b/t$k;->O(Lcom/allinone/callerid/b/t$k;)Lcom/allinone/callerid/b/w;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 159
    invoke-static {}, Lcom/allinone/callerid/util/h1;->a0()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {v0}, Lcom/allinone/callerid/b/t$k;->Q(Lcom/allinone/callerid/b/t$k;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2b

    .line 160
    invoke-static {v0}, Lcom/allinone/callerid/b/t$k;->P(Lcom/allinone/callerid/b/t$k;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 161
    iget-boolean v0, v1, Lcom/allinone/callerid/b/t;->e:Z

    if-nez v0, :cond_2c

    .line 162
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "permission_guide_show"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 163
    iput-boolean v6, v1, Lcom/allinone/callerid/b/t;->e:Z

    goto :goto_f

    .line 164
    :cond_2b
    invoke-static {v0}, Lcom/allinone/callerid/b/t$k;->P(Lcom/allinone/callerid/b/t$k;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2c
    :goto_f
    return-void
.end method

.method public r(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 4

    const/16 v0, 0x3e7

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/16 v0, 0x3e9

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance p2, Lcom/allinone/callerid/b/t$j;

    iget-object v0, p0, Lcom/allinone/callerid/b/t;->g:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0076

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/allinone/callerid/b/t$j;-><init>(Landroid/view/View;)V

    return-object p2

    .line 2
    :cond_1
    new-instance p2, Lcom/allinone/callerid/b/t$k;

    iget-object v0, p0, Lcom/allinone/callerid/b/t;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/allinone/callerid/b/t;->g:Landroid/view/LayoutInflater;

    const v3, 0x7f0c0167

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/allinone/callerid/b/t$k;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    return-object p2
.end method
