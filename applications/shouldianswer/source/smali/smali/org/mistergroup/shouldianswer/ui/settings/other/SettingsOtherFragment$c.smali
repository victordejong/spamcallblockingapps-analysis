.class final Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$c;
.super Ljava/lang/Object;
.source "SettingsOtherFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;Lorg/mistergroup/shouldianswer/ui/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$c;->b:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 44
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->a(Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 45
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v0, "UserSettings.setActTheme light"

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/utils/a;->c(Ljava/lang/String;)V

    .line 46
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai$a;->b:Lorg/mistergroup/shouldianswer/model/ai$a;

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/model/ai;->a(Lorg/mistergroup/shouldianswer/model/ai$a;)V

    .line 47
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->b(Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;)V

    .line 48
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$c;->b:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/a;->finishAffinity()V

    .line 49
    sget-object p1, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->b:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$c;->b:Lorg/mistergroup/shouldianswer/ui/a;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
