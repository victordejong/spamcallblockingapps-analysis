.class Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;->b:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;->b:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;

    const v2, 0x7f0a090d

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, v1, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->b:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0804c0

    .line 129
    invoke-static {v1}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0804bf

    invoke-static {v1}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 130
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 131
    invoke-virtual {v1, v2, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 132
    invoke-virtual {v1, v3, v3}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 133
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;->b:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->b:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f060088

    .line 135
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    .line 136
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;->b:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0a0a47

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 137
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f1201db

    .line 138
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;->b:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0a0a43

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 141
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f1201da

    .line 142
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0805c4

    .line 144
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;->b:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0a07f6

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;->b:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0a0149

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;->b:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a()V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->dismiss()V

    return-void
.end method
