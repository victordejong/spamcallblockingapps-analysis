.class final Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$e$1;
.super Ljava/lang/Object;
.source "SettingsAccountFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$e;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$e;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$e;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$e$1;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "dialogInterface"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/model/ai;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$e$1;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$e;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;

    sget-object p2, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$a;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$a;

    invoke-static {p1, p2}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->a(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$a;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$e$1;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$e;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->d(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;)V

    return-void
.end method
