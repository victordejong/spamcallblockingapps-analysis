.class public Lcom/allinone/callerid/b/b0/a;
.super Landroid/widget/BaseAdapter;
.source "EZSearchHisAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/b0/a$c;,
        Lcom/allinone/callerid/b/b0/a$b;
    }
.end annotation


# instance fields
.field private d:Landroid/app/Activity;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/allinone/callerid/b/b0/a$c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/b/b0/a;->d:Landroid/app/Activity;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/b/b0/a;->e:Ljava/util/List;

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/b/b0/a;->d:Landroid/app/Activity;

    const v0, 0x7f04006e

    const v1, 0x7f08008b

    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/b0/a;->f:I

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/b/b0/a;->d:Landroid/app/Activity;

    const v0, 0x7f04006d

    const v1, 0x7f08008a

    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/b0/a;->g:I

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/b/b0/a;->d:Landroid/app/Activity;

    const v0, 0x7f04006f

    const v1, 0x7f08008c

    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/b0/a;->h:I

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/b/b0/a;->d:Landroid/app/Activity;

    const v0, 0x7f040070

    const v1, 0x7f08008d

    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/b0/a;->i:I

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/b/b0/a;)Lcom/allinone/callerid/b/b0/a$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/b0/a;->j:Lcom/allinone/callerid/b/b0/a$c;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/b0/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/b/b0/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public c(Lcom/allinone/callerid/b/b0/a$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/b0/a;->j:Lcom/allinone/callerid/b/b0/a$c;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/b0/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/b0/a;->e:Ljava/util/List;

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
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/b/b0/a;->d:Landroid/app/Activity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c00c6

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/allinone/callerid/b/b0/a$b;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, Lcom/allinone/callerid/b/b0/a$b;-><init>(Lcom/allinone/callerid/b/b0/a$a;)V

    const v1, 0x7f09041b

    .line 3
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/allinone/callerid/b/b0/a$b;->b:Landroid/widget/TextView;

    const v1, 0x7f09079a

    .line 4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/allinone/callerid/b/b0/a$b;->a:Landroid/widget/TextView;

    const v1, 0x7f090436

    .line 5
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/allinone/callerid/b/b0/a$b;->c:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v1, p3, Lcom/allinone/callerid/b/b0/a$b;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8
    iget-object v1, p3, Lcom/allinone/callerid/b/b0/a$b;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    iget-object v1, p3, Lcom/allinone/callerid/b/b0/a$b;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f090453

    .line 10
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/allinone/callerid/b/b0/a$b;->d:Landroid/widget/ImageView;

    const v1, 0x7f0904bf

    .line 11
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p3, Lcom/allinone/callerid/b/b0/a$b;->e:Landroid/widget/FrameLayout;

    const v1, 0x7f090389

    .line 12
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p3, Lcom/allinone/callerid/b/b0/a$b;->f:Landroid/widget/LinearLayout;

    .line 13
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/b/b0/a$b;

    .line 15
    :goto_0
    :try_start_0
    iget-object v1, p3, Lcom/allinone/callerid/b/b0/a$b;->d:Landroid/widget/ImageView;

    const v2, 0x7f0801b4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x1

    const/16 v3, 0x8

    if-nez p1, :cond_2

    .line 16
    iget-object v4, p3, Lcom/allinone/callerid/b/b0/a$b;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object v4, p0, Lcom/allinone/callerid/b/b0/a;->e:Ljava/util/List;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 18
    iget-object v1, p3, Lcom/allinone/callerid/b/b0/a$b;->f:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/allinone/callerid/b/b0/a;->g:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 19
    :cond_1
    iget-object v1, p3, Lcom/allinone/callerid/b/b0/a$b;->f:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/allinone/callerid/b/b0/a;->i:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 20
    :cond_2
    iget-object v4, p3, Lcom/allinone/callerid/b/b0/a$b;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object v4, p0, Lcom/allinone/callerid/b/b0/a;->e:Ljava/util/List;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/allinone/callerid/b/b0/a;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-ne p1, v4, :cond_3

    .line 22
    iget-object v1, p3, Lcom/allinone/callerid/b/b0/a$b;->f:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/allinone/callerid/b/b0/a;->f:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 23
    :cond_3
    iget-object v1, p3, Lcom/allinone/callerid/b/b0/a$b;->f:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/allinone/callerid/b/b0/a;->h:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 24
    :goto_1
    iget-object v1, p0, Lcom/allinone/callerid/b/b0/a;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/search/CallLogBean;

    .line 25
    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->d()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    if-eqz v1, :cond_4

    :try_start_1
    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 26
    iget-object v1, p3, Lcom/allinone/callerid/b/b0/a$b;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 27
    :cond_4
    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 28
    iget-object v1, p3, Lcom/allinone/callerid/b/b0/a$b;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 29
    :cond_5
    iget-object v1, p3, Lcom/allinone/callerid/b/b0/a$b;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :goto_2
    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 31
    iget-object v1, p3, Lcom/allinone/callerid/b/b0/a$b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v1, p3, Lcom/allinone/callerid/b/b0/a$b;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 33
    :cond_6
    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 34
    iget-object v1, p3, Lcom/allinone/callerid/b/b0/a$b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v1, p3, Lcom/allinone/callerid/b/b0/a$b;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 36
    :cond_7
    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 37
    iget-object v1, p3, Lcom/allinone/callerid/b/b0/a$b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v1, p3, Lcom/allinone/callerid/b/b0/a$b;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 39
    :cond_8
    iget-object v0, p3, Lcom/allinone/callerid/b/b0/a$b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p3, Lcom/allinone/callerid/b/b0/a$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    :goto_3
    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->Y()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 42
    iget-object v0, p0, Lcom/allinone/callerid/b/b0/a;->d:Landroid/app/Activity;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p3, Lcom/allinone/callerid/b/b0/a$b;->d:Landroid/widget/ImageView;

    invoke-static {v0, v1, v3, v2, v4}, Lcom/allinone/callerid/util/t;->c(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/widget/ImageView;)V

    goto :goto_4

    .line 43
    :cond_9
    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const v2, 0x7f0801b5

    .line 44
    iget-object v0, p3, Lcom/allinone/callerid/b/b0/a$b;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    :cond_a
    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 46
    iget-object v0, p0, Lcom/allinone/callerid/b/b0/a;->d:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p3, Lcom/allinone/callerid/b/b0/a$b;->d:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/t;->a(Landroid/app/Activity;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    .line 47
    :cond_b
    :goto_4
    iget-object p3, p3, Lcom/allinone/callerid/b/b0/a$b;->e:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/allinone/callerid/b/b0/a$a;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/b/b0/a$a;-><init>(Lcom/allinone/callerid/b/b0/a;Lcom/allinone/callerid/search/CallLogBean;)V

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-object p2
.end method
