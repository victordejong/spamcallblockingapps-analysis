.class Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


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

    .line 51
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$1;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 4

    .line 54
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$1;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->getThemes()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$1;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->a(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;)Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->getCheckedPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$1;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->b:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 57
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 58
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$1;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    invoke-static {v2, p1, v0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->a(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;Z)V

    .line 60
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$1;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/16 v3, 0xfa

    invoke-virtual {p1, v2, v1, v0, v3}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->a(Landroid/app/Activity;Ljava/lang/String;ZI)V

    :cond_0
    return-void
.end method
