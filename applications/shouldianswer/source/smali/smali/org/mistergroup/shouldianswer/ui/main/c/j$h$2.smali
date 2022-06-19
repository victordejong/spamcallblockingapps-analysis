.class final Lorg/mistergroup/shouldianswer/ui/main/c/j$h$2;
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
    e = "org.mistergroup.shouldianswer.ui.main.logs.LogsDataSource$update$2$3"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

.field final synthetic c:I

.field private d:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/c/j$h;ILkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$2;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

    iput p2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$2;->c:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$2;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$2;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$2;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$2;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$2;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

    iget v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$2;->c:I

    invoke-direct {v0, v1, v2, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$2;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/j$h;ILkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$2;->d:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 314
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$2;->a:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$2;->d:Lkotlinx/coroutines/ad;

    .line 315
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$2;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c()Ljava/util/LinkedList;

    move-result-object p1

    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$2;->c:I

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 316
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogsDataSourceCallLog.update notifySectionRemoved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$2;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$2;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b(Lorg/mistergroup/shouldianswer/ui/main/c/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$2;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->a()Lorg/mistergroup/shouldianswer/ui/main/c/h;

    move-result-object p1

    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$2;->c:I

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->j(I)V

    .line 318
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
