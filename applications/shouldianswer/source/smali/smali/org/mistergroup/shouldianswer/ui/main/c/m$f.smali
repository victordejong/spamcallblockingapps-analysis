.class final Lorg/mistergroup/shouldianswer/ui/main/c/m$f;
.super Lkotlin/e/b/i;
.source "LogsFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/c/m;->c()V
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
        "Lorg/mistergroup/shouldianswer/ui/main/c/c;",
        "Lkotlin/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/c/m;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/c/m;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$f;->a:Lorg/mistergroup/shouldianswer/ui/main/c/m;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Landroid/view/ContextMenu;

    check-cast p2, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/m$f;->a(Landroid/view/ContextMenu;Lorg/mistergroup/shouldianswer/ui/main/c/c;)V

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final a(Landroid/view/ContextMenu;Lorg/mistergroup/shouldianswer/ui/main/c/c;)V
    .locals 4

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$f;->a:Lorg/mistergroup/shouldianswer/ui/main/c/m;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->d(Lorg/mistergroup/shouldianswer/ui/main/c/m;)Lorg/mistergroup/shouldianswer/ui/main/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    check-cast v1, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a;->a(Lorg/mistergroup/shouldianswer/ui/main/c/c;)V

    .line 145
    :cond_0
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lorg/mistergroup/shouldianswer/model/x;->e(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 147
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v1

    .line 148
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$f;->a:Lorg/mistergroup/shouldianswer/ui/main/c/m;

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->d(Lorg/mistergroup/shouldianswer/ui/main/c/m;)Lorg/mistergroup/shouldianswer/ui/main/a;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, p2}, Lorg/mistergroup/shouldianswer/ui/main/a;->a(Lorg/mistergroup/shouldianswer/ui/main/c/c;)V

    .line 149
    :cond_1
    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 150
    sget-object p2, Lorg/mistergroup/shouldianswer/ui/main/c/m$b;->a:Lorg/mistergroup/shouldianswer/ui/main/c/m$b;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/main/c/m$b;->ordinal()I

    move-result p2

    const v1, 0x7f1000f6

    invoke-interface {p1, v2, p2, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 151
    sget-object p2, Lorg/mistergroup/shouldianswer/ui/main/c/m$b;->b:Lorg/mistergroup/shouldianswer/ui/main/c/m$b;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/main/c/m$b;->ordinal()I

    move-result p2

    const v1, 0x7f1000f4

    invoke-interface {p1, v2, p2, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 152
    sget-object p2, Lorg/mistergroup/shouldianswer/ui/main/c/m$b;->c:Lorg/mistergroup/shouldianswer/ui/main/c/m$b;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/main/c/m$b;->ordinal()I

    move-result p2

    const v1, 0x7f1000fa

    invoke-interface {p1, v2, p2, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 153
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 155
    sget-object p2, Lorg/mistergroup/shouldianswer/ui/main/c/m$b;->f:Lorg/mistergroup/shouldianswer/ui/main/c/m$b;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/main/c/m$b;->ordinal()I

    move-result p2

    const v0, 0x7f1000f7

    invoke-interface {p1, v2, p2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 156
    sget-object p2, Lorg/mistergroup/shouldianswer/ui/main/c/m$b;->d:Lorg/mistergroup/shouldianswer/ui/main/c/m$b;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/main/c/m$b;->ordinal()I

    move-result p2

    const v0, 0x7f1000f5

    invoke-interface {p1, v2, p2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 158
    :cond_2
    sget-object p2, Lorg/mistergroup/shouldianswer/ui/main/c/m$b;->e:Lorg/mistergroup/shouldianswer/ui/main/c/m$b;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/main/c/m$b;->ordinal()I

    move-result p2

    const v0, 0x7f1000f8

    invoke-interface {p1, v2, p2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 161
    :cond_3
    :goto_0
    sget-object p2, Lorg/mistergroup/shouldianswer/ui/main/c/m$b;->g:Lorg/mistergroup/shouldianswer/ui/main/c/m$b;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/main/c/m$b;->ordinal()I

    move-result p2

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$f;->a:Lorg/mistergroup/shouldianswer/ui/main/c/m;

    const v1, 0x7f100009

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p1, v2, p2, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method
