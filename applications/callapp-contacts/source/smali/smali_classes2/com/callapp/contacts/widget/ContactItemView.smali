.class public Lcom/callapp/contacts/widget/ContactItemView;
.super Lcom/callapp/contacts/widget/BaseItemView;
.source "SourceFile"


# instance fields
.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/ContactItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/ContactItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/BaseItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .line 41
    invoke-super {p0}, Lcom/callapp/contacts/widget/BaseItemView;->a()V

    const v0, 0x7f0a0614

    .line 43
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/ContactItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/widget/ContactItemView;->k:Landroid/widget/TextView;

    const v0, 0x7f0a0533

    .line 44
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/ContactItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/callapp/contacts/widget/ContactItemView;->l:Landroid/widget/LinearLayout;

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/widget/ContactItemView;->k:Landroid/widget/TextView;

    const v1, 0x7f0601ec

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected final b()V
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/callapp/contacts/widget/BaseItemView;->b()V

    const v0, 0x7f0a056c

    .line 51
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/ContactItemView;->a(I)V

    const v0, 0x7f0a07cd

    .line 52
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/ContactItemView;->a(I)V

    const v0, 0x7f0a0913

    .line 53
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/ContactItemView;->a(I)V

    const v0, 0x7f0a0359

    .line 54
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/ContactItemView;->a(I)V

    const v0, 0x7f0a075e

    .line 55
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/ContactItemView;->a(I)V

    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    const v0, 0x7f0d0166

    return v0
.end method

.method protected isSwipeable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDuration(Ljava/lang/CharSequence;)V
    .locals 1

    const v0, 0x7f0a0359

    .line 92
    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/widget/ContactItemView;->setLazyText(ILjava/lang/CharSequence;)V

    const p1, 0x7f0601cc

    .line 93
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/widget/ContactItemView;->setLazyTextColor(II)V

    return-void
.end method

.method public setFirstRowText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/callapp/contacts/widget/ContactItemView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFirstRowTextColor(I)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/callapp/contacts/widget/ContactItemView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setLeftIcon(I)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/widget/ContactItemView;->setLeftIcon(II)V

    return-void
.end method

.method public setLeftIcon(II)V
    .locals 2

    const v0, 0x7f0a056c

    if-nez p1, :cond_0

    .line 101
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/ContactItemView;->isViewInflated(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/ContactItemView;->getLazyView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;

    const/4 v1, 0x0

    .line 106
    invoke-virtual {v0, v1, p1, p2}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;->setEventIcon(III)V

    return-void
.end method

.method public setLeftIcons([I)V
    .locals 2

    const v0, 0x7f0a056c

    if-eqz p1, :cond_0

    .line 110
    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/ContactItemView;->isViewInflated(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 114
    :cond_1
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/ContactItemView;->getLazyView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;

    .line 115
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;->setIconsToEvents([I)V

    return-void
.end method

.method public setMargin(I)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/widget/ContactItemView;->l:Landroid/widget/LinearLayout;

    invoke-static {v0, p1, p1, p1, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;IIII)Landroid/view/ViewGroup$MarginLayoutParams;

    return-void
.end method

.method public setOnSwitchViewContainerClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3

    const v0, 0x7f0a08cc

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/ContactItemView;->getLazyView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/ContactItemView;->getLazyView(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 127
    :cond_0
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/ContactItemView;->isViewInflated(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/ContactItemView;->getLazyView(I)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a08ca

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/ContactItemView;->getLazyView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setRightIcon(I)V
    .locals 1

    const v0, 0x7f0601cc

    .line 119
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/widget/ContactItemView;->setLazyDrawable$4868d30e(II)V

    return-void
.end method

.method public setSecondRowText(Ljava/lang/CharSequence;)V
    .locals 1

    const v0, 0x7f0a07cd

    .line 80
    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/widget/ContactItemView;->setLazyText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public setSecondRowTextColor(I)V
    .locals 1

    const v0, 0x7f0a07cd

    .line 88
    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/widget/ContactItemView;->setLazyTextColor(II)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/BaseItemView;->setTag(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/callapp/contacts/widget/ContactItemView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/callapp/contacts/widget/ContactItemView;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a056c

    .line 64
    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/widget/ContactItemView;->setLazyTag(ILjava/lang/Object;)V

    const v0, 0x7f0a07cd

    .line 65
    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/widget/ContactItemView;->setLazyTag(ILjava/lang/Object;)V

    const v0, 0x7f0a0913

    .line 66
    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/widget/ContactItemView;->setLazyTag(ILjava/lang/Object;)V

    const v0, 0x7f0a0359

    .line 67
    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/widget/ContactItemView;->setLazyTag(ILjava/lang/Object;)V

    const v0, 0x7f0a075e

    .line 68
    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/widget/ContactItemView;->setLazyTag(ILjava/lang/Object;)V

    return-void
.end method
