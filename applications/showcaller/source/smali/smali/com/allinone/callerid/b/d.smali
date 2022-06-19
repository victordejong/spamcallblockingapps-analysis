.class public Lcom/allinone/callerid/b/d;
.super Landroid/widget/BaseAdapter;
.source "CallLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/d$b;
    }
.end annotation


# instance fields
.field private final d:I

.field private final e:I

.field private f:Landroid/content/Context;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/view/LayoutInflater;

.field i:Lcom/allinone/callerid/b/d$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/ListView;)V
    .locals 0
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
    iput-object p1, p0, Lcom/allinone/callerid/b/d;->f:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/b/d;->g:Ljava/util/List;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/allinone/callerid/b/d;->h:Landroid/view/LayoutInflater;

    const p2, 0x7f040118

    const p3, 0x7f06004b

    .line 5
    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/b/d;->d:I

    const p2, 0x7f04011a

    const p3, 0x7f060051

    .line 6
    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/d;->e:I

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/b/d;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/d;->f:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/allinone/callerid/b/d;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/d;->g:Ljava/util/List;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x3c

    const-string v1, " "

    if-ge p1, v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/allinone/callerid/b/d;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1002c9

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v2, 0xe10

    if-ge p1, v2, :cond_1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr p1, v0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/allinone/callerid/b/d;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1001da

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/allinone/callerid/b/d;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1001a7

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/d;->g:Ljava/util/List;

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

    if-nez p2, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/b/d;->h:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0079

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/allinone/callerid/b/d$b;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/allinone/callerid/b/d$b;-><init>(Lcom/allinone/callerid/b/d$a;)V

    iput-object p3, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    const v0, 0x7f09009d

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p3, Lcom/allinone/callerid/b/d$b;->a:Landroid/widget/FrameLayout;

    .line 4
    iget-object p3, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    const v0, 0x7f09009e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/allinone/callerid/b/d$b;->b:Landroid/widget/ImageView;

    .line 5
    iget-object p3, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    const v0, 0x7f090632

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/allinone/callerid/b/d$b;->c:Landroid/widget/TextView;

    .line 6
    iget-object p3, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    const v0, 0x7f09062f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/allinone/callerid/b/d$b;->d:Landroid/widget/TextView;

    .line 7
    iget-object p3, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    const v0, 0x7f090630

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/allinone/callerid/b/d$b;->e:Landroid/widget/TextView;

    .line 8
    iget-object p3, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/d$b;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    iget-object p3, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/d$b;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object p3, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/d$b;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    iget-object p3, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/b/d$b;

    iput-object p3, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    .line 13
    :goto_0
    iget-object p3, p0, Lcom/allinone/callerid/b/d;->g:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/search/CallLogBean;

    .line 14
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->O()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-string v2, ""

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    const v3, 0x7f1001dd

    const v4, 0x7f080169

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    const v5, 0x7f100088

    const v6, 0x7f08015f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 15
    :try_start_1
    iget-object v0, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/d$b;->b:Landroid/widget/ImageView;

    .line 16
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 17
    iget-object v0, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/d$b;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/b/d;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/d$b;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/b/d;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/d$b;->b:Landroid/widget/ImageView;

    .line 20
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 21
    iget-object v0, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/d$b;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/b/d;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/d$b;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/b/d;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/d$b;->b:Landroid/widget/ImageView;

    .line 24
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 25
    iget-object v0, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/d$b;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/b/d;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/d$b;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/b/d;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 27
    :cond_3
    iget-object v0, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/d$b;->b:Landroid/widget/ImageView;

    .line 28
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 29
    iget-object v0, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/d$b;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/b/d;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/d$b;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/b/d;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 31
    :cond_4
    iget-object v0, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/d$b;->b:Landroid/widget/ImageView;

    const v1, 0x7f08016a

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 33
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 34
    iget-object v0, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/d$b;->e:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/allinone/callerid/b/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/d$b;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/b/d;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 36
    :cond_5
    iget-object v0, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/d$b;->b:Landroid/widget/ImageView;

    const v1, 0x7f080167

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 38
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 39
    iget-object v0, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/d$b;->e:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/allinone/callerid/b/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/d$b;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/b/d;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    :cond_6
    :goto_1
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 42
    iget-object v0, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/d$b;->c:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 43
    :cond_7
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 44
    iget-object v0, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/d$b;->c:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 45
    :cond_8
    iget-object v0, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/d$b;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/b/d;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100353

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :goto_2
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 47
    iget-object v0, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/d$b;->d:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_9
    iget-object p3, p0, Lcom/allinone/callerid/b/d;->i:Lcom/allinone/callerid/b/d$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/d$b;->a:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/allinone/callerid/b/d$a;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/b/d$a;-><init>(Lcom/allinone/callerid/b/d;I)V

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object p2
.end method
