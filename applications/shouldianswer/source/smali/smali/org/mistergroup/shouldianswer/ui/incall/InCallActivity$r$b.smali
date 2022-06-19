.class final Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$b;
.super Lkotlin/c/b/a/k;
.source "InCallActivity.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->b(Ljava/lang/Object;)Ljava/lang/Object;
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

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

.field private d:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$b;->c:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$b;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$b;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$b;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$b;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$b;->c:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    invoke-direct {v0, v1, p2, v2}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$b;-><init>(Ljava/lang/String;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$b;->d:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 318
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$b;->a:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$b;->d:Lkotlinx/coroutines/ad;

    .line 319
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/p;->a:Lorg/mistergroup/shouldianswer/utils/p;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$b;->b:Ljava/lang/String;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$b;->c:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v1

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ai;->q:Lcom/makeramen/roundedimageview/RoundedImageView;

    const-string v2, "binding.imgContactPhotoBig"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$b;->c:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v2}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v2

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ai;->L:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "binding.tvContactPhotoBig"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Lorg/mistergroup/shouldianswer/utils/p;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/makeramen/roundedimageview/RoundedImageView;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 320
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/p;->a:Lorg/mistergroup/shouldianswer/utils/p;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$b;->b:Ljava/lang/String;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$b;->c:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v1

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ai;->p:Lcom/makeramen/roundedimageview/RoundedImageView;

    const-string v2, "binding.imgContactPhoto"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$b;->c:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v2}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v2

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ai;->K:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "binding.tvContactPhoto"

    invoke-static {v2, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3, v0, v1, v2}, Lorg/mistergroup/shouldianswer/utils/p;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/makeramen/roundedimageview/RoundedImageView;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 321
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$b;->c:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->c(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Z)V

    .line 322
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
