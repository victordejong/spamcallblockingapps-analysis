.class final Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;
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
    e = "org.mistergroup.shouldianswer.ui.main.logs.LogsDataSource$update$2$2$1"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/main/c/j;

.field final synthetic c:Lorg/mistergroup/shouldianswer/ui/main/c/c;

.field final synthetic d:I

.field final synthetic e:Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

.field final synthetic f:I

.field final synthetic g:I

.field private h:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/c/j;Lorg/mistergroup/shouldianswer/ui/main/c/c;ILorg/mistergroup/shouldianswer/ui/main/c/j$b;IILkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->c:Lorg/mistergroup/shouldianswer/ui/main/c/c;

    iput p3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->d:I

    iput-object p4, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->e:Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    iput p5, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->f:I

    iput p6, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->g:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->c:Lorg/mistergroup/shouldianswer/ui/main/c/c;

    iget v4, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->d:I

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->e:Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    iget v6, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->f:I

    iget v7, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->g:I

    move-object v1, v0

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/j;Lorg/mistergroup/shouldianswer/ui/main/c/c;ILorg/mistergroup/shouldianswer/ui/main/c/j$b;IILkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->h:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 292
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->a:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->h:Lkotlinx/coroutines/ad;

    .line 293
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->c:Lorg/mistergroup/shouldianswer/ui/main/c/c;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b()Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->d:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 294
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->c:Lorg/mistergroup/shouldianswer/ui/main/c/c;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 295
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->e:Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->f:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 296
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b(Lorg/mistergroup/shouldianswer/ui/main/c/j;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogsDataSourceCallLog.update notifySectionItemRemoved"

    invoke-virtual {p1, v1, v0}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->a()Lorg/mistergroup/shouldianswer/ui/main/c/h;

    move-result-object p1

    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->g:I

    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->f:I

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->e(II)V

    goto :goto_0

    .line 299
    :cond_0
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b(Lorg/mistergroup/shouldianswer/ui/main/c/j;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogsDataSourceCallLog.update notifySectionItemChanged"

    invoke-virtual {p1, v1, v0}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->a()Lorg/mistergroup/shouldianswer/ui/main/c/h;

    move-result-object p1

    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->g:I

    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;->f:I

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->c(II)V

    .line 302
    :goto_0
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
