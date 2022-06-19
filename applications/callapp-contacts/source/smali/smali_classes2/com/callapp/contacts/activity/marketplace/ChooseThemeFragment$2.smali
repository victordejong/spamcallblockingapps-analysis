.class Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$2;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 71
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$2;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->b:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 72
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$2;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->getThemes()Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$2;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->a(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;)Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->getCheckedPosition()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    if-eqz p2, :cond_0

    .line 74
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$2;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    invoke-static {v0, p2, p1}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->a(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;Z)V

    .line 76
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getSku()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$2;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, p2, p1, v2}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->a(Landroid/app/Activity;Ljava/lang/String;ZI)V

    .line 78
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$2;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->a(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;)Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$2;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->a(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;)Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
