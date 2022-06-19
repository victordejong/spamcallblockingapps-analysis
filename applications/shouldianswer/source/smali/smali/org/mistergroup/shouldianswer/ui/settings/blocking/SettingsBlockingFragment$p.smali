.class final Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$p;
.super Ljava/lang/Object;
.source "SettingsBlockingFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$p;->a:Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 215
    new-instance p1, Landroidx/appcompat/app/d$a;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$p;->a:Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->e(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    .line 216
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$p;->a:Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;

    const v1, 0x7f100143

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/d$a;->b(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;

    move-result-object p1

    .line 217
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$p;->a:Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;

    const v1, 0x7f1000d3

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/d$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Landroidx/appcompat/app/d$a;->c()Landroidx/appcompat/app/d;

    return-void
.end method
