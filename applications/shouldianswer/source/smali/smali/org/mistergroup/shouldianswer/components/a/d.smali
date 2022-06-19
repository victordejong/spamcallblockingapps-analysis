.class public final Lorg/mistergroup/shouldianswer/components/a/d;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "ContactViewInfoHolder.kt"


# instance fields
.field private final a:Lorg/mistergroup/shouldianswer/a/ac;


# direct methods
.method public constructor <init>(Lorg/mistergroup/shouldianswer/a/ac;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/ac;->d()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/d;->a:Lorg/mistergroup/shouldianswer/a/ac;

    return-void
.end method


# virtual methods
.method public final a(Lorg/mistergroup/shouldianswer/components/a/a;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/d;->a:Lorg/mistergroup/shouldianswer/a/ac;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ac;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.tvText"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/a;->c()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
