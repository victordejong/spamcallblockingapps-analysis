.class public Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;
.super Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;
.source "SourceFile"


# instance fields
.field private e:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->e:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;)Landroidx/appcompat/widget/SwitchCompat;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->b:Landroidx/appcompat/widget/SwitchCompat;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 1

    const/16 v0, 0xfa

    .line 10
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->a(Landroid/app/Activity;Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->e:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    return-object p0
.end method

.method static synthetic b(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 10
    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;)Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ThemeChangeEvents;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->d:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ThemeChangeEvents;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;)Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ThemeChangeEvents;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->d:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ThemeChangeEvents;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 20
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    .line 21
    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->e:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->e:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->a(Landroid/app/Activity;Ljava/lang/String;ZI)V

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->b:Landroidx/appcompat/widget/SwitchCompat;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 26
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->b:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment$1;-><init>(Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0249

    return v0
.end method

.method public setDefaultTheme(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->e:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    return-void
.end method
