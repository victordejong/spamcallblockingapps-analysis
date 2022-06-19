.class public Lcom/allinone/callerid/b/r;
.super Landroid/widget/BaseAdapter;
.source "MyReportListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/r$b;
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

.field private f:Landroid/view/LayoutInflater;

.field private g:Landroid/widget/ListView;

.field h:Lcom/allinone/callerid/b/r$b;

.field public i:Ljava/util/HashMap;


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
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/b/r;->i:Ljava/util/HashMap;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/b/r;->d:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/allinone/callerid/b/r;->e:Ljava/util/List;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/b/r;->f:Landroid/view/LayoutInflater;

    .line 6
    iput-object p3, p0, Lcom/allinone/callerid/b/r;->g:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/b/r;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/r;->g:Landroid/widget/ListView;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/b/r;->e:Ljava/util/List;

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/allinone/callerid/b/r;->e:Ljava/util/List;

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/r;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/r;->e:Ljava/util/List;

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
    .locals 7

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/b/r;->f:Landroid/view/LayoutInflater;

    const v2, 0x7f0c010b

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/allinone/callerid/b/r$b;

    const/4 v2, 0x0

    invoke-direct {p3, v2}, Lcom/allinone/callerid/b/r$b;-><init>(Lcom/allinone/callerid/b/r$a;)V

    iput-object p3, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    const v2, 0x7f09041a

    .line 3
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/allinone/callerid/b/r$b;->a:Landroid/widget/TextView;

    .line 4
    iget-object p3, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    const v2, 0x7f09071e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/allinone/callerid/b/r$b;->d:Landroid/widget/TextView;

    .line 5
    iget-object p3, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    const v2, 0x7f09071d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/allinone/callerid/b/r$b;->c:Landroid/widget/TextView;

    .line 6
    iget-object p3, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    const v2, 0x7f090794

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/allinone/callerid/b/r$b;->b:Landroid/widget/TextView;

    .line 7
    iget-object p3, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    const v2, 0x7f0904bf

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p3, Lcom/allinone/callerid/b/r$b;->e:Landroid/widget/FrameLayout;

    .line 8
    iget-object p3, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    const v2, 0x7f0904be

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p3, Lcom/allinone/callerid/b/r$b;->f:Landroid/widget/RelativeLayout;

    .line 9
    iget-object p3, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    const v2, 0x7f0904ce

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p3, Lcom/allinone/callerid/b/r$b;->g:Landroid/view/View;

    .line 10
    iget-object p3, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/r$b;->g:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p3, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    const v2, 0x7f090509

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p3, Lcom/allinone/callerid/b/r$b;->h:Landroid/view/View;

    .line 12
    iget-object p3, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/r$b;->h:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object p3, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    const v2, 0x7f090491

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p3, Lcom/allinone/callerid/b/r$b;->i:Landroid/widget/ImageView;

    .line 14
    iget-object p3, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/r$b;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 15
    iget-object p3, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/r$b;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 16
    iget-object p3, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/r$b;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17
    iget-object p3, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/r$b;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 18
    iget-object p3, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/b/r$b;

    iput-object p3, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    .line 20
    :goto_0
    iget-object p3, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/r$b;->i:Landroid/widget/ImageView;

    const v2, 0x7f0801b4

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    iget-object p3, p0, Lcom/allinone/callerid/b/r;->e:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/search/CallLogBean;

    if-nez p1, :cond_1

    .line 22
    iget-object v0, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/r$b;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 23
    :cond_1
    iget-object v3, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/r$b;->h:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    :goto_1
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->M()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    const-string v4, ""

    if-eqz v0, :cond_5

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->M()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 25
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->M()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v6, "is_spam"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x2

    goto :goto_2

    :sswitch_1
    const-string v6, "is_scam"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    goto :goto_2

    :sswitch_2
    const-string v6, "is_telemarketing"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    packed-switch v5, :pswitch_data_0

    goto :goto_3

    .line 26
    :pswitch_0
    iget-object v0, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/r$b;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/allinone/callerid/b/r;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1002ff

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 27
    :pswitch_1
    iget-object v0, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/r$b;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/allinone/callerid/b/r;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1002be

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 28
    :pswitch_2
    iget-object v0, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/r$b;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/allinone/callerid/b/r;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10031e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    :cond_5
    :goto_3
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/b/r;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 30
    iget-object v0, p0, Lcom/allinone/callerid/b/r;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 31
    iget-object v0, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/r$b;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_6
    if-nez p1, :cond_7

    goto :goto_4

    .line 32
    :cond_7
    iget-object v0, p0, Lcom/allinone/callerid/b/r;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_8

    .line 33
    iget-object v0, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/r$b;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 34
    iget-object v3, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/r$b;->g:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/r$b;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/r$b;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->b()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/i;->j(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/r$b;->e:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/allinone/callerid/b/r$a;

    invoke-direct {v1, p0, p1}, Lcom/allinone/callerid/b/r$a;-><init>(Lcom/allinone/callerid/b/r;I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0801b5

    if-eqz p1, :cond_9

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 40
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 41
    iget-object p1, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    iget-object p1, p1, Lcom/allinone/callerid/b/r$b;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v2, 0x7f0801b5

    goto :goto_5

    .line 42
    :cond_9
    iget-object p1, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    iget-object p1, p1, Lcom/allinone/callerid/b/r$b;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    :goto_5
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 44
    iget-object p1, p0, Lcom/allinone/callerid/b/r;->d:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/allinone/callerid/b/r;->h:Lcom/allinone/callerid/b/r$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/r$b;->i:Landroid/widget/ImageView;

    invoke-static {p1, p3, v2, v0}, Lcom/allinone/callerid/util/t;->b(Landroid/content/Context;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    :cond_a
    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x360b6c99 -> :sswitch_2
        0x7c1c1c71 -> :sswitch_1
        0x7c1c4d3e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
