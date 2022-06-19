.class Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleFooterViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimpleFooterViewHolder"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/FrameLayout;

.field c:Landroid/widget/LinearLayout;

.field final synthetic d:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;Landroid/view/View;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleFooterViewHolder;->d:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleFooterViewHolder;->a:Landroid/view/View;

    const p1, 0x7f0a0424

    .line 179
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleFooterViewHolder;->b:Landroid/widget/FrameLayout;

    .line 180
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleFooterViewHolder;->a:Landroid/view/View;

    const p2, 0x7f0a042a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleFooterViewHolder;->c:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public setupFromData(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 185
    iget-object v0, p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;->a:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleFooterViewHolder;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleFooterViewHolder;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 188
    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;->a:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleFooterViewHolder;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getInnerView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleFooterViewHolder;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleFooterViewHolder;->c:Landroid/widget/LinearLayout;

    const v2, 0x7f0a042b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 193
    iget-object v2, p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f060088

    .line 194
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleFooterViewHolder;->a:Landroid/view/View;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleFooterViewHolder;->a:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 199
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleFooterViewHolder;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
