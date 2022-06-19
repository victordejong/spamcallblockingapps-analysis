.class final Lkotlinx/coroutines/cc;
.super Ljava/lang/Object;
.source "Executors.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lkotlinx/coroutines/y;

.field private final b:Lkotlinx/coroutines/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/k<",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/y;Lkotlinx/coroutines/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/y;",
            "Lkotlinx/coroutines/k<",
            "-",
            "Lkotlin/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/cc;->a:Lkotlinx/coroutines/y;

    iput-object p2, p0, Lkotlinx/coroutines/cc;->b:Lkotlinx/coroutines/k;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 123
    iget-object v0, p0, Lkotlinx/coroutines/cc;->b:Lkotlinx/coroutines/k;

    iget-object v1, p0, Lkotlinx/coroutines/cc;->a:Lkotlinx/coroutines/y;

    sget-object v2, Lkotlin/o;->a:Lkotlin/o;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/k;->a(Lkotlinx/coroutines/y;Ljava/lang/Object;)V

    return-void
.end method
