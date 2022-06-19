.class public Lcom/callerid/block/b/f;
.super Landroid/widget/BaseAdapter;
.source ""

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/b/f$c;
    }
.end annotation


# instance fields
.field private final b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Landroid/app/Activity;

.field private f:Landroid/view/LayoutInflater;

.field private g:Landroid/widget/ListView;

.field h:Lcom/callerid/block/b/f$c;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/ListView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;",
            "Landroid/widget/ListView;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/b/f;->d:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/callerid/block/b/f;->e:Landroid/app/Activity;

    iput-object p3, p0, Lcom/callerid/block/b/f;->g:Landroid/widget/ListView;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/b/f;->f:Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/b/f;->c:Ljava/util/List;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/callerid/block/b/f;->c:Ljava/util/List;

    :goto_0
    iget-object p1, p0, Lcom/callerid/block/b/f;->d:Landroid/content/Context;

    const p2, 0x7f040525

    const p3, 0x7f0801ab

    invoke-static {p1, p2, p3}, Lcom/callerid/block/util/p0;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/callerid/block/b/f;->b:I

    return-void
.end method

.method static synthetic a(Lcom/callerid/block/b/f;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/b/f;->g:Landroid/widget/ListView;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/callerid/block/b/f;->c:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/callerid/block/b/f;->i:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public c(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/callerid/block/b/f;->c:Ljava/util/List;

    iput-object p2, p0, Lcom/callerid/block/b/f;->i:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/b/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/b/f;->c:Ljava/util/List;

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

    :goto_0
    invoke-virtual {p0}, Lcom/callerid/block/b/f;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/callerid/block/b/f;->c:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/callerid/block/b/f;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v2}, Lcom/callerid/block/search/CallLogBean;->B()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/callerid/block/b/f;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v2}, Lcom/callerid/block/search/CallLogBean;->B()Ljava/lang/String;

    move-result-object v2

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

    iget-object v0, p0, Lcom/callerid/block/b/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->B()Ljava/lang/String;

    move-result-object p1

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

    const-string p3, ""

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/callerid/block/b/f;->f:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0048

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/callerid/block/b/f$c;

    invoke-direct {v0}, Lcom/callerid/block/b/f$c;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    const v1, 0x7f09028c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/callerid/block/b/f$c;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    const v1, 0x7f0902a0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/callerid/block/b/f$c;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    const v1, 0x7f0902b8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/callerid/block/b/f$c;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    const v1, 0x7f0901b5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/callerid/block/b/f$c;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    const v1, 0x7f0902b6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/callerid/block/b/f$c;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v0, v0, Lcom/callerid/block/b/f$c;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/callerid/block/util/r0;->a()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v0, v0, Lcom/callerid/block/b/f$c;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v0, v0, Lcom/callerid/block/b/f$c;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    const v1, 0x7f0902d8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/callerid/block/b/f$c;->f:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    const v1, 0x7f0902d7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/callerid/block/b/f$c;->g:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v0, v0, Lcom/callerid/block/b/f$c;->f:Landroid/widget/FrameLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v0, v0, Lcom/callerid/block/b/f$c;->f:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/callerid/block/b/f$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/b/f$a;-><init>(Lcom/callerid/block/b/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    const v1, 0x7f090300

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/customview/MyListView;

    iput-object v1, v0, Lcom/callerid/block/b/f$c;->h:Lcom/callerid/block/customview/MyListView;

    iget-object v0, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/b/f$c;

    iput-object v0, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    :goto_0
    iget-object v0, p0, Lcom/callerid/block/b/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/search/CallLogBean;

    if-eqz v0, :cond_2d

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/callerid/block/b/f;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1001e0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    iget-object v5, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v5, v5, Lcom/callerid/block/b/f$c;->c:Landroid/widget/ImageView;

    iget v6, p0, Lcom/callerid/block/b/f;->b:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v5, v5, Lcom/callerid/block/b/f$c;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SIM Account"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SIM0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v4, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v4, v4, Lcom/callerid/block/b/f$c;->d:Landroid/widget/ImageView;

    const v5, 0x7f0800b9

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v4, v4, Lcom/callerid/block/b/f$c;->d:Landroid/widget/ImageView;

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_3
    const-string v5, "SIM1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v4, v4, Lcom/callerid/block/b/f$c;->d:Landroid/widget/ImageView;

    const v5, 0x7f0800ba

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v4, v4, Lcom/callerid/block/b/f$c;->d:Landroid/widget/ImageView;

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v4, v4, Lcom/callerid/block/b/f$c;->d:Landroid/widget/ImageView;

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v4, v4, Lcom/callerid/block/b/f$c;->d:Landroid/widget/ImageView;

    goto :goto_2

    :goto_3
    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/callerid/block/b/f;->i:Ljava/lang/String;

    if-eqz v5, :cond_7

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    if-eqz v4, :cond_6

    array-length v5, v4

    if-le v5, v1, :cond_6

    iget-object v5, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v5, v5, Lcom/callerid/block/b/f$c;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v5, v5, Lcom/callerid/block/b/f$c;->h:Lcom/callerid/block/customview/MyListView;

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setVisibility(I)V

    new-instance v5, Lcom/callerid/block/b/e;

    iget-object v6, p0, Lcom/callerid/block/b/f;->d:Landroid/content/Context;

    iget-object v7, p0, Lcom/callerid/block/b/f;->i:Ljava/lang/String;

    invoke-direct {v5, v6, v4, v7}, Lcom/callerid/block/b/e;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v4, v4, Lcom/callerid/block/b/f$c;->h:Lcom/callerid/block/customview/MyListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v4, v4, Lcom/callerid/block/b/f$c;->h:Lcom/callerid/block/customview/MyListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setClickable(Z)V

    iget-object v4, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v4, v4, Lcom/callerid/block/b/f$c;->h:Lcom/callerid/block/customview/MyListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setPressed(Z)V

    iget-object v4, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v4, v4, Lcom/callerid/block/b/f$c;->h:Lcom/callerid/block/customview/MyListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    goto :goto_4

    :cond_6
    iget-object v5, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v5, v5, Lcom/callerid/block/b/f$c;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v5, v5, Lcom/callerid/block/b/f$c;->h:Lcom/callerid/block/customview/MyListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v5, p0, Lcom/callerid/block/b/f;->d:Landroid/content/Context;

    aget-object v4, v4, v3

    const-string v6, " "

    invoke-virtual {v4, v6, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/callerid/block/b/f;->i:Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/callerid/block/util/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    iget-object v5, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v5, v5, Lcom/callerid/block/b/f$c;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    iget-object v4, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v4, v4, Lcom/callerid/block/b/f$c;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v4, v4, Lcom/callerid/block/b/f$c;->h:Lcom/callerid/block/customview/MyListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_4
    iget-object v4, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v4, v4, Lcom/callerid/block/b/f$c;->f:Landroid/widget/FrameLayout;

    new-instance v5, Lcom/callerid/block/b/f$b;

    invoke-direct {v5, p0, p1}, Lcom/callerid/block/b/f$b;-><init>(Lcom/callerid/block/b/f;I)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/callerid/block/b/f;->e:Landroid/app/Activity;

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->t()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/callerid/block/b/f;->b:I

    iget-object v8, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v8, v8, Lcom/callerid/block/b/f$c;->c:Landroid/widget/ImageView;

    invoke-static {v4, v5, v6, v7, v8}, Lcom/callerid/block/util/p;->c(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/widget/ImageView;)V

    iget-object v4, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v4, v4, Lcom/callerid/block/b/f$c;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    const/16 v4, 0x7a

    const/16 v5, 0x5a

    const/16 v6, 0x61

    const/16 v7, 0x41

    :try_start_1
    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_d

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_8

    if-le v8, v5, :cond_9

    :cond_8
    if-lt v8, v6, :cond_a

    if-gt v8, v4, :cond_a

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v8, v8, Lcom/callerid/block/b/f$c;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_a
    invoke-static {}, Lcom/callerid/block/util/q;->c()Lcom/callerid/block/util/q;

    move-result-object v8

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/callerid/block/util/q;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/callerid/block/util/q$a;

    iget-object v8, v8, Lcom/callerid/block/util/q$a;->c:Ljava/lang/String;

    if-eqz v8, :cond_c

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[0-9]"

    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v0, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v0, v0, Lcom/callerid/block/b/f$c;->e:Landroid/widget/TextView;

    const-string v8, "#"

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_b
    iget-object v8, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v8, v8, Lcom/callerid/block/b/f$c;->e:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_c
    iget-object v8, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v8, v8, Lcom/callerid/block/b/f$c;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_7

    :cond_d
    iget-object v0, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v0, v0, Lcom/callerid/block/b/f$c;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    iget-object v8, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v8, v8, Lcom/callerid/block/b/f$c;->e:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    :try_start_2
    iget-object v0, p0, Lcom/callerid/block/b/f;->c:Ljava/util/List;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_25

    if-lez p1, :cond_25

    iget-object v0, p0, Lcom/callerid/block/b/f;->c:Ljava/util/List;

    add-int/lit8 v8, p1, -0x1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/callerid/block/b/f;->c:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v8}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v8

    if-eqz v0, :cond_11

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_e

    if-le v9, v5, :cond_f

    :cond_e
    if-lt v9, v6, :cond_10

    if-gt v9, v4, :cond_10

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_10
    invoke-static {}, Lcom/callerid/block/util/q;->c()Lcom/callerid/block/util/q;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/callerid/block/util/q;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/util/q$a;

    iget-object v0, v0, Lcom/callerid/block/util/q$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_11
    move-object v0, p3

    :goto_8
    if-eqz v8, :cond_15

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_12

    if-le v9, v5, :cond_13

    :cond_12
    if-lt v9, v6, :cond_14

    if-gt v9, v4, :cond_14

    :cond_13
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    :cond_14
    invoke-static {}, Lcom/callerid/block/util/q;->c()Lcom/callerid/block/util/q;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/callerid/block/util/q;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/callerid/block/util/q$a;

    iget-object v8, v8, Lcom/callerid/block/util/q$a;->c:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    :cond_15
    move-object v8, p3

    :goto_9
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v0, v0, Lcom/callerid/block/b/f$c;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/b/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-eq p1, v0, :cond_2d

    iget-object v0, p0, Lcom/callerid/block/b/f;->c:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/b/f;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_19

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v7, :cond_16

    if-le v1, v5, :cond_17

    :cond_16
    if-lt v1, v6, :cond_18

    if-gt v1, v4, :cond_18

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    goto :goto_a

    :cond_18
    invoke-static {}, Lcom/callerid/block/util/q;->c()Lcom/callerid/block/util/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callerid/block/util/q;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/util/q$a;

    iget-object v0, v0, Lcom/callerid/block/util/q$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_19
    :goto_a
    if-eqz p1, :cond_2d

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v7, :cond_1a

    if-le v0, v5, :cond_1b

    :cond_1a
    if-lt v0, v6, :cond_1c

    if-gt v0, v4, :cond_1c

    :cond_1b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_b
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    goto/16 :goto_f

    :cond_1c
    invoke-static {}, Lcom/callerid/block/util/q;->c()Lcom/callerid/block/util/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callerid/block/util/q;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/util/q$a;

    iget-object p1, p1, Lcom/callerid/block/util/q$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_f

    :cond_1d
    iget-object v0, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object v0, v0, Lcom/callerid/block/b/f$c;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/b/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-eq p1, v0, :cond_2d

    iget-object v0, p0, Lcom/callerid/block/b/f;->c:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/b/f;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_21

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v7, :cond_1e

    if-le v1, v5, :cond_1f

    :cond_1e
    if-lt v1, v6, :cond_20

    if-gt v1, v4, :cond_20

    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    goto :goto_d

    :cond_20
    invoke-static {}, Lcom/callerid/block/util/q;->c()Lcom/callerid/block/util/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callerid/block/util/q;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/util/q$a;

    iget-object v0, v0, Lcom/callerid/block/util/q$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_21
    :goto_d
    if-eqz p1, :cond_2d

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v7, :cond_22

    if-le v0, v5, :cond_23

    :cond_22
    if-lt v0, v6, :cond_24

    if-gt v0, v4, :cond_24

    :cond_23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_b

    :cond_24
    invoke-static {}, Lcom/callerid/block/util/q;->c()Lcom/callerid/block/util/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callerid/block/util/q;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/util/q$a;

    iget-object p1, p1, Lcom/callerid/block/util/q$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :cond_25
    iget-object v0, p0, Lcom/callerid/block/b/f;->c:Ljava/util/List;

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2d

    if-nez p1, :cond_2d

    iget-object v0, p0, Lcom/callerid/block/b/f;->c:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/b/f;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_29

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v7, :cond_26

    if-le v1, v5, :cond_27

    :cond_26
    if-lt v1, v6, :cond_28

    if-gt v1, v4, :cond_28

    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    goto :goto_e

    :cond_28
    invoke-static {}, Lcom/callerid/block/util/q;->c()Lcom/callerid/block/util/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callerid/block/util/q;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/util/q$a;

    iget-object v0, v0, Lcom/callerid/block/util/q$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_29
    :goto_e
    if-eqz p1, :cond_2d

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v7, :cond_2a

    if-le v0, v5, :cond_2b

    :cond_2a
    if-lt v0, v6, :cond_2c

    if-gt v0, v4, :cond_2c

    :cond_2b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_b

    :cond_2c
    invoke-static {}, Lcom/callerid/block/util/q;->c()Lcom/callerid/block/util/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callerid/block/util/q;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/util/q$a;

    iget-object p1, p1, Lcom/callerid/block/util/q$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_c

    :catch_2
    move-exception p1

    iget-object p3, p0, Lcom/callerid/block/b/f;->h:Lcom/callerid/block/b/f$c;

    iget-object p3, p3, Lcom/callerid/block/b/f$c;->e:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2d
    :goto_f
    return-object p2
.end method
