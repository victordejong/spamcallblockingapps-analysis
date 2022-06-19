.class final Lorg/mistergroup/shouldianswer/ui/main/b$h$1;
.super Ljava/lang/Object;
.source "MainBanners.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/b$h;->b(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/b$h;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/b$h;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$h$1;->a:Lorg/mistergroup/shouldianswer/ui/main/b$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 133
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$h$1;->a:Lorg/mistergroup/shouldianswer/ui/main/b$h;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/main/b$h;->b:Lorg/mistergroup/shouldianswer/ui/main/b;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/b;->a()V

    .line 134
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$h$1;->a:Lorg/mistergroup/shouldianswer/ui/main/b$h;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/main/b$h;->b:Lorg/mistergroup/shouldianswer/ui/main/b;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/b;->c()Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x0

    const v1, 0x7f100037

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 135
    sget-object p1, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lkotlin/c/f;

    new-instance p1, Lorg/mistergroup/shouldianswer/ui/main/b$h$1$1;

    const/4 v3, 0x0

    invoke-direct {p1, p0, v3}, Lorg/mistergroup/shouldianswer/ui/main/b$h$1$1;-><init>(Lorg/mistergroup/shouldianswer/ui/main/b$h$1;Lkotlin/c/c;)V

    move-object v4, p1

    check-cast v4, Lkotlin/e/a/m;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    .line 145
    sget-object p1, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    sget-object v1, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;->d:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;

    invoke-virtual {p1, v1, v0}, Lorg/mistergroup/shouldianswer/model/c;->a(Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;I)V

    return-void
.end method
