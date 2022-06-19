.class public final Lorg/mistergroup/shouldianswer/ui/main/c/f;
.super Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;
.source "LogViewMenuHolder.kt"


# instance fields
.field private a:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

.field private final b:Lorg/mistergroup/shouldianswer/a/ae;


# direct methods
.method public constructor <init>(Lorg/mistergroup/shouldianswer/a/ae;Lorg/mistergroup/shouldianswer/ui/main/c/h;Lorg/mistergroup/shouldianswer/ui/main/c/j$a;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "sourceType"

    invoke-static {p3, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/ae;->d()Landroid/view/View;

    move-result-object p2

    const-string v0, "binding.root"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/f;->b:Lorg/mistergroup/shouldianswer/a/ae;

    .line 12
    sget-object p1, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/f;->a:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    .line 16
    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/f;->a:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    .line 17
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/main/c/f;->c()V

    .line 19
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/f;->b:Lorg/mistergroup/shouldianswer/a/ae;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ae;->c:Landroid/widget/ToggleButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/main/c/f$1;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/main/c/f$1;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/f;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/f;->b:Lorg/mistergroup/shouldianswer/a/ae;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ae;->e:Landroid/widget/ToggleButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/main/c/f$2;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/main/c/f$2;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/f;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/f;->b:Lorg/mistergroup/shouldianswer/a/ae;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ae;->d:Landroid/widget/ToggleButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/main/c/f$3;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/main/c/f$3;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/f;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/main/c/f;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/main/c/f;->c()V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/main/c/f;Lorg/mistergroup/shouldianswer/ui/main/c/j$a;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/f;->a:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    return-void
.end method

.method private final c()V
    .locals 5

    .line 39
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/f;->b:Lorg/mistergroup/shouldianswer/a/ae;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ae;->c:Landroid/widget/ToggleButton;

    const-string v1, "binding.butFilterShowAll"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/f;->a:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    sget-object v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 40
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/f;->b:Lorg/mistergroup/shouldianswer/a/ae;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ae;->e:Landroid/widget/ToggleButton;

    const-string v1, "binding.butFilterShowUnfamiliar"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/f;->a:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    sget-object v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->d:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 41
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/f;->b:Lorg/mistergroup/shouldianswer/a/ae;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ae;->d:Landroid/widget/ToggleButton;

    const-string v1, "binding.butFilterShowBlocked"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/f;->a:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    sget-object v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->e:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method
