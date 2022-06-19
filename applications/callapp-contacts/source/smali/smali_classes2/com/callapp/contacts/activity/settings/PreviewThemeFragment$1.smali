.class Lcom/callapp/contacts/activity/settings/PreviewThemeFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment$1;->a:Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 29
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment$1;->a:Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->a(Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 30
    iget-object p2, p0, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment$1;->a:Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;

    invoke-static {p2}, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->b(Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 31
    iget-object p2, p0, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment$1;->a:Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;

    invoke-static {p2}, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->b(Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getSku()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 32
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment$1;->a:Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->a(Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment$1;->a:Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->c(Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;)Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ThemeChangeEvents;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 36
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment$1;->a:Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->d(Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;)Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ThemeChangeEvents;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ThemeChangeEvents;->a()V

    :cond_1
    return-void
.end method
