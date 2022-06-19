.class final Lorg/mistergroup/shouldianswer/ui/main/MainFragment$m;
.super Ljava/lang/Object;
.source "MainFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->onActivityCreated(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$m;->a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 79
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$m;->a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;)Lorg/mistergroup/shouldianswer/a/y;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/y;->m:Landroidx/drawerlayout/widget/DrawerLayout;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->g(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$m;->a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;)Lorg/mistergroup/shouldianswer/a/y;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/y;->m:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->f(I)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$m;->a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;)Lorg/mistergroup/shouldianswer/a/y;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/y;->m:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->e(I)V

    :goto_0
    return-void
.end method
