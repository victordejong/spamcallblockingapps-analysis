.class final Lorg/mistergroup/shouldianswer/ui/main/b/a$c;
.super Ljava/lang/Object;
.source "FavoriteViewItemHolder.kt"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/b/a;->a(Lorg/mistergroup/shouldianswer/components/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/b/a;

.field final synthetic b:Lorg/mistergroup/shouldianswer/components/a/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/b/a;Lorg/mistergroup/shouldianswer/components/a/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a$c;->a:Lorg/mistergroup/shouldianswer/ui/main/b/a;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a$c;->b:Lorg/mistergroup/shouldianswer/components/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 67
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a$c;->a:Lorg/mistergroup/shouldianswer/ui/main/b/a;

    invoke-static {p2}, Lorg/mistergroup/shouldianswer/ui/main/b/a;->a(Lorg/mistergroup/shouldianswer/ui/main/b/a;)Lorg/mistergroup/shouldianswer/ui/main/b/b;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/main/b/b;->b()Lkotlin/e/a/m;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 68
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a$c;->a:Lorg/mistergroup/shouldianswer/ui/main/b/a;

    invoke-static {p2}, Lorg/mistergroup/shouldianswer/ui/main/b/a;->a(Lorg/mistergroup/shouldianswer/ui/main/b/a;)Lorg/mistergroup/shouldianswer/ui/main/b/b;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/main/b/b;->b()Lkotlin/e/a/m;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "contextMenu"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a$c;->b:Lorg/mistergroup/shouldianswer/components/a/a;

    invoke-interface {p2, p1, p3}, Lkotlin/e/a/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/o;

    :cond_0
    return-void
.end method
