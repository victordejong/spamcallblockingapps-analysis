.class final Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;
.super Lkotlin/c/b/a/k;
.source "ReportsViewHolder.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->b(Ljava/lang/Object;)Ljava/lang/Object;
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

.field final synthetic b:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field final synthetic c:Lorg/mistergroup/shouldianswer/model/ag;

.field final synthetic d:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;

.field private e:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/model/ag;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->b:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->c:Lorg/mistergroup/shouldianswer/model/ag;

    iput-object p4, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->d:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 4
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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->b:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->c:Lorg/mistergroup/shouldianswer/model/ag;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->d:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;

    invoke-direct {v0, v1, v2, p2, v3}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/model/ag;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->e:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 32
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->a:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->e:Lkotlinx/coroutines/ad;

    .line 33
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->d:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->e:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;->a(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;)Lorg/mistergroup/shouldianswer/a/ek;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ek;->f:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "binding.tvNumber"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->b:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->b:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 36
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->d:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->e:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;

    invoke-static {v2}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;->a(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;)Lorg/mistergroup/shouldianswer/a/ek;

    move-result-object v2

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ek;->f:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/e/b/p;->a:Lkotlin/e/b/p;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ac;->b()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->b:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, p1

    array-length p1, v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :cond_0
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->d:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->e:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;->a(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;)Lorg/mistergroup/shouldianswer/a/ek;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ek;->c:Landroid/widget/ImageView;

    const-string v0, "binding.imgRating"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->d:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->e:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;

    invoke-static {v2}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;->a(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;)Lorg/mistergroup/shouldianswer/a/ek;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/a/ek;->d()Landroid/view/View;

    move-result-object v2

    const-string v3, "binding.root"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "binding.root.context"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->d:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->e:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;->a(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;)Lorg/mistergroup/shouldianswer/a/ek;

    move-result-object v3

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ek;->c:Landroid/widget/ImageView;

    invoke-static {v3, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->c:Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {p1, v2, v3, v0}, Lorg/mistergroup/shouldianswer/utils/x;->b(Landroid/content/Context;Landroid/widget/ImageView;Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 41
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->d:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->f:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->e()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x8

    const-string v2, "binding.tvCategory"

    if-eqz p1, :cond_1

    .line 42
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->d:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->e:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;->a(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;)Lorg/mistergroup/shouldianswer/a/ek;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ek;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->d:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->f:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->e()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->d:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->e:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;->a(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;)Lorg/mistergroup/shouldianswer/a/ek;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ek;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    goto :goto_0

    .line 45
    :cond_1
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->d:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->e:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;->a(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;)Lorg/mistergroup/shouldianswer/a/ek;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ek;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 47
    :goto_0
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->d:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->f:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->f()Ljava/lang/String;

    move-result-object p1

    const-string v2, "binding.tvComment"

    if-eqz p1, :cond_2

    .line 48
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->d:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->e:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;->a(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;)Lorg/mistergroup/shouldianswer/a/ek;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ek;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->d:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->f:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->f()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->d:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->e:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;->a(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;)Lorg/mistergroup/shouldianswer/a/ek;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ek;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    goto :goto_1

    .line 51
    :cond_2
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;->d:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->e:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;->a(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;)Lorg/mistergroup/shouldianswer/a/ek;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ek;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 53
    :goto_1
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
