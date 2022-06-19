.class final Lorg/mistergroup/shouldianswer/ui/main/c/g$3;
.super Ljava/lang/Object;
.source "LogViewNumberHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/c/g;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$3;->a:Lorg/mistergroup/shouldianswer/ui/main/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 38
    :try_start_0
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v2, "LogViewNumberHolder call clicked"

    invoke-static {v1, v2, v0, p1, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 39
    new-instance v1, Lorg/mistergroup/shouldianswer/utils/b;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$3;->a:Lorg/mistergroup/shouldianswer/ui/main/c/g;

    invoke-static {v2}, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c(Lorg/mistergroup/shouldianswer/ui/main/c/g;)Lorg/mistergroup/shouldianswer/a/ag;

    move-result-object v2

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ag;->c:Landroid/widget/ImageButton;

    const-string v3, "binding.butCall"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    const v3, 0x7f01001f

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lorg/mistergroup/shouldianswer/utils/b;-><init>(Landroid/view/View;II)V

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/b;->a()V

    .line 40
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/e;->a:Lorg/mistergroup/shouldianswer/utils/e;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$3;->a:Lorg/mistergroup/shouldianswer/ui/main/c/g;

    invoke-static {v2}, Lorg/mistergroup/shouldianswer/ui/main/c/g;->c(Lorg/mistergroup/shouldianswer/ui/main/c/g;)Lorg/mistergroup/shouldianswer/a/ag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v2

    const-string v3, "binding.root"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "binding.root.context"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$3;->a:Lorg/mistergroup/shouldianswer/ui/main/c/g;

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/ui/main/c/g;->a(Lorg/mistergroup/shouldianswer/ui/main/c/g;)Lorg/mistergroup/shouldianswer/ui/main/c/c;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lorg/mistergroup/shouldianswer/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Lkotlin/e/a/b;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 42
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    check-cast v1, Ljava/lang/Exception;

    invoke-static {v2, v1, v0, p1, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
