.class Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter$1;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 4

    .line 174
    move-object v0, p1

    check-cast v0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    .line 175
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 176
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter$1;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;

    invoke-static {v2}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->a(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 177
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter$1;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;

    invoke-static {v2}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->b(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;)Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter$1;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;

    invoke-static {v2}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->b(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;)Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->setChecked(Z)V

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter$1;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;

    invoke-static {v2, v0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->a(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;Lcom/callapp/contacts/widget/DualCirclesCheckBox;)Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    .line 182
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter$1;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->a(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;I)I

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter$1;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->a(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;Lcom/callapp/contacts/widget/DualCirclesCheckBox;)Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter$1;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->c(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_2
    return-void
.end method
