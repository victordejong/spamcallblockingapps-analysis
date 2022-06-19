.class final Lorg/mistergroup/shouldianswer/ui/main/c/j$f;
.super Lkotlin/c/b/a/k;
.source "LogsDataSource.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/c/j;->a(ILkotlin/c/c;)Ljava/lang/Object;
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
    b = "LogsDataSource.kt"
    c = {}
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.ui.main.logs.LogsDataSource$readMore$2"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/main/c/j;

.field final synthetic c:J

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Lkotlin/e/b/m$c;

.field final synthetic f:Lkotlin/e/b/m$c;

.field private g:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/c/j;JLjava/util/ArrayList;Lkotlin/e/b/m$c;Lkotlin/e/b/m$c;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    iput-wide p2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->c:J

    iput-object p4, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->d:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->e:Lkotlin/e/b/m$c;

    iput-object p6, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->f:Lkotlin/e/b/m$c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 9
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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    iget-wide v3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->c:J

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->d:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->e:Lkotlin/e/b/m$c;

    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->f:Lkotlin/e/b/m$c;

    move-object v1, v0

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/j;JLjava/util/ArrayList;Lkotlin/e/b/m$c;Lkotlin/e/b/m$c;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->g:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 393
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->a:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->g:Lkotlinx/coroutines/ad;

    .line 394
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogsDataSourceCallLog.readMore uiContext switch in  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    iget-wide v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->c:J

    invoke-virtual {v1, v2, v3}, Lorg/mistergroup/shouldianswer/utils/u;->a(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {v2}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b(Lorg/mistergroup/shouldianswer/ui/main/c/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/u;->a()J

    move-result-wide v2

    .line 396
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->d:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/Iterable;

    .line 433
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    .line 397
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->e:Lkotlin/e/b/m$c;

    iget-object v4, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    .line 399
    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "sections[replaceSectionIdLocal]"

    invoke-static {v5, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    .line 401
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->f:Lkotlin/e/b/m$c;

    iget-object v6, v6, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 402
    sget-object v7, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    iget-object v8, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {v8}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b(Lorg/mistergroup/shouldianswer/ui/main/c/j;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "LogsDataSourceCallLog.readMore changing item"

    invoke-virtual {v7, v9, v8}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->a()Lorg/mistergroup/shouldianswer/ui/main/c/h;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v6}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->c(II)V

    .line 406
    :cond_1
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->f:Lkotlin/e/b/m$c;

    iget-object v6, v6, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->f:Lkotlin/e/b/m$c;

    iget-object v6, v6, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 407
    :goto_1
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    :goto_2
    if-ge v6, v7, :cond_3

    .line 408
    sget-object v8, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LogsDataSourceCallLog.readMore adding item to section "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {v10}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b(Lorg/mistergroup/shouldianswer/ui/main/c/j;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v8, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->a()Lorg/mistergroup/shouldianswer/ui/main/c/h;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9, v6}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->d(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 412
    :cond_3
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->e:Lkotlin/e/b/m$c;

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Integer;

    iput-object v4, v0, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    goto/16 :goto_0

    .line 414
    :cond_4
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LogsDataSourceCallLog.readMore inserting new section "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {v6}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b(Lorg/mistergroup/shouldianswer/ui/main/c/j;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 416
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->a()Lorg/mistergroup/shouldianswer/ui/main/c/h;

    move-result-object v0

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c()Ljava/util/LinkedList;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lkotlin/a/g;->a(Ljava/util/List;)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->i(I)V

    goto/16 :goto_0

    .line 421
    :cond_5
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LogsDataSourceCallLog.readMore new data inserted in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    invoke-virtual {v4, v2, v3}, Lorg/mistergroup/shouldianswer/utils/u;->a(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b(Lorg/mistergroup/shouldianswer/ui/main/c/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
