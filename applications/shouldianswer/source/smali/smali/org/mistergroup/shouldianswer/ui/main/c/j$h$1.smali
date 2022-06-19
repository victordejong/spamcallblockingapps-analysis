.class final Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;
.super Lkotlin/c/b/a/k;
.source "LogsDataSource.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->b(Ljava/lang/Object;)Ljava/lang/Object;
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
    e = "org.mistergroup.shouldianswer.ui.main.logs.LogsDataSource$update$2$1"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

.field final synthetic c:Ljava/util/LinkedList;

.field private d:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/c/j$h;Ljava/util/LinkedList;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->c:Ljava/util/LinkedList;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->c:Ljava/util/LinkedList;

    invoke-direct {v0, v1, v2, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/j$h;Ljava/util/LinkedList;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->d:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 232
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->a:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->d:Lkotlinx/coroutines/ad;

    .line 233
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c()Ljava/util/LinkedList;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lkotlin/a/g;->d(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    .line 234
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LogsDataSourceCallLog.update newSections.count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->c:Ljava/util/LinkedList;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {v2}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b(Lorg/mistergroup/shouldianswer/ui/main/c/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->c:Ljava/util/LinkedList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/a/g;->a(Ljava/util/List;)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_5

    .line 236
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "newSections[i]"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    .line 237
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LogsDataSourceCallLog.update newSection.items.count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

    iget-object v4, v4, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {v4}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b(Lorg/mistergroup/shouldianswer/ui/main/c/j;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    .line 239
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 240
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

    iget-object v5, v5, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {v5}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b(Lorg/mistergroup/shouldianswer/ui/main/c/j;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "LogsDataSourceCallLog.update newSection is same as adapterFirstSection"

    invoke-virtual {v4, v6, v5}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/a/g;->d(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    .line 243
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/a/g;->e(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 245
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

    iget-object v7, v7, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {v7}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b(Lorg/mistergroup/shouldianswer/ui/main/c/j;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "LogsDataSourceCallLog.update adapterFirstSectionFirstItem and newSectionLastItem exists!"

    invoke-virtual {v6, v8, v7}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b()Ljava/util/ArrayList;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lkotlin/a/g;->d(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mistergroup/shouldianswer/model/j$b;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/model/j$b;->b()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_0
    move-object v6, v2

    :goto_1
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b()Ljava/util/ArrayList;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lkotlin/a/g;->d(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mistergroup/shouldianswer/model/j$b;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/model/j$b;->b()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_1
    move-object v7, v2

    :goto_2
    const/4 v8, 0x2

    invoke-static {v6, v7, v3, v8, v2}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 248
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    .line 249
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LogsDataSourceCallLog.update adapterFirstSectionFirstItem merge callLogs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v8

    invoke-static {v8}, Lorg/mistergroup/shouldianswer/model/x;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 250
    iget-object v8, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

    iget-object v8, v8, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {v8}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b(Lorg/mistergroup/shouldianswer/ui/main/c/j;)Ljava/lang/String;

    move-result-object v8

    .line 248
    invoke-virtual {v6, v7, v8}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b()Ljava/util/ArrayList;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v6, v3, v5}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 254
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->d()V

    .line 255
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

    iget-object v4, v4, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->a()Lorg/mistergroup/shouldianswer/ui/main/c/h;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->c(II)V

    .line 256
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/a/g;->a(Ljava/util/List;)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 260
    :cond_2
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LogsDataSourceCallLog.update remaining items.count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

    iget-object v6, v6, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {v6}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b(Lorg/mistergroup/shouldianswer/ui/main/c/j;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 262
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/a/g;->a(Ljava/util/List;)I

    move-result v4

    :goto_3
    if-ltz v4, :cond_3

    .line 263
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    .line 264
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LogsDataSourceCallLog.update adapterFirstSection.items.add "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v8

    invoke-static {v8}, Lorg/mistergroup/shouldianswer/model/x;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

    iget-object v8, v8, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {v8}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b(Lorg/mistergroup/shouldianswer/ui/main/c/j;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 266
    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

    iget-object v5, v5, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->a()Lorg/mistergroup/shouldianswer/ui/main/c/h;

    move-result-object v5

    invoke-virtual {v5, v3, v3}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->d(II)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 269
    :cond_3
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b(Lorg/mistergroup/shouldianswer/ui/main/c/j;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "LogsDataSourceCallLog.update after newSection inserted"

    invoke-virtual {p1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 271
    :cond_4
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c()Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 272
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b(Lorg/mistergroup/shouldianswer/ui/main/c/j;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "LogsDataSourceCallLog.update notifySectionInserted"

    invoke-virtual {p1, v4, v1}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->a()Lorg/mistergroup/shouldianswer/ui/main/c/h;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->i(I)V

    .line 275
    :goto_4
    move-object p1, v2

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 277
    :cond_5
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->a()Lorg/mistergroup/shouldianswer/ui/main/c/h;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->h()V

    .line 278
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
