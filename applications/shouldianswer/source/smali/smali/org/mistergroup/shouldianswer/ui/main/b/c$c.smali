.class final Lorg/mistergroup/shouldianswer/ui/main/b/c$c;
.super Lkotlin/e/b/i;
.source "FavoritesFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/b/c;->c()V
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
        "Lorg/mistergroup/shouldianswer/components/a/a;",
        "Lkotlin/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c$c;->a:Lorg/mistergroup/shouldianswer/ui/main/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Landroid/view/ContextMenu;

    check-cast p2, Lorg/mistergroup/shouldianswer/components/a/a;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/b/c$c;->a(Landroid/view/ContextMenu;Lorg/mistergroup/shouldianswer/components/a/a;)V

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final a(Landroid/view/ContextMenu;Lorg/mistergroup/shouldianswer/components/a/a;)V
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c$c;->a:Lorg/mistergroup/shouldianswer/ui/main/a;

    invoke-virtual {v0, p2}, Lorg/mistergroup/shouldianswer/ui/main/a;->a(Lorg/mistergroup/shouldianswer/components/a/a;)V

    .line 123
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/ac;->b()Ljava/lang/String;

    move-result-object p2

    .line 124
    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 125
    sget-object p2, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;->a:Lorg/mistergroup/shouldianswer/ui/main/b/c$a;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;->ordinal()I

    move-result p2

    const v0, 0x7f1000f6

    const/4 v1, 0x0

    invoke-interface {p1, v1, p2, v1, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 126
    sget-object p2, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;->b:Lorg/mistergroup/shouldianswer/ui/main/b/c$a;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;->ordinal()I

    move-result p2

    const v0, 0x7f1000f4

    invoke-interface {p1, v1, p2, v1, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 127
    sget-object p2, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;->c:Lorg/mistergroup/shouldianswer/ui/main/b/c$a;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;->ordinal()I

    move-result p2

    const v0, 0x7f1000fa

    invoke-interface {p1, v1, p2, v1, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 128
    sget-object p2, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;->d:Lorg/mistergroup/shouldianswer/ui/main/b/c$a;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;->ordinal()I

    move-result p2

    const v0, 0x7f1000f5

    invoke-interface {p1, v1, p2, v1, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method
