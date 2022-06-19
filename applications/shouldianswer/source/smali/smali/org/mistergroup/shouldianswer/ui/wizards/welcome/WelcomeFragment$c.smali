.class final Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$c;
.super Ljava/lang/Object;
.source "WelcomeFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 47
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;->a(Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;)Lorg/mistergroup/shouldianswer/a/eq;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/eq;->k:Landroidx/viewpager/widget/ViewPager;

    const-string v0, "binding.viewPager"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
