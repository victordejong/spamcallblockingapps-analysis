.class public Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;
.super Lcom/callapp/contacts/widget/sticky/BaseStickyView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroidx/constraintlayout/widget/Guideline;

.field private final g:F

.field private final h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/sticky/BaseStickyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07033d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->g:F

    .line 28
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070340

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->h:F

    .line 1056
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->getLayout()I

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a0890

    .line 1057
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->a:Landroid/widget/TextView;

    const p1, 0x7f0a088f

    .line 1058
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->b:Landroid/widget/TextView;

    const p1, 0x7f0a088e

    .line 1059
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->d:Landroid/widget/ImageView;

    const p1, 0x7f0a088c

    .line 1060
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->e:Landroid/widget/ImageView;

    const p1, 0x7f0a088d

    .line 1061
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->c:Landroid/widget/TextView;

    const p2, 0x7f0a047b

    .line 1062
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/Guideline;

    iput-object p2, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->f:Landroidx/constraintlayout/widget/Guideline;

    .line 1063
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->c:Landroid/widget/TextView;

    const p1, 0x7f0805d4

    .line 1064
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->setBackgroundResource(I)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;)Landroidx/constraintlayout/widget/Guideline;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->f:Landroidx/constraintlayout/widget/Guideline;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->setSpaceMargin(I)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;)F
    .locals 0

    .line 18
    iget p0, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->g:F

    return p0
.end method

.method static synthetic c(Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;)Landroid/widget/TextView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;)Landroid/widget/TextView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method private setSpaceMargin(I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->f:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/Guideline;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 92
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a:I

    .line 93
    iget-object p1, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->f:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Guideline;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected getLayout()I
    .locals 1

    const v0, 0x7f0d01bd

    return v0
.end method

.method public setPremiumGroup(Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;)V
    .locals 14

    .line 1114
    sget-object v0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$2;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f120187

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1120
    :cond_0
    new-instance v0, Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;

    const v1, 0x7f12018c

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f120186

    .line 1121
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f08007a

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 1116
    :cond_1
    new-instance v0, Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;

    const v1, 0x7f120189

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v1, 0x7f120188

    .line 1117
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f080359

    const v13, 0x7f080079

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2069
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;->getImage()I

    move-result v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;I)V

    .line 2070
    iget-object v1, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;->getBadge()I

    move-result v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;I)V

    .line 2071
    iget-object v1, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;->getButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2073
    iget-object v1, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->f:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/Guideline;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 2074
    new-instance v2, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$1;-><init>(Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2086
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;->getValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2087
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->requestLayout()V

    return-void
.end method
