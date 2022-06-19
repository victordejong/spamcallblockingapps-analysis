.class final Lb/a$a$a$a;
.super Lkotlin/c/b/a/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a$a$a;->a(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/c/b/a/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/ak;",
        "Lkotlin/c/d<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation runtime Lkotlin/c/b/a/e;
    b = "CoroutinesRunner.kt"
    c = {}
    d = "invokeSuspend"
    e = "coroutinesrunner.CoroutinesRunner$Companion$await$1$d$1"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lb/a$a$a;


# direct methods
.method constructor <init>(Lb/a$a$a;Lkotlin/c/d;)V
    .locals 0

    iput-object p1, p0, Lb/a$a$a$a;->b:Lb/a$a$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/j;-><init>(ILkotlin/c/d;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1057
    sget-object v0, Lkotlin/c/a/a;->COROUTINE_SUSPENDED:Lkotlin/c/a/a;

    .line 79
    iget v0, p0, Lb/a$a$a$a;->a:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/p;->a(Ljava/lang/Object;)V

    .line 80
    iget-object p1, p0, Lb/a$a$a$a;->b:Lb/a$a$a;

    iget-object p1, p1, Lb/a$a$a;->b:Lcom/callapp/contacts/manager/task/Task;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/task/Task;->run()V

    .line 81
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/d;)Lkotlin/c/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/c/d<",
            "*>;)",
            "Lkotlin/c/d<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lb/a$a$a$a;

    iget-object v0, p0, Lb/a$a$a$a;->b:Lb/a$a$a;

    invoke-direct {p1, v0, p2}, Lb/a$a$a$a;-><init>(Lb/a$a$a;Lkotlin/c/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/d;

    invoke-virtual {p0, p1, p2}, Lb/a$a$a$a;->a(Ljava/lang/Object;Lkotlin/c/d;)Lkotlin/c/d;

    move-result-object p1

    check-cast p1, Lb/a$a$a$a;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lb/a$a$a$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
