.class final Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$c;
.super Lkotlin/e/b/i;
.source "SearchFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/e/b/i;",
        "Lkotlin/e/a/m<",
        "Landroid/view/ContextMenu;",
        "Lorg/mistergroup/shouldianswer/ui/search/d;",
        "Lkotlin/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Landroid/view/ContextMenu;

    check-cast p2, Lorg/mistergroup/shouldianswer/ui/search/d;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$c;->a(Landroid/view/ContextMenu;Lorg/mistergroup/shouldianswer/ui/search/d;)V

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final a(Landroid/view/ContextMenu;Lorg/mistergroup/shouldianswer/ui/search/d;)V
    .locals 3

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->a(Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;)Lorg/mistergroup/shouldianswer/ui/main/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/mistergroup/shouldianswer/ui/main/a;->a(Lorg/mistergroup/shouldianswer/ui/search/d;)V

    const/4 v0, 0x0

    .line 84
    check-cast v0, Lorg/mistergroup/shouldianswer/model/ac;

    .line 87
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/search/d;->a()Lorg/mistergroup/shouldianswer/components/a/a;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ac;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v2

    :cond_0
    move-object v0, v1

    .line 92
    :cond_1
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/search/d;->b()Lorg/mistergroup/shouldianswer/ui/main/c/c;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 93
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2
    const-string v1, "context!!"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v0

    .line 97
    :cond_3
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 98
    sget-object p2, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;->a:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;->ordinal()I

    move-result p2

    const v1, 0x7f1000f6

    const/4 v2, 0x0

    invoke-interface {p1, v2, p2, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 99
    sget-object p2, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;->b:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;->ordinal()I

    move-result p2

    const v1, 0x7f1000f4

    invoke-interface {p1, v2, p2, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 100
    sget-object p2, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;->c:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;->ordinal()I

    move-result p2

    const v1, 0x7f1000fa

    invoke-interface {p1, v2, p2, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    if-eqz v0, :cond_4

    .line 102
    sget-object p2, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;->d:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;->ordinal()I

    move-result p2

    const v0, 0x7f1000f5

    invoke-interface {p1, v2, p2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 104
    :cond_4
    sget-object p2, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;->e:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;->ordinal()I

    move-result p2

    const v0, 0x7f1000f8

    invoke-interface {p1, v2, p2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method
