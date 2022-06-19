.class Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;
.super Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;
.source "SourceFile"


# instance fields
.field private final s:Landroidx/appcompat/widget/SwitchCompat;

.field private final t:Lcom/callapp/contacts/widget/ProfilePictureView;

.field private final u:Landroid/widget/TextView;

.field private final v:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V
    .locals 2

    .line 23
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a08cb

    .line 24
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;->s:Landroidx/appcompat/widget/SwitchCompat;

    .line 25
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x7f060026

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a06ed

    .line 26
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;->t:Lcom/callapp/contacts/widget/ProfilePictureView;

    const v0, 0x7f0a0922

    .line 27
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;->u:Landroid/widget/TextView;

    const v0, 0x7f0a08be

    .line 28
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;->v:Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->setSwipeable(Z)V

    return-void
.end method


# virtual methods
.method public getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;->t:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object v0
.end method

.method public getSwitchView()Landroidx/appcompat/widget/SwitchCompat;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;->s:Landroidx/appcompat/widget/SwitchCompat;

    return-object v0
.end method

.method public setChecked(Z)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;->s:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnContainerClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnSwitchViewContainerClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;->s:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSubtitleText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;->v:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTitleText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
