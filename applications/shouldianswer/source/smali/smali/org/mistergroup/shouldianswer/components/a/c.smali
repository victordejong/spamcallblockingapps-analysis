.class public final Lorg/mistergroup/shouldianswer/components/a/c;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "ContactViewCreateContactHolder.kt"


# instance fields
.field private a:Lorg/mistergroup/shouldianswer/components/a/a;

.field private final b:Lorg/mistergroup/shouldianswer/a/ag;


# direct methods
.method public constructor <init>(Lorg/mistergroup/shouldianswer/a/ag;Lorg/mistergroup/shouldianswer/components/a/e;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/c;->b:Lorg/mistergroup/shouldianswer/a/ag;

    .line 28
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/c;->b:Lorg/mistergroup/shouldianswer/a/ag;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lorg/mistergroup/shouldianswer/components/a/c$1;

    invoke-direct {v0, p0, p2}, Lorg/mistergroup/shouldianswer/components/a/c$1;-><init>(Lorg/mistergroup/shouldianswer/components/a/c;Lorg/mistergroup/shouldianswer/components/a/e;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/components/a/c;)Lorg/mistergroup/shouldianswer/components/a/a;
    .locals 0

    .line 10
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/components/a/c;->a:Lorg/mistergroup/shouldianswer/components/a/a;

    return-object p0
.end method


# virtual methods
.method public final a(Lorg/mistergroup/shouldianswer/components/a/a;)V
    .locals 5

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/c;->b:Lorg/mistergroup/shouldianswer/a/ag;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 15
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/c;->a:Lorg/mistergroup/shouldianswer/components/a/a;

    .line 16
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/c;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->j:Landroid/widget/ImageView;

    const-string v1, "binding.imgCallType"

    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/c;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->o:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvCaption"

    invoke-static {p1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f1000f8

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/c;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->q:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "binding.tvDescription"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, ""

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/c;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/c;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "binding.tvTime"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 21
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/p;->a:Lorg/mistergroup/shouldianswer/utils/p;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/c;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->k:Lcom/makeramen/roundedimageview/RoundedImageView;

    const-string v2, "binding.imgContactPhoto"

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/components/a/c;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ag;->p:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "binding.tvContactPhoto"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "+"

    invoke-virtual {p1, v3, v4, v0, v2}, Lorg/mistergroup/shouldianswer/utils/p;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/makeramen/roundedimageview/RoundedImageView;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 22
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/c;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->l:Landroid/widget/ImageView;

    const-string v0, "binding.imgRatingBig"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/c;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->m:Landroid/widget/ImageView;

    const-string v0, "binding.imgRatingSmall"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/c;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->c:Landroid/widget/ImageButton;

    const-string v0, "binding.butCall"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method
