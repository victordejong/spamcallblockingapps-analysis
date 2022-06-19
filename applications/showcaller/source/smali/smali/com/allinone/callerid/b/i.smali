.class public Lcom/allinone/callerid/b/i;
.super Landroid/widget/BaseAdapter;
.source "ContactsSortAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/i$c;
    }
.end annotation


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;

.field private f:Landroid/app/Activity;

.field private g:Landroid/view/LayoutInflater;

.field private h:Landroid/widget/ListView;

.field i:Lcom/allinone/callerid/b/i$c;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/ListView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;",
            "Landroid/widget/ListView;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/b/i;->e:Landroid/content/Context;

    .line 3
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/allinone/callerid/b/i;->f:Landroid/app/Activity;

    .line 4
    iput-object p3, p0, Lcom/allinone/callerid/b/i;->h:Landroid/widget/ListView;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/b/i;->g:Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    goto :goto_0

    .line 7
    :cond_0
    iput-object p2, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/b/i;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/i;->h:Landroid/widget/ListView;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    :goto_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/b/i;->j:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public c(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    .line 3
    :goto_0
    iput-object p2, p0, Lcom/allinone/callerid/b/i;->j:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/allinone/callerid/b/i;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/search/CallLogBean;

    iget-object v2, v2, Lcom/allinone/callerid/search/CallLogBean;->t:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/search/CallLogBean;

    iget-object v2, v2, Lcom/allinone/callerid/search/CallLogBean;->t:Ljava/lang/String;

    .line 4
    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getSectionForPosition(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/search/CallLogBean;

    iget-object p1, p1, Lcom/allinone/callerid/search/CallLogBean;->t:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const-string v0, ""

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/b/i;->g:Landroid/view/LayoutInflater;

    const v3, 0x7f0c0070

    invoke-virtual {p2, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/allinone/callerid/b/i$c;

    invoke-direct {p3}, Lcom/allinone/callerid/b/i$c;-><init>()V

    iput-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    const v3, 0x7f09041c

    .line 3
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p3, Lcom/allinone/callerid/b/i$c;->a:Landroid/widget/TextView;

    .line 4
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    const v3, 0x7f090437

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p3, Lcom/allinone/callerid/b/i$c;->b:Landroid/widget/TextView;

    .line 5
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    const v3, 0x7f090453

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p3, Lcom/allinone/callerid/b/i$c;->c:Landroid/widget/ImageView;

    .line 6
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    const v3, 0x7f090451

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p3, Lcom/allinone/callerid/b/i$c;->d:Landroid/widget/TextView;

    .line 7
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/i$c;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->a()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/i$c;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/i$c;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    const v3, 0x7f0904bf

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p3, Lcom/allinone/callerid/b/i$c;->e:Landroid/widget/FrameLayout;

    .line 11
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    const v3, 0x7f0904be

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p3, Lcom/allinone/callerid/b/i$c;->f:Landroid/widget/LinearLayout;

    .line 12
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    const v3, 0x7f0904e8

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p3, Lcom/allinone/callerid/b/i$c;->g:Landroid/view/View;

    .line 13
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    const v3, 0x7f0904dc

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p3, Lcom/allinone/callerid/b/i$c;->h:Landroid/view/View;

    .line 14
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/i$c;->h:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/i$c;->e:Landroid/widget/FrameLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/i$c;->e:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/allinone/callerid/b/i$a;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/b/i$a;-><init>(Lcom/allinone/callerid/b/i;)V

    invoke-virtual {p3, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    const v3, 0x7f090516

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/allinone/callerid/customview/MyListView;

    iput-object v3, p3, Lcom/allinone/callerid/b/i$c;->i:Lcom/allinone/callerid/customview/MyListView;

    .line 18
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/b/i$c;

    iput-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    .line 20
    :goto_0
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/search/CallLogBean;

    if-eqz p3, :cond_34

    const/4 v3, 0x1

    .line 21
    :try_start_0
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 22
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 23
    :cond_1
    iget-object v4, p0, Lcom/allinone/callerid/b/i;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100354

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 24
    :cond_2
    iget-object v5, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/i$c;->c:Landroid/widget/ImageView;

    const v6, 0x7f0801b4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    iget-object v5, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/i$c;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->l()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 27
    iget-object v5, p0, Lcom/allinone/callerid/b/i;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, " "

    if-eqz v5, :cond_4

    :try_start_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_3

    .line 28
    array-length v5, v4

    if-le v5, v3, :cond_3

    .line 29
    iget-object v5, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/i$c;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    iget-object v5, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/i$c;->i:Lcom/allinone/callerid/customview/MyListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 31
    new-instance v5, Lcom/allinone/callerid/b/f;

    iget-object v7, p0, Lcom/allinone/callerid/b/i;->e:Landroid/content/Context;

    iget-object v8, p0, Lcom/allinone/callerid/b/i;->j:Ljava/lang/String;

    invoke-direct {v5, v7, v4, v8}, Lcom/allinone/callerid/b/f;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v4, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v4, v4, Lcom/allinone/callerid/b/i$c;->i:Lcom/allinone/callerid/customview/MyListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    iget-object v4, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v4, v4, Lcom/allinone/callerid/b/i$c;->i:Lcom/allinone/callerid/customview/MyListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setClickable(Z)V

    .line 34
    iget-object v4, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v4, v4, Lcom/allinone/callerid/b/i$c;->i:Lcom/allinone/callerid/customview/MyListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setPressed(Z)V

    .line 35
    iget-object v4, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v4, v4, Lcom/allinone/callerid/b/i$c;->i:Lcom/allinone/callerid/customview/MyListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    goto/16 :goto_1

    .line 36
    :cond_3
    iget-object v5, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/i$c;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    iget-object v5, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/i$c;->i:Lcom/allinone/callerid/customview/MyListView;

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 38
    iget-object v5, p0, Lcom/allinone/callerid/b/i;->e:Landroid/content/Context;

    aget-object v4, v4, v2

    invoke-virtual {v4, v7, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/allinone/callerid/b/i;->j:Ljava/lang/String;

    invoke-static {v5, v4, v7}, Lcom/allinone/callerid/util/b0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    .line 39
    iget-object v5, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/i$c;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    .line 40
    array-length v5, v4

    if-le v5, v3, :cond_5

    .line 41
    iget-object v5, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/i$c;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    iget-object v5, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/i$c;->i:Lcom/allinone/callerid/customview/MyListView;

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 43
    new-instance v5, Lcom/allinone/callerid/b/f;

    iget-object v7, p0, Lcom/allinone/callerid/b/i;->e:Landroid/content/Context;

    iget-object v8, p0, Lcom/allinone/callerid/b/i;->j:Ljava/lang/String;

    invoke-direct {v5, v7, v4, v8}, Lcom/allinone/callerid/b/f;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v4, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v4, v4, Lcom/allinone/callerid/b/i$c;->i:Lcom/allinone/callerid/customview/MyListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 45
    iget-object v4, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v4, v4, Lcom/allinone/callerid/b/i$c;->i:Lcom/allinone/callerid/customview/MyListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setClickable(Z)V

    .line 46
    iget-object v4, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v4, v4, Lcom/allinone/callerid/b/i$c;->i:Lcom/allinone/callerid/customview/MyListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setPressed(Z)V

    .line 47
    iget-object v4, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v4, v4, Lcom/allinone/callerid/b/i$c;->i:Lcom/allinone/callerid/customview/MyListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    goto :goto_1

    .line 48
    :cond_5
    iget-object v5, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/i$c;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    iget-object v5, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/i$c;->i:Lcom/allinone/callerid/customview/MyListView;

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 50
    iget-object v5, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v5, v5, Lcom/allinone/callerid/b/i$c;->b:Landroid/widget/TextView;

    aget-object v4, v4, v2

    invoke-virtual {v4, v7, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :goto_1
    iget-object v4, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v4, v4, Lcom/allinone/callerid/b/i$c;->e:Landroid/widget/FrameLayout;

    new-instance v5, Lcom/allinone/callerid/b/i$b;

    invoke-direct {v5, p0, p1}, Lcom/allinone/callerid/b/i$b;-><init>(Lcom/allinone/callerid/b/i;I)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v4, p0, Lcom/allinone/callerid/b/i;->f:Landroid/app/Activity;

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v5, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v8, v8, Lcom/allinone/callerid/b/i$c;->c:Landroid/widget/ImageView;

    invoke-static {v4, v5, v7, v6, v8}, Lcom/allinone/callerid/util/t;->c(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 53
    iget-object v4, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v4, v4, Lcom/allinone/callerid/b/i$c;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 54
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const/16 v4, 0x7a

    const/16 v5, 0x5a

    const/16 v6, 0x61

    const/16 v7, 0x41

    .line 55
    :try_start_2
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_b

    .line 56
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_6

    if-le v8, v5, :cond_7

    :cond_6
    if-lt v8, v6, :cond_8

    if-gt v8, v4, :cond_8

    .line 57
    :cond_7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 58
    iget-object v8, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v8, v8, Lcom/allinone/callerid/b/i$c;->d:Landroid/widget/TextView;

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v8, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 59
    :cond_8
    invoke-static {}, Lcom/allinone/callerid/util/u;->c()Lcom/allinone/callerid/util/u;

    move-result-object v8

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/allinone/callerid/util/u;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/allinone/callerid/util/u$a;

    iget-object v8, v8, Lcom/allinone/callerid/util/u$a;->c:Ljava/lang/String;

    if-eqz v8, :cond_a

    .line 60
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 61
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    .line 62
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[0-9]"

    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 63
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/i$c;->d:Landroid/widget/TextView;

    const-string v8, "#"

    invoke-virtual {p3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 64
    :cond_9
    iget-object v8, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v8, v8, Lcom/allinone/callerid/b/i$c;->d:Landroid/widget/TextView;

    invoke-static {p3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v8, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 65
    :cond_a
    iget-object v8, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v8, v8, Lcom/allinone/callerid/b/i$c;->d:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    invoke-virtual {v8, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 66
    :cond_b
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/i$c;->d:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p3

    .line 67
    iget-object v8, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object v8, v8, Lcom/allinone/callerid/b/i$c;->d:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    :goto_3
    :try_start_3
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    if-eqz p3, :cond_29

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, v3, :cond_29

    if-lez p1, :cond_29

    .line 70
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    add-int/lit8 v8, p1, -0x1

    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object p3

    .line 71
    iget-object v8, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v8}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v8

    if-eqz p3, :cond_f

    .line 72
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 73
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_c

    if-le v9, v5, :cond_d

    :cond_c
    if-lt v9, v6, :cond_e

    if-gt v9, v4, :cond_e

    .line 74
    :cond_d
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    goto :goto_4

    .line 75
    :cond_e
    invoke-static {}, Lcom/allinone/callerid/util/u;->c()Lcom/allinone/callerid/util/u;

    move-result-object v9

    invoke-virtual {v9, p3}, Lcom/allinone/callerid/util/u;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/util/u$a;

    iget-object p3, p3, Lcom/allinone/callerid/util/u$a;->c:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    .line 76
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_4

    :cond_f
    move-object p3, v0

    :goto_4
    if-eqz v8, :cond_13

    .line 77
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 78
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_10

    if-le v9, v5, :cond_11

    :cond_10
    if-lt v9, v6, :cond_12

    if-gt v9, v4, :cond_12

    .line 79
    :cond_11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 80
    :cond_12
    invoke-static {}, Lcom/allinone/callerid/util/u;->c()Lcom/allinone/callerid/util/u;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/allinone/callerid/util/u;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/allinone/callerid/util/u$a;

    iget-object v8, v8, Lcom/allinone/callerid/util/u$a;->c:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 81
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_13
    move-object v8, v0

    .line 82
    :goto_5
    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1e

    .line 83
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/i$c;->g:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/i$c;->d:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v3

    if-eq p1, p3, :cond_1d

    .line 86
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    add-int/lit8 v3, p1, 0x1

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object p3

    .line 87
    iget-object v3, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_17

    .line 88
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 89
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_14

    if-le v3, v5, :cond_15

    :cond_14
    if-lt v3, v6, :cond_16

    if-gt v3, v4, :cond_16

    .line 90
    :cond_15
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    goto :goto_6

    .line 91
    :cond_16
    invoke-static {}, Lcom/allinone/callerid/util/u;->c()Lcom/allinone/callerid/util/u;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/allinone/callerid/util/u;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/util/u$a;

    iget-object p3, p3, Lcom/allinone/callerid/util/u$a;->c:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_6

    :cond_17
    move-object p3, v0

    :goto_6
    if-eqz p1, :cond_1b

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 94
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_18

    if-le v3, v5, :cond_19

    :cond_18
    if-lt v3, v6, :cond_1a

    if-gt v3, v4, :cond_1a

    .line 95
    :cond_19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 96
    :cond_1a
    invoke-static {}, Lcom/allinone/callerid/util/u;->c()Lcom/allinone/callerid/util/u;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/allinone/callerid/util/u;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/util/u$a;

    iget-object p1, p1, Lcom/allinone/callerid/util/u$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_1b
    :goto_7
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto/16 :goto_c

    .line 99
    :cond_1c
    iget-object p1, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object p1, p1, Lcom/allinone/callerid/b/i$c;->h:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    .line 100
    :cond_1d
    iget-object p1, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object p1, p1, Lcom/allinone/callerid/b/i$c;->h:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    .line 101
    :cond_1e
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/i$c;->d:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/i$c;->g:Landroid/view/View;

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v3

    if-eq p1, p3, :cond_28

    .line 104
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    add-int/lit8 v3, p1, 0x1

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object p3

    .line 105
    iget-object v3, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_22

    .line 106
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 107
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_1f

    if-le v3, v5, :cond_20

    :cond_1f
    if-lt v3, v6, :cond_21

    if-gt v3, v4, :cond_21

    .line 108
    :cond_20
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    goto :goto_8

    .line 109
    :cond_21
    invoke-static {}, Lcom/allinone/callerid/util/u;->c()Lcom/allinone/callerid/util/u;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/allinone/callerid/util/u;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/util/u$a;

    iget-object p3, p3, Lcom/allinone/callerid/util/u$a;->c:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_8

    :cond_22
    move-object p3, v0

    :goto_8
    if-eqz p1, :cond_26

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 112
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_23

    if-le v3, v5, :cond_24

    :cond_23
    if-lt v3, v6, :cond_25

    if-gt v3, v4, :cond_25

    .line 113
    :cond_24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 114
    :cond_25
    invoke-static {}, Lcom/allinone/callerid/util/u;->c()Lcom/allinone/callerid/util/u;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/allinone/callerid/util/u;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/util/u$a;

    iget-object p1, p1, Lcom/allinone/callerid/util/u$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_26
    :goto_9
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    goto/16 :goto_c

    .line 117
    :cond_27
    iget-object p1, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object p1, p1, Lcom/allinone/callerid/b/i$c;->h:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    .line 118
    :cond_28
    iget-object p1, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object p1, p1, Lcom/allinone/callerid/b/i$c;->h:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    .line 119
    :cond_29
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    if-eqz p3, :cond_2a

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ne p3, v3, :cond_2a

    .line 120
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/i$c;->h:Landroid/view/View;

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    :cond_2a
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    if-eqz p3, :cond_34

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, v3, :cond_34

    if-nez p1, :cond_34

    .line 122
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/i$c;->g:Landroid/view/View;

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    add-int/lit8 v3, p1, 0x1

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object p3

    .line 124
    iget-object v3, p0, Lcom/allinone/callerid/b/i;->d:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_2e

    .line 125
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 126
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_2b

    if-le v3, v5, :cond_2c

    :cond_2b
    if-lt v3, v6, :cond_2d

    if-gt v3, v4, :cond_2d

    .line 127
    :cond_2c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    goto :goto_a

    .line 128
    :cond_2d
    invoke-static {}, Lcom/allinone/callerid/util/u;->c()Lcom/allinone/callerid/util/u;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/allinone/callerid/util/u;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/util/u$a;

    iget-object p3, p3, Lcom/allinone/callerid/util/u$a;->c:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_a

    :cond_2e
    move-object p3, v0

    :goto_a
    if-eqz p1, :cond_32

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 131
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_2f

    if-le v3, v5, :cond_30

    :cond_2f
    if-lt v3, v6, :cond_31

    if-gt v3, v4, :cond_31

    .line 132
    :cond_30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 133
    :cond_31
    invoke-static {}, Lcom/allinone/callerid/util/u;->c()Lcom/allinone/callerid/util/u;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/allinone/callerid/util/u;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/util/u$a;

    iget-object p1, p1, Lcom/allinone/callerid/util/u$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_32
    :goto_b
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    goto :goto_c

    .line 136
    :cond_33
    iget-object p1, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object p1, p1, Lcom/allinone/callerid/b/i$c;->h:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_c

    :catch_2
    move-exception p1

    .line 137
    iget-object p3, p0, Lcom/allinone/callerid/b/i;->i:Lcom/allinone/callerid/b/i$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/i$c;->d:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_34
    :goto_c
    return-object p2
.end method
