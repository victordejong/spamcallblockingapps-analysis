.class public Lcom/callapp/contacts/popup/WhatsNewAdapter;
.super Lcom/callapp/contacts/activity/base/BaseArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseArrayAdapter<",
        "Lcom/callapp/contacts/popup/WhatsNewItemData;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private c:I

.field private d:I

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/popup/WhatsNewItemData;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/popup/WhatsNewItemData;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseArrayAdapter;-><init>(Ljava/util/List;)V

    const v0, 0x7f0601cc

    .line 27
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter;->a:I

    const v0, 0x7f060088

    .line 28
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter;->b:I

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter;->f:Z

    .line 37
    iput-object p1, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter;->e:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/WhatsNewAdapter;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter;->d:I

    return p0
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/WhatsNewAdapter;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter;->c:I

    return p1
.end method

.method private static a(Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;ZZ)V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    const/16 v0, 0xb4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 85
    iget-object p1, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->f:Lcom/callapp/contacts/widget/RetractableFrameLayout;

    .line 1045
    iget-object p1, p1, Lcom/callapp/contacts/widget/RetractableFrameLayout;->a:Lcom/callapp/contacts/widget/RetractableViewImpl;

    .line 1106
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/widget/RetractableViewImpl;->a(Z)V

    .line 86
    iget-object p0, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->e:Landroid/widget/ImageView;

    invoke-static {p0, v2, v0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;II)V

    return-void

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->f:Lcom/callapp/contacts/widget/RetractableFrameLayout;

    .line 2050
    iget-object p1, p1, Lcom/callapp/contacts/widget/RetractableFrameLayout;->a:Lcom/callapp/contacts/widget/RetractableViewImpl;

    .line 2111
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/widget/RetractableViewImpl;->a(Z)V

    .line 89
    iget-object p0, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->e:Landroid/widget/ImageView;

    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 95
    iget-object p1, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->f:Lcom/callapp/contacts/widget/RetractableFrameLayout;

    .line 3055
    iget-object p1, p1, Lcom/callapp/contacts/widget/RetractableFrameLayout;->a:Lcom/callapp/contacts/widget/RetractableViewImpl;

    .line 3116
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/widget/RetractableViewImpl;->b(Z)V

    .line 96
    iget-object p0, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->e:Landroid/widget/ImageView;

    invoke-static {p0, v0, v2}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;II)V

    return-void

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->f:Lcom/callapp/contacts/widget/RetractableFrameLayout;

    .line 4065
    iget-object p1, p1, Lcom/callapp/contacts/widget/RetractableFrameLayout;->a:Lcom/callapp/contacts/widget/RetractableViewImpl;

    .line 4125
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/widget/RetractableViewImpl;->b(Z)V

    .line 99
    iget-object p0, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->e:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/WhatsNewAdapter;Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;)V
    .locals 2

    .line 5071
    iget-object p0, p1, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/popup/WhatsNewItemData;

    .line 5072
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/WhatsNewItemData;->isExpanded()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/popup/WhatsNewItemData;->setExpanded(Z)V

    .line 5073
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/WhatsNewItemData;->isExpanded()Z

    move-result p0

    invoke-static {p1, p0, v1}, Lcom/callapp/contacts/popup/WhatsNewAdapter;->a(Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;ZZ)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/popup/WhatsNewAdapter;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter;->c:I

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/popup/WhatsNewAdapter;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter;->d:I

    return p1
.end method


# virtual methods
.method public final a(Landroid/view/View;I)Landroid/view/View;
    .locals 4

    .line 116
    new-instance p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;-><init>(Lcom/callapp/contacts/popup/WhatsNewAdapter$1;)V

    const v0, 0x7f0a04ad

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->a:Landroid/widget/ImageView;

    const v0, 0x7f0a0922

    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f0a08e7

    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->c:Landroid/widget/TextView;

    const v0, 0x7f0a08fd

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->d:Landroid/widget/TextView;

    const v0, 0x7f0a03cc

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->e:Landroid/widget/ImageView;

    const v0, 0x7f0a05e9

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/RetractableFrameLayout;

    iput-object v0, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->f:Lcom/callapp/contacts/widget/RetractableFrameLayout;

    .line 123
    iget-boolean v0, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter;->f:Z

    .line 125
    iget-object v0, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->f:Lcom/callapp/contacts/widget/RetractableFrameLayout;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/RetractableFrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/popup/WhatsNewAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/callapp/contacts/popup/WhatsNewAdapter$1;-><init>(Lcom/callapp/contacts/popup/WhatsNewAdapter;Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 142
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->c:Landroid/widget/TextView;

    iget v1, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget-object v0, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->c:Landroid/widget/TextView;

    const v1, 0x7f120629

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->d:Landroid/widget/TextView;

    iget v1, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    iget-object v0, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->e:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter;->b:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 149
    iget-object v0, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/callapp/contacts/popup/WhatsNewAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/callapp/contacts/popup/WhatsNewAdapter$2;-><init>(Lcom/callapp/contacts/popup/WhatsNewAdapter;Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->f:Lcom/callapp/contacts/widget/RetractableFrameLayout;

    new-instance v1, Lcom/callapp/contacts/popup/WhatsNewAdapter$3;

    invoke-direct {v1, p0, p2}, Lcom/callapp/contacts/popup/WhatsNewAdapter$3;-><init>(Lcom/callapp/contacts/popup/WhatsNewAdapter;Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/RetractableFrameLayout;->setExpandListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 178
    iget-object v0, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->f:Lcom/callapp/contacts/widget/RetractableFrameLayout;

    new-instance v1, Lcom/callapp/contacts/popup/WhatsNewAdapter$4;

    invoke-direct {v1, p0, p2}, Lcom/callapp/contacts/popup/WhatsNewAdapter$4;-><init>(Lcom/callapp/contacts/popup/WhatsNewAdapter;Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/RetractableFrameLayout;->setCollapseListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method public final synthetic a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 6

    .line 25
    check-cast p3, Lcom/callapp/contacts/popup/WhatsNewItemData;

    .line 5047
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;

    .line 5048
    invoke-virtual {p3}, Lcom/callapp/contacts/popup/WhatsNewItemData;->isHeader()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5049
    iget-object p1, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->a:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5050
    iget-object p1, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/callapp/contacts/popup/WhatsNewItemData;->getTitle()Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5051
    iget-object p1, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->b:Landroid/widget/TextView;

    iget v2, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter;->b:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string p1, ""

    .line 5052
    invoke-virtual {p2, p1}, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->setText(Ljava/lang/CharSequence;)V

    .line 5053
    iget-object p1, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5054
    iget-object p1, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->e:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 5056
    :cond_0
    iget-object v0, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5057
    iget-object v0, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/callapp/contacts/popup/WhatsNewItemData;->getIconResId()I

    move-result v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget v4, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter;->b:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v0, v2, v3}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 5058
    iget-object v0, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/callapp/contacts/popup/WhatsNewItemData;->getTitle()Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5059
    iget-object v0, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f0601ec

    invoke-static {p1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5060
    invoke-virtual {p3}, Lcom/callapp/contacts/popup/WhatsNewItemData;->getText()Landroid/text/Spannable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->setText(Ljava/lang/CharSequence;)V

    .line 5061
    iget-object p1, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->f:Lcom/callapp/contacts/widget/RetractableFrameLayout;

    invoke-virtual {p3}, Lcom/callapp/contacts/popup/WhatsNewItemData;->getTextMinHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/RetractableFrameLayout;->setCollapseMinHeight(I)V

    .line 5062
    iget-object p1, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->f:Lcom/callapp/contacts/widget/RetractableFrameLayout;

    invoke-virtual {p3}, Lcom/callapp/contacts/popup/WhatsNewItemData;->getTextMaxHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/RetractableFrameLayout;->setExpandMaxHeight(I)V

    .line 5063
    iget-object p1, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5064
    iget-object p1, p2, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 5067
    :goto_0
    invoke-virtual {p3}, Lcom/callapp/contacts/popup/WhatsNewItemData;->isExpanded()Z

    move-result p1

    invoke-static {p2, p1, v1}, Lcom/callapp/contacts/popup/WhatsNewAdapter;->a(Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;ZZ)V

    return-void
.end method

.method public getLayoutResourceId(I)I
    .locals 0

    const p1, 0x7f0d030b

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 6

    .line 106
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseArrayAdapter;->notifyDataSetChanged()V

    .line 108
    iget-object v0, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/popup/WhatsNewItemData;

    .line 109
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/WhatsNewAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter;->c:I

    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1}, Lcom/callapp/contacts/popup/WhatsNewItemData;->getText()Landroid/text/Spannable;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;ILandroid/graphics/Typeface;Ljava/lang/CharSequence;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/popup/WhatsNewItemData;->setTextMaxHeight(I)V

    .line 110
    iget v2, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter;->d:I

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/popup/WhatsNewItemData;->setTextMinHeight(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
