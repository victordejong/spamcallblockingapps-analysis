.class public Lcom/callerid/block/b/g;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/b/g$d;
    }
.end annotation


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/LayoutInflater;

.field private f:Landroid/widget/ListView;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/graphics/Typeface;

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/HashMap;Landroid/widget/ListView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/widget/ListView;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/b/g;->d:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/callerid/block/b/g;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/callerid/block/b/g;->c:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/b/g;->e:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/callerid/block/b/g;->f:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/callerid/block/b/g;->d:Ljava/util/HashMap;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/b/g;->k:Landroid/graphics/Typeface;

    invoke-direct {p0}, Lcom/callerid/block/b/g;->e()V

    return-void
.end method

.method static synthetic a(Lcom/callerid/block/b/g;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/b/g;->f:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic b(Lcom/callerid/block/b/g;)Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/b/g;->k:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic c(Lcom/callerid/block/b/g;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/b/g;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private d(Landroid/view/View;Lcom/callerid/block/search/CallLogBean;)V
    .locals 1

    new-instance v0, Lcom/callerid/block/b/g$c;

    invoke-direct {v0, p0, p2}, Lcom/callerid/block/b/g$c;-><init>(Lcom/callerid/block/b/g;Lcom/callerid/block/search/CallLogBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/b/g;->b:Landroid/app/Activity;

    const v1, 0x7f04007e

    const v2, 0x7f080097

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/b/g;->g:I

    iget-object v0, p0, Lcom/callerid/block/b/g;->b:Landroid/app/Activity;

    const v1, 0x7f04007f

    const v2, 0x7f080099

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/b/g;->h:I

    iget-object v0, p0, Lcom/callerid/block/b/g;->b:Landroid/app/Activity;

    const v1, 0x7f04047f

    const v2, 0x7f06013b

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/b/g;->i:I

    iget-object v0, p0, Lcom/callerid/block/b/g;->b:Landroid/app/Activity;

    const v1, 0x7f040111

    const v2, 0x7f060070

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/b/g;->j:I

    iget-object v0, p0, Lcom/callerid/block/b/g;->b:Landroid/app/Activity;

    const v1, 0x7f040525

    const v2, 0x7f0801ab

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/b/g;->l:I

    iget-object v0, p0, Lcom/callerid/block/b/g;->b:Landroid/app/Activity;

    const v1, 0x7f040526

    const v2, 0x7f0801ad

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/b/g;->m:I

    return-void
.end method


# virtual methods
.method public f(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/callerid/block/b/g;->c:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public g(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/callerid/block/b/g;->c:Ljava/util/List;

    iput-object p2, p0, Lcom/callerid/block/b/g;->d:Ljava/util/HashMap;

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/b/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/b/g;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/callerid/block/b/g;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/b/g;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/b/g;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    const-string v0, "facebook_ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    invoke-virtual {p0, p1}, Lcom/callerid/block/b/g;->getItemViewType(I)I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-nez p2, :cond_2

    if-eqz p3, :cond_1

    if-eq p3, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/callerid/block/b/g$d;

    invoke-direct {p2, p0, v0}, Lcom/callerid/block/b/g$d;-><init>(Lcom/callerid/block/b/g;Landroid/view/View;)V

    iget-object v3, p0, Lcom/callerid/block/b/g;->e:Landroid/view/LayoutInflater;

    const v4, 0x7f0c00ba

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lcom/callerid/block/b/g;->e:Landroid/view/LayoutInflater;

    const v3, 0x7f0c004d

    invoke-virtual {p2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v3, Lcom/callerid/block/b/g$d;

    invoke-direct {v3, p0, p2}, Lcom/callerid/block/b/g$d;-><init>(Lcom/callerid/block/b/g;Landroid/view/View;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    :goto_0
    move-object v3, p2

    move-object p2, v0

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callerid/block/b/g$d;

    :goto_1
    move-object v10, v3

    move-object v3, p2

    move-object p2, v10

    :goto_2
    if-ne p3, v1, :cond_4

    goto/16 :goto_13

    :cond_4
    if-eqz p2, :cond_1e

    iget-object p3, p2, Lcom/callerid/block/b/g$d;->o:Landroid/widget/ImageView;

    iget v4, p0, Lcom/callerid/block/b/g;->l:I

    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p3, p0, Lcom/callerid/block/b/g;->c:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->P()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->n:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/callerid/block/b/g;->b:Landroid/app/Activity;

    const v5, 0x7f04011f

    const v6, 0x7f060088

    invoke-static {v4, v5, v6}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_3

    :cond_5
    iget-object v4, p2, Lcom/callerid/block/b/g$d;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->M()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->m:Lcom/callerid/block/customview/ProgressWheel;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_6
    iget-object v0, p2, Lcom/callerid/block/b/g$d;->m:Lcom/callerid/block/customview/ProgressWheel;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object v0, p2, Lcom/callerid/block/b/g$d;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->i:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/b/g;->c:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_9

    if-lez p1, :cond_9

    iget-object v0, p0, Lcom/callerid/block/b/g;->c:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    const-string v5, "facebook_ad"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-ne p1, v1, :cond_7

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->i:Landroid/widget/TextView;

    :goto_5
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/callerid/block/b/g;->c:Ljava/util/List;

    add-int/lit8 v5, p1, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/callerid/block/b/g;->c:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v5}, Lcom/callerid/block/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_8
    iget-object v0, p2, Lcom/callerid/block/b/g$d;->i:Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    iget-object v5, p2, Lcom/callerid/block/b/g$d;->i:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_6
    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->e()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    if-eqz v0, :cond_a

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->d:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_a
    iget-object v0, p2, Lcom/callerid/block/b/g$d;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7
    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->N()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->J()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->v()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->w()Ljava/lang/String;

    move-result-object v8

    if-eqz v6, :cond_b

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    if-eqz v7, :cond_b

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p2, Lcom/callerid/block/b/g$d;->e:Landroid/widget/TextView;

    iget v7, p0, Lcom/callerid/block/b/g;->g:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v6, p2, Lcom/callerid/block/b/g$d;->e:Landroid/widget/TextView;

    iget v7, p0, Lcom/callerid/block/b/g;->i:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p2, Lcom/callerid/block/b/g$d;->e:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->J()Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_b
    if-eqz v8, :cond_c

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p2, Lcom/callerid/block/b/g$d;->e:Landroid/widget/TextView;

    iget v7, p0, Lcom/callerid/block/b/g;->h:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v6, p2, Lcom/callerid/block/b/g$d;->e:Landroid/widget/TextView;

    iget v7, p0, Lcom/callerid/block/b/g;->j:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p2, Lcom/callerid/block/b/g$d;->e:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/callerid/block/b/g;->b:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1000eb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_8
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p2, Lcom/callerid/block/b/g$d;->e:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    :cond_c
    iget-object v6, p2, Lcom/callerid/block/b/g$d;->e:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_9
    if-eqz v0, :cond_e

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_a

    :cond_d
    iget-object v6, p2, Lcom/callerid/block/b/g$d;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_e
    :goto_a
    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->w()Ljava/lang/String;

    move-result-object v6

    :goto_b
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_f
    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->f()Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    :cond_10
    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    :cond_11
    iget-boolean v0, p3, Lcom/callerid/block/search/CallLogBean;->d:Z

    if-eqz v0, :cond_12

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->b:Landroid/widget/TextView;

    const v6, 0x7f1001df

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_c

    :cond_12
    iget-object v0, p2, Lcom/callerid/block/b/g$d;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    :goto_c
    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->Q()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_13
    iget-object v0, p2, Lcom/callerid/block/b/g$d;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_d
    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->I()I

    move-result v0

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-eq v0, v1, :cond_16

    if-eq v0, v6, :cond_15

    const v8, 0x7f0800f7

    if-eq v0, v7, :cond_14

    const/4 v9, 0x5

    :cond_14
    iget-object v0, p2, Lcom/callerid/block/b/g$d;->a:Landroid/widget/ImageView;

    goto :goto_e

    :cond_15
    iget-object v0, p2, Lcom/callerid/block/b/g$d;->a:Landroid/widget/ImageView;

    const v8, 0x7f0800f8

    goto :goto_e

    :cond_16
    iget-object v0, p2, Lcom/callerid/block/b/g$d;->a:Landroid/widget/ImageView;

    const v8, 0x7f0800f6

    :goto_e
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/callerid/block/b/g;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/callerid/block/b/g;->d:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_17

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_f
    iget-object v0, p2, Lcom/callerid/block/b/g$d;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_10
    iget-object v0, p2, Lcom/callerid/block/b/g$d;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    :cond_17
    if-ne v0, v6, :cond_18

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_f

    :cond_18
    if-ne v0, v7, :cond_19

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_10

    :cond_19
    if-le v0, v7, :cond_1a

    iget-object v1, p2, Lcom/callerid/block/b/g$d;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p2, Lcom/callerid/block/b/g$d;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p2, Lcom/callerid/block/b/g$d;->f:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1a
    :goto_11
    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->y()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_12

    :cond_1b
    iget-object v0, p2, Lcom/callerid/block/b/g$d;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_12
    iget-object v0, p2, Lcom/callerid/block/b/g$d;->c:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->j:Lcom/rey/material/widget/ImageButton;

    invoke-direct {p0, v0, p3}, Lcom/callerid/block/b/g;->d(Landroid/view/View;Lcom/callerid/block/search/CallLogBean;)V

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->n:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/callerid/block/b/g$a;

    invoke-direct {v1, p0, p1}, Lcom/callerid/block/b/g$a;-><init>(Lcom/callerid/block/b/g;I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->n:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/callerid/block/b/g$b;

    invoke-direct {v1, p0, p1}, Lcom/callerid/block/b/g$b;-><init>(Lcom/callerid/block/b/g;I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget p1, p0, Lcom/callerid/block/b/g;->l:I

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->N()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/callerid/block/b/g;->b:Landroid/app/Activity;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->t()I

    move-result v2

    int-to-long v4, v2

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object p3

    iget-object p2, p2, Lcom/callerid/block/b/g$d;->o:Landroid/widget/ImageView;

    invoke-static {v0, v1, p3, p1, p2}, Lcom/callerid/block/util/p;->c(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/widget/ImageView;)V

    goto :goto_13

    :cond_1c
    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->J()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->v()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget p1, p0, Lcom/callerid/block/b/g;->m:I

    iget-object v0, p2, Lcom/callerid/block/b/g$d;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1d
    iget-object v0, p0, Lcom/callerid/block/b/g;->b:Landroid/app/Activity;

    invoke-virtual {p3}, Lcom/callerid/block/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object p3

    iget-object p2, p2, Lcom/callerid/block/b/g$d;->o:Landroid/widget/ImageView;

    invoke-static {v0, p3, p1, p2}, Lcom/callerid/block/util/p;->a(Landroid/app/Activity;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    :cond_1e
    :goto_13
    return-object v3
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
