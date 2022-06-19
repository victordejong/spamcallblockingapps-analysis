.class public final Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;
.super Lorg/mistergroup/shouldianswer/ui/b;
.source "AboutFragment.kt"


# instance fields
.field private b:Lorg/mistergroup/shouldianswer/a/c;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;->c:Z

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;->c:Z

    return p0
.end method


# virtual methods
.method public a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
    .locals 3

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;->b:Lorg/mistergroup/shouldianswer/a/c;

    const-string v0, "binding"

    if-nez p2, :cond_0

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/c;->j:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.tvAppVersion"

    invoke-static {p2, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/mistergroup/shouldianswer/utils/r;->a:Lorg/mistergroup/shouldianswer/utils/r;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/r;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (db:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->a:Lorg/mistergroup/shouldianswer/model/communityDatabase/a;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;->b:Lorg/mistergroup/shouldianswer/a/c;

    if-nez p2, :cond_1

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/c;->j:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$a;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$a;-><init>(Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;->b:Lorg/mistergroup/shouldianswer/a/c;

    if-nez p2, :cond_2

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/c;->g:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$b;

    invoke-direct {v1, p1}, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$b;-><init>(Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;->b:Lorg/mistergroup/shouldianswer/a/c;

    if-nez p2, :cond_3

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/c;->i:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$c;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$c;-><init>(Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;->b:Lorg/mistergroup/shouldianswer/a/c;

    if-nez p2, :cond_4

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/c;->h:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$d;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$d;-><init>(Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;->b:Lorg/mistergroup/shouldianswer/a/c;

    if-nez p2, :cond_5

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/c;->f:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$e;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$e;-><init>(Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;->b:Lorg/mistergroup/shouldianswer/a/c;

    if-nez p2, :cond_6

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/c;->e:Landroid/widget/ImageButton;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$f;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$f;-><init>(Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public c()Landroidx/appcompat/widget/Toolbar;
    .locals 2

    .line 103
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;->b:Lorg/mistergroup/shouldianswer/a/c;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/c;->c:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d001d

    const/4 v0, 0x0

    .line 31
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026agment, container, false)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/c;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;->b:Lorg/mistergroup/shouldianswer/a/c;

    .line 32
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;->b:Lorg/mistergroup/shouldianswer/a/c;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/c;->d()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
