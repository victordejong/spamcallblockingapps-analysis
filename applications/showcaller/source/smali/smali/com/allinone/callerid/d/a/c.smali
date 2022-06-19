.class public Lcom/allinone/callerid/d/a/c;
.super Lcom/allinone/callerid/d/a/e/a;
.source "ManageDiyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/d/a/c$b;,
        Lcom/allinone/callerid/d/a/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/allinone/callerid/d/a/e/a<",
        "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:Lcom/bumptech/glide/request/e;

.field private g:Landroid/content/Context;

.field private h:Landroid/app/Activity;

.field private i:Z

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/allinone/callerid/d/a/c$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/d/a/e/a;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/d/a/c;->j:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/d/a/c;->g:Landroid/content/Context;

    .line 4
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/allinone/callerid/d/a/c;->h:Landroid/app/Activity;

    .line 5
    new-instance p1, Lcom/allinone/callerid/util/w0;

    iget-object v0, p0, Lcom/allinone/callerid/d/a/c;->g:Landroid/content/Context;

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

    iput-object p1, p0, Lcom/allinone/callerid/d/a/c;->f:Lcom/bumptech/glide/request/e;

    return-void
.end method

.method static synthetic C(Lcom/allinone/callerid/d/a/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/d/a/c;->i:Z

    return p0
.end method

.method static synthetic D(Lcom/allinone/callerid/d/a/c;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/a/c;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic E(Lcom/allinone/callerid/d/a/c;)Lcom/allinone/callerid/d/a/c$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/a/c;->k:Lcom/allinone/callerid/d/a/c$b;

    return-object p0
.end method

.method static synthetic F(Lcom/allinone/callerid/d/a/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/a/c;->g:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic G(Lcom/allinone/callerid/d/a/c;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/a/c;->h:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public H(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/d/a/c;->i:Z

    return-void
.end method

.method public I(Lcom/allinone/callerid/d/a/c$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/a/c;->k:Lcom/allinone/callerid/d/a/c$b;

    return-void
.end method

.method public f(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 4

    .line 1
    check-cast p1, Lcom/allinone/callerid/d/a/c$c;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/d/a/e/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    .line 3
    iget-boolean v1, p0, Lcom/allinone/callerid/d/a/c;->i:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 4
    invoke-static {p1}, Lcom/allinone/callerid/d/a/c$c;->M(Lcom/allinone/callerid/d/a/c$c;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 5
    invoke-static {p1}, Lcom/allinone/callerid/d/a/c$c;->N(Lcom/allinone/callerid/d/a/c$c;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-boolean v1, v0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isselect:Z

    if-eqz v1, :cond_0

    .line 7
    invoke-static {p1}, Lcom/allinone/callerid/d/a/c$c;->M(Lcom/allinone/callerid/d/a/c$c;)Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/allinone/callerid/d/a/c$c;->M(Lcom/allinone/callerid/d/a/c$c;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/allinone/callerid/d/a/c;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 10
    :cond_1
    iput-boolean v3, v0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isselect:Z

    .line 11
    invoke-static {p1}, Lcom/allinone/callerid/d/a/c$c;->N(Lcom/allinone/callerid/d/a/c$c;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    invoke-static {p1}, Lcom/allinone/callerid/d/a/c$c;->M(Lcom/allinone/callerid/d/a/c$c;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 13
    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isIs_default()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-static {p1}, Lcom/allinone/callerid/d/a/c$c;->N(Lcom/allinone/callerid/d/a/c$c;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f080172

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 15
    :cond_2
    invoke-static {p1}, Lcom/allinone/callerid/d/a/c$c;->N(Lcom/allinone/callerid/d/a/c$c;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0801af

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    :goto_1
    iget-object v1, p0, Lcom/allinone/callerid/d/a/c;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/allinone/callerid/main/a;->b(Landroid/content/Context;)Lcom/allinone/callerid/main/d;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/allinone/callerid/main/d;->D()Lcom/allinone/callerid/main/c;

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/main/c;->U0(Ljava/lang/String;)Lcom/allinone/callerid/main/c;

    move-result-object v1

    .line 19
    invoke-virtual {v1, v3}, Lcom/allinone/callerid/main/c;->f1(Z)Lcom/allinone/callerid/main/c;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/d/a/c;->f:Lcom/bumptech/glide/request/e;

    .line 20
    invoke-virtual {v1, v2}, Lcom/allinone/callerid/main/c;->J0(Lcom/bumptech/glide/request/a;)Lcom/allinone/callerid/main/c;

    move-result-object v1

    .line 21
    invoke-static {p1}, Lcom/allinone/callerid/d/a/c$c;->O(Lcom/allinone/callerid/d/a/c$c;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/main/c;->a1(Landroid/graphics/drawable/Drawable;)Lcom/allinone/callerid/main/c;

    move-result-object v1

    .line 22
    invoke-static {p1}, Lcom/allinone/callerid/d/a/c$c;->O(Lcom/allinone/callerid/d/a/c$c;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/h;->A0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;

    .line 23
    invoke-static {p1}, Lcom/allinone/callerid/d/a/c$c;->P(Lcom/allinone/callerid/d/a/c$c;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/d/a/c$a;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/allinone/callerid/d/a/c$a;-><init>(Lcom/allinone/callerid/d/a/c;Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;Lcom/allinone/callerid/d/a/c$c;I)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public r(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 3

    .line 1
    new-instance p2, Lcom/allinone/callerid/d/a/c$c;

    iget-object v0, p0, Lcom/allinone/callerid/d/a/e/a;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00c5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/allinone/callerid/d/a/c$c;-><init>(Landroid/view/View;)V

    return-object p2
.end method
