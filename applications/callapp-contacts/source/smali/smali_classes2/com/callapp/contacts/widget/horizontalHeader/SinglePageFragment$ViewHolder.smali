.class Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment;Landroid/view/View;)V
    .locals 1

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->a:Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->b:Landroid/view/View;

    const p1, 0x7f060244

    .line 47
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    const v0, 0x7f0a0922

    .line 48
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->c:Landroid/widget/TextView;

    .line 49
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a08be

    .line 50
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->d:Landroid/widget/TextView;

    .line 51
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a02d0

    .line 52
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->f:Landroid/view/ViewGroup;

    const v0, 0x7f0a02ce

    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->e:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->setAccordingToData(Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;)V

    return-void
.end method

.method private setAccordingToData(Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;)V
    .locals 4

    if-nez p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object p1, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p1, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p1, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->a:Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->b:Landroid/view/View;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->getClickListener()Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->getTitleColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment;->a(Landroid/widget/TextView;I)V

    .line 69
    iget-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->getSubtitleColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment;->a(Landroid/widget/TextView;I)V

    .line 71
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->getBtnText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->f:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->f:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->getBtnTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->e:Landroid/widget/TextView;

    const v1, 0x7f0805d2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->getBtnText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->getBtnBorderColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->getBtnBorderColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->b:Landroid/view/View;

    const v1, 0x7f0a012c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 81
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 83
    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->a:Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment;

    invoke-virtual {v3}, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder$1;-><init>(Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;)V

    .line 1496
    iput-object v0, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->n:Lcom/bumptech/glide/e/g;

    const/4 p1, 0x1

    .line 2376
    iput-boolean p1, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 94
    invoke-virtual {v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    return-void
.end method
