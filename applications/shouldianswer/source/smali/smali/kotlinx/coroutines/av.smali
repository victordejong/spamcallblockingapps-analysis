.class final Lkotlinx/coroutines/av;
.super Lkotlinx/coroutines/i;
.source "CancellableContinuation.kt"


# instance fields
.field private final a:Lkotlinx/coroutines/au;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/au;)V
    .locals 1

    const-string v0, "handle"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lkotlinx/coroutines/i;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/av;->a:Lkotlinx/coroutines/au;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 233
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/av;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .line 234
    iget-object p1, p0, Lkotlinx/coroutines/av;->a:Lkotlinx/coroutines/au;

    invoke-interface {p1}, Lkotlinx/coroutines/au;->a()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisposeOnCancel["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/av;->a:Lkotlinx/coroutines/au;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
