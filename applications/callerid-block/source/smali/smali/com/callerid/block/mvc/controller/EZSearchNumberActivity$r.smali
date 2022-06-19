.class public Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;
    }
.end annotation


# instance fields
.field private final b:I

.field private final c:I

.field d:Landroid/content/Context;

.field e:Ljava/util/List;

.field f:Z

.field g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

.field final synthetic h:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->h:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->e:Ljava/util/List;

    const p1, 0x7f040525

    const p3, 0x7f0801ab

    invoke-static {p2, p1, p3}, Lcom/callerid/block/util/p0;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->b:I

    const p1, 0x7f040526

    const p3, 0x7f0801ad

    invoke-static {p2, p1, p3}, Lcom/callerid/block/util/p0;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->c:I

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->f:Z

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->e:Ljava/util/List;

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
    .locals 10

    if-nez p2, :cond_0

    new-instance p2, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    invoke-direct {p2, p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;)V

    iput-object p2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iget-object p2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->d:Landroid/content/Context;

    const p3, 0x7f0c00bb

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    const v0, 0x7f0902d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->a:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    const v0, 0x7f0902cf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->b:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    const v0, 0x7f0902ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->c:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    const v0, 0x7f0902cd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->d:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    const v0, 0x7f0902d8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rey/material/widget/Button;

    iput-object v0, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->f:Lcom/rey/material/widget/Button;

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iget-object p3, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->h:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->b0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iget-object p3, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->h:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->b0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iget-object p3, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->h:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->b0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iget-object p3, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->h:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->b0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    const v0, 0x7f0902d0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->e:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iput-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    :goto_0
    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->e:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->isSpam()Z

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getOperator()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getComplaint_times()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-eqz v5, :cond_1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    const-string v5, "0"

    :cond_2
    iget-boolean v7, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->f:Z

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-eqz v7, :cond_6

    const/4 v2, 0x1

    if-eqz p3, :cond_3

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    const/4 p3, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    or-int/2addr p3, v2

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iget-object p3, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f100140

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iget-object p3, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->e:Landroid/widget/ImageView;

    iget v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->b:I

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iget-object p3, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->d:Landroid/widget/TextView;

    invoke-virtual {p3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iget-object v2, v2, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->a:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iget-object p3, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->a:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iget-object p3, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->a:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->b:I

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iget-object p3, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f100032

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iget-object p3, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->d:Landroid/widget/TextView;

    invoke-virtual {p3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iget-object p3, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->e:Landroid/widget/ImageView;

    iget v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->c:I

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->c:I

    goto :goto_4

    :cond_9
    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iget-object v2, v2, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iget-object v2, v2, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->e:Landroid/widget/ImageView;

    iget v5, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->b:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getIcon()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->d:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getIcon()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iget-object v7, v7, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->e:Landroid/widget/ImageView;

    invoke-static {v2, v5, p3, v7}, Lcom/callerid/block/util/p;->b(Landroid/content/Context;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    :cond_a
    :goto_5
    const-string p3, " \u2022 "

    if-eqz v0, :cond_b

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    if-eqz v1, :cond_b

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iget-object v2, v2, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iget-object p3, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->b:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iget-object v0, v0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_d
    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iget-object p3, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->b:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    if-eqz v4, :cond_e

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_e

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iget-object p3, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->c:Landroid/widget/TextView;

    invoke-virtual {p3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iget-object p3, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->c:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_e
    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iget-object p3, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->c:Landroid/widget/TextView;

    invoke-virtual {p3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7
    new-instance p3, Lcom/callerid/block/search/CallLogBean;

    invoke-direct {p3}, Lcom/callerid/block/search/CallLogBean;-><init>()V

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/callerid/block/search/CallLogBean;->m0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/callerid/block/search/CallLogBean;->H0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getComplaint_times()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/callerid/block/search/CallLogBean;->s0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/callerid/block/search/CallLogBean;->W(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/callerid/block/search/CallLogBean;->t0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/callerid/block/search/CallLogBean;->v0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getOld_tel_number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/callerid/block/search/CallLogBean;->o0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getTel_number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/callerid/block/search/CallLogBean;->D0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/callerid/block/search/CallLogBean;->h0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/callerid/block/search/CallLogBean;->p0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/callerid/block/search/CallLogBean;->T(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/callerid/block/search/CallLogBean;->U(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getT_p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/callerid/block/search/CallLogBean;->C0(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->g:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$b;->f:Lcom/rey/material/widget/Button;

    new-instance v0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$a;

    invoke-direct {v0, p0, p3}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r$a;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;Lcom/callerid/block/search/CallLogBean;)V

    invoke-virtual {p1, v0}, Lcom/rey/material/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
