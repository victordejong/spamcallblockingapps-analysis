.class public final Lorg/mistergroup/shouldianswer/ui/main/MainFragment$d;
.super Landroidx/appcompat/app/b;
.source "MainFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a(Lorg/mistergroup/shouldianswer/ui/main/MainActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

.field final synthetic d:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;Lorg/mistergroup/shouldianswer/ui/main/MainActivity;Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/ui/main/MainActivity;",
            "Landroid/app/Activity;",
            "Landroidx/drawerlayout/widget/DrawerLayout;",
            "II)V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$d;->c:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$d;->d:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/appcompat/app/b;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    const-string v0, "drawerView"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-super {p0, p1}, Landroidx/appcompat/app/b;->a(Landroid/view/View;)V

    .line 153
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$d;->d:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/MainActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    const-string v0, "drawerView"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-super {p0, p1}, Landroidx/appcompat/app/b;->b(Landroid/view/View;)V

    .line 148
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$d;->d:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/MainActivity;->invalidateOptionsMenu()V

    return-void
.end method
