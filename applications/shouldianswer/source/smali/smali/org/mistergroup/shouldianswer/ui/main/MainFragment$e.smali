.class public final Lorg/mistergroup/shouldianswer/ui/main/MainFragment$e;
.super Ljava/lang/Object;
.source "MainFragment.kt"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a(Lorg/mistergroup/shouldianswer/ui/main/MainActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;Lorg/mistergroup/shouldianswer/ui/main/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/ui/main/MainActivity;",
            ")V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$e;->b:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 165
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MainActivity.ViewPager Changed page to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a(I)V

    .line 167
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/ai;->a(I)V

    .line 168
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;)Lorg/mistergroup/shouldianswer/a/y;

    move-result-object v0

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/y;->n:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    .line 169
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fragment_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/utils/a;->b(Ljava/lang/String;)V

    .line 170
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/i;->a:Lorg/mistergroup/shouldianswer/utils/i;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$e;->b:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/utils/i;->a(Landroid/app/Activity;)V

    const-string v0, "binding.bottomNavigation"

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;)Lorg/mistergroup/shouldianswer/a/y;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/y;->d:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a01b7

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    goto :goto_0

    .line 173
    :cond_1
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;)Lorg/mistergroup/shouldianswer/a/y;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/y;->d:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a01b9

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    goto :goto_0

    .line 172
    :cond_2
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;)Lorg/mistergroup/shouldianswer/a/y;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/y;->d:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a01b8

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    .line 176
    :goto_0
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->b()Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/MainActivity;->invalidateOptionsMenu()V

    return-void
.end method
