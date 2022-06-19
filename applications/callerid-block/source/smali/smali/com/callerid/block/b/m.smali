.class public Lcom/callerid/block/b/m;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/b/m$a;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field c:Lcom/callerid/block/b/m$a;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/LayoutInflater;


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

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/b/m;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/callerid/block/b/m;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/callerid/block/b/m;->d:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/b/m;->e:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/b/m;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/b/m;->d:Ljava/util/List;

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
    .locals 3

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/callerid/block/b/m;->e:Landroid/view/LayoutInflater;

    const p3, 0x7f0c0070

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/callerid/block/b/m$a;

    invoke-direct {p3}, Lcom/callerid/block/b/m$a;-><init>()V

    iput-object p3, p0, Lcom/callerid/block/b/m;->c:Lcom/callerid/block/b/m$a;

    const v0, 0x7f09045f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/callerid/block/b/m$a;->a:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/callerid/block/b/m;->c:Lcom/callerid/block/b/m$a;

    const v0, 0x7f090460

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/callerid/block/b/m$a;->b:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/callerid/block/b/m;->c:Lcom/callerid/block/b/m$a;

    const v0, 0x7f0903ba

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/callerid/block/b/m$a;->c:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/callerid/block/b/m;->c:Lcom/callerid/block/b/m$a;

    iget-object p3, p3, Lcom/callerid/block/b/m$a;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p3, p0, Lcom/callerid/block/b/m;->c:Lcom/callerid/block/b/m$a;

    iget-object p3, p3, Lcom/callerid/block/b/m$a;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p3, p0, Lcom/callerid/block/b/m;->c:Lcom/callerid/block/b/m$a;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/callerid/block/b/m$a;

    iput-object p3, p0, Lcom/callerid/block/b/m;->c:Lcom/callerid/block/b/m$a;

    :goto_0
    iget-object p3, p0, Lcom/callerid/block/b/m;->c:Lcom/callerid/block/b/m$a;

    iget-object p3, p3, Lcom/callerid/block/b/m$a;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/callerid/block/b/m;->b:Landroid/content/Context;

    if-nez p1, :cond_1

    const v1, 0x7f080194

    goto :goto_1

    :cond_1
    const v1, 0x7f080195

    :goto_1
    invoke-static {v0, v1}, Landroidx/core/content/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p0, Lcom/callerid/block/b/m;->c:Lcom/callerid/block/b/m$a;

    iget-object p3, p3, Lcom/callerid/block/b/m$a;->b:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/callerid/block/b/m;->b:Landroid/content/Context;

    const v2, 0x7f1001b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    if-lt p3, v0, :cond_2

    iget-object p3, p0, Lcom/callerid/block/b/m;->c:Lcom/callerid/block/b/m$a;

    iget-object p3, p3, Lcom/callerid/block/b/m$a;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callerid/block/b/m;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object p2
.end method
