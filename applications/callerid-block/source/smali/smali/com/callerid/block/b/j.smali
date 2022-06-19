.class public Lcom/callerid/block/b/j;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/b/j$h;,
        Lcom/callerid/block/b/j$g;
    }
.end annotation


# instance fields
.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callerid/block/bean/MessageBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/callerid/block/sms/MessageBoxListActivity;

.field private e:Landroid/view/LayoutInflater;

.field private f:Landroid/graphics/Typeface;

.field private g:Lcom/callerid/block/b/j$h;


# direct methods
.method public constructor <init>(Lcom/callerid/block/sms/MessageBoxListActivity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callerid/block/sms/MessageBoxListActivity;",
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/bean/MessageBean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/b/j;->d:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/b/j;->e:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/callerid/block/b/j;->c:Ljava/util/List;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/b/j;->f:Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/callerid/block/b/j;->d:Lcom/callerid/block/sms/MessageBoxListActivity;

    const p2, 0x7f04011f

    const v0, 0x7f060088

    invoke-static {p1, p2, v0}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/callerid/block/b/j;->b:I

    return-void
.end method

.method static synthetic a(Lcom/callerid/block/b/j;)Lcom/callerid/block/sms/MessageBoxListActivity;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/b/j;->d:Lcom/callerid/block/sms/MessageBoxListActivity;

    return-object p0
.end method

.method static synthetic b(Lcom/callerid/block/b/j;)Lcom/callerid/block/b/j$h;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/b/j;->g:Lcom/callerid/block/b/j$h;

    return-object p0
.end method

.method static synthetic c(Lcom/callerid/block/b/j;)I
    .locals 0

    iget p0, p0, Lcom/callerid/block/b/j;->b:I

    return p0
.end method


# virtual methods
.method public d(Lcom/callerid/block/bean/MessageBean;)V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/b/j;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public e(Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/bean/MessageBean;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/callerid/block/b/j;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_0
    iget-object p2, p0, Lcom/callerid/block/b/j;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public f(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/bean/MessageBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/callerid/block/b/j;->c:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/b/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/b/j;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/callerid/block/b/j;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0074

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/callerid/block/b/j$g;

    invoke-direct {p3, p0}, Lcom/callerid/block/b/j$g;-><init>(Lcom/callerid/block/b/j;)V

    const v1, 0x7f09023f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p3, Lcom/callerid/block/b/j$g;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f090241

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p3, Lcom/callerid/block/b/j$g;->j:Landroid/widget/LinearLayout;

    const v1, 0x7f09020f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p3, Lcom/callerid/block/b/j$g;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f0903d3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/callerid/block/b/j$g;->b:Landroid/widget/TextView;

    const v1, 0x7f0903d4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/callerid/block/b/j$g;->k:Landroid/widget/TextView;

    const v1, 0x7f090210

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p3, Lcom/callerid/block/b/j$g;->q:Landroid/widget/LinearLayout;

    const v1, 0x7f09047b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/callerid/block/b/j$g;->c:Landroid/widget/TextView;

    const v1, 0x7f09047d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/callerid/block/b/j$g;->l:Landroid/widget/TextView;

    const v1, 0x7f09047c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/callerid/block/b/j$g;->d:Landroid/widget/TextView;

    const v1, 0x7f09047e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/callerid/block/b/j$g;->m:Landroid/widget/TextView;

    const v1, 0x7f090483

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/callerid/block/b/j$g;->e:Landroid/widget/TextView;

    const v1, 0x7f090484

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/callerid/block/b/j$g;->n:Landroid/widget/TextView;

    const v1, 0x7f0901df

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/callerid/block/b/j$g;->f:Landroid/widget/ImageView;

    const v1, 0x7f0901ea

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/callerid/block/b/j$g;->o:Landroid/widget/ImageView;

    const v1, 0x7f0901e0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/callerid/block/b/j$g;->g:Landroid/widget/ImageView;

    const v1, 0x7f0901eb

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/callerid/block/b/j$g;->p:Landroid/widget/ImageView;

    const v1, 0x7f0902ed

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p3, Lcom/callerid/block/b/j$g;->i:Landroid/widget/LinearLayout;

    const v1, 0x7f0902f1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p3, Lcom/callerid/block/b/j$g;->r:Landroid/widget/LinearLayout;

    iget-object v1, p3, Lcom/callerid/block/b/j$g;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/b/j;->f:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p3, Lcom/callerid/block/b/j$g;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/b/j;->f:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p3, Lcom/callerid/block/b/j$g;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/b/j;->f:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p3, Lcom/callerid/block/b/j$g;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/b/j;->f:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p3, Lcom/callerid/block/b/j$g;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/b/j;->f:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p3, Lcom/callerid/block/b/j$g;->n:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/b/j;->f:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p3, Lcom/callerid/block/b/j$g;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/b/j;->f:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p3, Lcom/callerid/block/b/j$g;->m:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/b/j;->f:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/callerid/block/b/j;->d:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v1}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p3, Lcom/callerid/block/b/j$g;->h:Landroid/widget/LinearLayout;

    const v2, 0x7f080132

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v1, p3, Lcom/callerid/block/b/j$g;->q:Landroid/widget/LinearLayout;

    const v2, 0x7f080156

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/callerid/block/b/j$g;

    :goto_0
    iget-object v1, p0, Lcom/callerid/block/b/j;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/bean/MessageBean;

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getType()I

    move-result v2

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getPartId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getImageOrVideo()I

    move-result v4

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->isSendIng()Z

    move-result v5

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->isMms()Z

    move-result v6

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/16 v9, 0x8

    if-eqz v6, :cond_c

    iget-object v6, p3, Lcom/callerid/block/b/j$g;->l:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p3, Lcom/callerid/block/b/j$g;->c:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v6, "content://mms/part/"

    const-string v10, ""

    const/4 v11, 0x2

    if-eq v2, v7, :cond_9

    if-ne v2, v8, :cond_2

    goto/16 :goto_5

    :cond_2
    const/4 v7, 0x4

    if-ne v2, v7, :cond_5

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->n:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getDate_time()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->m:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v2, p3, Lcom/callerid/block/b/j$g;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    if-eq v4, v8, :cond_4

    if-ne v4, v11, :cond_10

    :cond_4
    iget-object v2, p0, Lcom/callerid/block/b/j;->d:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v2}, Lcom/bumptech/glide/b;->v(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/h;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/bumptech/glide/h;->q(Landroid/net/Uri;)Lcom/bumptech/glide/g;

    move-result-object v2

    iget-object v5, p3, Lcom/callerid/block/b/j$g;->o:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Lcom/bumptech/glide/g;->B0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/j;

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->o:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-ne v4, v11, :cond_11

    :goto_2
    iget-object v2, p3, Lcom/callerid/block/b/j$g;->p:Landroid/widget/ImageView;

    goto/16 :goto_7

    :cond_5
    iget-object v2, p3, Lcom/callerid/block/b/j$g;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->n:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getDate_time()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->m:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_6
    iget-object v2, p3, Lcom/callerid/block/b/j$g;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    if-eq v4, v8, :cond_7

    if-ne v4, v11, :cond_10

    :cond_7
    iget-object v2, p0, Lcom/callerid/block/b/j;->d:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v2}, Lcom/bumptech/glide/b;->v(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/h;

    move-result-object v2

    if-eqz v5, :cond_8

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_4

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :goto_4
    invoke-virtual {v2, v5}, Lcom/bumptech/glide/h;->q(Landroid/net/Uri;)Lcom/bumptech/glide/g;

    move-result-object v2

    iget-object v5, p3, Lcom/callerid/block/b/j$g;->o:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Lcom/bumptech/glide/g;->B0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/j;

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->o:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-ne v4, v11, :cond_11

    goto/16 :goto_2

    :cond_9
    :goto_5
    iget-object v2, p3, Lcom/callerid/block/b/j$g;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getDate_time()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_a
    iget-object v2, p3, Lcom/callerid/block/b/j$g;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    if-eq v4, v8, :cond_b

    if-ne v4, v11, :cond_d

    :cond_b
    iget-object v2, p0, Lcom/callerid/block/b/j;->d:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v2}, Lcom/bumptech/glide/b;->v(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/h;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/bumptech/glide/h;->q(Landroid/net/Uri;)Lcom/bumptech/glide/g;

    move-result-object v2

    iget-object v5, p3, Lcom/callerid/block/b/j$g;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Lcom/bumptech/glide/g;->B0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/j;

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->g:Landroid/widget/ImageView;

    if-ne v4, v11, :cond_e

    :goto_7
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    :cond_c
    iget-object v5, p3, Lcom/callerid/block/b/j$g;->m:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p3, Lcom/callerid/block/b/j$g;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p3, Lcom/callerid/block/b/j$g;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, p3, Lcom/callerid/block/b/j$g;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-ne v2, v8, :cond_f

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getDate_time()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d
    iget-object v2, p3, Lcom/callerid/block/b/j$g;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->g:Landroid/widget/ImageView;

    :cond_e
    :goto_8
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    :cond_f
    iget-object v2, p3, Lcom/callerid/block/b/j$g;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->n:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getDate_time()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_10
    iget-object v2, p3, Lcom/callerid/block/b/j$g;->o:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_11
    iget-object v2, p3, Lcom/callerid/block/b/j$g;->p:Landroid/widget/ImageView;

    goto :goto_8

    :goto_9
    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->a:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/callerid/block/b/j;->b:I

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->j:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/callerid/block/b/j;->b:I

    goto :goto_a

    :cond_12
    iget-object v2, p3, Lcom/callerid/block/b/j$g;->a:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/callerid/block/b/j;->d:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {v5}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06014c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->j:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/callerid/block/b/j;->d:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {v5}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    :goto_a
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->a:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/callerid/block/b/j$a;

    invoke-direct {v5, p0, p1, v1}, Lcom/callerid/block/b/j$a;-><init>(Lcom/callerid/block/b/j;ILcom/callerid/block/bean/MessageBean;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->a:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/callerid/block/b/j$b;

    invoke-direct {v5, p0, v1}, Lcom/callerid/block/b/j$b;-><init>(Lcom/callerid/block/b/j;Lcom/callerid/block/bean/MessageBean;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->j:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/callerid/block/b/j$c;

    invoke-direct {v5, p0, p1, v1}, Lcom/callerid/block/b/j$c;-><init>(Lcom/callerid/block/b/j;ILcom/callerid/block/bean/MessageBean;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->j:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/callerid/block/b/j$d;

    invoke-direct {v5, p0, v1}, Lcom/callerid/block/b/j$d;-><init>(Lcom/callerid/block/b/j;Lcom/callerid/block/bean/MessageBean;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->f:Landroid/widget/ImageView;

    new-instance v5, Lcom/callerid/block/b/j$e;

    invoke-direct {v5, p0, v3, v4}, Lcom/callerid/block/b/j$e;-><init>(Lcom/callerid/block/b/j;Ljava/lang/String;I)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p3, Lcom/callerid/block/b/j$g;->o:Landroid/widget/ImageView;

    new-instance v5, Lcom/callerid/block/b/j$f;

    invoke-direct {v5, p0, v3, v4}, Lcom/callerid/block/b/j$f;-><init>(Lcom/callerid/block/b/j;Ljava/lang/String;I)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-lez p1, :cond_14

    iget-object v2, p0, Lcom/callerid/block/b/j;->c:Ljava/util/List;

    sub-int/2addr p1, v8

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/bean/MessageBean;

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getDate()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {p1}, Lcom/callerid/block/bean/MessageBean;->getDate()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/callerid/block/bean/MessageBean;->getDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p3, Lcom/callerid/block/b/j$g;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p3, Lcom/callerid/block/b/j$g;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    :cond_13
    iget-object p1, p3, Lcom/callerid/block/b/j$g;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p3, Lcom/callerid/block/b/j$g;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_14
    :goto_b
    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_15

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "lastmb.getDate(): "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/callerid/block/bean/MessageBean;->getDate()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "wbb"

    invoke-static {p3, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-object p2
.end method
