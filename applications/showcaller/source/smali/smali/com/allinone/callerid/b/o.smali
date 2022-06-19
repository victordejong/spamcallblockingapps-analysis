.class public Lcom/allinone/callerid/b/o;
.super Landroid/widget/BaseAdapter;
.source "MatchNumberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/o$c;,
        Lcom/allinone/callerid/b/o$d;
    }
.end annotation


# instance fields
.field private d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/view/LayoutInflater;

.field private h:Landroid/widget/ListView;

.field private i:I

.field private j:Ljava/lang/String;

.field k:Lcom/allinone/callerid/b/o$d;

.field l:Lcom/allinone/callerid/b/o$c;

.field private m:I

.field private n:I

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;Landroid/widget/ListView;)V
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
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/b/o;->f:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/allinone/callerid/b/o;->i:I

    .line 4
    iput-object p1, p0, Lcom/allinone/callerid/b/o;->d:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/allinone/callerid/b/o;->e:Ljava/util/List;

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/allinone/callerid/b/o;->g:Landroid/view/LayoutInflater;

    .line 7
    iput-object p4, p0, Lcom/allinone/callerid/b/o;->h:Landroid/widget/ListView;

    .line 8
    iput-object p3, p0, Lcom/allinone/callerid/b/o;->f:Ljava/util/HashMap;

    const p2, 0x7f04006e

    const p3, 0x7f08008b

    .line 9
    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/b/o;->m:I

    const p2, 0x7f04006d

    const p3, 0x7f08008a

    .line 10
    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/b/o;->n:I

    const p2, 0x7f04006f

    const p3, 0x7f08008c

    .line 11
    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/b/o;->o:I

    const p2, 0x7f040070

    const p3, 0x7f08008d

    .line 12
    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/o;->p:I

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/b/o;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/o;->h:Landroid/widget/ListView;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/util/List;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/b/o;->e:Ljava/util/List;

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/allinone/callerid/b/o;->e:Ljava/util/List;

    .line 3
    :goto_0
    iput p2, p0, Lcom/allinone/callerid/b/o;->i:I

    .line 4
    iput-object p3, p0, Lcom/allinone/callerid/b/o;->j:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->e:Ljava/util/List;

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
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->Y()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/b/o;->getItemViewType(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-nez p2, :cond_2

    const v5, 0x7f0904be

    const v6, 0x7f0904bf

    const v7, 0x7f09079a

    const v8, 0x7f09041a

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    :try_start_1
    iget-object v10, p0, Lcom/allinone/callerid/b/o;->g:Landroid/view/LayoutInflater;

    const v11, 0x7f0c012b

    invoke-virtual {v10, v11, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 3
    new-instance p3, Lcom/allinone/callerid/b/o$d;

    invoke-direct {p3, v9}, Lcom/allinone/callerid/b/o$d;-><init>(Lcom/allinone/callerid/b/o$a;)V

    iput-object p3, p0, Lcom/allinone/callerid/b/o;->k:Lcom/allinone/callerid/b/o$d;

    .line 4
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p3, Lcom/allinone/callerid/b/o$d;->a:Landroid/widget/TextView;

    .line 5
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->k:Lcom/allinone/callerid/b/o$d;

    const v8, 0x7f0906f1

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p3, Lcom/allinone/callerid/b/o$d;->b:Landroid/widget/TextView;

    .line 6
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->k:Lcom/allinone/callerid/b/o$d;

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p3, Lcom/allinone/callerid/b/o$d;->c:Landroid/widget/TextView;

    .line 7
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->k:Lcom/allinone/callerid/b/o$d;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p3, Lcom/allinone/callerid/b/o$d;->d:Landroid/widget/FrameLayout;

    .line 8
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->k:Lcom/allinone/callerid/b/o$d;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p3, Lcom/allinone/callerid/b/o$d;->e:Landroid/widget/LinearLayout;

    .line 9
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->k:Lcom/allinone/callerid/b/o$d;

    iget-object p3, p3, Lcom/allinone/callerid/b/o$d;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->k:Lcom/allinone/callerid/b/o$d;

    iget-object p3, p3, Lcom/allinone/callerid/b/o$d;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->k:Lcom/allinone/callerid/b/o$d;

    iget-object p3, p3, Lcom/allinone/callerid/b/o$d;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 12
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->k:Lcom/allinone/callerid/b/o$d;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 13
    :cond_1
    iget-object v10, p0, Lcom/allinone/callerid/b/o;->g:Landroid/view/LayoutInflater;

    const v11, 0x7f0c012a

    invoke-virtual {v10, v11, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 14
    new-instance p3, Lcom/allinone/callerid/b/o$c;

    invoke-direct {p3, v9}, Lcom/allinone/callerid/b/o$c;-><init>(Lcom/allinone/callerid/b/o$a;)V

    iput-object p3, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    const v9, 0x7f0900c3

    .line 15
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p3, Lcom/allinone/callerid/b/o$c;->a:Landroid/widget/ImageView;

    .line 16
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    const v9, 0x7f0900c4

    .line 17
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p3, Lcom/allinone/callerid/b/o$c;->f:Landroid/widget/ImageView;

    .line 18
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    const v9, 0x7f0900c5

    .line 19
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p3, Lcom/allinone/callerid/b/o$c;->g:Landroid/widget/ImageView;

    .line 20
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/o$c;->f:Landroid/widget/ImageView;

    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/o$c;->g:Landroid/widget/ImageView;

    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p3, Lcom/allinone/callerid/b/o$c;->j:Landroid/widget/TextView;

    .line 23
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p3, Lcom/allinone/callerid/b/o$c;->d:Landroid/widget/TextView;

    .line 24
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    const v7, 0x7f0905dd

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p3, Lcom/allinone/callerid/b/o$c;->b:Landroid/widget/TextView;

    .line 25
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    const v7, 0x7f09065e

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p3, Lcom/allinone/callerid/b/o$c;->c:Landroid/widget/TextView;

    .line 26
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    const v7, 0x7f0906f5

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p3, Lcom/allinone/callerid/b/o$c;->e:Landroid/widget/TextView;

    .line 27
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/o$c;->e:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/o$c;->c:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/o$c;->c:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p3, Lcom/allinone/callerid/b/o$c;->h:Landroid/widget/FrameLayout;

    .line 31
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p3, Lcom/allinone/callerid/b/o$c;->i:Landroid/widget/LinearLayout;

    .line 32
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/o$c;->j:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 33
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/o$c;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 34
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/o$c;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 35
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/o$c;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 36
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/o$c;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 37
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/b/o$d;

    iput-object p3, p0, Lcom/allinone/callerid/b/o;->k:Lcom/allinone/callerid/b/o$d;

    goto :goto_0

    .line 39
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/b/o$c;

    iput-object p3, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    :goto_0
    if-ne v0, v2, :cond_b

    .line 40
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->e:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/search/CallLogBean;

    if-nez p1, :cond_6

    .line 41
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->k:Lcom/allinone/callerid/b/o$d;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$d;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->e:Ljava/util/List;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/allinone/callerid/b/o;->i:I

    if-ne v0, v2, :cond_5

    .line 43
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->k:Lcom/allinone/callerid/b/o$d;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$d;->e:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/allinone/callerid/b/o;->n:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 44
    :cond_5
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->k:Lcom/allinone/callerid/b/o$d;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$d;->e:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/allinone/callerid/b/o;->p:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 45
    :cond_6
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->k:Lcom/allinone/callerid/b/o$d;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$d;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->e:Ljava/util/List;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/allinone/callerid/b/o;->i:I

    if-lez v0, :cond_7

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_7

    .line 47
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->k:Lcom/allinone/callerid/b/o$d;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$d;->e:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/allinone/callerid/b/o;->m:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 48
    :cond_7
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->k:Lcom/allinone/callerid/b/o$d;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$d;->e:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/allinone/callerid/b/o;->o:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 49
    :goto_1
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 50
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->j:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 51
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->d:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/allinone/callerid/b/o;->j:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/allinone/callerid/util/b0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    .line 52
    iget-object v2, p0, Lcom/allinone/callerid/b/o;->k:Lcom/allinone/callerid/b/o$d;

    iget-object v2, v2, Lcom/allinone/callerid/b/o$d;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 53
    :cond_8
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->k:Lcom/allinone/callerid/b/o$d;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$d;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_9
    :goto_2
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 55
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->k:Lcom/allinone/callerid/b/o$d;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$d;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_a
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->k:Lcom/allinone/callerid/b/o$d;

    iget-object p3, p3, Lcom/allinone/callerid/b/o$d;->d:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/allinone/callerid/b/o$a;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/b/o$a;-><init>(Lcom/allinone/callerid/b/o;I)V

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_9

    .line 57
    :cond_b
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->e:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/search/CallLogBean;

    .line 58
    iget v0, p0, Lcom/allinone/callerid/b/o;->i:I

    if-eqz v0, :cond_f

    if-ne p1, v0, :cond_d

    .line 59
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->e:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v5, p0, Lcom/allinone/callerid/b/o;->i:I

    sub-int/2addr v0, v5

    if-ne v0, v2, :cond_c

    .line 61
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->i:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/allinone/callerid/b/o;->n:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 62
    :cond_c
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->i:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/allinone/callerid/b/o;->p:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 63
    :cond_d
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->e:Ljava/util/List;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/allinone/callerid/b/o;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_e

    .line 65
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->i:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/allinone/callerid/b/o;->m:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 66
    :cond_e
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->i:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/allinone/callerid/b/o;->o:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_3

    :cond_f
    if-nez p1, :cond_11

    .line 67
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->e:Ljava/util/List;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_10

    .line 69
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->i:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/allinone/callerid/b/o;->n:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 70
    :cond_10
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->i:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/allinone/callerid/b/o;->p:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 71
    :cond_11
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->e:Ljava/util/List;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/allinone/callerid/b/o;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_12

    .line 73
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->i:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/allinone/callerid/b/o;->m:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 74
    :cond_12
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->i:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/allinone/callerid/b/o;->o:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 75
    :goto_3
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->O()I

    move-result v0

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eq v0, v2, :cond_17

    if-eq v0, v5, :cond_16

    const v7, 0x7f080170

    if-eq v0, v6, :cond_15

    const/4 v8, 0x5

    if-eq v0, v8, :cond_14

    const/16 v8, 0x9

    if-eq v0, v8, :cond_13

    .line 76
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->a:Landroid/widget/ImageView;

    .line 77
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 78
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->f:Landroid/widget/ImageView;

    .line 79
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 80
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->g:Landroid/widget/ImageView;

    .line 81
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4

    .line 82
    :cond_13
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->a:Landroid/widget/ImageView;

    .line 83
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 84
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->f:Landroid/widget/ImageView;

    .line 85
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 86
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->g:Landroid/widget/ImageView;

    .line 87
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4

    .line 88
    :cond_14
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->a:Landroid/widget/ImageView;

    .line 89
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 90
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->f:Landroid/widget/ImageView;

    .line 91
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 92
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->g:Landroid/widget/ImageView;

    .line 93
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4

    .line 94
    :cond_15
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->a:Landroid/widget/ImageView;

    .line 95
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 96
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->f:Landroid/widget/ImageView;

    .line 97
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 98
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->g:Landroid/widget/ImageView;

    .line 99
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4

    .line 100
    :cond_16
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->a:Landroid/widget/ImageView;

    const v7, 0x7f080171

    .line 101
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 102
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->f:Landroid/widget/ImageView;

    .line 103
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 104
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->g:Landroid/widget/ImageView;

    .line 105
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4

    .line 106
    :cond_17
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->a:Landroid/widget/ImageView;

    const v7, 0x7f08016f

    .line 107
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 108
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->f:Landroid/widget/ImageView;

    .line 109
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 110
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->g:Landroid/widget/ImageView;

    .line 111
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 112
    :goto_4
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 113
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->M()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 114
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->f:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->M()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1b

    .line 115
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_18

    .line 116
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_18
    if-ne v0, v5, :cond_19

    .line 120
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_19
    if-ne v0, v6, :cond_1a

    .line 124
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_1a
    if-le v0, v6, :cond_1b

    .line 128
    iget-object v2, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v2, v2, Lcom/allinone/callerid/b/o$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v2, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v2, v2, Lcom/allinone/callerid/b/o$c;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v2, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v2, v2, Lcom/allinone/callerid/b/o$c;->c:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    :cond_1b
    :goto_5
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->B()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string v0, "Mobile"

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "Fixed line"

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 133
    :cond_1c
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/b/o;->d:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->B()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/allinone/callerid/util/h1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 135
    :cond_1d
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    :goto_6
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "-1"

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "-2"

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "-3"

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_7

    .line 139
    :cond_1e
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->j:Ljava/lang/String;

    if-eqz v0, :cond_1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 140
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->d:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/allinone/callerid/b/o;->j:Ljava/lang/String;

    invoke-static {v0, p3, v1}, Lcom/allinone/callerid/util/b0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p3

    .line 141
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 142
    :cond_1f
    iget-object v0, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/o$c;->j:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 143
    :cond_20
    :goto_7
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/o$c;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/allinone/callerid/b/o;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100353

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :goto_8
    iget-object p3, p0, Lcom/allinone/callerid/b/o;->l:Lcom/allinone/callerid/b/o$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/o$c;->h:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/allinone/callerid/b/o$b;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/b/o$b;-><init>(Lcom/allinone/callerid/b/o;I)V

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :catch_0
    move-exception p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
