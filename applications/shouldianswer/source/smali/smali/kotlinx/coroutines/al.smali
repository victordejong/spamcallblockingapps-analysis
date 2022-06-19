.class Lkotlinx/coroutines/al;
.super Lkotlinx/coroutines/a;
.source "Builders.common.kt"

# interfaces
.implements Lkotlinx/coroutines/ak;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/a<",
        "TT;>;",
        "Lkotlinx/coroutines/ak<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/c/f;Z)V
    .locals 1

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/a;-><init>(Lkotlin/c/f;Z)V

    return-void
.end method

.method static synthetic a(Lkotlinx/coroutines/al;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lkotlinx/coroutines/al$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/al$a;

    iget v1, v0, Lkotlinx/coroutines/al$a;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/al$a;->b:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/al$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/al$a;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/al$a;-><init>(Lkotlinx/coroutines/al;Lkotlin/c/c;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/al$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 99
    iget v2, v0, Lkotlinx/coroutines/al$a;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-ne v2, v3, :cond_2

    iget-object p0, v0, Lkotlinx/coroutines/al$a;->d:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/al;

    instance-of p0, p1, Lkotlin/j$b;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lkotlin/j$b;

    iget-object p0, p1, Lkotlin/j$b;->a:Ljava/lang/Throwable;

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    instance-of v2, p1, Lkotlin/j$b;

    if-nez v2, :cond_5

    iput-object p0, v0, Lkotlinx/coroutines/al$a;->d:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/al$a;->b:I

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/al;->b(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    return-object p1

    :cond_5
    check-cast p1, Lkotlin/j$b;

    iget-object p0, p1, Lkotlin/j$b;->a:Ljava/lang/Throwable;

    throw p0
.end method


# virtual methods
.method public a(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlinx/coroutines/al;->a(Lkotlinx/coroutines/al;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected n_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
