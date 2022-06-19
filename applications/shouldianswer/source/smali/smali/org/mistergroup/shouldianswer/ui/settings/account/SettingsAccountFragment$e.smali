.class final Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$e;
.super Ljava/lang/Object;
.source "SettingsAccountFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 122
    new-instance p1, Landroidx/appcompat/app/d$a;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->e(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;)Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    .line 123
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;

    const v1, 0x7f100109

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/d$a;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;

    move-result-object p1

    .line 124
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;

    const v1, 0x7f100108

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/d$a;->b(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;

    move-result-object p1

    .line 125
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;

    const v1, 0x7f100107

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$e$1;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$e$1;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$e;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/d$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;

    const v1, 0x7f1000af

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/d$a;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroidx/appcompat/app/d$a;->c()Landroidx/appcompat/app/d;

    return-void
.end method
