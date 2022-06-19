.class final Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$k;
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

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$k;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 161
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$k;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->f(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 162
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$k;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->e(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;)Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$k;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;

    const v1, 0x7f1001fc

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 163
    sget-object p1, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lkotlin/c/f;

    const/4 v2, 0x0

    new-instance p1, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$k$1;

    const/4 v3, 0x0

    invoke-direct {p1, p0, v3}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$k$1;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$k;Lkotlin/c/c;)V

    move-object v3, p1

    check-cast v3, Lkotlin/e/a/m;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    :cond_0
    return-void
.end method
