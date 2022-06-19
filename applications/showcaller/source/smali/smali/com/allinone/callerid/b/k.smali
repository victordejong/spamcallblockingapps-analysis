.class public Lcom/allinone/callerid/b/k;
.super Landroid/widget/BaseAdapter;
.source "EZChooseCountryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/k$b;
    }
.end annotation


# instance fields
.field private d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/model/EZCountryCode;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/allinone/callerid/b/k$b;

.field private g:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/ListView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/model/EZCountryCode;",
            ">;",
            "Landroid/widget/ListView;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/b/k;->e:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/b/k;->d:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/allinone/callerid/b/k;->e:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lcom/allinone/callerid/b/k;->g:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/b/k;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/k;->g:Landroid/widget/ListView;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/model/EZCountryCode;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/k;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/b/k;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/k;->e:Ljava/util/List;

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
    .locals 2

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/b/k;->d:Landroid/content/Context;

    const p3, 0x7f0c006c

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/allinone/callerid/b/k$b;

    invoke-direct {p3, v0}, Lcom/allinone/callerid/b/k$b;-><init>(Lcom/allinone/callerid/b/k$a;)V

    iput-object p3, p0, Lcom/allinone/callerid/b/k;->f:Lcom/allinone/callerid/b/k$b;

    const v0, 0x7f090103

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/allinone/callerid/b/k$b;->a:Landroid/widget/TextView;

    .line 4
    iget-object p3, p0, Lcom/allinone/callerid/b/k;->f:Lcom/allinone/callerid/b/k$b;

    const v0, 0x7f0900e6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/allinone/callerid/b/k$b;->b:Landroid/widget/TextView;

    .line 5
    iget-object p3, p0, Lcom/allinone/callerid/b/k;->f:Lcom/allinone/callerid/b/k$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/k$b;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 6
    iget-object p3, p0, Lcom/allinone/callerid/b/k;->f:Lcom/allinone/callerid/b/k$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/k$b;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 7
    iget-object p3, p0, Lcom/allinone/callerid/b/k;->f:Lcom/allinone/callerid/b/k$b;

    const v0, 0x7f0904bf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p3, Lcom/allinone/callerid/b/k$b;->c:Landroid/widget/FrameLayout;

    .line 8
    iget-object p3, p0, Lcom/allinone/callerid/b/k;->f:Lcom/allinone/callerid/b/k$b;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/b/k$b;

    iput-object p3, p0, Lcom/allinone/callerid/b/k;->f:Lcom/allinone/callerid/b/k$b;

    .line 10
    :goto_0
    iget-object p3, p0, Lcom/allinone/callerid/b/k;->f:Lcom/allinone/callerid/b/k$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/k$b;->c:Landroid/widget/FrameLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object p3, p0, Lcom/allinone/callerid/b/k;->f:Lcom/allinone/callerid/b/k$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/k$b;->c:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/allinone/callerid/b/k$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/b/k$a;-><init>(Lcom/allinone/callerid/b/k;)V

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p3, p0, Lcom/allinone/callerid/b/k;->e:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/model/EZCountryCode;

    .line 13
    iget-object p3, p0, Lcom/allinone/callerid/b/k;->f:Lcom/allinone/callerid/b/k$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/k$b;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p3, p0, Lcom/allinone/callerid/b/k;->f:Lcom/allinone/callerid/b/k$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/k$b;->b:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
