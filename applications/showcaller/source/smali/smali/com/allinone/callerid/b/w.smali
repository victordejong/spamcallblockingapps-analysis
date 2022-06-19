.class public Lcom/allinone/callerid/b/w;
.super Landroid/widget/BaseAdapter;
.source "SpamCallsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/w$c;
    }
.end annotation


# instance fields
.field private d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/SpamCall;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/b/w;->d:Landroid/content/Context;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/b/w;->e:Ljava/util/List;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/b/w;->f:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/b/w;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/w;->d:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method b(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/SpamCall;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/b/w;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/allinone/callerid/b/w;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/w;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/w;->e:Ljava/util/List;

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

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/b/w;->f:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00c8

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/allinone/callerid/b/w$c;

    invoke-direct {p3}, Lcom/allinone/callerid/b/w$c;-><init>()V

    const v1, 0x7f0906f1

    .line 3
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/allinone/callerid/b/w$c;->c:Landroid/widget/TextView;

    const v1, 0x7f0907a6

    .line 4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/allinone/callerid/b/w$c;->a:Landroid/widget/TextView;

    const v1, 0x7f0905dd

    .line 5
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/allinone/callerid/b/w$c;->b:Landroid/widget/TextView;

    const v1, 0x7f09065e

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/allinone/callerid/b/w$c;->e:Landroid/widget/TextView;

    const v1, 0x7f0907a7

    .line 7
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/allinone/callerid/b/w$c;->d:Landroid/widget/TextView;

    const v1, 0x7f0900c3

    .line 8
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/allinone/callerid/b/w$c;->f:Landroid/widget/ImageView;

    const v1, 0x7f0904bf

    .line 9
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p3, Lcom/allinone/callerid/b/w$c;->g:Landroid/widget/FrameLayout;

    const v1, 0x7f0900ca

    .line 10
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p3, Lcom/allinone/callerid/b/w$c;->h:Landroid/widget/CheckBox;

    .line 11
    iget-object v1, p3, Lcom/allinone/callerid/b/w$c;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 12
    iget-object v1, p3, Lcom/allinone/callerid/b/w$c;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 13
    iget-object v1, p3, Lcom/allinone/callerid/b/w$c;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 14
    iget-object v1, p3, Lcom/allinone/callerid/b/w$c;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 15
    iget-object v1, p3, Lcom/allinone/callerid/b/w$c;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 16
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/b/w$c;

    .line 18
    :goto_0
    iget-object v1, p0, Lcom/allinone/callerid/b/w;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/bean/SpamCall;

    .line 19
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 20
    iget-object v1, p3, Lcom/allinone/callerid/b/w$c;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 22
    iget-object v1, p3, Lcom/allinone/callerid/b/w$c;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Mobile"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Fixed line"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 24
    :cond_3
    iget-object v1, p3, Lcom/allinone/callerid/b/w$c;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/b/w;->d:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/allinone/callerid/util/h1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v1, p3, Lcom/allinone/callerid/b/w$c;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 26
    :cond_4
    iget-object v1, p3, Lcom/allinone/callerid/b/w$c;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v1, p3, Lcom/allinone/callerid/b/w$c;->a:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    :goto_2
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 29
    iget-object v1, p3, Lcom/allinone/callerid/b/w$c;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :cond_5
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getReportcounts()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getReportcounts()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 31
    iget-object v1, p3, Lcom/allinone/callerid/b/w$c;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getReportcounts()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    :cond_6
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getTypelabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getTypelabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 33
    iget-object v1, p3, Lcom/allinone/callerid/b/w$c;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/allinone/callerid/b/w;->d:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getTypelabel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/allinone/callerid/util/h1;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/allinone/callerid/b/w;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1002a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_7
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->isSelected()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    .line 35
    iget-object v0, p3, Lcom/allinone/callerid/b/w$c;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 36
    :cond_8
    iget-object v1, p3, Lcom/allinone/callerid/b/w$c;->h:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 37
    :goto_3
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getCalltype()I

    move-result v0

    if-eq v0, v2, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    const/4 v1, 0x3

    const v2, 0x7f080170

    if-eq v0, v1, :cond_b

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a

    const/16 v1, 0x9

    if-eq v0, v1, :cond_9

    .line 38
    iget-object v0, p3, Lcom/allinone/callerid/b/w$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 39
    :cond_9
    iget-object v0, p3, Lcom/allinone/callerid/b/w$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 40
    :cond_a
    iget-object v0, p3, Lcom/allinone/callerid/b/w$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 41
    :cond_b
    iget-object v0, p3, Lcom/allinone/callerid/b/w$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 42
    :cond_c
    iget-object v0, p3, Lcom/allinone/callerid/b/w$c;->f:Landroid/widget/ImageView;

    const v1, 0x7f080171

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 43
    :cond_d
    iget-object v0, p3, Lcom/allinone/callerid/b/w$c;->f:Landroid/widget/ImageView;

    const v1, 0x7f08016f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    :goto_4
    iget-object v0, p3, Lcom/allinone/callerid/b/w$c;->h:Landroid/widget/CheckBox;

    new-instance v1, Lcom/allinone/callerid/b/w$a;

    invoke-direct {v1, p0, p1}, Lcom/allinone/callerid/b/w$a;-><init>(Lcom/allinone/callerid/b/w;Lcom/allinone/callerid/bean/SpamCall;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 45
    new-instance v0, Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {v0}, Lcom/allinone/callerid/search/CallLogBean;-><init>()V

    .line 46
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/CallLogBean;->E0(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/allinone/callerid/b/w;->d:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getTypelabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/allinone/callerid/util/h1;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/CallLogBean;->e1(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getTypelabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/CallLogBean;->f1(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getReportcounts()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/CallLogBean;->L0(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getBelong_area()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/CallLogBean;->g0(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/CallLogBean;->M0(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/CallLogBean;->O0(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/CallLogBean;->G0(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getTel_number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/CallLogBean;->a1(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/CallLogBean;->x0(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/CallLogBean;->H0(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/CallLogBean;->d0(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/CallLogBean;->e0(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getComment_tags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/CallLogBean;->o0(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SpamCall;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/search/CallLogBean;->r0(Ljava/lang/String;)V

    .line 61
    iget-object p1, p3, Lcom/allinone/callerid/b/w$c;->g:Landroid/widget/FrameLayout;

    new-instance p3, Lcom/allinone/callerid/b/w$b;

    invoke-direct {p3, p0, v0}, Lcom/allinone/callerid/b/w$b;-><init>(Lcom/allinone/callerid/b/w;Lcom/allinone/callerid/search/CallLogBean;)V

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
