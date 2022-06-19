.class final Lorg/mistergroup/shouldianswer/ui/main/c/g$2;
.super Ljava/lang/Object;
.source "LogViewNumberHolder.kt"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/c/g;-><init>(Lorg/mistergroup/shouldianswer/a/ag;Lorg/mistergroup/shouldianswer/ui/main/c/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/c/g;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lorg/mistergroup/shouldianswer/ui/main/c/h;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/c/g;Landroid/view/View;Lorg/mistergroup/shouldianswer/ui/main/c/h;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$2;->a:Lorg/mistergroup/shouldianswer/ui/main/c/g;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$2;->b:Landroid/view/View;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$2;->c:Lorg/mistergroup/shouldianswer/ui/main/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    const-string p3, "v"

    .line 29
    invoke-static {p2, p3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    iget-object p3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$2;->b:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    if-eq p2, p3, :cond_0

    .line 30
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    return-void

    .line 33
    :cond_0
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$2;->c:Lorg/mistergroup/shouldianswer/ui/main/c/h;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->e()Lkotlin/e/a/m;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p3, "menu"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$2;->a:Lorg/mistergroup/shouldianswer/ui/main/c/g;

    invoke-static {p3}, Lorg/mistergroup/shouldianswer/ui/main/c/g;->a(Lorg/mistergroup/shouldianswer/ui/main/c/g;)Lorg/mistergroup/shouldianswer/ui/main/c/c;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lkotlin/e/a/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/o;

    :cond_1
    return-void
.end method
