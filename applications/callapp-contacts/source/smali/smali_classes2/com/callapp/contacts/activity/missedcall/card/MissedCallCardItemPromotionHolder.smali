.class public Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;
.super Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$OnCloseClickListener;
    }
.end annotation


# instance fields
.field s:Landroid/widget/TextView;

.field t:Landroid/widget/TextView;

.field u:Landroid/widget/ImageView;

.field v:Landroid/content/Context;

.field w:Landroid/widget/ImageView;

.field private x:Landroidx/cardview/widget/CardView;

.field private y:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$OnCloseClickListener;)V
    .locals 3

    .line 38
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;-><init>(Landroid/view/View;)V

    .line 39
    iput-object p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->v:Landroid/content/Context;

    const p2, 0x7f0a0711

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/cardview/widget/CardView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->x:Landroidx/cardview/widget/CardView;

    const p2, 0x7f0a0714

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->s:Landroid/widget/TextView;

    const p2, 0x7f0a0713

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->t:Landroid/widget/TextView;

    const p2, 0x7f0a0710

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->u:Landroid/widget/ImageView;

    const p2, 0x7f0a024b

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->w:Landroid/widget/ImageView;

    .line 46
    new-instance v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$1;

    invoke-direct {v0, p0, p3}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$1;-><init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$OnCloseClickListener;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a070f

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->y:Landroid/widget/TextView;

    const/4 p1, 0x1

    .line 1060
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result p1

    int-to-double p1, p1

    const-wide v0, 0x3fe999999999999aL    # 0.8

    mul-double p1, p1, v0

    double-to-int p1, p1

    .line 1062
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070250

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 1063
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1067
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->x:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1}, Landroidx/cardview/widget/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07016d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->x:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->x:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->x:Landroidx/cardview/widget/CardView;

    invoke-virtual {v2}, Landroidx/cardview/widget/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-virtual {p3, p1, v0, v1, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1068
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->x:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, p3}, Landroidx/cardview/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1069
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->x:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1}, Landroidx/cardview/widget/CardView;->requestLayout()V

    .line 1071
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result p1

    const p2, 0x7f060244

    const p3, 0x7f06010e

    if-eqz p1, :cond_0

    .line 1072
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->x:Landroidx/cardview/widget/CardView;

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 1073
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->s:Landroid/widget/TextView;

    invoke-static {p3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1076
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->x:Landroidx/cardview/widget/CardView;

    invoke-static {p3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 1077
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->s:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1079
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->t:Landroid/widget/TextView;

    const p2, 0x7f060088

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1081
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->x:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1}, Landroidx/cardview/widget/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07018f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->v:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method setListener(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;)V
    .locals 6

    .line 97
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->CALL_SCREEN:Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f060125

    const v4, 0x7f0805d2

    if-eqz v0, :cond_0

    .line 98
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->y:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-static {p1, v4, v0}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    .line 99
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->y:Landroid/widget/TextView;

    const v0, 0x7f120464

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->y:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 101
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->y:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->y:Landroid/widget/TextView;

    new-instance v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$2;-><init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->CONFIG:Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->y:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-static {v0, v4, v3}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    .line 112
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->y:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;->getActionText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->y:Landroid/widget/TextView;

    new-instance v1, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$3;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$3;-><init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->y:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
