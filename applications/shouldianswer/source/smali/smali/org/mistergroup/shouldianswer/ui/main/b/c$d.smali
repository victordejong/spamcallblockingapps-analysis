.class final Lorg/mistergroup/shouldianswer/ui/main/b/c$d;
.super Ljava/lang/Object;
.source "FavoritesFragment.kt"

# interfaces
.implements Landroidx/lifecycle/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/b/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/q<",
        "Ljava/util/List<",
        "Lorg/mistergroup/shouldianswer/components/a/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/b/c;

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/main/a;

.field final synthetic c:Lorg/mistergroup/shouldianswer/ui/main/b/b;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/b/c;Lorg/mistergroup/shouldianswer/ui/main/a;Lorg/mistergroup/shouldianswer/ui/main/b/b;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c$d;->a:Lorg/mistergroup/shouldianswer/ui/main/b/c;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c$d;->b:Lorg/mistergroup/shouldianswer/ui/main/a;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c$d;->c:Lorg/mistergroup/shouldianswer/ui/main/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/b/c$d;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 133
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "FavoritesFragment ContactsLiveData.observe"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    check-cast p1, Ljava/lang/Iterable;

    .line 276
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mistergroup/shouldianswer/components/a/a;

    .line 136
    new-instance v3, Lorg/mistergroup/shouldianswer/components/a/a;

    sget-object v4, Lorg/mistergroup/shouldianswer/components/a/a$a;->a:Lorg/mistergroup/shouldianswer/components/a/a$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lorg/mistergroup/shouldianswer/components/a/a;-><init>(Lorg/mistergroup/shouldianswer/components/a/a$a;Lorg/mistergroup/shouldianswer/model/ac;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c$d;->b:Lorg/mistergroup/shouldianswer/ui/main/a;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/ui/main/a;->c(Ljava/util/List;)V

    .line 139
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c$d;->c:Lorg/mistergroup/shouldianswer/ui/main/b/b;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c$d;->b:Lorg/mistergroup/shouldianswer/ui/main/a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/a;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lorg/mistergroup/shouldianswer/ui/main/b/b;->a(Ljava/util/List;Ljava/util/List;)V

    .line 141
    sget-object p1, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/ad;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance p1, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;

    invoke-direct {p1, p0, v2}, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;-><init>(Lorg/mistergroup/shouldianswer/ui/main/b/c$d;Lkotlin/c/c;)V

    move-object v6, p1

    check-cast v6, Lkotlin/e/a/m;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    .line 174
    :cond_1
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c$d;->a:Lorg/mistergroup/shouldianswer/ui/main/b/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/main/b/c;->a(Lorg/mistergroup/shouldianswer/ui/main/b/c;Z)V

    .line 175
    sget-object p1, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->b:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;->a()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->c()V

    .line 176
    :cond_2
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c$d;->a:Lorg/mistergroup/shouldianswer/ui/main/b/c;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/b/c;->d()V

    return-void
.end method
