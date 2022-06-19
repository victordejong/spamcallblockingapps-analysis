.class final Lkotlinx/coroutines/az$a;
.super Lkotlinx/coroutines/az$c;
.source "EventLoop.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/az;

.field private final c:Lkotlinx/coroutines/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/k<",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/az;JLkotlinx/coroutines/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/k<",
            "-",
            "Lkotlin/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cont"

    invoke-static {p4, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iput-object p1, p0, Lkotlinx/coroutines/az$a;->a:Lkotlinx/coroutines/az;

    .line 291
    invoke-direct {p0, p2, p3}, Lkotlinx/coroutines/az$c;-><init>(J)V

    iput-object p4, p0, Lkotlinx/coroutines/az$a;->c:Lkotlinx/coroutines/k;

    .line 294
    iget-object p1, p0, Lkotlinx/coroutines/az$a;->c:Lkotlinx/coroutines/k;

    move-object p2, p0

    check-cast p2, Lkotlinx/coroutines/au;

    invoke-static {p1, p2}, Lkotlinx/coroutines/m;->a(Lkotlinx/coroutines/k;Lkotlinx/coroutines/au;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 298
    iget-object v0, p0, Lkotlinx/coroutines/az$a;->c:Lkotlinx/coroutines/k;

    iget-object v1, p0, Lkotlinx/coroutines/az$a;->a:Lkotlinx/coroutines/az;

    sget-object v2, Lkotlin/o;->a:Lkotlin/o;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/k;->a(Lkotlinx/coroutines/y;Ljava/lang/Object;)V

    return-void
.end method
