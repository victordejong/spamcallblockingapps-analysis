.class final Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$a;
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

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$a;->a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 57
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v0, "SettingsProtection.checkActiveProtection"

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/utils/a;->d(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$a;->a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->a(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;Z)V

    .line 59
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$a;->a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;

    sget-object v0, Lorg/mistergroup/shouldianswer/model/af;->d:Lorg/mistergroup/shouldianswer/model/af;

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->a(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;Lorg/mistergroup/shouldianswer/model/af;)V

    .line 60
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$a;->a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->b(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V

    return-void
.end method
