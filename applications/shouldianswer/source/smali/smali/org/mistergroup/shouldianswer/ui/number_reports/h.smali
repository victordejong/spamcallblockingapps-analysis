.class public final Lorg/mistergroup/shouldianswer/ui/number_reports/h;
.super Landroidx/lifecycle/u;
.source "NumberReviewsViewModel.kt"


# instance fields
.field private a:Lkotlin/e/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/e/a/b<",
            "-",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/ui/number_reports/a;",
            ">;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lkotlin/e/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/e/a/b<",
            "-",
            "Ljava/lang/Exception;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/ui/number_reports/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/lifecycle/u;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/number_reports/h;)Lkotlin/e/a/b;
    .locals 0

    .line 22
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/h;->a:Lkotlin/e/a/b;

    return-object p0
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/number_reports/h;)Lkotlin/e/a/b;
    .locals 0

    .line 22
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/h;->b:Lkotlin/e/a/b;

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 27
    iput p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/h;->e:I

    return-void
.end method

.method public final a(Lkotlin/e/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/e/a/b<",
            "-",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/ui/number_reports/a;",
            ">;",
            "Lkotlin/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/h;->a:Lkotlin/e/a/b;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/NumberInfo;Z)V
    .locals 8

    const-string p2, "numberInfo"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object p2, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/MyApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 39
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/h;->d:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/h;->c:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    if-eqz v0, :cond_3

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/h;->a:Lkotlin/e/a/b;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/h;->d:Ljava/util/List;

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    invoke-interface {p1, p2}, Lkotlin/e/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/o;

    :cond_2
    return-void

    .line 43
    :cond_3
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/h;->c:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    const/4 v0, 0x0

    .line 44
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/h;->d:Ljava/util/List;

    .line 45
    sget-object v1, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/c/f;

    const/4 v4, 0x0

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;-><init>(Lorg/mistergroup/shouldianswer/ui/number_reports/h;Lorg/mistergroup/shouldianswer/model/NumberInfo;Landroid/content/Context;Lkotlin/c/c;)V

    move-object v5, v1

    check-cast v5, Lkotlin/e/a/m;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/ui/number_reports/a;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/h;->d:Ljava/util/List;

    return-object v0
.end method

.method public final b(Lkotlin/e/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/e/a/b<",
            "-",
            "Ljava/lang/Exception;",
            "Lkotlin/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/h;->b:Lkotlin/e/a/b;

    return-void
.end method

.method public final c()I
    .locals 1

    .line 27
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/h;->e:I

    return v0
.end method
