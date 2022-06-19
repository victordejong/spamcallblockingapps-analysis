.class final Lorg/mistergroup/shouldianswer/components/a/b$2;
.super Ljava/lang/Object;
.source "ContactViewContactHolder.kt"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/components/a/b;-><init>(Lorg/mistergroup/shouldianswer/a/ag;Lorg/mistergroup/shouldianswer/components/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/components/a/b;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/components/a/b;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/b$2;->a:Lorg/mistergroup/shouldianswer/components/a/b;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/components/a/b$2;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 78
    iget-object p3, p0, Lorg/mistergroup/shouldianswer/components/a/b$2;->a:Lorg/mistergroup/shouldianswer/components/a/b;

    invoke-static {p3}, Lorg/mistergroup/shouldianswer/components/a/b;->b(Lorg/mistergroup/shouldianswer/components/a/b;)Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string p3, "view"

    .line 79
    invoke-static {p2, p3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    iget-object p3, p0, Lorg/mistergroup/shouldianswer/components/a/b$2;->b:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    if-eq p2, p3, :cond_1

    .line 80
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    return-void

    .line 83
    :cond_1
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/components/a/b$2;->a:Lorg/mistergroup/shouldianswer/components/a/b;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/components/a/b;->a()Lorg/mistergroup/shouldianswer/components/a/e;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/components/a/e;->c()Lkotlin/e/a/m;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string p3, "contextMenu"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lorg/mistergroup/shouldianswer/components/a/b$2;->a:Lorg/mistergroup/shouldianswer/components/a/b;

    invoke-static {p3}, Lorg/mistergroup/shouldianswer/components/a/b;->a(Lorg/mistergroup/shouldianswer/components/a/b;)Lorg/mistergroup/shouldianswer/components/a/a;

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
