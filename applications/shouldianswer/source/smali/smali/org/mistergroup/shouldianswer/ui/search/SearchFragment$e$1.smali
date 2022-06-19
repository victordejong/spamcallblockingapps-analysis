.class final Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e$1;
.super Lkotlin/c/b/a/k;
.source "SearchFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->b(Ljava/lang/Object;)Ljava/lang/Object;
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

.annotation runtime Lkotlin/c/b/a/f;
    b = "SearchFragment.kt"
    c = {}
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.ui.search.SearchFragment$initWithActivity$4$2"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;

.field final synthetic c:Ljava/util/ArrayList;

.field private d:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;Ljava/util/ArrayList;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e$1;->b:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e$1;->c:Ljava/util/ArrayList;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e$1;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e$1;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e$1;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e$1;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e$1;->b:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e$1;->c:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p2}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e$1;-><init>(Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;Ljava/util/ArrayList;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e$1;->d:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 138
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e$1;->a:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e$1;->d:Lkotlinx/coroutines/ad;

    .line 139
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e$1;->b:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->k:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->b(Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;)Lorg/mistergroup/shouldianswer/ui/search/a;

    move-result-object p1

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e$1;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/ui/search/a;->a(Ljava/util/ArrayList;)V

    .line 140
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
