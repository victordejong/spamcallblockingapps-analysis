.class final Lorg/mistergroup/shouldianswer/ui/search/j$2;
.super Ljava/lang/Object;
.source "SearchViewNumberHolder.kt"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/search/j;-><init>(Lorg/mistergroup/shouldianswer/a/ag;Lorg/mistergroup/shouldianswer/ui/search/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/search/j;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lorg/mistergroup/shouldianswer/ui/search/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/search/j;Landroid/view/View;Lorg/mistergroup/shouldianswer/ui/search/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/j$2;->a:Lorg/mistergroup/shouldianswer/ui/search/j;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/search/j$2;->b:Landroid/view/View;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/search/j$2;->c:Lorg/mistergroup/shouldianswer/ui/search/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    const-string p3, "v"

    .line 25
    invoke-static {p2, p3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    iget-object p3, p0, Lorg/mistergroup/shouldianswer/ui/search/j$2;->b:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    if-eq p2, p3, :cond_0

    .line 26
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    return-void

    .line 29
    :cond_0
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/search/j$2;->c:Lorg/mistergroup/shouldianswer/ui/search/a;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/search/a;->d()Lkotlin/e/a/m;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p3, "menu"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lorg/mistergroup/shouldianswer/ui/search/j$2;->a:Lorg/mistergroup/shouldianswer/ui/search/j;

    invoke-static {p3}, Lorg/mistergroup/shouldianswer/ui/search/j;->a(Lorg/mistergroup/shouldianswer/ui/search/j;)Lorg/mistergroup/shouldianswer/ui/search/d;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lkotlin/e/a/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/o;

    :cond_1
    return-void
.end method
