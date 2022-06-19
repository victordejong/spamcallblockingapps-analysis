.class public final Lorg/mistergroup/shouldianswer/ui/main/b/a;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "FavoriteViewItemHolder.kt"

# interfaces
.implements Lcom/a/a/a/a/c/e;


# instance fields
.field private a:I

.field private final b:Lorg/mistergroup/shouldianswer/a/w;

.field private final c:Lorg/mistergroup/shouldianswer/ui/main/b/b;


# direct methods
.method public constructor <init>(Lorg/mistergroup/shouldianswer/a/w;Lorg/mistergroup/shouldianswer/ui/main/b/b;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/w;->d()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a;->b:Lorg/mistergroup/shouldianswer/a/w;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a;->c:Lorg/mistergroup/shouldianswer/ui/main/b/b;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/main/b/a;)Lorg/mistergroup/shouldianswer/ui/main/b/b;
    .locals 0

    .line 19
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a;->c:Lorg/mistergroup/shouldianswer/ui/main/b/b;

    return-object p0
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/main/b/a;)Lorg/mistergroup/shouldianswer/a/w;
    .locals 0

    .line 19
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a;->b:Lorg/mistergroup/shouldianswer/a/w;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 22
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 26
    iput p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a;->a:I

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/components/a/a;)V
    .locals 8

    const-string v0, "contactItem"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/a;->e()Lorg/mistergroup/shouldianswer/components/a/a$a;

    move-result-object v0

    sget-object v1, Lorg/mistergroup/shouldianswer/components/a/a$a;->a:Lorg/mistergroup/shouldianswer/components/a/a$a;

    const-string v2, "binding.tvTitle"

    const-string v3, "binding.tvImageText"

    if-ne v0, v1, :cond_7

    .line 32
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v0

    .line 33
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/q;->a:Lorg/mistergroup/shouldianswer/utils/q;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ac;->a()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/mistergroup/shouldianswer/utils/q;->c(J)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 34
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a;->b:Lorg/mistergroup/shouldianswer/a/w;

    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/w;->e:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 35
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a;->b:Lorg/mistergroup/shouldianswer/a/w;

    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/w;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v4, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-nez v1, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    invoke-virtual {v4, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 36
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a;->b:Lorg/mistergroup/shouldianswer/a/w;

    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/w;->f:Landroid/widget/LinearLayout;

    const-string v7, "binding.llGroupWithShadow"

    invoke-static {v4, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez v1, :cond_5

    .line 38
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/p;->a:Lorg/mistergroup/shouldianswer/utils/p;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ac;->b()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_3
    invoke-virtual {v1, v4}, Lorg/mistergroup/shouldianswer/utils/p;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 39
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a;->b:Lorg/mistergroup/shouldianswer/a/w;

    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/w;->e:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 40
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a;->b:Lorg/mistergroup/shouldianswer/a/w;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/w;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lorg/mistergroup/shouldianswer/utils/p;->a:Lorg/mistergroup/shouldianswer/utils/p;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ac;->b()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_4
    invoke-virtual {v3, v4}, Lorg/mistergroup/shouldianswer/utils/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :cond_5
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a;->b:Lorg/mistergroup/shouldianswer/a/w;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/w;->d:Landroid/widget/ImageButton;

    const-string v3, "binding.ibStar"

    invoke-static {v1, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ac;->c()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    move v5, v6

    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 44
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a;->b:Lorg/mistergroup/shouldianswer/a/w;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/w;->i:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ac;->b()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a;->b:Lorg/mistergroup/shouldianswer/a/w;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/w;->g:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/main/b/a$a;

    invoke-direct {v2, p0, v0}, Lorg/mistergroup/shouldianswer/ui/main/b/a$a;-><init>(Lorg/mistergroup/shouldianswer/ui/main/b/a;Lorg/mistergroup/shouldianswer/model/ac;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a;->b:Lorg/mistergroup/shouldianswer/a/w;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/w;->c:Landroid/widget/ImageButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/main/b/a$b;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/main/b/a$b;-><init>(Lorg/mistergroup/shouldianswer/ui/main/b/a;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a;->b:Lorg/mistergroup/shouldianswer/a/w;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/w;->c:Landroid/widget/ImageButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/main/b/a$c;

    invoke-direct {v1, p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/b/a$c;-><init>(Lorg/mistergroup/shouldianswer/ui/main/b/a;Lorg/mistergroup/shouldianswer/components/a/a;)V

    check-cast v1, Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_3

    .line 72
    :cond_7
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a;->b:Lorg/mistergroup/shouldianswer/a/w;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/w;->i:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/a;->c()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a;->b:Lorg/mistergroup/shouldianswer/a/w;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/w;->e:Landroid/widget/ImageView;

    const v0, 0x7f0800c7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a;->b:Lorg/mistergroup/shouldianswer/a/w;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/w;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method
