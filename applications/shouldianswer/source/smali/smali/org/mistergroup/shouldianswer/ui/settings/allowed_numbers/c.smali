.class public final Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/c;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "ExceptionsViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b;

.field private final b:Lorg/mistergroup/shouldianswer/a/ek;

.field private final c:Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a;


# direct methods
.method public constructor <init>(Lorg/mistergroup/shouldianswer/a/ek;Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/ek;->d()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/c;->b:Lorg/mistergroup/shouldianswer/a/ek;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/c;->c:Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a;

    .line 23
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/c;->b:Lorg/mistergroup/shouldianswer/a/ek;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/ek;->d()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    move-object p2, p0

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/c;)Lorg/mistergroup/shouldianswer/a/ek;
    .locals 0

    .line 19
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/c;->b:Lorg/mistergroup/shouldianswer/a/ek;

    return-object p0
.end method


# virtual methods
.method public final a(Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b;)V
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/c;->a:Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b;

    .line 29
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b;->b()Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b$a;

    move-result-object v0

    sget-object v1, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/d;->a:[I

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    sget-object v0, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/c/f;

    const/4 v3, 0x0

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/c$a;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/c$a;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/c;Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b;Lkotlin/c/c;)V

    move-object v4, v0

    check-cast v4, Lkotlin/e/a/m;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/c;->c:Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a;->a()Lkotlin/e/a/b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/c;->a:Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/b;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-interface {p1, v0}, Lkotlin/e/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/o;

    :cond_1
    return-void
.end method
