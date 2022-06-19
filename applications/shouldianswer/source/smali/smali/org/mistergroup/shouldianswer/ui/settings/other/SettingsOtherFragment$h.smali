.class final Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$h;
.super Ljava/lang/Object;
.source "SettingsOtherFragment.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$h;->a:Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 94
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$h;->a:Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->a(Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 95
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v0, "UserSettings.dontUseIncallPopup"

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/utils/a;->c(Ljava/lang/String;)V

    .line 96
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/model/ai;->o(Z)V

    :cond_0
    return-void
.end method
