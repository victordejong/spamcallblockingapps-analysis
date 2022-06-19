.class final Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a$a;
.super Lkotlin/c/b/a/k;
.source "ExceptionsViewHolder.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a;->b(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/c/b/a/k;",
        "Lkotlin/e/a/m<",
        "Lkotlinx/coroutines/ad;",
        "Lkotlin/c/c<",
        "-",
        "Lkotlin/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lorg/mistergroup/shouldianswer/model/d;

.field final synthetic c:Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a;

.field private d:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/model/d;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a$a;->b:Lorg/mistergroup/shouldianswer/model/d;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a$a;->c:Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a$a;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a$a;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/c/c<",
            "*>;)",
            "Lkotlin/c/c<",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a$a;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a$a;->b:Lorg/mistergroup/shouldianswer/model/d;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a$a;->c:Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a;

    invoke-direct {v0, v1, p2, v2}, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a$a;-><init>(Lorg/mistergroup/shouldianswer/model/d;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a$a;->d:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 33
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a$a;->a:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a$a;->d:Lkotlinx/coroutines/ad;

    .line 34
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a$a;->c:Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a;->d:Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c;->a(Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c;)Lorg/mistergroup/shouldianswer/a/ek;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ek;->f:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "binding.tvNumber"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a$a;->b:Lorg/mistergroup/shouldianswer/model/d;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/d;->b()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a$a;->c:Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a;->d:Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c;->a(Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c;)Lorg/mistergroup/shouldianswer/a/ek;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ek;->c:Landroid/widget/ImageView;

    const-string v0, "binding.imgRating"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a$a;->c:Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a;->d:Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c;->a(Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c;)Lorg/mistergroup/shouldianswer/a/ek;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/a/ek;->d()Landroid/view/View;

    move-result-object v1

    const-string v2, "binding.root"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "binding.root.context"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a$a;->c:Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a;->d:Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c;

    invoke-static {v2}, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c;->a(Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c;)Lorg/mistergroup/shouldianswer/a/ek;

    move-result-object v2

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ek;->c:Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/mistergroup/shouldianswer/model/ag;->c:Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {p1, v1, v2, v0}, Lorg/mistergroup/shouldianswer/utils/x;->b(Landroid/content/Context;Landroid/widget/ImageView;Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 37
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a$a;->c:Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a;->d:Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c;->a(Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c;)Lorg/mistergroup/shouldianswer/a/ek;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ek;->d:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "binding.tvCategory"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 38
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a$a;->c:Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a;->d:Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c;->a(Lorg/mistergroup/shouldianswer/ui/settings/blocked_numbers/c;)Lorg/mistergroup/shouldianswer/a/ek;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ek;->e:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.tvComment"

    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 39
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
