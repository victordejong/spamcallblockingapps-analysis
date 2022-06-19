.class final Lorg/mistergroup/shouldianswer/ui/main/b/a$a;
.super Ljava/lang/Object;
.source "FavoriteViewItemHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic b:Lorg/mistergroup/shouldianswer/model/ac;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/b/a;Lorg/mistergroup/shouldianswer/model/ac;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a$a;->a:Lorg/mistergroup/shouldianswer/ui/main/b/a;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a$a;->b:Lorg/mistergroup/shouldianswer/model/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 46
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a$a;->a:Lorg/mistergroup/shouldianswer/ui/main/b/a;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/main/b/a;->a(Lorg/mistergroup/shouldianswer/ui/main/b/a;)Lorg/mistergroup/shouldianswer/ui/main/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/b/b;->c()Lkotlin/e/a/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    new-instance p1, Lorg/mistergroup/shouldianswer/utils/b;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a$a;->a:Lorg/mistergroup/shouldianswer/ui/main/b/a;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/main/b/a;->b(Lorg/mistergroup/shouldianswer/ui/main/b/a;)Lorg/mistergroup/shouldianswer/a/w;

    move-result-object v0

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/w;->g:Landroid/widget/FrameLayout;

    const-string v1, "binding.llItem"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const v1, 0x7f01001f

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lorg/mistergroup/shouldianswer/utils/b;-><init>(Landroid/view/View;II)V

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/b;->a()V

    .line 48
    sget-object p1, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lkotlin/c/f;

    const/4 v2, 0x0

    new-instance p1, Lorg/mistergroup/shouldianswer/ui/main/b/a$a$1;

    const/4 v3, 0x0

    invoke-direct {p1, p0, v3}, Lorg/mistergroup/shouldianswer/ui/main/b/a$a$1;-><init>(Lorg/mistergroup/shouldianswer/ui/main/b/a$a;Lkotlin/c/c;)V

    move-object v3, p1

    check-cast v3, Lkotlin/e/a/m;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    :cond_0
    return-void
.end method
