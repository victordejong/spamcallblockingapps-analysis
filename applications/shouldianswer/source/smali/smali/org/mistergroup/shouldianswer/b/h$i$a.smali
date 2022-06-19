.class final Lorg/mistergroup/shouldianswer/b/h$i$a;
.super Lkotlin/c/b/a/k;
.source "RingingAlertPopup.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/b/h$i;->b(Ljava/lang/Object;)Ljava/lang/Object;
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

.field final synthetic b:Lorg/mistergroup/shouldianswer/utils/t;

.field final synthetic c:Lorg/mistergroup/shouldianswer/MyApp;

.field final synthetic d:Lorg/mistergroup/shouldianswer/b/h$i;

.field private e:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/utils/t;Lorg/mistergroup/shouldianswer/MyApp;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/b/h$i;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->b:Lorg/mistergroup/shouldianswer/utils/t;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->c:Lorg/mistergroup/shouldianswer/MyApp;

    iput-object p4, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->d:Lorg/mistergroup/shouldianswer/b/h$i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/b/h$i$a;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/b/h$i$a;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/b/h$i$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/b/h$i$a;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->b:Lorg/mistergroup/shouldianswer/utils/t;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->c:Lorg/mistergroup/shouldianswer/MyApp;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->d:Lorg/mistergroup/shouldianswer/b/h$i;

    invoke-direct {v0, v1, v2, p2, v3}, Lorg/mistergroup/shouldianswer/b/h$i$a;-><init>(Lorg/mistergroup/shouldianswer/utils/t;Lorg/mistergroup/shouldianswer/MyApp;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/b/h$i;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/b/h$i$a;->e:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 278
    iget v0, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->a:I

    if-nez v0, :cond_7

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->e:Lkotlinx/coroutines/ad;

    .line 280
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ai;->B()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f1100e6

    goto :goto_0

    :cond_0
    const p1, 0x7f1100e5

    .line 281
    :goto_0
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->setTheme(I)V

    .line 282
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->d:Lorg/mistergroup/shouldianswer/b/h$i;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/b/h$i;->h:Lorg/mistergroup/shouldianswer/b/h;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->b:Lorg/mistergroup/shouldianswer/utils/t;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->a()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d001e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    const-string v1, "DataBindingUtil.inflate(\u2026alert_popup, null, false)"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/mistergroup/shouldianswer/a/e;

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/b/h;->a(Lorg/mistergroup/shouldianswer/b/h;Lorg/mistergroup/shouldianswer/a/e;)V

    .line 283
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->d:Lorg/mistergroup/shouldianswer/b/h$i;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/b/h$i;->h:Lorg/mistergroup/shouldianswer/b/h;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->d:Lorg/mistergroup/shouldianswer/b/h$i;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/b/h$i;->h:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/b/h;->k(Lorg/mistergroup/shouldianswer/b/h;)Lorg/mistergroup/shouldianswer/a/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/b/h;->a(Lorg/mistergroup/shouldianswer/a/e;)V

    .line 285
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/x;->a()F

    move-result p1

    .line 286
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->d:Lorg/mistergroup/shouldianswer/b/h$i;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/b/h$i;->h:Lorg/mistergroup/shouldianswer/b/h;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/b/h;->a()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 288
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 289
    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 290
    iget v0, v4, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_1

    .line 291
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->d:Lorg/mistergroup/shouldianswer/b/h$i;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/b/h$i;->h:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/b/h;->k(Lorg/mistergroup/shouldianswer/b/h;)Lorg/mistergroup/shouldianswer/a/e;

    move-result-object v0

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/e;->r:Lorg/mistergroup/shouldianswer/components/LimitedScrollView;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    const/16 v5, 0x12c

    int-to-float v5, v5

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/mistergroup/shouldianswer/components/LimitedScrollView;->setMaxHeight(I)V

    .line 292
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->d:Lorg/mistergroup/shouldianswer/b/h$i;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/b/h$i;->h:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/b/h;->k(Lorg/mistergroup/shouldianswer/b/h;)Lorg/mistergroup/shouldianswer/a/e;

    move-result-object v0

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/e;->r:Lorg/mistergroup/shouldianswer/components/LimitedScrollView;

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/components/LimitedScrollView;->setScrollDisabled(Z)V

    .line 296
    :cond_1
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v4, 0x2

    const-string v5, "RingingAlertPopup.showManually addView"

    invoke-static {v0, v5, v3, v4, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const v0, 0x2c00a8

    .line 304
    sget-object v5, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/ai;->w()I

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0x96

    int-to-float v5, v5

    mul-float/2addr p1, v5

    .line 305
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 306
    :cond_2
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->d:Lorg/mistergroup/shouldianswer/b/h$i;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/b/h$i;->h:Lorg/mistergroup/shouldianswer/b/h;

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v6}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-static {p1, v6}, Lorg/mistergroup/shouldianswer/b/h;->a(Lorg/mistergroup/shouldianswer/b/h;Landroid/view/WindowManager$LayoutParams;)V

    .line 307
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->d:Lorg/mistergroup/shouldianswer/b/h$i;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/b/h$i;->h:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/b/h;->h(Lorg/mistergroup/shouldianswer/b/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v6, 0x30

    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 308
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->d:Lorg/mistergroup/shouldianswer/b/h$i;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/b/h$i;->h:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/b/h;->h(Lorg/mistergroup/shouldianswer/b/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 309
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->d:Lorg/mistergroup/shouldianswer/b/h$i;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/b/h$i;->h:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/b/h;->h(Lorg/mistergroup/shouldianswer/b/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 310
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->d:Lorg/mistergroup/shouldianswer/b/h$i;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/b/h$i;->h:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/b/h;->h(Lorg/mistergroup/shouldianswer/b/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    sget-object v5, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/utils/o;->c()Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x7f6

    goto :goto_1

    :cond_3
    const/16 v5, 0x7da

    :goto_1
    iput v5, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 311
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->d:Lorg/mistergroup/shouldianswer/b/h$i;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/b/h$i;->h:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/b/h;->h(Lorg/mistergroup/shouldianswer/b/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 312
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->d:Lorg/mistergroup/shouldianswer/b/h$i;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/b/h$i;->h:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/b/h;->h(Lorg/mistergroup/shouldianswer/b/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, -0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 313
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->d:Lorg/mistergroup/shouldianswer/b/h$i;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/b/h$i;->h:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/b/h;->h(Lorg/mistergroup/shouldianswer/b/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->c:Lorg/mistergroup/shouldianswer/MyApp;

    const v5, 0x7f10007e

    invoke-virtual {v0, v5}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 314
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->d:Lorg/mistergroup/shouldianswer/b/h$i;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/b/h$i;->h:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/b/h;->h(Lorg/mistergroup/shouldianswer/b/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 317
    :try_start_0
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->d:Lorg/mistergroup/shouldianswer/b/h$i;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/b/h$i;->h:Lorg/mistergroup/shouldianswer/b/h;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/b/h;->a()Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->d:Lorg/mistergroup/shouldianswer/b/h$i;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/b/h$i;->h:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/b/h;->i(Lorg/mistergroup/shouldianswer/b/h;)Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->d:Lorg/mistergroup/shouldianswer/b/h$i;

    iget-object v5, v5, Lorg/mistergroup/shouldianswer/b/h$i;->h:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {v5}, Lorg/mistergroup/shouldianswer/b/h;->h(Lorg/mistergroup/shouldianswer/b/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {p1, v0, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->d:Lorg/mistergroup/shouldianswer/b/h$i;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/b/h$i;->h:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/b/h;->i(Lorg/mistergroup/shouldianswer/b/h;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 320
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v0, p1, v3, v4, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_2
    if-nez v2, :cond_5

    .line 325
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->c:Lorg/mistergroup/shouldianswer/MyApp;

    check-cast p1, Landroid/content/Context;

    const v0, 0x7f100078

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 327
    :cond_5
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RingingAlertPopup.showManually.end isShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h$i$a;->d:Lorg/mistergroup/shouldianswer/b/h$i;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/b/h$i;->h:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/b/h;->i(Lorg/mistergroup/shouldianswer/b/h;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3, v4, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 328
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
