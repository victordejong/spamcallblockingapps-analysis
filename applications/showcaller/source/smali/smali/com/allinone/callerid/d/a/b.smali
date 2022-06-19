.class public Lcom/allinone/callerid/d/a/b;
.super Lcom/allinone/callerid/d/a/e/a;
.source "HomeRecycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/d/a/b$c;,
        Lcom/allinone/callerid/d/a/b$d;,
        Lcom/allinone/callerid/d/a/b$f;,
        Lcom/allinone/callerid/d/a/b$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/allinone/callerid/d/a/e/a<",
        "Lcom/allinone/callerid/callscreen/bean/HomeInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:Lcom/bumptech/glide/request/e;

.field private final g:I

.field private h:Landroid/content/Context;

.field private i:Landroid/app/Activity;

.field public j:Z

.field private k:Lcom/allinone/callerid/d/a/b$e;

.field private l:Lcom/allinone/callerid/d/a/b$f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/d/a/e/a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/allinone/callerid/d/a/b;->j:Z

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/d/a/b;->h:Landroid/content/Context;

    .line 4
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/allinone/callerid/d/a/b;->i:Landroid/app/Activity;

    .line 5
    new-instance p1, Lcom/allinone/callerid/util/w0;

    iget-object v0, p0, Lcom/allinone/callerid/d/a/b;->h:Landroid/content/Context;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/xutils/common/util/DensityUtil;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p1, v0, v1}, Lcom/allinone/callerid/util/w0;-><init>(Landroid/content/Context;F)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/allinone/callerid/util/w0;->c(ZZZZ)V

    .line 7
    new-instance v0, Lcom/bumptech/glide/request/e;

    invoke-direct {v0}, Lcom/bumptech/glide/request/e;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/a;->j0(Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/e;

    iput-object p1, p0, Lcom/allinone/callerid/d/a/b;->f:Lcom/bumptech/glide/request/e;

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/d/a/b;->h:Landroid/content/Context;

    const v0, 0x7f0402c0

    const v1, 0x7f0801e4

    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/d/a/b;->g:I

    return-void
.end method

.method static synthetic C(Lcom/allinone/callerid/d/a/b;)Lcom/allinone/callerid/d/a/b$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/a/b;->l:Lcom/allinone/callerid/d/a/b$f;

    return-object p0
.end method

.method static synthetic D(Lcom/allinone/callerid/d/a/b;)Lcom/allinone/callerid/d/a/b$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/a/b;->k:Lcom/allinone/callerid/d/a/b$e;

    return-object p0
.end method


# virtual methods
.method public E(Lcom/allinone/callerid/d/a/b$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/a/b;->k:Lcom/allinone/callerid/d/a/b$e;

    return-void
.end method

.method public F(Lcom/allinone/callerid/d/a/b$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/a/b;->l:Lcom/allinone/callerid/d/a/b$f;

    return-void
.end method

.method public f(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x29a

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p2}, Lcom/allinone/callerid/d/a/b;->f(I)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/16 v3, 0x29a

    if-eq v0, v3, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    check-cast p1, Lcom/allinone/callerid/d/a/b$c;

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/d/a/e/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    .line 4
    invoke-virtual {p2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isDefautl_diy()Z

    move-result v0

    const v3, 0x7f080112

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Lcom/allinone/callerid/d/a/b$c;->M(Lcom/allinone/callerid/d/a/b$c;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    invoke-static {p1}, Lcom/allinone/callerid/d/a/b$c;->N(Lcom/allinone/callerid/d/a/b$c;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    invoke-static {p1}, Lcom/allinone/callerid/d/a/b$c;->O(Lcom/allinone/callerid/d/a/b$c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/d/a/b;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/main/a;->b(Landroid/content/Context;)Lcom/allinone/callerid/main/d;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/allinone/callerid/main/d;->D()Lcom/allinone/callerid/main/c;

    move-result-object v0

    .line 10
    invoke-virtual {p2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/main/c;->U0(Ljava/lang/String;)Lcom/allinone/callerid/main/c;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v2}, Lcom/allinone/callerid/main/c;->f1(Z)Lcom/allinone/callerid/main/c;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/d/a/b;->f:Lcom/bumptech/glide/request/e;

    .line 12
    invoke-virtual {v0, v1}, Lcom/allinone/callerid/main/c;->J0(Lcom/bumptech/glide/request/a;)Lcom/allinone/callerid/main/c;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v3}, Lcom/allinone/callerid/main/c;->Z0(I)Lcom/allinone/callerid/main/c;

    move-result-object v0

    .line 14
    invoke-static {p1}, Lcom/allinone/callerid/d/a/b$c;->P(Lcom/allinone/callerid/d/a/b$c;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->A0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/d/a/b;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/main/a;->b(Landroid/content/Context;)Lcom/allinone/callerid/main/d;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/allinone/callerid/main/d;->D()Lcom/allinone/callerid/main/c;

    move-result-object v0

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/allinone/callerid/main/c;->S0(Ljava/lang/Integer;)Lcom/allinone/callerid/main/c;

    move-result-object v0

    const/4 v4, 0x1

    .line 18
    invoke-virtual {v0, v4}, Lcom/allinone/callerid/main/c;->f1(Z)Lcom/allinone/callerid/main/c;

    move-result-object v0

    iget-object v4, p0, Lcom/allinone/callerid/d/a/b;->f:Lcom/bumptech/glide/request/e;

    .line 19
    invoke-virtual {v0, v4}, Lcom/allinone/callerid/main/c;->J0(Lcom/bumptech/glide/request/a;)Lcom/allinone/callerid/main/c;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v3}, Lcom/allinone/callerid/main/c;->Z0(I)Lcom/allinone/callerid/main/c;

    move-result-object v0

    .line 21
    invoke-static {p1}, Lcom/allinone/callerid/d/a/b$c;->P(Lcom/allinone/callerid/d/a/b$c;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/h;->A0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;

    .line 22
    invoke-static {p1}, Lcom/allinone/callerid/d/a/b$c;->M(Lcom/allinone/callerid/d/a/b$c;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    invoke-static {p1}, Lcom/allinone/callerid/d/a/b$c;->N(Lcom/allinone/callerid/d/a/b$c;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    invoke-static {p1}, Lcom/allinone/callerid/d/a/b$c;->O(Lcom/allinone/callerid/d/a/b$c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    :goto_0
    invoke-static {p1}, Lcom/allinone/callerid/d/a/b$c;->Q(Lcom/allinone/callerid/d/a/b$c;)Landroid/widget/FrameLayout;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/d/a/b$a;

    invoke-direct {v0, p0, p2}, Lcom/allinone/callerid/d/a/b$a;-><init>(Lcom/allinone/callerid/d/a/b;Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 26
    :cond_2
    check-cast p1, Lcom/allinone/callerid/d/a/b$d;

    .line 27
    iget-object v0, p0, Lcom/allinone/callerid/d/a/e/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    .line 28
    iget-boolean v0, p0, Lcom/allinone/callerid/d/a/b;->j:Z

    if-eqz v0, :cond_3

    .line 29
    invoke-virtual {p2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getGifimg_url()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getGifimg_url()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 30
    iget-object v0, p0, Lcom/allinone/callerid/d/a/b;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/main/a;->b(Landroid/content/Context;)Lcom/allinone/callerid/main/d;

    move-result-object v0

    const-class v3, Lpl/droidsonroids/gif/c;

    .line 31
    invoke-virtual {v0, v3}, Lcom/allinone/callerid/main/d;->C(Ljava/lang/Class;)Lcom/allinone/callerid/main/c;

    move-result-object v0

    .line 32
    invoke-virtual {p2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getGifimg_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/main/c;->U0(Ljava/lang/String;)Lcom/allinone/callerid/main/c;

    move-result-object v0

    iget v3, p0, Lcom/allinone/callerid/d/a/b;->g:I

    .line 33
    invoke-virtual {v0, v3}, Lcom/allinone/callerid/main/c;->Z0(I)Lcom/allinone/callerid/main/c;

    move-result-object v0

    iget-object v3, p1, Lcom/allinone/callerid/d/a/b$d;->v:Landroid/widget/ImageView;

    .line 34
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/h;->A0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;

    goto :goto_1

    .line 35
    :cond_3
    iget-object v0, p0, Lcom/allinone/callerid/d/a/b;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/main/a;->b(Landroid/content/Context;)Lcom/allinone/callerid/main/d;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/allinone/callerid/main/d;->D()Lcom/allinone/callerid/main/c;

    move-result-object v0

    .line 37
    invoke-virtual {p2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getJpgimg_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/main/c;->U0(Ljava/lang/String;)Lcom/allinone/callerid/main/c;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v2}, Lcom/allinone/callerid/main/c;->f1(Z)Lcom/allinone/callerid/main/c;

    move-result-object v0

    iget-object v3, p0, Lcom/allinone/callerid/d/a/b;->f:Lcom/bumptech/glide/request/e;

    .line 39
    invoke-virtual {v0, v3}, Lcom/allinone/callerid/main/c;->J0(Lcom/bumptech/glide/request/a;)Lcom/allinone/callerid/main/c;

    move-result-object v0

    iget v3, p0, Lcom/allinone/callerid/d/a/b;->g:I

    .line 40
    invoke-virtual {v0, v3}, Lcom/allinone/callerid/main/c;->Z0(I)Lcom/allinone/callerid/main/c;

    move-result-object v0

    iget-object v3, p1, Lcom/allinone/callerid/d/a/b$d;->v:Landroid/widget/ImageView;

    .line 41
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/h;->A0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;

    .line 42
    :cond_4
    :goto_1
    iget-object v0, p1, Lcom/allinone/callerid/d/a/b$d;->A:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p1, Lcom/allinone/callerid/d/a/b$d;->z:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getLike_count()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isIsselect()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 45
    iget-object v0, p1, Lcom/allinone/callerid/d/a/b$d;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 46
    :cond_5
    iget-object v0, p1, Lcom/allinone/callerid/d/a/b$d;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    :goto_2
    invoke-virtual {p2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isIslike()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48
    iget-object v0, p1, Lcom/allinone/callerid/d/a/b$d;->x:Landroid/widget/ImageView;

    const v3, 0x7f080182

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 49
    :cond_6
    iget-object v0, p1, Lcom/allinone/callerid/d/a/b$d;->x:Landroid/widget/ImageView;

    const v3, 0x7f080183

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    :goto_3
    invoke-virtual {p2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 51
    iget-object v0, p1, Lcom/allinone/callerid/d/a/b$d;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 52
    :cond_7
    invoke-virtual {p2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isUnLock()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 53
    iget-object v0, p1, Lcom/allinone/callerid/d/a/b$d;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 54
    :cond_8
    iget-object v0, p1, Lcom/allinone/callerid/d/a/b$d;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    :goto_4
    iget-object p1, p1, Lcom/allinone/callerid/d/a/b$d;->u:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/allinone/callerid/d/a/b$b;

    invoke-direct {v0, p0, p2}, Lcom/allinone/callerid/d/a/b$b;-><init>(Lcom/allinone/callerid/d/a/b;Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    return-void
.end method

.method public r(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x29a

    if-ne p2, v1, :cond_0

    .line 1
    new-instance p2, Lcom/allinone/callerid/d/a/b$c;

    iget-object v1, p0, Lcom/allinone/callerid/d/a/e/a;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f0c00c2

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/allinone/callerid/d/a/b$c;-><init>(Landroid/view/View;)V

    return-object p2

    .line 2
    :cond_0
    new-instance p2, Lcom/allinone/callerid/d/a/b$d;

    iget-object v1, p0, Lcom/allinone/callerid/d/a/e/a;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f0c00c4

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/allinone/callerid/d/a/b$d;-><init>(Landroid/view/View;)V

    return-object p2
.end method
