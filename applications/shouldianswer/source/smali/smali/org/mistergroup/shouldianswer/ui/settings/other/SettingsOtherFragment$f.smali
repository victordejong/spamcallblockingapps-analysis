.class final Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$f;
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

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;Lorg/mistergroup/shouldianswer/ui/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$f;->a:Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$f;->b:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string v0, "compoundButton"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$f;->a:Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->a(Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 71
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v0, "UserSettings.useDarkTheme"

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/utils/a;->c(Ljava/lang/String;)V

    .line 72
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/model/ai;->s(Z)V

    .line 73
    sget-object p1, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object p1

    sget-object p2, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/MyApp;->a(Landroid/content/Context;)V

    .line 74
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$f;->b:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/a;->finishAffinity()V

    .line 75
    sget-object p1, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->b:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;

    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$f;->b:Lorg/mistergroup/shouldianswer/ui/a;

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
