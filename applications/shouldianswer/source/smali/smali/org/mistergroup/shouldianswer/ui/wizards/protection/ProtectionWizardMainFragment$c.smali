.class final Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$c;
.super Ljava/lang/Object;
.source "ProtectionWizardMainFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;Lorg/mistergroup/shouldianswer/ui/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$c;->b:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 73
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    sget-object v0, Lorg/mistergroup/shouldianswer/model/af;->b:Lorg/mistergroup/shouldianswer/model/af;

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/model/ai;->a(Lorg/mistergroup/shouldianswer/model/af;)V

    .line 74
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;->d()Lorg/mistergroup/shouldianswer/a/bw;

    move-result-object v0

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/bw;->g:Landroid/widget/FrameLayout;

    const-string v1, "binding.flNoProtection"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;->d()Lorg/mistergroup/shouldianswer/a/bw;

    move-result-object v1

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/bw;->h:Landroid/widget/FrameLayout;

    const-string v2, "binding.flPassiveProtection"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;->d()Lorg/mistergroup/shouldianswer/a/bw;

    move-result-object v2

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/bw;->f:Landroid/widget/FrameLayout;

    const-string v3, "binding.flActiveProtection"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0, v1, v2}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;->a(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 75
    sget-object p1, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lkotlin/c/f;

    new-instance p1, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$c$1;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$c$1;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$c;Lkotlin/c/c;)V

    move-object v3, p1

    check-cast v3, Lkotlin/e/a/m;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    return-void
.end method
