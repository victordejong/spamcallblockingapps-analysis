.class final Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$d;
.super Ljava/lang/Object;
.source "SettingsReportedNumbersFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;Lorg/mistergroup/shouldianswer/ui/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$d;->b:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 58
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d007a

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/a/eg;

    .line 59
    new-instance v0, Landroidx/appcompat/app/d$a;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$d;->b:Lorg/mistergroup/shouldianswer/ui/a;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    .line 60
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;

    const v2, 0x7f1001c5

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/d$a;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;

    const-string v1, "binding"

    .line 61
    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/eg;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/d$a;->b(Landroid/view/View;)Landroidx/appcompat/app/d$a;

    .line 62
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;

    const v2, 0x7f10000b

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$d$1;

    invoke-direct {v2, p0, p1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$d$1;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$d;Lorg/mistergroup/shouldianswer/a/eg;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/d$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 73
    invoke-virtual {v0}, Landroidx/appcompat/app/d$a;->c()Landroidx/appcompat/app/d;

    return-void
.end method
