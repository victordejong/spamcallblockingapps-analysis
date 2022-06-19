.class public final Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b;
.super Ljava/lang/Object;
.source "NumberDetailFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/e/b/e;)V
    .locals 0

    .line 560
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lorg/mistergroup/shouldianswer/model/NumberInfo;)Landroid/app/PendingIntent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberInfo"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 566
    move-object v1, p0

    check-cast v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b;

    invoke-virtual {v1, p2}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p2, 0x4000000

    .line 567
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 568
    invoke-static {p1}, Landroidx/core/app/m;->a(Landroid/content/Context;)Landroidx/core/app/m;

    move-result-object p1

    const-string p2, "TaskStackBuilder.create(context)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    const-class p2, Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    invoke-virtual {p1, p2}, Landroidx/core/app/m;->a(Ljava/lang/Class;)Landroidx/core/app/m;

    .line 570
    invoke-virtual {p1, v0}, Landroidx/core/app/m;->a(Landroid/content/Intent;)Landroidx/core/app/m;

    const/4 p2, 0x0

    const/high16 v0, 0x8000000

    .line 571
    invoke-virtual {p1, p2, v0}, Landroidx/core/app/m;->a(II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "numberInfo"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v1
.end method

.method public final b(Landroid/content/Context;Lorg/mistergroup/shouldianswer/model/NumberInfo;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberInfo"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    sget-object v0, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/ad;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b$a;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v2}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b$a;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    move-object v4, v0

    check-cast v4, Lkotlin/e/a/m;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    .line 579
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 580
    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 581
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 583
    :cond_0
    move-object v1, p0

    check-cast v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b;

    invoke-virtual {v1, p2}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 584
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
