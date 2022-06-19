.class public Lcom/callerid/block/b/d;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/b/d$b;
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/view/LayoutInflater;

.field private g:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/b/d;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/callerid/block/b/d;->e:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/b/d;->f:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/b/d;->g:Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/callerid/block/b/d;->d:Landroid/content/Context;

    const p2, 0x7f040137

    const v0, 0x7f060139

    invoke-static {p1, p2, v0}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/callerid/block/b/d;->b:I

    iget-object p1, p0, Lcom/callerid/block/b/d;->d:Landroid/content/Context;

    const p2, 0x7f040111

    const v0, 0x7f060070

    invoke-static {p1, p2, v0}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/callerid/block/b/d;->c:I

    return-void
.end method

.method static synthetic a(Lcom/callerid/block/b/d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/b/d;->d:Landroid/content/Context;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x3c

    const-string v1, " "

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/callerid/block/b/d;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10019c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v2, 0xe10

    if-ge p1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr p1, v0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/callerid/block/b/d;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10010e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/callerid/block/b/d;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1000e8

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

    iget-object v0, p0, Lcom/callerid/block/b/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/b/d;->e:Ljava/util/List;

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
    .locals 5

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/callerid/block/b/d;->f:Landroid/view/LayoutInflater;

    const p3, 0x7f0c004f

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/callerid/block/b/d$b;

    invoke-direct {p3, v0}, Lcom/callerid/block/b/d$b;-><init>(Lcom/callerid/block/b/d$a;)V

    const v0, 0x7f09007e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p3, Lcom/callerid/block/b/d$b;->a:Landroid/widget/FrameLayout;

    const v0, 0x7f090080

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/callerid/block/b/d$b;->b:Landroid/widget/ImageView;

    const v0, 0x7f0903b6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/callerid/block/b/d$b;->c:Landroid/widget/TextView;

    const v0, 0x7f0903b3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/callerid/block/b/d$b;->d:Landroid/widget/TextView;

    const v0, 0x7f0903b4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/callerid/block/b/d$b;->e:Landroid/widget/TextView;

    iget-object v0, p3, Lcom/callerid/block/b/d$b;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/b/d;->g:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p3, Lcom/callerid/block/b/d$b;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/b/d;->g:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p3, Lcom/callerid/block/b/d$b;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/b/d;->g:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/callerid/block/b/d$b;

    :goto_0
    iget-object v0, p0, Lcom/callerid/block/b/d;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->I()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    const v3, 0x7f100111

    const v4, 0x7f0800f3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p3, Lcom/callerid/block/b/d$b;->b:Landroid/widget/ImageView;

    const v1, 0x7f080135

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p3, Lcom/callerid/block/b/d$b;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/b/d;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100049

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p3, Lcom/callerid/block/b/d$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p3, Lcom/callerid/block/b/d$b;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/b/d;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :goto_2
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lcom/callerid/block/b/d$b;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/callerid/block/b/d;->b:I

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    :cond_3
    iget-object v0, p3, Lcom/callerid/block/b/d$b;->b:Landroid/widget/ImageView;

    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_4
    iget-object v0, p3, Lcom/callerid/block/b/d$b;->b:Landroid/widget/ImageView;

    const v1, 0x7f0800f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_4
    iget-object v0, p3, Lcom/callerid/block/b/d$b;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/callerid/block/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lcom/callerid/block/b/d$b;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/callerid/block/b/d;->c:I

    goto :goto_3

    :cond_5
    :goto_5
    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p3, Lcom/callerid/block/b/d$b;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_6
    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->Y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p3, Lcom/callerid/block/b/d$b;->c:Landroid/widget/TextView;

    const v1, 0x7f1001df

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_7

    :cond_7
    iget-object v0, p3, Lcom/callerid/block/b/d$b;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_8
    :goto_7
    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p3, Lcom/callerid/block/b/d$b;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object p3, p3, Lcom/callerid/block/b/d$b;->a:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/callerid/block/b/d$a;

    invoke-direct {v0, p0, p1}, Lcom/callerid/block/b/d$a;-><init>(Lcom/callerid/block/b/d;Lcom/callerid/block/search/CallLogBean;)V

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
