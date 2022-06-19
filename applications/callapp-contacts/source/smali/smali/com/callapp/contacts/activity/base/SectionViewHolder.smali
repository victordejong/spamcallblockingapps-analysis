.class public Lcom/callapp/contacts/activity/base/SectionViewHolder;
.super Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;
.source "SourceFile"


# instance fields
.field public s:Landroid/view/View;

.field private t:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 17
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a058a

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/SectionViewHolder;->t:Landroid/widget/TextView;

    const v0, 0x7f0a07e3

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/SectionViewHolder;->s:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/SectionViewHolder;->t:Landroid/widget/TextView;

    const v1, 0x7f060088

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/SectionViewHolder;->t:Landroid/widget/TextView;

    const v1, 0x7f060026

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const v0, 0x7f0a0333

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f0600f3

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public setBackgroundColor(I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/SectionViewHolder;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/SectionViewHolder;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/SectionViewHolder;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
