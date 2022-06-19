.class Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$3;
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

    .line 87
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$3;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .line 90
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$3;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->a(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;)Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$3;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->getThemes()Ljava/util/List;

    move-result-object p1

    .line 92
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$3;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->a(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;)Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter;->getCheckedPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    .line 94
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$3;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getSku()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
