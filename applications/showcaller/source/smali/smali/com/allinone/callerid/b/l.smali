.class public Lcom/allinone/callerid/b/l;
.super Landroid/widget/BaseAdapter;
.source "EZDialerdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/l$c;,
        Lcom/allinone/callerid/b/l$d;
    }
.end annotation


# instance fields
.field private final d:I

.field private e:Landroid/content/Context;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/view/LayoutInflater;

.field private i:Landroid/widget/ListView;

.field private j:I

.field private k:Lcom/allinone/callerid/b/l$d;

.field private l:Lcom/allinone/callerid/b/l$c;

.field private m:Landroid/graphics/Typeface;

.field private final n:Landroid/text/SpannableStringBuilder;


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

    iput-object v0, p0, Lcom/allinone/callerid/b/l;->g:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/allinone/callerid/b/l;->j:I

    .line 4
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/b/l;->n:Landroid/text/SpannableStringBuilder;

    .line 5
    iput-object p1, p0, Lcom/allinone/callerid/b/l;->e:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/allinone/callerid/b/l;->f:Ljava/util/List;

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/allinone/callerid/b/l;->h:Landroid/view/LayoutInflater;

    .line 8
    iput-object p4, p0, Lcom/allinone/callerid/b/l;->i:Landroid/widget/ListView;

    .line 9
    iput-object p3, p0, Lcom/allinone/callerid/b/l;->g:Ljava/util/HashMap;

    .line 10
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/allinone/callerid/b/l;->m:Landroid/graphics/Typeface;

    const p2, 0x7f04011b

    const p3, 0x7f06003a

    .line 11
    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/l;->d:I

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/b/l;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/l;->i:Landroid/widget/ListView;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;I)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/b/l;->f:Ljava/util/List;

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/allinone/callerid/b/l;->f:Ljava/util/List;

    .line 3
    :goto_0
    iput p2, p0, Lcom/allinone/callerid/b/l;->j:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->f:Ljava/util/List;

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
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->Y()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/b/l;->getItemViewType(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-string v2, ""

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-nez p2, :cond_2

    const v5, 0x7f0904be

    const v6, 0x7f0904bf

    const v7, 0x7f09079a

    const v8, 0x7f09041a

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    :try_start_1
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->h:Landroid/view/LayoutInflater;

    const v10, 0x7f0c012a

    invoke-virtual {p3, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3
    new-instance p3, Lcom/allinone/callerid/b/l$c;

    invoke-direct {p3, v9}, Lcom/allinone/callerid/b/l$c;-><init>(Lcom/allinone/callerid/b/l$a;)V

    iput-object p3, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    const v9, 0x7f0900c3

    .line 4
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p3, Lcom/allinone/callerid/b/l$c;->a:Landroid/widget/ImageView;

    .line 5
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    const v9, 0x7f0900c4

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p3, Lcom/allinone/callerid/b/l$c;->f:Landroid/widget/ImageView;

    .line 6
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    const v9, 0x7f0900c5

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p3, Lcom/allinone/callerid/b/l$c;->g:Landroid/widget/ImageView;

    .line 7
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/l$c;->f:Landroid/widget/ImageView;

    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/l$c;->g:Landroid/widget/ImageView;

    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p3, Lcom/allinone/callerid/b/l$c;->j:Landroid/widget/TextView;

    .line 10
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p3, Lcom/allinone/callerid/b/l$c;->d:Landroid/widget/TextView;

    .line 11
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    const v7, 0x7f0905dd

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p3, Lcom/allinone/callerid/b/l$c;->b:Landroid/widget/TextView;

    .line 12
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    const v7, 0x7f09065e

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p3, Lcom/allinone/callerid/b/l$c;->c:Landroid/widget/TextView;

    .line 13
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    const v7, 0x7f0906f5

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p3, Lcom/allinone/callerid/b/l$c;->e:Landroid/widget/TextView;

    .line 14
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/l$c;->e:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/l$c;->c:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/l$c;->c:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p3, Lcom/allinone/callerid/b/l$c;->h:Landroid/widget/FrameLayout;

    .line 18
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p3, Lcom/allinone/callerid/b/l$c;->i:Landroid/widget/LinearLayout;

    .line 19
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/l$c;->j:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/allinone/callerid/b/l;->m:Landroid/graphics/Typeface;

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 20
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/l$c;->d:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/allinone/callerid/b/l;->m:Landroid/graphics/Typeface;

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 21
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/l$c;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/allinone/callerid/b/l;->m:Landroid/graphics/Typeface;

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 22
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/l$c;->b:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/allinone/callerid/b/l;->m:Landroid/graphics/Typeface;

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 23
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/l$c;->e:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/allinone/callerid/b/l;->m:Landroid/graphics/Typeface;

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 24
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 25
    :cond_1
    iget-object v10, p0, Lcom/allinone/callerid/b/l;->h:Landroid/view/LayoutInflater;

    const v11, 0x7f0c012b

    invoke-virtual {v10, v11, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 26
    new-instance p3, Lcom/allinone/callerid/b/l$d;

    invoke-direct {p3, v9}, Lcom/allinone/callerid/b/l$d;-><init>(Lcom/allinone/callerid/b/l$a;)V

    iput-object p3, p0, Lcom/allinone/callerid/b/l;->k:Lcom/allinone/callerid/b/l$d;

    .line 27
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p3, Lcom/allinone/callerid/b/l$d;->a:Landroid/widget/TextView;

    .line 28
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->k:Lcom/allinone/callerid/b/l$d;

    const v8, 0x7f0906f1

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p3, Lcom/allinone/callerid/b/l$d;->b:Landroid/widget/TextView;

    .line 29
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->k:Lcom/allinone/callerid/b/l$d;

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p3, Lcom/allinone/callerid/b/l$d;->c:Landroid/widget/TextView;

    .line 30
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->k:Lcom/allinone/callerid/b/l$d;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p3, Lcom/allinone/callerid/b/l$d;->d:Landroid/widget/FrameLayout;

    .line 31
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->k:Lcom/allinone/callerid/b/l$d;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p3, Lcom/allinone/callerid/b/l$d;->e:Landroid/widget/LinearLayout;

    .line 32
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->k:Lcom/allinone/callerid/b/l$d;

    iget-object p3, p3, Lcom/allinone/callerid/b/l$d;->a:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/allinone/callerid/b/l;->m:Landroid/graphics/Typeface;

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 33
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->k:Lcom/allinone/callerid/b/l$d;

    iget-object p3, p3, Lcom/allinone/callerid/b/l$d;->b:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/allinone/callerid/b/l;->m:Landroid/graphics/Typeface;

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 34
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->k:Lcom/allinone/callerid/b/l$d;

    iget-object p3, p3, Lcom/allinone/callerid/b/l$d;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/allinone/callerid/b/l;->m:Landroid/graphics/Typeface;

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 35
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->k:Lcom/allinone/callerid/b/l$d;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 36
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lcom/allinone/callerid/b/l$c;

    if-eqz p3, :cond_5

    .line 37
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/b/l$c;

    iput-object p3, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    goto :goto_0

    .line 38
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lcom/allinone/callerid/b/l$d;

    if-eqz p3, :cond_5

    .line 39
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/b/l$d;

    iput-object p3, p0, Lcom/allinone/callerid/b/l;->k:Lcom/allinone/callerid/b/l$d;

    :cond_5
    :goto_0
    if-nez v0, :cond_9

    .line 40
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->f:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/search/CallLogBean;

    if-nez p1, :cond_6

    .line 41
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->k:Lcom/allinone/callerid/b/l$d;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$d;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 42
    :cond_6
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->k:Lcom/allinone/callerid/b/l$d;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$d;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    :goto_1
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 44
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 45
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->k:Lcom/allinone/callerid/b/l$d;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$d;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/b/l;->n:Landroid/text/SpannableStringBuilder;

    iget-object v2, p3, Lcom/allinone/callerid/search/CallLogBean;->f0:Lcom/allinone/callerid/util/t9/T9MatchInfo;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/allinone/callerid/b/l;->d:I

    invoke-static {v1, v2, v3, v4}, Lcom/allinone/callerid/util/t9/d;->e(Landroid/text/SpannableStringBuilder;Lcom/allinone/callerid/util/t9/T9MatchInfo;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_7
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->k:Lcom/allinone/callerid/b/l$d;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$d;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/b/l;->n:Landroid/text/SpannableStringBuilder;

    iget-object v2, p3, Lcom/allinone/callerid/search/CallLogBean;->g0:Lcom/allinone/callerid/util/t9/T9MatchInfo;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p3

    iget v3, p0, Lcom/allinone/callerid/b/l;->d:I

    invoke-static {v1, v2, p3, v3}, Lcom/allinone/callerid/util/t9/d;->e(Landroid/text/SpannableStringBuilder;Lcom/allinone/callerid/util/t9/T9MatchInfo;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_8
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->k:Lcom/allinone/callerid/b/l$d;

    iget-object p3, p3, Lcom/allinone/callerid/b/l$d;->d:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/allinone/callerid/b/l$a;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/b/l$a;-><init>(Lcom/allinone/callerid/b/l;I)V

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    .line 48
    :cond_9
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->f:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/search/CallLogBean;

    .line 49
    iget v0, p0, Lcom/allinone/callerid/b/l;->j:I

    if-eqz v0, :cond_b

    if-ne p1, v0, :cond_a

    .line 50
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 51
    :cond_a
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_b
    if-nez p1, :cond_c

    .line 52
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 53
    :cond_c
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    :goto_2
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->O()I

    move-result v0

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eq v0, v1, :cond_11

    if-eq v0, v5, :cond_10

    const v7, 0x7f080170

    if-eq v0, v6, :cond_f

    const/4 v8, 0x5

    if-eq v0, v8, :cond_e

    const/16 v8, 0x9

    if-eq v0, v8, :cond_d

    .line 55
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 56
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 57
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 58
    :cond_d
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 59
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 60
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 61
    :cond_e
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 62
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 63
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 64
    :cond_f
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 65
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 66
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 67
    :cond_10
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->a:Landroid/widget/ImageView;

    const v7, 0x7f080171

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 68
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 69
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 70
    :cond_11
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->a:Landroid/widget/ImageView;

    const v7, 0x7f08016f

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 71
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 72
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 73
    :goto_3
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_15

    .line 74
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->g:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->M()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_15

    .line 75
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_12

    .line 76
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_12
    if-ne v0, v5, :cond_13

    .line 80
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_13
    if-ne v0, v6, :cond_14

    .line 84
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_14
    if-le v0, v6, :cond_15

    .line 88
    iget-object v1, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v1, v1, Lcom/allinone/callerid/b/l$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v1, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v1, v1, Lcom/allinone/callerid/b/l$c;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v1, v1, Lcom/allinone/callerid/b/l$c;->c:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :cond_15
    :goto_4
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->B()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string v0, "Mobile"

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "Fixed line"

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 93
    :cond_16
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/b/l;->e:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->B()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/allinone/callerid/util/h1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 95
    :cond_17
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    :goto_5
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "-1"

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "-2"

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "-3"

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_6

    .line 99
    :cond_18
    iget-object v0, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/l$c;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/b/l;->n:Landroid/text/SpannableStringBuilder;

    iget-object v2, p3, Lcom/allinone/callerid/search/CallLogBean;->g0:Lcom/allinone/callerid/util/t9/T9MatchInfo;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p3

    const v3, -0xff7b01

    invoke-static {v1, v2, p3, v3}, Lcom/allinone/callerid/util/t9/d;->e(Landroid/text/SpannableStringBuilder;Lcom/allinone/callerid/util/t9/T9MatchInfo;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 100
    :cond_19
    :goto_6
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/l$c;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/allinone/callerid/b/l;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100353

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :goto_7
    iget-object p3, p0, Lcom/allinone/callerid/b/l;->l:Lcom/allinone/callerid/b/l$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/l$c;->h:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/allinone/callerid/b/l$b;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/b/l$b;-><init>(Lcom/allinone/callerid/b/l;I)V

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
