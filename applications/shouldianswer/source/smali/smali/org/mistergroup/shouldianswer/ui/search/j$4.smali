.class final Lorg/mistergroup/shouldianswer/ui/search/j$4;
.super Ljava/lang/Object;
.source "SearchViewNumberHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/search/j;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/j$4;->a:Lorg/mistergroup/shouldianswer/ui/search/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 45
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/j$4;->a:Lorg/mistergroup/shouldianswer/ui/search/j;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/search/j;->a(Lorg/mistergroup/shouldianswer/ui/search/j;)Lorg/mistergroup/shouldianswer/ui/search/d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/search/d;->b()Lorg/mistergroup/shouldianswer/ui/main/c/c;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/j$4;->a:Lorg/mistergroup/shouldianswer/ui/search/j;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/search/j;->b(Lorg/mistergroup/shouldianswer/ui/search/j;)Lorg/mistergroup/shouldianswer/a/ag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "binding.root.context"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/model/ac;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
