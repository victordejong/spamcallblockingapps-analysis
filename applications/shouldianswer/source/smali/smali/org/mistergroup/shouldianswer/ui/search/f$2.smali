.class final Lorg/mistergroup/shouldianswer/ui/search/f$2;
.super Ljava/lang/Object;
.source "SearchViewContactHolder.kt"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/search/f;-><init>(Lorg/mistergroup/shouldianswer/a/ag;Lorg/mistergroup/shouldianswer/ui/search/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/search/f;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lorg/mistergroup/shouldianswer/ui/search/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/search/f;Landroid/view/View;Lorg/mistergroup/shouldianswer/ui/search/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/f$2;->a:Lorg/mistergroup/shouldianswer/ui/search/f;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/search/f$2;->b:Landroid/view/View;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/search/f$2;->c:Lorg/mistergroup/shouldianswer/ui/search/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 69
    iget-object p3, p0, Lorg/mistergroup/shouldianswer/ui/search/f$2;->a:Lorg/mistergroup/shouldianswer/ui/search/f;

    invoke-static {p3}, Lorg/mistergroup/shouldianswer/ui/search/f;->b(Lorg/mistergroup/shouldianswer/ui/search/f;)Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string p3, "view"

    .line 70
    invoke-static {p2, p3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    iget-object p3, p0, Lorg/mistergroup/shouldianswer/ui/search/f$2;->b:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    if-eq p2, p3, :cond_1

    .line 71
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    return-void

    .line 74
    :cond_1
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/search/f$2;->a:Lorg/mistergroup/shouldianswer/ui/search/f;

    invoke-static {p2}, Lorg/mistergroup/shouldianswer/ui/search/f;->a(Lorg/mistergroup/shouldianswer/ui/search/f;)Lorg/mistergroup/shouldianswer/ui/search/d;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/search/f$2;->c:Lorg/mistergroup/shouldianswer/ui/search/a;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/search/a;->d()Lkotlin/e/a/m;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string p3, "contextMenu"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lorg/mistergroup/shouldianswer/ui/search/f$2;->a:Lorg/mistergroup/shouldianswer/ui/search/f;

    invoke-static {p3}, Lorg/mistergroup/shouldianswer/ui/search/f;->a(Lorg/mistergroup/shouldianswer/ui/search/f;)Lorg/mistergroup/shouldianswer/ui/search/d;

    move-result-object p3

    if-nez p3, :cond_2

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2
    invoke-interface {p2, p1, p3}, Lkotlin/e/a/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/o;

    :cond_3
    return-void
.end method
