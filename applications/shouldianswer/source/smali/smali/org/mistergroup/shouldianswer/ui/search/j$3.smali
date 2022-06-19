.class final Lorg/mistergroup/shouldianswer/ui/search/j$3;
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

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/j$3;->a:Lorg/mistergroup/shouldianswer/ui/search/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 34
    :try_start_0
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v2, "LogViewNumberHolder call clicked"

    invoke-static {v1, v2, v0, p1, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 35
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/search/j$3;->a:Lorg/mistergroup/shouldianswer/ui/search/j;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/search/j;->a(Lorg/mistergroup/shouldianswer/ui/search/j;)Lorg/mistergroup/shouldianswer/ui/search/d;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/search/d;->b()Lorg/mistergroup/shouldianswer/ui/main/c/c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 36
    new-instance v2, Lorg/mistergroup/shouldianswer/utils/b;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/search/j$3;->a:Lorg/mistergroup/shouldianswer/ui/search/j;

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/ui/search/j;->b(Lorg/mistergroup/shouldianswer/ui/search/j;)Lorg/mistergroup/shouldianswer/a/ag;

    move-result-object v3

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ag;->c:Landroid/widget/ImageButton;

    const-string v4, "binding.butCall"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    const v4, 0x7f01001f

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lorg/mistergroup/shouldianswer/utils/b;-><init>(Landroid/view/View;II)V

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/b;->a()V

    .line 37
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/e;->a:Lorg/mistergroup/shouldianswer/utils/e;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/search/j$3;->a:Lorg/mistergroup/shouldianswer/ui/search/j;

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/ui/search/j;->b(Lorg/mistergroup/shouldianswer/ui/search/j;)Lorg/mistergroup/shouldianswer/a/ag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v3

    const-string v4, "binding.root"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "binding.root.context"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1, v0}, Lorg/mistergroup/shouldianswer/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Lkotlin/e/a/b;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 40
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    check-cast v1, Ljava/lang/Exception;

    invoke-static {v2, v1, v0, p1, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
