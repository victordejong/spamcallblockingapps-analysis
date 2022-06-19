.class public final Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "ReportsViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;

.field private final b:Lorg/mistergroup/shouldianswer/a/ek;

.field private final c:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;


# direct methods
.method public constructor <init>(Lorg/mistergroup/shouldianswer/a/ek;Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/ek;->d()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;->b:Lorg/mistergroup/shouldianswer/a/ek;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;->c:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;

    .line 22
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;->b:Lorg/mistergroup/shouldianswer/a/ek;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/ek;->d()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    move-object p2, p0

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;)Lorg/mistergroup/shouldianswer/a/ek;
    .locals 0

    .line 18
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;->b:Lorg/mistergroup/shouldianswer/a/ek;

    return-object p0
.end method


# virtual methods
.method public final a(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;)V
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;->a:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;

    .line 28
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->a()I

    move-result v0

    sget-object v1, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->a:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b$a;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 29
    sget-object v0, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/c/f;

    const/4 v3, 0x0

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;Lkotlin/c/c;)V

    move-object v4, v0

    check-cast v4, Lkotlin/e/a/m;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    .line 58
    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->a()I

    move-result v0

    sget-object v1, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->a:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b$a;->b()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 59
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;->b:Lorg/mistergroup/shouldianswer/a/ek;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ek;->f:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.tvNumber"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->d()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;->b:Lorg/mistergroup/shouldianswer/a/ek;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ek;->d:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "binding.tvCategory"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 61
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;->b:Lorg/mistergroup/shouldianswer/a/ek;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ek;->e:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.tvComment"

    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 62
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;->b:Lorg/mistergroup/shouldianswer/a/ek;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ek;->c:Landroid/widget/ImageView;

    const-string v1, "binding.imgRating"

    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;->a:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->a()I

    move-result p1

    sget-object v0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->a:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b$a;->a()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 68
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;->c:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/a;->a()Lkotlin/e/a/b;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;->a:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->b()Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2
    invoke-interface {p1, v0}, Lkotlin/e/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/o;

    :cond_3
    return-void
.end method
