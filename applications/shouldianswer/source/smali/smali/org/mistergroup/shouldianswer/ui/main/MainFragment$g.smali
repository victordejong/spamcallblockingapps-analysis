.class final Lorg/mistergroup/shouldianswer/ui/main/MainFragment$g;
.super Ljava/lang/Object;
.source "MainFragment.kt"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a(Lorg/mistergroup/shouldianswer/ui/main/MainActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$g;->a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    const-string v1, "binding.viewPager"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 195
    :pswitch_0
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$g;->a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;)Lorg/mistergroup/shouldianswer/a/y;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/y;->s:Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 194
    :pswitch_1
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$g;->a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;)Lorg/mistergroup/shouldianswer/a/y;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/y;->s:Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 196
    :pswitch_2
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$g;->a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;)Lorg/mistergroup/shouldianswer/a/y;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/y;->s:Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a01b7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
