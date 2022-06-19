.class final Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$u;
.super Ljava/lang/Object;
.source "SettingsProtectionFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$u;->a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 106
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v0, "SettingsProtection.butChangeAlertsType"

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/utils/a;->d(Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$u;->a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;

    sget-object v0, Lorg/mistergroup/shouldianswer/model/a;->a:Lorg/mistergroup/shouldianswer/model/a;

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->a(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;Lorg/mistergroup/shouldianswer/model/a;)V

    .line 109
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$u;->a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->d(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)Lorg/mistergroup/shouldianswer/a/ec;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ec;->v:Landroid/widget/RadioButton;

    const-string v0, "binding.checkIncallScreen"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 110
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$u;->a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->d(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)Lorg/mistergroup/shouldianswer/a/ec;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ec;->z:Landroid/widget/RadioButton;

    const-string v1, "binding.checkPopup"

    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 111
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$u;->a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->d(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)Lorg/mistergroup/shouldianswer/a/ec;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ec;->x:Landroid/widget/RadioButton;

    const-string v1, "binding.checkNotification"

    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 112
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$u;->a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->b(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V

    return-void
.end method
