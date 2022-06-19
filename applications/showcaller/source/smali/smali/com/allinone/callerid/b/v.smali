.class public Lcom/allinone/callerid/b/v;
.super Landroid/widget/BaseAdapter;
.source "SimAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/v$a;
    }
.end annotation


# instance fields
.field private d:Landroid/content/Context;

.field e:Lcom/allinone/callerid/b/v$a;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/b/v;->f:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/b/v;->d:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/allinone/callerid/b/v;->f:Ljava/util/List;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/b/v;->g:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/v;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/v;->f:Ljava/util/List;

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
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/b/v;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00bd

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/allinone/callerid/b/v$a;

    invoke-direct {p3}, Lcom/allinone/callerid/b/v$a;-><init>()V

    iput-object p3, p0, Lcom/allinone/callerid/b/v;->e:Lcom/allinone/callerid/b/v$a;

    const v1, 0x7f09075f

    .line 3
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/allinone/callerid/b/v$a;->a:Landroid/widget/ImageView;

    .line 4
    iget-object p3, p0, Lcom/allinone/callerid/b/v;->e:Lcom/allinone/callerid/b/v$a;

    const v1, 0x7f090760

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/allinone/callerid/b/v$a;->b:Landroid/widget/TextView;

    .line 5
    iget-object p3, p0, Lcom/allinone/callerid/b/v;->e:Lcom/allinone/callerid/b/v$a;

    const v1, 0x7f09063a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/allinone/callerid/b/v$a;->c:Landroid/widget/TextView;

    .line 6
    iget-object p3, p0, Lcom/allinone/callerid/b/v;->e:Lcom/allinone/callerid/b/v$a;

    iget-object p3, p3, Lcom/allinone/callerid/b/v$a;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 7
    iget-object p3, p0, Lcom/allinone/callerid/b/v;->e:Lcom/allinone/callerid/b/v$a;

    iget-object p3, p3, Lcom/allinone/callerid/b/v$a;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8
    iget-object p3, p0, Lcom/allinone/callerid/b/v;->e:Lcom/allinone/callerid/b/v$a;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/b/v$a;

    iput-object p3, p0, Lcom/allinone/callerid/b/v;->e:Lcom/allinone/callerid/b/v$a;

    :goto_0
    if-nez p1, :cond_1

    .line 10
    iget-object p3, p0, Lcom/allinone/callerid/b/v;->e:Lcom/allinone/callerid/b/v$a;

    iget-object p3, p3, Lcom/allinone/callerid/b/v$a;->a:Landroid/widget/ImageView;

    const v1, 0x7f0801cb

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object p3, p0, Lcom/allinone/callerid/b/v;->e:Lcom/allinone/callerid/b/v$a;

    iget-object p3, p3, Lcom/allinone/callerid/b/v$a;->a:Landroid/widget/ImageView;

    const v1, 0x7f0801cc

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    :goto_1
    iget-object p3, p0, Lcom/allinone/callerid/b/v;->e:Lcom/allinone/callerid/b/v$a;

    iget-object p3, p3, Lcom/allinone/callerid/b/v$a;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/allinone/callerid/b/v;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1002fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p3, p0, Lcom/allinone/callerid/b/v;->f:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    .line 14
    iget-object p3, p0, Lcom/allinone/callerid/b/v;->f:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/SubscriptionInfo;

    if-eqz p3, :cond_2

    .line 15
    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object p3

    const-string v1, ""

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 16
    iget-object p3, p0, Lcom/allinone/callerid/b/v;->e:Lcom/allinone/callerid/b/v$a;

    iget-object p3, p3, Lcom/allinone/callerid/b/v$a;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/b/v;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, p0, Lcom/allinone/callerid/b/v;->e:Lcom/allinone/callerid/b/v$a;

    iget-object p1, p1, Lcom/allinone/callerid/b/v$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/b/v;->e:Lcom/allinone/callerid/b/v$a;

    iget-object p1, p1, Lcom/allinone/callerid/b/v$a;->c:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-object p2
.end method
