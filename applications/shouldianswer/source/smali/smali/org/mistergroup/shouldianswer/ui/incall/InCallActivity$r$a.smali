.class final Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;
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

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lorg/mistergroup/shouldianswer/model/ac;

.field final synthetic e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

.field private f:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/ac;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;->b:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;->c:Ljava/lang/String;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;->d:Lorg/mistergroup/shouldianswer/model/ac;

    iput-object p5, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 7
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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;->b:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;->d:Lorg/mistergroup/shouldianswer/model/ac;

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    move-object v1, v0

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/ac;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;->f:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 303
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;->a:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;->f:Lkotlinx/coroutines/ad;

    .line 304
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/p;->a:Lorg/mistergroup/shouldianswer/utils/p;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v2}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v2

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ai;->p:Lcom/makeramen/roundedimageview/RoundedImageView;

    const-string v3, "binding.imgContactPhoto"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v3

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ai;->K:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "binding.tvContactPhoto"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/mistergroup/shouldianswer/utils/p;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/makeramen/roundedimageview/RoundedImageView;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 305
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;->d:Lorg/mistergroup/shouldianswer/model/ac;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ac;->m()Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    .line 306
    move-object v1, v0

    check-cast v1, Landroid/graphics/Bitmap;

    .line 308
    :try_start_0
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 312
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v3, 0x2

    invoke-static {v2, p1, v0, v3, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 310
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Ljava/lang/Exception;)V

    .line 314
    :goto_0
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/p;->a:Lorg/mistergroup/shouldianswer/utils/p;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;->b:Landroid/graphics/Bitmap;

    :goto_1
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v2}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v2

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ai;->q:Lcom/makeramen/roundedimageview/RoundedImageView;

    const-string v3, "binding.imgContactPhotoBig"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v3

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ai;->L:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "binding.tvContactPhotoBig"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0, v2, v3}, Lorg/mistergroup/shouldianswer/utils/p;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/makeramen/roundedimageview/RoundedImageView;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 315
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->c(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Z)V

    .line 316
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
