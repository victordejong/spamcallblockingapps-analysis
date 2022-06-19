.class final Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$a;
.super Ljava/lang/Object;
.source "AboutFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$a;->a:Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 42
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$a;->a:Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;->a(Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 43
    :cond_0
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v0, "about.appVersion"

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/utils/a;->d(Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$a;->a:Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100037

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 45
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$a;->a:Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;->a(Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;Z)V

    .line 46
    sget-object p1, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lkotlin/c/f;

    const/4 v2, 0x0

    new-instance p1, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$a$1;

    const/4 v3, 0x0

    invoke-direct {p1, p0, v3}, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$a$1;-><init>(Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$a;Lkotlin/c/c;)V

    move-object v3, p1

    check-cast v3, Lkotlin/e/a/m;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    return-void
.end method
